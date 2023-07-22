<?php

namespace Botble\Ecommerce\Http\Controllers\Customers;

use App\Http\Controllers\Controller;
use Botble\ACL\Traits\RegistersUsers;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Ecommerce\Models\Customer;
use Botble\Ecommerce\Repositories\Interfaces\CustomerInterface;
use Botble\Marketplace\Models\Store;
use EmailHandler;
use Illuminate\Auth\Events\Registered;
use Illuminate\Contracts\Auth\StatefulGuard;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\View\View;
use Response;
use SeoHelper;
use SlugHelper;
use Theme;
use URL;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |   Menangani pendaftaran user baru serta validasi dan membuat secara default, 
    |   dan menyediakan fungsionalitas ini tanpa memerlukan code tambahan apapun.
    |
    */

    use RegistersUsers;

    /**
     * redirect users setelah login / registration.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * @var CustomerInterface
     */
    protected $customerRepository;

    /**
     * Create new controller instance.
     *
     * @param CustomerInterface $customerRepository
     */
    public function __construct(CustomerInterface $customerRepository)
    {
        $this->middleware('customer.guest');
        $this->customerRepository = $customerRepository;
    }

    /**
     * Menampilkan application registration form.
     *
     * @return Response
     */
    public function showRegistrationForm()
    {
        SeoHelper::setTitle(__('Register'));

        Theme::breadcrumb()->add(__('Home'), route('public.index'))->add(__('Register'), route('customer.register'));

        if (!session()->has('url.intended')) {
            if (!in_array(url()->previous(), [route('customer.login'), route('customer.register')])) {
                session(['url.intended' => url()->previous()]);
            }
        }

        return Theme::scope('ecommerce.customers.register', [], 'plugins/ecommerce::themes.customers.register')
            ->render();
    }

    /**
     * Menangani permintaan pendaftaran untuk aplikasi tersebut.
     *
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function register(Request $request, BaseHttpResponse $response)
    {
        $this->validator($request->input())->validate();

        if (is_plugin_active('marketplace') && $request->input('is_vendor') == 1) {
            $existing = SlugHelper::getSlug(
                $request->input('shop_url'),
                SlugHelper::getPrefix(Store::class),
                Store::class
            );

            if ($existing) {
                return $response->setError()->setMessage(__('Shop URL is existing. Please choose another one!'));
            }
        }

        event(new Registered($customer = $this->create($request->input())));

        EmailHandler::setModule(ECOMMERCE_MODULE_SCREEN_NAME)
            ->setVariableValues([
                'customer_name' => $customer->name,
            ])
            ->sendUsingTemplate('welcome', $customer->email);

        if (get_ecommerce_setting('verify_customer_email', 0)) {
            $this->sendConfirmationToUser($customer);
            return $this->registered($request, $customer)
                ?: $response->setNextUrl(route('customer.login'))
                    ->setMessage(__('Please confirm your email address.'));
        }

        $customer->confirmed_at = now();
        $this->customerRepository->createOrUpdate($customer);
        $this->guard()->login($customer);

        return $response->setNextUrl($this->redirectPath())->setMessage(__('Registered successfully!'));
    }

    /**
     * Get validator untuk registration request.
     *
     * @param array $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        $rules = [
            'name'     => 'required|max:255',
            'email'    => 'required|email|max:255|unique:ec_customers',
            'password' => 'required|min:6|confirmed',
        ];

        if (setting('enable_captcha') && is_plugin_active('captcha')) {
            $rules += ['g-recaptcha-response' => 'required|captcha'];
        }

        if (is_plugin_active('marketplace') && request()->input('is_vendor') == 1) {
            $rules['shop_name'] = 'required|min:2';
            $rules['shop_phone'] = 'required';
            $rules['shop_url'] = 'required';
        }

        if (request()->has('agree_terms_and_policy')) {
            $rules['agree_terms_and_policy'] = 'accepted:1';
        }

        $attributes = [
            'name'                   => __('Name'),
            'email'                  => __('Email'),
            'password'               => __('Password'),
            'g-recaptcha-response'   => __('Captcha'),
            'shop_name'              => __('Shop Name'),
            'shop_phone'             => __('Shop Phone'),
            'shop_url'               => __('Shop URL'),
            'agree_terms_and_policy' => __('Term and Policy'),
        ];

        return Validator::make($data, $rules, [], $attributes);
    }

    /**
     * Create a new user instance setelah a valid registration.
     *
     * @param array $data
     * @return Customer
     */
    protected function create(array $data)
    {
        return $this->customerRepository->create([
            'name'     => $data['name'],
            'email'    => $data['email'],
            'password' => bcrypt($data['password']),
        ]);
    }

    /**
     * Mengirimkan confirmation code to a user.
     *
     * @param Customer $customer
     */
    protected function sendConfirmationToUser($customer)
    {
        // Notify the user
        $notificationConfig = config('plugins.ecommerce.general.customer.notification');
        if ($notificationConfig) {
            $notification = app($notificationConfig);
            $customer->notify($notification);
        }
    }

    /**
     * Get guard untuk digunakan registration.
     *
     * @return StatefulGuard
     */
    protected function guard()
    {
        return auth('customer');
    }

    /**
     * Confirm user dengan confirmation code yang diberikan.
     *
     * @param int $id
     * @param Request $request
     * @param BaseHttpResponse $response
     * @param CustomerInterface $customerRepository
     * @return BaseHttpResponse
     */
    public function confirm($id, Request $request, BaseHttpResponse $response, CustomerInterface $customerRepository)
    {
        if (!URL::hasValidSignature($request)) {
            abort(404);
        }

        $customer = $customerRepository->findOrFail($id);

        $customer->confirmed_at = now();
        $this->customerRepository->createOrUpdate($customer);

        $this->guard()->login($customer);

        return $response
            ->setNextUrl(route('customer.overview'))
            ->setMessage(__('You successfully confirmed your email address.'));
    }

    /**
     * Kirim ulang kode confirmasi user.
     *
     * @param Request $request
     * @param CustomerInterface $customerRepository
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function resendConfirmation(
        Request $request,
        CustomerInterface $customerRepository,
        BaseHttpResponse $response
    ) {
        $customer = $customerRepository->getFirstBy(['email' => $request->input('email')]);

        if (!$customer) {
            return $response
                ->setError()
                ->setMessage(__('Cannot find this customer!'));
        }

        $this->sendConfirmationToUser($customer);

        return $response
            ->setMessage(__('We sent you another confirmation email. You should receive it shortly.'));
    }

    /**
     * @return Factory|View
     */
    public function getVerify()
    {
        return view('plugins/ecommerce::themes.customers.verify');
    }
}
