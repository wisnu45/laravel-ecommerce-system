<?php

namespace Botble\Ecommerce\Http\Controllers\Customers;

use App\Http\Controllers\Controller;
use Botble\ACL\Traits\AuthenticatesUsers;
use Botble\ACL\Traits\LogoutGuardTrait;
use Illuminate\Contracts\Auth\StatefulGuard;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use SeoHelper;
use Symfony\Component\HttpFoundation\Response;
use Theme;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |   Controller ini menangani otentikasi user untuk aplikasi ini dan mengarahkan ke layar beranda
    |   dan menyediakan fungsionalitasnya dengan mudah ke aplikasi
    |
    */

    use AuthenticatesUsers, LogoutGuardTrait {
        AuthenticatesUsers::attemptLogin as baseAttemptLogin;
    }

    /**
     *  redirect users setelah login / registration.
     *
     * @var string
     */
    public $redirectTo;

    /**
     * Create a new controller instance.
     */
    public function __construct()
    {
        $this->middleware('customer.guest', ['except' => 'logout']);
    }

    /**
     * Show application's login form.
     *
     * @return \Response
     */
    public function showLoginForm()
    {
        SeoHelper::setTitle(__('Login'));

        Theme::breadcrumb()->add(__('Home'), route('public.index'))->add(__('Login'), route('customer.login'));

        if (!session()->has('url.intended')) {
            if (!in_array(url()->previous(), [route('customer.login'), route('customer.register')])) {
                session(['url.intended' => url()->previous()]);
            }
        }

        return Theme::scope('ecommerce.customers.login', [], 'plugins/ecommerce::themes.customers.login')->render();
    }

    /**
     * Get Guard untuk digunakan selama authentication.
     *
     * @return StatefulGuard
     */
    protected function guard()
    {
        return auth('customer');
    }

    /**
     * @param Request $request
     * @return Response|void
     * @throws ValidationException
     * @throws ValidationException
     */
    public function login(Request $request)
    {
        $this->validateLogin($request);

        // Jika class menggunakan sifat Throttles login, kita dapat secara otomatis login untuk aplikasi ini
        // dan akan memasukkan username dan alamat IP client yang membuat request ke dalam aplikasi  
        
        if ($this->hasTooManyLoginAttempts($request)) {
            $this->fireLockoutEvent($request);

            $this->sendLockoutResponse($request);
        }

        if ($this->attemptLogin($request)) {
            return $this->sendLoginResponse($request);
        }

        // Jika upaya login tidak berhasil, maka akan menambah jumlah upayanya untuk login dan 
        // mengarahkan user kemabali ke form login, tentu saja ketika ini user melampaui jumlah maksimum percobaan maka akan dikunci.
        $this->incrementLoginAttempts($request);

        $this->sendFailedLoginResponse();
    }

    /**
     * Keluaran user dari aplikasi.
     *
     * @param Request $request
     * @return RedirectResponse
     */
    public function logout(Request $request)
    {
        $this->guard()->logout();

        return $this->loggedOut($request) ?: redirect('/');
    }

    /**
     * Mencoba memasukan pengguna ke dalam apliasi.
     *
     * @param Request $request
     * @return bool
     * @throws ValidationException
     */
    protected function attemptLogin(Request $request)
    {
        if ($this->guard()->validate($this->credentials($request))) {
            $customer = $this->guard()->getLastAttempted();

            if (get_ecommerce_setting('verify_customer_email', 0) && empty($customer->confirmed_at)) {
                throw ValidationException::withMessages([
                    'confirmation' => [
                        __('The given email address has not been confirmed. <a href=":resend_link">Resend confirmation link.</a>',
                            [
                                'resend_link' => route('customer.resend_confirmation', ['email' => $customer->email]),
                            ]),
                    ],
                ]);
            }

            return $this->baseAttemptLogin($request);
        }

        return false;
    }
}
