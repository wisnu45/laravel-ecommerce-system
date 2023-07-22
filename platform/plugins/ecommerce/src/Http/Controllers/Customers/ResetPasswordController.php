<?php

namespace Botble\Ecommerce\Http\Controllers\Customers;

use App\Http\Controllers\Controller;
use Botble\ACL\Traits\ResetsPasswords;
use Illuminate\Contracts\Auth\PasswordBroker;
use Illuminate\Contracts\Auth\StatefulGuard;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Password;
use Response;
use SeoHelper;
use Theme;

class ResetPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    |   Menangani permintaan pengaturan ulang kata sandi 
    |   dan menggunakan simple trait      
    |
    */

    use ResetsPasswords;

    /**
     * redirect users setelah login / registration.
     *
     * @var string
     */
    public $redirectTo = '/';


    /**
     * Create new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('customer.guest');
    }

    /**
     * Menampilkan pengaturan ulang kata sandi untuk token yang diberikan.
     *
     * Jika tidak ada token tampilkan request form
     *
     * @param Request $request
     * @param string|null $token
     * @return Response
     */
    public function showResetForm(Request $request, $token = null)
    {
        SeoHelper::setTitle(__('Reset Password'));

        Theme::breadcrumb()->add(__('Home'), route('public.index'))
            ->add(__('Reset Password'), route('customer.password.reset'));

        return Theme::scope(
            'ecommerce.customers.passwords.reset',
            [
                'token' => $token,
                'email' => $request->email,
            ],
            'plugins/ecommerce::themes.customers.passwords.reset'
        )
            ->render();
    }

    /**
     * Get broker yang akan digunkan selama reset password.
     *
     * @return PasswordBroker
     */
    public function broker()
    {
        return Password::broker('customers');
    }

    /**
     * Get guard yang akan digunakan selama reset password.
     *
     * @return StatefulGuard
     */
    protected function guard()
    {
        return auth('customer');
    }
}
