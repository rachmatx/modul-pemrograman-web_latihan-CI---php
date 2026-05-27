<?php
namespace App\Controllers;

use App\Models\M_Admin;

class Auth extends BaseController
{
    protected function backWithError(string $message)
    {
        session()->setFlashdata('error', $message);
        return redirect()->back();
    }

    public function login()
    {
        return view('backend/login/login');
    }

    public function autentikasi()
    {
        $modelAdmin = new M_Admin();
        $username = $this->request->getPost('username');
        $password = $this->request->getPost('password');

        $cekUsername = $modelAdmin->getDataAdmin(['username_admin' => $username, 'is_delete_admin' => '0'])->getNumRows();
        if ($cekUsername == 0) {
            return $this->backWithError('Username Tidak Ditemukan');
        }

        $dataUser = $modelAdmin->getDataAdmin(['username_admin' => $username, 'is_delete_admin' => '0'])->getRowArray();
        $passwordUser = $dataUser['password_admin'];

        if (!password_verify($password, $passwordUser)) {
            return $this->backWithError('Password Tidak Sesuai');
        }

        $dataSesion = [
            'ses_id'    => $dataUser['id_admin'],
            'ses_user'  => $dataUser['nama_admin'],
            'ses_level' => $dataUser['akses_level']
        ];
        session()->set($dataSesion);
        session()->setFlashdata('success', 'Login Berhasil');
        return redirect()->to(base_url('admin/dashboard-admin'));
    }

    public function logout()
    {
        session()->remove('ses_id');
        session()->remove('ses_user');
        session()->remove('ses_level');
        session()->setFlashdata('info', 'Anda Telah Keluar dari Sistem!');
        return redirect()->to(base_url('admin/login-admin'));
    }
}
