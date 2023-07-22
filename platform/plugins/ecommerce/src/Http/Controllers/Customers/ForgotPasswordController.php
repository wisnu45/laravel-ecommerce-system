<?php

namespace Botble\Ecommerce\Http\Controllers\Customers;

use App\Http\Controllers\Controller;
use Botble\ACL\Traits\SendsPasswordResetEmails;
use Illuminate\Contracts\Auth\PasswordBroker;
use Password;
use Response;
use SeoHelper;
use Theme;

class ForgotPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    |   Bagian controller untuk bertanggung jawab untuk menangani email pengaturan ulang kata sandi dan 
    |   termasuk sifat yang membantu dalam mengirimkan pemberitahuan ini dari 
    |   aplikasi, 
    */

    use SendsPasswordResetEmails;

    /**
     * Create a new controller instance.
     */
    public function __construct()
    {
        $this->middleware('customer.guest');
    }

    /**
     * Tampilkan form untuk meminta link pengaturan ulang kata sandi
     *
     * @return Response
     */
    public function showLinkRequestForm()
    {
        SeoHelper::setTitle(__('Forgot Password'));

        Theme::breadcrumb()
            ->add(__('Home'), route('public.index'))
            ->add(__('Login'), route('customer.password.reset'));

        return Theme::scope('ecommerce.customers.passwords.email', [],
            'plugins/ecommerce::themes.customers.passwords.email')
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
}
