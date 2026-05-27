<?php
namespace App\Controllers;

class Dashboard extends BaseController
{
    protected function requireLogin(string $flashKey = 'error', string $message = 'Anda Harus Login Terlebih Dahulu', string $redirect = 'admin/login-admin')
    {
        if (session()->get('ses_id') == '' || session()->get('ses_level') == '') {
            session()->setFlashdata($flashKey, $message);
            return redirect()->to(base_url($redirect));
        }
    }

    public function dashboard()
    {
        $redirect = $this->requireLogin();
        if ($redirect !== null) return $redirect;

        echo view('Backend/Template/header');
        echo view('Backend/Template/sidebar');
        echo view('Backend/Login/dashboard_admin');
        echo view('Backend/Template/footer');
    }
}
