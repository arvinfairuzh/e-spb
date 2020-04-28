<?php
error_reporting(0);

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
/** @noinspection PhpIncludeInspection */
//To Solve File REST_Controller not found
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

/**
 * This is an example of a few basic service interaction methods you could use
 * all done with a hardcoded array
 *
 * @package         CodeIgniter 
 * @subpackage      Rest Server
 * @category        Controller
 * @author          Phil Sturgeon, Chris Kacerguis
 * @license         MIT
 * @link            https://github.com/chriskacerguis/codeigniter-restserver
 */
class Surat_permintaan extends REST_Controller
{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();

        // Configure limits on our controller methods
        // Ensure you have created the 'limits' table and enabled 'limits' within application/config/rest.php
        $this->methods['login_post']['limit'] = 500; // 500 requests per hour per service/key
        $this->methods['profile_post']['limit'] = 500; // 500 requests per hour per service/key
        $this->methods['DataAll_post']['limit'] = 500; // 500 requests per hour per service/key
        $this->methods['MyData_post']['limit'] = 500; // 500 requests per hour per service/key
        $this->methods['detail_post']['limit'] = 500; // 500 requests per hour per service/key
    }
    public function login_post()
    {
        $username = $this->post('username');
        $password = md5($this->post('password'));
        $token = $this->post('token');

        $user = $this->mymodel->selectDataone('user', ['nip' => $username, 'password' => $password]);

        if ($user) {
            if ($user['status'] == 'ENABLE') {
                if ($token != '') {
                    $data['token'] = $token;
                    $this->db->update('user', $data, array('id' => $user['id']));
                }
                $user_terbaru = $this->mymodel->selectDataone('user', array('nip' => $this->post('username')));
                $this->response([
                    'status' => TRUE,
                    'api_code' => 'Berhasil Masuk',
                    'message' => 'Selamat, Anda Berhasil Masuk',
                    'data' => $user_terbaru
                ], REST_Controller::HTTP_OK);
            } else if ($user['status'] == 'DISABLE') {
                $this->response([
                    'status' => TRUE,
                    'api_code' => 'Akun Tidak Aktif',
                    'message' => 'Maaf, Akun Anda Tidak Aktif. Silahkan Hubungi Admin',
                    'data' => $user
                ], REST_Controller::HTTP_OK);
            } else {
                $this->response([
                    'status' => FALSE,
                    'api_code' => 'Gagal Masuk',
                    'message' => 'Email Atau Password Yang Anda Masukkan Salah',
                    'data' => []
                ], REST_Controller::HTTP_NOT_FOUND);
            }
        } else {
            $this->response([
                'status' => FALSE,
                'api_code' => 'Akun Belum Terdaftar',
                'message' => 'Email Anda Belum Terdaftar',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }

    public function logout_post()
    {
        $id_user = $this->post('id_user');

        $user = $this->mymodel->selectDataone('user', ['id' => $id_user]);

        if ($user) {
            $data['token'] = '';
            $this->db->update('user', $data, array('id' => $user['id']));
            $user_terbaru = $this->mymodel->selectDataone('user', array('nip' => $this->post('username')));
            $this->response([
                'status' => TRUE,
                'api_code' => 'Berhasil Logout',
                'message' => 'Selamat, Anda Berhasil Logout'
            ], REST_Controller::HTTP_OK);
        } else {
            $this->response([
                'status' => FALSE,
                'api_code' => 'Gagal Logout',
                'message' => 'Logout Gagal'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }

    public function profile_post()
    {
        $base_url = base_url('webfile/');
        $id_user = $this->post('id_user');

        $user = $this->mymodel->selectWithQuery("SELECT user.* ,
        role.role as nama_role
        FROM user
        LEFT JOIN role on user.role_id = role.id
        WHERE user.id = '$id_user'");

        $user_jenis = $this->mymodel->selectWithQuery("SELECT user_jenis.*,
        master_jenis.value as jenis_sp
        FROM user_jenis
        LEFT JOIN master_jenis on user_jenis.jenis = master_jenis.id
        WHERE user_jenis.id_user = '$id_user'");

        if ($user) {

            foreach ($user_jenis as $uj) {
                $user_jenis_arr[] = array(
                    'jenis' => $uj['jenis_sp']
                );
            }
            foreach ($user as $us) {
                $response[] = array(
                    'id' => $us['id'],
                    'username' => $us['nip'],
                    'name' => $us['name'],
                    'email' => $us['email'],
                    'role_id' => $us['role_id'],
                    'nama_role' => $us['nama_role'],
                    'desc' => $us['desc'],
                    'file' => $base_url . $us['file'],
                    'ttd' => $base_url . $us['ttd'],
                    'jenis' => $user_jenis_arr,
                );
            }
            // print_r($response);
            // die();
            // Set the response and exit
            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function notifikasi_post()
    {
        $base_url = base_url();
        $id_user = $this->post('id_user');

        $user = $this->mymodel->selectDataone("user", array('id' => $id_user));
        $role_user = $user['role_id'];
        $role = $this->mymodel->selectDataone("role", array('id' => $role_user));

        if ($role_user == 0) {
            $notification1 = $this->mymodel->selectWithQuery("SELECT *, DATE_FORMAT(created_at, '%d-%m-%Y %h:%i') as tanggal FROM notifikasi WHERE status = 'ENABLE' GROUP BY id_permintaan, tipe, ke ORDER BY id desc");
            $notification2 = $this->mymodel->selectWithQuery("SELECT *, DATE_FORMAT(created_at, '%d-%m-%Y %h:%i') as tanggal FROM notifikasi WHERE status = 'DISABLE' GROUP BY id_permintaan, tipe, ke ORDER BY id desc");
            $countnotifikasi = $this->mymodel->selectWithQuery("SELECT * FROM notifikasi 
            LEFT JOIN permintaan_barang ON notifikasi.id_permintaan = permintaan_barang.id
            WHERE permintaan_barang.id != '' AND notifikasi.status = 'ENABLE' GROUP BY notifikasi.id_permintaan, tipe, ke ORDER BY notifikasi.id desc");
            $countnotif = count($countnotifikasi);
            $tombol_read = 1;
        } else {
            $notification1 = $this->mymodel->selectWithQuery("SELECT *, DATE_FORMAT(created_at, '%d-%m-%Y %h:%i') as tanggal FROM notifikasi WHERE id_user = '$id_user' AND status_notifikasi = 0 ORDER BY id desc");
            $notification2 = $this->mymodel->selectWithQuery("SELECT *, DATE_FORMAT(created_at, '%d-%m-%Y %h:%i') as tanggal FROM notifikasi WHERE id_user = '$id_user' AND status_notifikasi = 1 ORDER BY id desc");
            $countnotifikasi = $this->mymodel->selectWithQuery("SELECT * FROM notifikasi 
            LEFT JOIN permintaan_barang ON notifikasi.id_permintaan = permintaan_barang.id
            WHERE permintaan_barang.id != '' AND notifikasi.id_user = '$id_user' AND status_notifikasi = 0 ORDER BY notifikasi.id desc");
            $countnotif = count($countnotifikasi);
            $tombol_read = 0;
        }

        foreach ($notification1 as $notif) {
            $bg = '';
            if ($notif['tipe'] == 'create') {
                $bg = '#FFB153';
            } else if ($notif['tipe'] == 'edit') {
                $bg = '#E9E9E9';
            } else if ($notif['tipe'] == 'verifikasi-terima') {
                $bg = '#33FF7F';
            } else if ($notif['tipe'] == 'verifikasi-tolak') {
                $bg = '#FF5733';
            } else if ($notif['tipe'] == 'batal') {
                $bg = '#FF5733';
            } else if ($notif['tipe'] == 'penugasan') {
                $bg = '#FFFF53';
            }
            $user_terlibat = $this->mymodel->selectDataone("user", array('id' => $notif['id_user']));
            $master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => $notif['keterangan']));
            $permintaan_barang = $this->mymodel->selectDataone("permintaan_barang", array('id' => $notif['id_permintaan']));
            $master_proyek = $this->mymodel->selectDataone("master_proyek", array('id' => $permintaan_barang['id_proyek']));
            $user_notifikasi = $this->mymodel->selectDataone("user", array('id' => $notif['created_by']));
            $role_notifikasi = $this->mymodel->selectDataone("role", array('id' => $user_notifikasi['role_id']));
            $date = date_create($notif['created_at']);
            $date = date_format($date, "d M Y h:i:s");
            if ($permintaan_barang) {
                $notif1_array[] = array(
                    'id' => $notif['id'],
                    'id_sp' => $notif['id_permintaan'],
                    'kode_sp' => $permintaan_barang['kode'],
                    'nama_proyek' => $master_proyek['nama'],
                    'tombol_read' => $tombol_read,
                    'keterangan' => $master_notifikasi['keterangan'],
                    'user' => $user_notifikasi['name'],
                    'role' => $role_notifikasi['role'],
                    'tanggal' => $date,
                    'warna' => $bg,
                );
            }
        }

        foreach ($notification2 as $notif2) {
            $bg = '';
            if ($notif2['tipe'] == 'create') {
                $bg = '#FFB153';
            } else if ($notif2['tipe'] == 'edit') {
                $bg = '#E9E9E9';
            } else if ($notif2['tipe'] == 'verifikasi-terima') {
                $bg = '#33FF7F';
            } else if ($notif2['tipe'] == 'verifikasi-tolak') {
                $bg = '#FF5733';
            } else if ($notif2['tipe'] == 'batal') {
                $bg = '#FF5733';
            } else if ($notif2['tipe'] == 'penugasan') {
                $bg = '#FFFF53';
            }
            $user_terlibat2 = $this->mymodel->selectDataone("user", array('id' => $notif2['id_user']));
            $master_notifikasi2 = $this->mymodel->selectDataone("master_notifikasi", array('id' => $notif2['keterangan']));
            $permintaan_barang2 = $this->mymodel->selectDataone("permintaan_barang", array('id' => $notif2['id_permintaan']));
            $master_proyek2 = $this->mymodel->selectDataone("master_proyek", array('id' => $permintaan_barang2['id_proyek']));
            $user_notifikasi2 = $this->mymodel->selectDataone("user", array('id' => $notif2['created_by']));
            $role_notifikasi2 = $this->mymodel->selectDataone("role", array('id' => $user_notifikasi2['role_id']));
            $date2 = date_create($notif2['created_at']);
            $date2 = date_format($date2, "d M Y h:i:s");
            if ($permintaan_barang2) {
                $notif2_array[] = array(
                    'id' => $notif2['id'],
                    'id_sp' => $notif2['id_permintaan'],
                    'kode_sp' => $permintaan_barang2['kode'],
                    'nama_proyek' => $master_proyek2['nama'],
                    'tombol_read' => $tombol_read,
                    'keterangan' => $master_notifikasi2['keterangan'],
                    'user' => $user_notifikasi2['name'],
                    'role' => $role_notifikasi2['role'],
                    'tanggal' => $date2,
                    'warna' => $bg,
                );
            }
        }

        if ($user) {
            $response[] = array(
                'count_unread' => $countnotif,
                'unread' => $notif1_array,
                'read' => $notif2_array,
            );

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function notifikasi_get()
    {
        $base_url = base_url();
        $id_user = $this->get('id_user');

        $user = $this->mymodel->selectDataone("user", array('id' => $id_user));
        $role_user = $user['role_id'];
        $role = $this->mymodel->selectDataone("role", array('id' => $role_user));

        if ($role_user == 0) {
            $notification1 = $this->mymodel->selectWithQuery("SELECT *, DATE_FORMAT(created_at, '%d-%m-%Y %h:%i') as tanggal FROM notifikasi WHERE status = 'ENABLE' GROUP BY id_permintaan, tipe, ke ORDER BY id desc");
            $notification2 = $this->mymodel->selectWithQuery("SELECT *, DATE_FORMAT(created_at, '%d-%m-%Y %h:%i') as tanggal FROM notifikasi WHERE status = 'DISABLE' GROUP BY id_permintaan, tipe, ke ORDER BY id desc");
            $countnotifikasi = $this->mymodel->selectWithQuery("SELECT * FROM notifikasi 
            LEFT JOIN permintaan_barang ON notifikasi.id_permintaan = permintaan_barang.id
            WHERE permintaan_barang.id != '' AND notifikasi.status = 'ENABLE' GROUP BY notifikasi.id_permintaan, tipe, ke ORDER BY notifikasi.id desc");
            $countnotif = count($countnotifikasi);
            $tombol_read = 1;
        } else {
            $notification1 = $this->mymodel->selectWithQuery("SELECT *, DATE_FORMAT(created_at, '%d-%m-%Y %h:%i') as tanggal FROM notifikasi WHERE id_user = '$id_user' AND status_notifikasi = 0 ORDER BY id desc");
            $notification2 = $this->mymodel->selectWithQuery("SELECT *, DATE_FORMAT(created_at, '%d-%m-%Y %h:%i') as tanggal FROM notifikasi WHERE id_user = '$id_user' AND status_notifikasi = 1 ORDER BY id desc");
            $countnotifikasi = $this->mymodel->selectWithQuery("SELECT * FROM notifikasi 
            LEFT JOIN permintaan_barang ON notifikasi.id_permintaan = permintaan_barang.id
            WHERE permintaan_barang.id != '' AND notifikasi.id_user = '$id_user' AND status_notifikasi = 0 ORDER BY notifikasi.id desc");
            $countnotif = count($countnotifikasi);
            $tombol_read = 0;
        }

        foreach ($notification1 as $notif) {
            $bg = '';
            if ($notif['tipe'] == 'create') {
                $bg = '#FFB153';
            } else if ($notif['tipe'] == 'edit') {
                $bg = '#E9E9E9';
            } else if ($notif['tipe'] == 'verifikasi-terima') {
                $bg = '#33FF7F';
            } else if ($notif['tipe'] == 'verifikasi-tolak') {
                $bg = '#FF5733';
            }
            $user_terlibat = $this->mymodel->selectDataone("user", array('id' => $notif['id_user']));
            $master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => $notif['keterangan']));
            $permintaan_barang = $this->mymodel->selectDataone("permintaan_barang", array('id' => $notif['id_permintaan']));
            $master_proyek = $this->mymodel->selectDataone("master_proyek", array('id' => $permintaan_barang['id_proyek']));
            $user_notifikasi = $this->mymodel->selectDataone("user", array('id' => $notif['created_by']));
            $role_notifikasi = $this->mymodel->selectDataone("role", array('id' => $user_notifikasi['role_id']));
            $date = date_create($notif['created_at']);
            $date = date_format($date, "d M Y h:i:s");
            if ($permintaan_barang) {
                $notif1_array[] = array(
                    'id' => $notif['id'],
                    'id_sp' => $notif['id_permintaan'],
                    'kode_sp' => $permintaan_barang['kode'],
                    'nama_proyek' => $master_proyek['nama'],
                    'tombol_read' => $tombol_read,
                    'keterangan' => $master_notifikasi['keterangan'],
                    'user' => $user_notifikasi['name'],
                    'role' => $role_notifikasi['role'],
                    'tanggal' => $date,
                    'warna' => $bg,
                );
            }
        }

        foreach ($notification2 as $notif2) {
            $bg = '';
            if ($notif2['tipe'] == 'create') {
                $bg = '#FFB153';
            } else if ($notif2['tipe'] == 'edit') {
                $bg = '#E9E9E9';
            } else if ($notif2['tipe'] == 'verifikasi-terima') {
                $bg = '#33FF7F';
            } else if ($notif2['tipe'] == 'verifikasi-tolak') {
                $bg = '#FF5733';
            }
            $user_terlibat2 = $this->mymodel->selectDataone("user", array('id' => $notif2['id_user']));
            $master_notifikasi2 = $this->mymodel->selectDataone("master_notifikasi", array('id' => $notif2['keterangan']));
            $permintaan_barang2 = $this->mymodel->selectDataone("permintaan_barang", array('id' => $notif2['id_permintaan']));
            $master_proyek2 = $this->mymodel->selectDataone("master_proyek", array('id' => $permintaan_barang2['id_proyek']));
            $user_notifikasi2 = $this->mymodel->selectDataone("user", array('id' => $notif2['created_by']));
            $role_notifikasi2 = $this->mymodel->selectDataone("role", array('id' => $user_notifikasi2['role_id']));
            $date2 = date_create($notif2['created_at']);
            $date2 = date_format($date2, "d M Y h:i:s");
            if ($permintaan_barang2) {
                $notif2_array[] = array(
                    'id' => $notif2['id'],
                    'id_sp' => $notif2['id_permintaan'],
                    'kode_sp' => $permintaan_barang2['kode'],
                    'nama_proyek' => $master_proyek2['nama'],
                    'tombol_read' => $tombol_read,
                    'keterangan' => $master_notifikasi2['keterangan'],
                    'user' => $user_notifikasi2['name'],
                    'role' => $role_notifikasi2['role'],
                    'tanggal' => $date2,
                    'warna' => $bg,
                );
            }
        }

        if ($user) {
            $response[] = array(
                'count_unread' => $countnotif,
                'unread' => $notif1_array,
                'read' => $notif2_array,
            );

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function read_notifikasi_post()
    {
        $id = $this->post('id');
        $id_user = $this->post('id_user');

        $user = $this->mymodel->selectDataone("user", array('id' => $id_user));
        $role_user = $user['role_id'];
        $role = $this->mymodel->selectDataone("role", array('id' => $role_user));

        $ceknotifikasi = $this->mymodel->selectDataone("notifikasi", array('id' => $id));
        $id_permintaan = $ceknotifikasi['id_permintaan'];

        if ($role_user == 0) {
            $notif['status'] = 'DISABLE';
            $notif['updated_at'] = date("Y-m-d H:i:s");
        } else {
            $notif['status_notifikasi'] = '1';
            $notif['updated_at'] = date("Y-m-d H:i:s");
        }

        $insert = $this->db->update('notifikasi', $notif, array('id' => $id));
        if ($insert) {
            // Set the response and exit
            $this->response([
                'status' => TRUE,
                'api_code' => 'Read',
                'message' => 'Berhasil dibaca'
            ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Whoops , something trouble with system. please try again !'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    // Master
    public function dataproyek_post()
    {
        $base_url = base_url('webfile/');
        $id_user = $this->post('id_user');

        if ($id_user == 'all') {
            $qrya = " GROUP BY master_proyek.nama ORDER BY master_proyek.id asc";
        } else {
            $qrya = " WHERE id_user = '$id_user'";
        }

        $master_proyek = $this->mymodel->selectWithQuery("SELECT master_proyek.id, master_proyek.nama 
        FROM master_proyek_sub 
        LEFT JOIN master_proyek ON master_proyek_sub.kode = master_proyek.kode" . $qrya);

        if ($master_proyek) {
            foreach ($master_proyek as $mp) {
                $response[] = array(
                    'id' => $mp['id'],
                    'nama' => $mp['nama'],
                );
            }

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function dataproyek_get()
    {
        $base_url = base_url('webfile/');
        $id_user = $this->get('id_user');

        if ($id_user == 'all') {
            $qrya = " GROUP BY master_proyek.nama ORDER BY master_proyek.id asc";
        } else {
            $qrya = " WHERE id_user = '$id_user'";
        }

        $master_proyek = $this->mymodel->selectWithQuery("SELECT master_proyek.id, master_proyek.nama 
        FROM master_proyek_sub 
        LEFT JOIN master_proyek ON master_proyek_sub.kode = master_proyek.kode" . $qrya);

        if ($master_proyek) {
            foreach ($master_proyek as $mp) {
                $response[] = array(
                    'id' => $mp['id'],
                    'nama' => $mp['nama'],
                );
            }

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function datajenis_post()
    {
        $base_url = base_url('webfile/');
        $id_user = $this->post('id_user');

        if ($id_user == 'all') {
            $qrya = " GROUP BY master_jenis.value ORDER BY master_jenis.id asc";
        } else {
            $qrya = " WHERE id_user = '$id_user'";
        }

        $master_jenis = $this->mymodel->selectWithQuery("SELECT master_jenis.id, master_jenis.value
        FROM user_jenis 
        LEFT JOIN master_jenis ON user_jenis.jenis = master_jenis.id" . $qrya);

        if ($master_jenis) {
            foreach ($master_jenis as $mj) {
                $response[] = array(
                    'id' => $mj['id'],
                    'nama' => $mj['value'],
                );
            }

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function datajenis_get()
    {
        $base_url = base_url('webfile/');
        $id_user = $this->get('id_user');

        if ($id_user == 'all') {
            $qrya = " GROUP BY master_jenis.value ORDER BY master_jenis.id asc";
        } else {
            $qrya = " WHERE id_user = '$id_user'";
        }

        $master_jenis = $this->mymodel->selectWithQuery("SELECT master_jenis.id, master_jenis.value
        FROM user_jenis 
        LEFT JOIN master_jenis ON user_jenis.jenis = master_jenis.id" . $qrya);

        if ($master_jenis) {
            foreach ($master_jenis as $mj) {
                $response[] = array(
                    'id' => $mj['id'],
                    'nama' => $mj['value'],
                );
            }

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function datacostcode_post()
    {
        $base_url = base_url('webfile/');
        $id = $this->post('id');

        if ($id == 'all') {
            $qrya = "";
        } else {
            $qrya = " WHERE id = '$id' OR kode_costcontrol = '$id'";
        }

        $cost_code = $this->mymodel->selectWithQuery("SELECT *
        FROM cost_code" . $qrya);

        if ($cost_code) {
            $response = $cost_code;

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function datacostcode_get()
    {
        $base_url = base_url('webfile/');
        $id = $this->get('id');
        if ($id == 'all') {
            $qrya = "";
        } else {
            $qrya = " WHERE id = '$id' OR kode_costcontrol = '$id'";
        }

        $cost_code = $this->mymodel->selectWithQuery("SELECT *
        FROM cost_code" . $qrya);

        if ($cost_code) {
            $response = $cost_code;

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }


    public function datauom_post()
    {
        $base_url = base_url('webfile/');
        $id = $this->post('id');

        if ($id == 'all') {
            $qrya = "";
        } else {
            $qrya = " WHERE id = '$id'";
        }

        $master_uom = $this->mymodel->selectWithQuery("SELECT *
        FROM master_uom" . $qrya);

        if ($master_uom) {
            $response = $master_uom;

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function datauom_get()
    {
        $base_url = base_url('webfile/');
        $id = $this->get('id');

        if ($id == 'all') {
            $qrya = "";
        } else {
            $qrya = " WHERE id = '$id'";
        }

        $master_uom = $this->mymodel->selectWithQuery("SELECT *
        FROM master_uom" . $qrya);

        if ($master_uom) {
            $response = $master_uom;

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }


    public function datapersyaratan_post()
    {
        $base_url = base_url('webfile/');
        $id = $this->post('id');

        if ($id == 'all') {
            $qrya = "";
        } else {
            $qrya = " WHERE id = '$id'";
        }

        $persyaratan = $this->mymodel->selectWithQuery("SELECT *
        FROM master_persyaratan" . $qrya);

        if ($persyaratan) {
            $response = $persyaratan;

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function datapersyaratan_get()
    {
        $base_url = base_url('webfile/');
        $id = $this->get('id');

        if ($id == 'all') {
            $qrya = "";
        } else {
            $qrya = " WHERE id = '$id'";
        }

        $persyaratan = $this->mymodel->selectWithQuery("SELECT *
        FROM master_persyaratan" . $qrya);

        if ($persyaratan) {
            $response = $persyaratan;

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }


    // <-- Surat Permintaan -->
    public function DataAll_post()
    {
        $base_url = base_url('webfile/');
        $id_user = $this->post('id_user');

        $user = $this->mymodel->selectDataone("user", array('id' => $id_user));
        $master_proyek_sub = $this->mymodel->selectWithQuery("SELECT master_proyek.id, master_proyek.nama FROM master_proyek_sub LEFT JOIN master_proyek ON master_proyek_sub.kode = master_proyek.kode WHERE id_user = '$id_user'");
        $jenisku = $this->mymodel->selectWithQuery("SELECT master_jenis.id, master_jenis.value FROM user_jenis LEFT JOIN master_jenis ON user_jenis.jenis = master_jenis.id WHERE id_user = '$id_user'");

        $qry_proyekku_arr = '';
        $qry_jenisku_arr = '';
        $a = 0;
        $b = 0;
        foreach ($master_proyek_sub as $ps) {
            $a++;
            if ($a == 1) {
                $or = '';
            } else {
                $or = ' OR ';
            }
            $id_ps = $ps['id'];
            $qry_proyekku_arr .=  $or . "permintaan_barang.id_proyek = '$id_ps'";
        }

        foreach ($jenisku as $jk) {
            $b++;
            if ($b == 1) {
                $or = '';
            } else {
                $or = ' OR ';
            }
            $id_jk = $jk['value'];
            $qry_jenisku_arr .= $or . "permintaan_barang.jenis = '$id_jk'";
        }

        if ($master_proyek_sub) {
            $qry_proyekku = ' AND (' . $qry_proyekku_arr . ')';
        } else {
            $qry_proyekku = '';
        }

        if ($jenisku) {
            $qry_jenisku = ' AND (' . $qry_jenisku_arr . ')';
        } else {
            $qry_jenisku = '';
        }

        if ($user['role_id'] == 0 || $user['role_id'] == 5) {
            $qry_page = "";
        } else {
            $qry_page = "WHERE permintaan_barang.status = 'ENABLE' " . $qry_proyekku . " " . $qry_jenisku;
        }

        $permintaan_barang = $this->mymodel->selectWithQuery("SELECT * FROM 
        (
            SELECT permintaan_barang.id,
            permintaan_barang.kode,
            DATE_FORMAT(permintaan_barang.created_at ,'%d-%m-%Y') as tanggal_pengajuan,
            permintaan_barang.jenis,
            permintaan_barang.id_proyek,
            master_proyek.nama as nama_proyek,
            master_proyek.lokasi as nama_lokasi,
            permintaan_barang.catatan,
            permintaan_barang.id_pic,permintaan_barang.id_pm,permintaan_barang.id_cc,permintaan_barang.id_pd,permintaan_barang.id_lp,
            permintaan_barang.status_permintaan as id_status,
            master_status.nama as status_permintaan,
            CONCAT('$base_url', permintaan_barang.file) as file_lampiran,
            permintaan_barang.status
            FROM permintaan_barang
            LEFT JOIN master_proyek ON permintaan_barang.id_proyek = master_proyek.id
            LEFT JOIN master_status ON permintaan_barang.status_permintaan = master_status.id
            " . $qry_page . "
        ) a 
        WHERE a.status = 'ENABLE'");

        if ($permintaan_barang) {
            foreach ($permintaan_barang as $pb) {
                $response[] = array(
                    'id' => $pb['id'],
                    'kode' => $pb['kode'],
                    'tanggal_pengajuan' => $pb['tanggal_pengajuan'],
                    'jenis' => $pb['jenis'],
                    'id_proyek' => $pb['id_proyek'],
                    'nama_proyek' => $pb['nama_proyek'],
                    'nama_lokasi' => $pb['nama_lokasi'],
                    'catatan' => $pb['catatan'],
                    'id_pic' => $pb['id_pic'],
                    'id_pm' => $pb['id_pm'],
                    'id_cc' => $pb['id_cc'],
                    'id_pd' => $pb['id_pd'],
                    'id_lp' => $pb['id_lp'],
                    'id_status' => $pb['id_status'],
                    'status_permintaan' => $pb['status_permintaan'],
                    'file_lampiran' => $pb['file_lampiran'],
                );
            }
            // print_r($response);
            // die();
            // Set the response and exit
            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function DataAll_get()
    {
        $base_url = base_url('webfile/');
        $id_user = $this->get('id_user');

        $user = $this->mymodel->selectDataone("user", array('id' => $id_user));
        $master_proyek_sub = $this->mymodel->selectWithQuery("SELECT master_proyek.id, master_proyek.nama FROM master_proyek_sub LEFT JOIN master_proyek ON master_proyek_sub.kode = master_proyek.kode WHERE id_user = '$id_user'");
        $jenisku = $this->mymodel->selectWithQuery("SELECT master_jenis.id, master_jenis.value FROM user_jenis LEFT JOIN master_jenis ON user_jenis.jenis = master_jenis.id WHERE id_user = '$id_user'");

        $qry_proyekku_arr = '';
        $qry_jenisku_arr = '';
        $a = 0;
        $b = 0;
        foreach ($master_proyek_sub as $ps) {
            $a++;
            if ($a == 1) {
                $or = '';
            } else {
                $or = ' OR ';
            }
            $id_ps = $ps['id'];
            $qry_proyekku_arr .=  $or . "permintaan_barang.id_proyek = '$id_ps'";
        }

        foreach ($jenisku as $jk) {
            $b++;
            if ($b == 1) {
                $or = '';
            } else {
                $or = ' OR ';
            }
            $id_jk = $jk['value'];
            $qry_jenisku_arr .= $or . "permintaan_barang.jenis = '$id_jk'";
        }

        if ($master_proyek_sub) {
            $qry_proyekku = ' AND (' . $qry_proyekku_arr . ')';
        } else {
            $qry_proyekku = '';
        }

        if ($jenisku) {
            $qry_jenisku = ' AND (' . $qry_jenisku_arr . ')';
        } else {
            $qry_jenisku = '';
        }

        if ($user['role_id'] == 0 || $user['role_id'] == 5) {
            $qry_page = "";
        } else {
            $qry_page = "WHERE permintaan_barang.status = 'ENABLE' " . $qry_proyekku . " " . $qry_jenisku;
        }

        $permintaan_barang = $this->mymodel->selectWithQuery("SELECT * FROM 
        (
            SELECT permintaan_barang.id,
            permintaan_barang.kode,
            DATE_FORMAT(permintaan_barang.created_at ,'%d-%m-%Y') as tanggal_pengajuan,
            permintaan_barang.jenis,
            permintaan_barang.id_proyek,
            master_proyek.nama as nama_proyek,
            master_proyek.lokasi as nama_lokasi,
            permintaan_barang.catatan,
            permintaan_barang.id_pic,permintaan_barang.id_pm,permintaan_barang.id_cc,permintaan_barang.id_pd,permintaan_barang.id_lp,
            permintaan_barang.status_permintaan as id_status,
            master_status.nama as status_permintaan,
            CONCAT('$base_url', permintaan_barang.file) as file_lampiran,
            permintaan_barang.status
            FROM permintaan_barang
            LEFT JOIN master_proyek ON permintaan_barang.id_proyek = master_proyek.id
            LEFT JOIN master_status ON permintaan_barang.status_permintaan = master_status.id
            " . $qry_page . "
        ) a 
        WHERE a.status = 'ENABLE'");

        if ($permintaan_barang) {
            foreach ($permintaan_barang as $pb) {
                $response[] = array(
                    'id' => $pb['id'],
                    'kode' => $pb['kode'],
                    'tanggal_pengajuan' => $pb['tanggal_pengajuan'],
                    'jenis' => $pb['jenis'],
                    'id_proyek' => $pb['id_proyek'],
                    'nama_proyek' => $pb['nama_proyek'],
                    'nama_lokasi' => $pb['nama_lokasi'],
                    'catatan' => $pb['catatan'],
                    'id_pic' => $pb['id_pic'],
                    'id_pm' => $pb['id_pm'],
                    'id_cc' => $pb['id_cc'],
                    'id_pd' => $pb['id_pd'],
                    'id_lp' => $pb['id_lp'],
                    'id_status' => $pb['id_status'],
                    'status_permintaan' => $pb['status_permintaan'],
                    'file_lampiran' => $pb['file_lampiran'],
                );
            }
            // print_r($response);
            // die();
            // Set the response and exit
            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function MyData_post()
    {
        $base_url = base_url('webfile/');
        $id_user = $this->post('id_user');

        $user = $this->mymodel->selectDataone("user", array('id' => $id_user));
        $qry_penugasan = '';
        $qry_kode_penugasan = '';
        if ($user['role_id'] == 1) {
            $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 0 ';
        } else if ($user['role_id'] == 2) {
            $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 1 ';
        } else if ($user['role_id'] == 3) {
            $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 3 ';
        } else if ($user['role_id'] == 4) {
            $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 5 ';
        } else if ($user['role_id'] == 5) {
            $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 7 ';
        } else if ($user['role_id'] == 6) {
            $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 8 ';
        } else if ($user['role_id'] == 7) {
            $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 3 ';
            $qry_penugasan = " LEFT JOIN (
                                SELECT permintaan_barang_sub.kode, kepada, penugasan 
                                FROM permintaan_barang_sub 
                                WHERE kepada = 7 AND penugasan = 'Pending') b
                                ON a.kode = b.kode ";
            $qry_kode_penugasan = ' AND b.kode IS NOT NULL';
        } else if ($user['role_id'] == 8) {
            $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 3 ';
            $qry_penugasan = " LEFT JOIN (
                                SELECT permintaan_barang_sub.kode, kepada, penugasan 
                                FROM permintaan_barang_sub 
                                WHERE kepada = 8 AND penugasan = 'Pending') b
                                ON a.kode = b.kode ";
            $qry_kode_penugasan = ' AND b.kode IS NOT NULL';
        } else {
            $qry_verifikasi = '';
        }

        $master_proyek_sub = $this->mymodel->selectWithQuery("SELECT master_proyek.id, master_proyek.nama FROM master_proyek_sub LEFT JOIN master_proyek ON master_proyek_sub.kode = master_proyek.kode WHERE id_user = '$id_user'");
        $jenisku = $this->mymodel->selectWithQuery("SELECT master_jenis.id, master_jenis.value FROM user_jenis LEFT JOIN master_jenis ON user_jenis.jenis = master_jenis.id WHERE id_user = '$id_user'");

        $qry_proyekku_arr = '';
        $qry_jenisku_arr = '';
        $a = 0;
        $b = 0;
        foreach ($master_proyek_sub as $ps) {
            $a++;
            if ($a == 1) {
                $or = '';
            } else {
                $or = ' OR ';
            }
            $id_ps = $ps['id'];
            $qry_proyekku_arr .=  $or . "permintaan_barang.id_proyek = '$id_ps'";
        }

        foreach ($jenisku as $jk) {
            $b++;
            if ($b == 1) {
                $or = '';
            } else {
                $or = ' OR ';
            }
            $id_jk = $jk['value'];
            $qry_jenisku_arr .= $or . "permintaan_barang.jenis = '$id_jk'";
        }

        if ($master_proyek_sub) {
            $qry_proyekku = ' AND (' . $qry_proyekku_arr . ')';
        } else {
            $qry_proyekku = '';
        }

        if ($jenisku) {
            $qry_jenisku = ' AND (' . $qry_jenisku_arr . ')';
        } else {
            $qry_jenisku = '';
        }

        if ($user['role_id'] == 0) {
            $qry_page = "";
        } else if ($user['role_id'] == 5 || $user['role_id'] == 6) {
            $qry_page = "WHERE permintaan_barang.status = 'ENABLE' " . $qry_jenisku . " " . $qry_verifikasi;
        } else {
            $qry_page = "WHERE permintaan_barang.status = 'ENABLE' " . $qry_proyekku . " " . $qry_jenisku . " " . $qry_verifikasi;
        }

        $permintaan_barang = $this->mymodel->selectWithQuery("SELECT * FROM 
        (
            SELECT permintaan_barang.id,
            permintaan_barang.kode,
            DATE_FORMAT(permintaan_barang.created_at ,'%d-%m-%Y') as tanggal_pengajuan,
            permintaan_barang.jenis,
            permintaan_barang.id_proyek,
            master_proyek.nama as nama_proyek,
            master_proyek.lokasi as nama_lokasi,
            permintaan_barang.catatan,
            permintaan_barang.id_pic,permintaan_barang.id_pm,permintaan_barang.id_cc,permintaan_barang.id_pd,permintaan_barang.id_lp,
            permintaan_barang.status_permintaan as id_status,
            master_status.nama as status_permintaan,
            CONCAT('$base_url', permintaan_barang.file) as file_lampiran,
            permintaan_barang.status
            FROM permintaan_barang
            LEFT JOIN master_proyek ON permintaan_barang.id_proyek = master_proyek.id
            LEFT JOIN master_status ON permintaan_barang.status_permintaan = master_status.id
            " . $qry_page . "
        ) a "
            . $qry_penugasan
            . " WHERE a.status = 'ENABLE'" . $qry_kode_penugasan);

        if ($permintaan_barang) {
            foreach ($permintaan_barang as $pb) {
                $response[] = array(
                    'id' => $pb['id'],
                    'kode' => $pb['kode'],
                    'tanggal_pengajuan' => $pb['tanggal_pengajuan'],
                    'jenis' => $pb['jenis'],
                    'id_proyek' => $pb['id_proyek'],
                    'nama_proyek' => $pb['nama_proyek'],
                    'nama_lokasi' => $pb['nama_lokasi'],
                    'catatan' => $pb['catatan'],
                    'id_pic' => $pb['id_pic'],
                    'id_pm' => $pb['id_pm'],
                    'id_cc' => $pb['id_cc'],
                    'id_pd' => $pb['id_pd'],
                    'id_lp' => $pb['id_lp'],
                    'id_status' => $pb['id_status'],
                    'status_permintaan' => $pb['status_permintaan'],
                    'file_lampiran' => $pb['file_lampiran'],
                );
            }
            // print_r($response);
            // die();
            // Set the response and exit
            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function MyData_get()
    {
        $base_url = base_url('webfile/');
        $id_user = $this->get('id_user');

        $user = $this->mymodel->selectDataone("user", array('id' => $id_user));
        $qry_penugasan = '';
        $qry_kode_penugasan = '';
        if ($user['role_id'] == 1) {
            $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 0 ';
        } else if ($user['role_id'] == 2) {
            $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 1 ';
        } else if ($user['role_id'] == 3) {
            $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 3 ';
        } else if ($user['role_id'] == 4) {
            $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 5 ';
        } else if ($user['role_id'] == 5) {
            $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 7 ';
        } else if ($user['role_id'] == 6) {
            $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 8 ';
        } else if ($user['role_id'] == 7) {
            $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 3 ';
            $qry_penugasan = " LEFT JOIN (
                                SELECT permintaan_barang_sub.kode, kepada, penugasan 
                                FROM permintaan_barang_sub 
                                WHERE kepada = 7 AND penugasan = 'Pending') b
                                ON a.kode = b.kode ";
            $qry_kode_penugasan = ' AND b.kode IS NOT NULL';
        } else if ($user['role_id'] == 8) {
            $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 3 ';
            $qry_penugasan = " LEFT JOIN (
                                SELECT permintaan_barang_sub.kode, kepada, penugasan 
                                FROM permintaan_barang_sub 
                                WHERE kepada = 8 AND penugasan = 'Pending') b
                                ON a.kode = b.kode ";
            $qry_kode_penugasan = ' AND b.kode IS NOT NULL';
        } else {
            $qry_verifikasi = '';
        }

        $master_proyek_sub = $this->mymodel->selectWithQuery("SELECT master_proyek.id, master_proyek.nama FROM master_proyek_sub LEFT JOIN master_proyek ON master_proyek_sub.kode = master_proyek.kode WHERE id_user = '$id_user'");
        $jenisku = $this->mymodel->selectWithQuery("SELECT master_jenis.id, master_jenis.value FROM user_jenis LEFT JOIN master_jenis ON user_jenis.jenis = master_jenis.id WHERE id_user = '$id_user'");

        $qry_proyekku_arr = '';
        $qry_jenisku_arr = '';
        $a = 0;
        $b = 0;
        foreach ($master_proyek_sub as $ps) {
            $a++;
            if ($a == 1) {
                $or = '';
            } else {
                $or = ' OR ';
            }
            $id_ps = $ps['id'];
            $qry_proyekku_arr .=  $or . "permintaan_barang.id_proyek = '$id_ps'";
        }

        foreach ($jenisku as $jk) {
            $b++;
            if ($b == 1) {
                $or = '';
            } else {
                $or = ' OR ';
            }
            $id_jk = $jk['value'];
            $qry_jenisku_arr .= $or . "permintaan_barang.jenis = '$id_jk'";
        }

        if ($master_proyek_sub) {
            $qry_proyekku = ' AND (' . $qry_proyekku_arr . ')';
        } else {
            $qry_proyekku = '';
        }

        if ($jenisku) {
            $qry_jenisku = ' AND (' . $qry_jenisku_arr . ')';
        } else {
            $qry_jenisku = '';
        }

        if ($user['role_id'] == 0) {
            $qry_page = "";
        } else if ($user['role_id'] == 5 || $user['role_id'] == 6) {
            $qry_page = "WHERE permintaan_barang.status = 'ENABLE' " . $qry_jenisku . " " . $qry_verifikasi;
        } else {
            $qry_page = "WHERE permintaan_barang.status = 'ENABLE' " . $qry_proyekku . " " . $qry_jenisku . " " . $qry_verifikasi;
        }

        $permintaan_barang = $this->mymodel->selectWithQuery("SELECT * FROM 
        (
            SELECT permintaan_barang.id,
            permintaan_barang.kode,
            DATE_FORMAT(permintaan_barang.created_at ,'%d-%m-%Y') as tanggal_pengajuan,
            permintaan_barang.jenis,
            permintaan_barang.id_proyek,
            master_proyek.nama as nama_proyek,
            master_proyek.lokasi as nama_lokasi,
            permintaan_barang.catatan,
            permintaan_barang.id_pic,permintaan_barang.id_pm,permintaan_barang.id_cc,permintaan_barang.id_pd,permintaan_barang.id_lp,
            permintaan_barang.status_permintaan as id_status,
            master_status.nama as status_permintaan,
            CONCAT('$base_url', permintaan_barang.file) as file_lampiran,
            permintaan_barang.status
            FROM permintaan_barang
            LEFT JOIN master_proyek ON permintaan_barang.id_proyek = master_proyek.id
            LEFT JOIN master_status ON permintaan_barang.status_permintaan = master_status.id
            " . $qry_page . "
        ) a "
            . $qry_penugasan
            . " WHERE a.status = 'ENABLE'" . $qry_kode_penugasan);

        if ($permintaan_barang) {
            foreach ($permintaan_barang as $pb) {
                $response[] = array(
                    'id' => $pb['id'],
                    'kode' => $pb['kode'],
                    'tanggal_pengajuan' => $pb['tanggal_pengajuan'],
                    'jenis' => $pb['jenis'],
                    'id_proyek' => $pb['id_proyek'],
                    'nama_proyek' => $pb['nama_proyek'],
                    'nama_lokasi' => $pb['nama_lokasi'],
                    'catatan' => $pb['catatan'],
                    'id_pic' => $pb['id_pic'],
                    'id_pm' => $pb['id_pm'],
                    'id_cc' => $pb['id_cc'],
                    'id_pd' => $pb['id_pd'],
                    'id_lp' => $pb['id_lp'],
                    'id_status' => $pb['id_status'],
                    'status_permintaan' => $pb['status_permintaan'],
                    'file_lampiran' => $pb['file_lampiran'],
                );
            }
            // print_r($response);
            // die();
            // Set the response and exit
            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function create_sp_post()
    {
        $id_proyek = $this->post('id_proyek');
        $jenis = $this->post('jenis');
        $id_user = $this->post('id_user');

        $input = [
            'id_proyek' => $this->post('id_proyek'),
            'jenis' => $this->post('jenis'),
            'id_user' => $this->post('id_user')
        ];

        $master_proyek = $this->mymodel->selectDataone('master_proyek', array('id' => $id_proyek));
        $permintaan_barang = $this->mymodel->selectWhere('permintaan_barang', array('jenis' => $jenis, 'id_proyek' => $id_proyek));
        $countid = count($permintaan_barang) + 1;
        if ($jenis == 'SPB') {
            $kode_jenis = 'B';
        } else if ($jenis == 'SPA') {
            $kode_jenis = 'A';
        } else if ($jenis == 'SPS') {
            $kode_jenis = 'S';
        }

        $res = $kode_jenis . '-' . $master_proyek['kode'] . '-' . $countid;

        $error = [];
        foreach ($input as $key => $value) {
            $value = trim($value);
            $key = str_replace("_", " ", $key);
            if (empty($value)) {
                $error[] = "$key is required";
            }
        }

        $data['kode'] = $res;
        $data['id_proyek'] = $id_proyek;
        $data['created_by'] = $id_user;
        $data['created_at'] = date('Y-m-d H:i:s');
        $data['status'] = "ENABLE";
        $data['id_pic'] = $id_user;
        $data['jenis'] = $jenis;
        $data['status_permintaan'] = '0';
        if (count($error) != 0) {
            $this->response([
                'status' => FALSE,
                'message' => $error,
                'data' => $data
            ], REST_Controller::HTTP_OK);
        } else {
            $insert = $this->db->insert('permintaan_barang', $data);
            if ($insert) {
                // Set the response and exit
                $this->response([
                    'status' => TRUE,
                    'api_code' => 'Created',
                    'message' => 'Surat Permintaan berhasil dibuat',
                    'data' => $data
                ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Whoops , something trouble with system. please try again !',
                    'data' => []
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }
        }
    }

    public function edit_sp_post()
    {
        $id = $this->input->post('id', TRUE);
        $id_user = $this->input->post('id_user', TRUE);

        $permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));
        $master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => 2));

        $kode = $permintaan_barang['kode'];
        $log = json_decode($permintaan_barang['log']);
        $count_log = count($log);

        $permintaan_barang_sub = $this->mymodel->selectWithQuery("SELECT * FROM permintaan_barang_sub WHERE kode = '$kode'");

        $count_id_barang = count($permintaan_barang_sub);

        for ($i = 0; $i < $count_id_barang; $i++) {
            $barang = array(
                'kode' => $kode,
                'id_barang' => $permintaan_barang_sub[$i]['id_barang'],
                'kode_pekerjaan' => $permintaan_barang_sub[$i]['kode_pekerjaan'],
                'id_satuan' => $permintaan_barang_sub[$i]['id_satuan'],
                'qty' => $permintaan_barang_sub[$i]['qty'],
                'fungsi' => $permintaan_barang_sub[$i]['fungsi'],
                'target' => $permintaan_barang_sub[$i]['target'],
                'keterangan' => $permintaan_barang_sub[$i]['keterangan'],
                'created_at' => date('Y-m-d H:i:s'),
                'status' => "ENABLE",
                'created_by' => $id_user,
            );
        }

        $file = $this->mymodel->selectWithQuery("SELECT * FROM file WHERE table_id = '$id' AND file.table = 'permintaan_barang'");
        $count_file = count($file);
        for ($i = 0; $i < $count_file; $i++) {
            $file_lampiran[$i] = array(
                'name' => $file[$i]['name'],
                'dir' => $file[$i]['dir'],
                'keterangan' => $file[$i]['keterangan'],
            );
        }

        $user = $this->mymodel->selectDataone("user", array('id' => $id_user));
        $role_user = $user['role_id'];
        $role = $this->mymodel->selectDataone("role", array('id' => $role_user));
        $master_proyek = $this->mymodel->selectDataone("master_proyek", array('id' => $permintaan_barang['id_proyek']));
        $kode_proyek = $master_proyek['kode'];
        $master_proyek_sub = $this->mymodel->selectWithQuery("SELECT * FROM master_proyek_sub WHERE kode = '$kode_proyek'");
        $master_jenis = $this->mymodel->selectDataone("master_jenis", array('value' => $permintaan_barang['jenis']));
        $jenis_permintaan = $master_jenis['id'];

        $cek_notif_ke = $this->mymodel->selectWithQuery("SELECT ke FROM notifikasi WHERE id_permintaan = '$id' AND tipe = 'edit' ORDER BY ke desc LIMIT 1");
        $count_ke = $cek_notif_ke[0]['ke'] + 1;
        foreach ($master_proyek_sub as $mps) {
            $user_jenis = $this->mymodel->selectDataone("user_jenis", array('id_user' => $mps['id_user'], 'jenis' => $jenis_permintaan));
            if ($user_jenis) {
                $id_user_jenis = $user_jenis['id_user'];
                if ($role_user == 1) {
                    $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id = 1");
                } else if ($role_user == 2) {
                    $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 2");
                } else if ($role_user == 3) {
                    $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 3");
                } else if ($role_user == 4) {
                    $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 4");
                } else if ($role_user == 5) {
                    $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 5");
                }
                if ($user_role) {
                    $notif['keterangan'] = 2;
                    $notif['id_user'] = $user_role['id'];
                    $notif['id_permintaan'] = $id;
                    $notif['status_notifikasi'] = '0';
                    $notif['tipe'] = 'edit';
                    $notif['ke'] = $count_ke;
                    $notif['status'] = 'ENABLE';
                    $notif['created_at'] = date("Y-m-d H:i:s");
                    $notif['created_by'] = $id_user;
                    $this->mymodel->insertData('notifikasi', $notif);

                    $tokens[] = $user_role['token'];
                }
            }
        }

        $notifications = (object) array(
            'body' => $master_notifikasi['keterangan'],
            'title' => $permintaan_barang['kode'],
        );
        $messages = (object) array(
            'notification_title' => $permintaan_barang['kode'],
            'notification_body' => $master_notifikasi['keterangan'],
            'data_body_key' => $master_notifikasi['keterangan'],
            'id_sp' => $permintaan_barang['id'],
            'kode_sp' => $permintaan_barang['kode'],
        );
        $fields = array(
            'registration_ids' => $tokens,
            'data' => $messages
        );

        $this->curl->access_api($fields);

        $log = json_decode($permintaan_barang['log']);
        $log[$count_log] = (object) array(
            'kode' => $kode,
            'id_proyek' => $master_proyek['id'],
            'lokasi' => $master_proyek['lokasi'],
            'status_permintaan' => 1,
            'jenis' => "SPB",
            'status' => "ENABLE",
            'created_by' => '',
            'created_at' => date('Y-m-d H:i:s'),
            'file' => $file_lampiran,
            'sub' => $barang,
        );
        $datalog = json_encode($log);
        $dt['log'] = $datalog;

        $dt['updated_at'] = date("Y-m-d H:i:s");

        $error = [];
        if (count($error) != 0) {
            $this->response([
                'status' => FALSE,
                'message' => $error,
                'data' => $dt
            ], REST_Controller::HTTP_OK);
        } else {
            $insert = $this->db->update('permintaan_barang', $dt, array('id' => $id));
            if ($insert) {
                // Set the response and exit
                $this->response([
                    'status' => TRUE,
                    'api_code' => 'Edited',
                    'message' => 'Surat Permintaan berhasil diubah',
                    'data' => $dt
                ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Whoops , something trouble with system. please try again !',
                    'data' => []
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }
        }
    }

    public function detail_post()
    {
        $base_url = base_url('webfile/');
        $id_sp = $this->post('id_sp');
        $id_user = $this->post('id_user');

        $user = $this->mymodel->selectDataone("user", array('id' => $id_user));
        $role_user = $user['role_id'];
        $role = $this->mymodel->selectDataone("role", array('id' => $role_user));

        $permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id_sp));
        $kode = $permintaan_barang['kode'];
        $id_proyek = $permintaan_barang['id_proyek'];
        $status_permintaan = $permintaan_barang['status_permintaan'];
        $permintaan_barang_sub = $this->mymodel->selectWithQuery("SELECT * FROM permintaan_barang_sub WHERE kode = '$kode'");
        $master_proyek = $this->mymodel->selectDataone('master_proyek', array('id' => $id_proyek));
        $master_status = $this->mymodel->selectDataone('master_status', array('id' => $status_permintaan));
        $file_lampiran = $this->mymodel->selectWhere("file", array('table_id' => $permintaan_barang['id'], 'table' => 'permintaan_barang'));

        $tombol_ajukan = 0;
        $tombol_batalkan = 0;
        $tombol_simpan_draft = 0;
        $tombol_terima = 0;
        $tombol_tolak = 0;
        $tombol_simpan = 0;
        $tombol_edit = 0;
        $tombol_hapus = 0;
        $tombol_cetak = 0;
        $tombol_tambah_item = 0;
        $tombol_edit_item = 0;
        $tombol_hapus_item = 0;

        if ($role_user == 1) {
            if ($permintaan_barang['status_permintaan'] == 0) {
                $tombol_ajukan = 1;
            }
            $tombol_batalkan = 1;
            $tombol_simpan_draft = 1;
            $tombol_simpan = 1;
            $tombol_edit = 1;
            $tombol_hapus = 1;
            $tombol_tambah_item = 1;
            $tombol_edit_item = 1;
            $tombol_hapus_item = 1;
        } else if ($role_user == 2) {
            $tombol_terima = 1;
            $tombol_tolak = 1;
            $tombol_simpan = 1;
            $tombol_edit = 1;
            $tombol_hapus = 1;
            $tombol_tambah_item = 1;
            $tombol_edit_item = 1;
            $tombol_hapus_item = 1;
        } else if ($role_user == 3) {
            $tombol_terima = 1;
            $tombol_tolak = 1;
            $tombol_simpan = 1;
            $tombol_edit = 1;
            $tombol_hapus = 1;
            $tombol_edit_item = 1;
            $tombol_hapus_item = 1;
        } else if ($role_user == 4) {
            $tombol_terima = 1;
            $tombol_tolak = 1;
        } else if ($role_user == 5) {
            $tombol_terima = 1;
        } else if ($role_user == 7) {
            $tombol_edit = 1;
            $tombol_hapus = 1;
            $tombol_edit_item = 1;
            $tombol_hapus_item = 1;
        } else if ($role_user == 8) {
            $tombol_edit = 1;
            $tombol_hapus = 1;
            $tombol_edit_item = 1;
            $tombol_hapus_item = 1;
        }

        if ($permintaan_barang) {
            foreach ($permintaan_barang_sub as $pbs) {
                $persyaratan_arr = array();
                $persyaratan = json_decode($pbs['persyaratan']);
                foreach ($persyaratan as $psy) {
                    $persyaratan_arr[] = array(
                        'persyaratan' => $psy->persyaratan
                    );
                }
                $keterangan_arr = array();
                $keterangan = json_decode($pbs['keterangan']);
                foreach ($keterangan as $ket) {
                    $user_history = $this->mymodel->selectDataone("user", array('id' => $ket->id_user));
                    $role_history = $this->mymodel->selectDataone("role", array('id' => $ket->role_user));
                    $keterangan_arr[] = array(
                        'tanggal' => $ket->tanggal,
                        'nama_user' => $user_history['name'],
                        'role_user' => $role_history['role'],
                        'keterangan' => $ket->keterangan
                    );
                }
                $items[] = array(
                    'id' => $pbs['id'],
                    'id_barang' => $pbs['id_barang'],
                    'kode_pekerjaan' => $pbs['kode_pekerjaan'],
                    'id_satuan' => $pbs['id_satuan'],
                    'qty' => $pbs['qty'],
                    'fungsi' => $pbs['fungsi'],
                    'target' => $pbs['target'],
                    'keterangan' => $keterangan_arr,
                    'kapasitas' => $pbs['kapasitas'],
                    'merk' => $pbs['merk'],
                    'waktu_pemakaian' => $pbs['waktu_pemakaian'],
                    'waktu_pelaksanaan' => $pbs['waktu_pelaksanaan'],
                    'persyaratan' => $persyaratan_arr,
                    'tombol_tambah_item' => $tombol_tambah_item,
                    'tombol_edit_item' => $tombol_edit_item,
                    'tombol_hapus_item' => $tombol_hapus_item,
                );
            }

            foreach ($file_lampiran as $file) {
                $files[] = array(
                    'dir' => base_url($file['dir']),
                    'keterangan' => $file['keterangan'],
                );
            }

            $response[] = array(
                'id' => $permintaan_barang['id'],
                'kode' => $permintaan_barang['kode'],
                'tanggal_pengajuan' => $permintaan_barang['created_at'],
                'jenis' => $permintaan_barang['jenis'],
                'id_proyek' => $permintaan_barang['id_proyek'],
                'nama_proyek' => $master_proyek['nama'],
                'nama_lokasi' => $master_proyek['lokasi'],
                'catatan' => $permintaan_barang['catatan'],
                'id_pic' => $permintaan_barang['id_pic'],
                'id_pm' => $permintaan_barang['id_pm'],
                'id_cc' => $permintaan_barang['id_cc'],
                'id_pd' => $permintaan_barang['id_pd'],
                'id_lp' => $permintaan_barang['id_lp'],
                'tombol_ajukan' => $tombol_ajukan,
                'tombol_batalkan' => $tombol_batalkan,
                'tombol_simpan_draft' => $tombol_simpan_draft,
                'tombol_terima' => $tombol_terima,
                'tombol_tolak' => $tombol_tolak,
                'tombol_simpan' => $tombol_simpan,
                'tombol_cetak' => $tombol_cetak,
                'tombol_edit' => $tombol_edit,
                'tombol_hapus' => $tombol_hapus,
                'id_status' => $permintaan_barang['status_permintaan'],
                'status_permintaan' => $master_status['nama'],
                'file_lampiran' => $files,
                'items' => $items,
            );

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function detail_get()
    {
        $base_url = base_url('webfile/');
        $id_sp = $this->get('id_sp');
        $id_user = $this->get('id_user');

        $user = $this->mymodel->selectDataone("user", array('id' => $id_user));
        $role_user = $user['role_id'];
        $role = $this->mymodel->selectDataone("role", array('id' => $role_user));

        $permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id_sp));
        $kode = $permintaan_barang['kode'];
        $id_proyek = $permintaan_barang['id_proyek'];
        $status_permintaan = $permintaan_barang['status_permintaan'];
        $permintaan_barang_sub = $this->mymodel->selectWithQuery("SELECT * FROM permintaan_barang_sub WHERE kode = '$kode'");
        $master_proyek = $this->mymodel->selectDataone('master_proyek', array('id' => $id_proyek));
        $master_status = $this->mymodel->selectDataone('master_status', array('id' => $status_permintaan));
        $file_lampiran = $this->mymodel->selectWhere("file", array('table_id' => $permintaan_barang['id'], 'table' => 'permintaan_barang'));

        $tombol_ajukan = 0;
        $tombol_batalkan = 0;
        $tombol_simpan_draft = 0;
        $tombol_terima = 0;
        $tombol_tolak = 0;
        $tombol_simpan = 0;
        $tombol_edit = 0;
        $tombol_hapus = 0;
        $tombol_cetak = 0;
        $tombol_tambah_item = 0;
        $tombol_edit_item = 0;
        $tombol_hapus_item = 0;

        if ($role_user == 1) {
            if ($permintaan_barang['status_permintaan'] == 0) {
                $tombol_ajukan = 1;
            }
            $tombol_batalkan = 1;
            $tombol_simpan_draft = 1;
            $tombol_simpan = 1;
            $tombol_edit = 1;
            $tombol_hapus = 1;
            $tombol_tambah_item = 1;
            $tombol_edit_item = 1;
            $tombol_hapus_item = 1;
        } else if ($role_user == 2) {
            $tombol_terima = 1;
            $tombol_tolak = 1;
            $tombol_simpan = 1;
            $tombol_edit = 1;
            $tombol_hapus = 1;
            $tombol_tambah_item = 1;
            $tombol_edit_item = 1;
            $tombol_hapus_item = 1;
        } else if ($role_user == 3) {
            $tombol_terima = 1;
            $tombol_tolak = 1;
            $tombol_simpan = 1;
            $tombol_edit = 1;
            $tombol_hapus = 1;
            $tombol_edit_item = 1;
            $tombol_hapus_item = 1;
        } else if ($role_user == 4) {
            $tombol_terima = 1;
            $tombol_tolak = 1;
        } else if ($role_user == 5) {
            $tombol_terima = 1;
        } else if ($role_user == 7) {
            $tombol_edit = 1;
            $tombol_hapus = 1;
            $tombol_edit_item = 1;
            $tombol_hapus_item = 1;
        } else if ($role_user == 8) {
            $tombol_edit = 1;
            $tombol_hapus = 1;
            $tombol_edit_item = 1;
            $tombol_hapus_item = 1;
        }

        if ($permintaan_barang) {
            foreach ($permintaan_barang_sub as $pbs) {
                $persyaratan_arr = array();
                $persyaratan = json_decode($pbs['persyaratan']);
                foreach ($persyaratan as $psy) {
                    $persyaratan_arr[] = array(
                        'persyaratan' => $psy->persyaratan
                    );
                }
                $keterangan_arr = array();
                $keterangan = json_decode($pbs['keterangan']);
                foreach ($keterangan as $ket) {
                    $user_history = $this->mymodel->selectDataone("user", array('id' => $ket->id_user));
                    $role_history = $this->mymodel->selectDataone("role", array('id' => $ket->role_user));
                    $keterangan_arr[] = array(
                        'tanggal' => $ket->tanggal,
                        'nama_user' => $user_history['name'],
                        'role_user' => $role_history['role'],
                        'keterangan' => $ket->keterangan
                    );
                }
                $items[] = array(
                    'id' => $pbs['id'],
                    'id_barang' => $pbs['id_barang'],
                    'kode_pekerjaan' => $pbs['kode_pekerjaan'],
                    'id_satuan' => $pbs['id_satuan'],
                    'qty' => $pbs['qty'],
                    'fungsi' => $pbs['fungsi'],
                    'target' => $pbs['target'],
                    'keterangan' => $keterangan_arr,
                    'kapasitas' => $pbs['kapasitas'],
                    'merk' => $pbs['merk'],
                    'waktu_pemakaian' => $pbs['waktu_pemakaian'],
                    'waktu_pelaksanaan' => $pbs['waktu_pelaksanaan'],
                    'persyaratan' => $persyaratan_arr,
                    'tombol_tambah_item' => $tombol_tambah_item,
                    'tombol_edit_item' => $tombol_edit_item,
                    'tombol_hapus_item' => $tombol_hapus_item,
                );
            }

            foreach ($file_lampiran as $file) {
                $files[] = array(
                    'dir' => base_url($file['dir']),
                    'keterangan' => $file['keterangan'],
                );
            }

            $response[] = array(
                'id' => $permintaan_barang['id'],
                'kode' => $permintaan_barang['kode'],
                'tanggal_pengajuan' => $permintaan_barang['created_at'],
                'jenis' => $permintaan_barang['jenis'],
                'id_proyek' => $permintaan_barang['id_proyek'],
                'nama_proyek' => $master_proyek['nama'],
                'nama_lokasi' => $master_proyek['lokasi'],
                'catatan' => $permintaan_barang['catatan'],
                'id_pic' => $permintaan_barang['id_pic'],
                'id_pm' => $permintaan_barang['id_pm'],
                'id_cc' => $permintaan_barang['id_cc'],
                'id_pd' => $permintaan_barang['id_pd'],
                'id_lp' => $permintaan_barang['id_lp'],
                'tombol_ajukan' => $tombol_ajukan,
                'tombol_batalkan' => $tombol_batalkan,
                'tombol_simpan_draft' => $tombol_simpan_draft,
                'tombol_terima' => $tombol_terima,
                'tombol_tolak' => $tombol_tolak,
                'tombol_simpan' => $tombol_simpan,
                'tombol_cetak' => $tombol_cetak,
                'tombol_edit' => $tombol_edit,
                'tombol_hapus' => $tombol_hapus,
                'id_status' => $permintaan_barang['status_permintaan'],
                'status_permintaan' => $master_status['nama'],
                'file_lampiran' => $files,
                'items' => $items,
            );

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function delete_sp_post()
    {
        $id = $this->post('id');

        // Validate the id.
        if ($id <= 0) {
            // Set the response and exit
            $this->response(NULL, REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        $data = $this->mymodel->selectDataone('permintaan_barang', ['id' => $id]);

        if (!$data) {
            $this->response([
                'status' => FALSE,
                'message' => 'Data tidak ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }

        $delete = $this->db->delete('permintaan_barang', ['id' => $id]);
        if ($delete) {
            // Set the response and exit
            $this->response([
                'status' => TRUE,
                'message' => 'Data berhasil dihapus',
                'data' => $data
            ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Whoops , something trouble with system. please try again !',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function ajukan_sp_post()
    {
        $id = $this->input->post('id', TRUE);
        $id_user = $this->input->post('id_user', TRUE);

        $user = $this->mymodel->selectDataone("user", array('id' => $id_user));
        $role_user = $user['role_id'];
        $role = $this->mymodel->selectDataone("role", array('id' => $role_user));

        $cek_permintaan = $this->mymodel->selectDataone("permintaan_barang", array('id' => $id));

        $master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => 1));
        $master_proyek = $this->mymodel->selectDataone("master_proyek", array('id' => $cek_permintaan['id_proyek']));
        $kode_proyek = $master_proyek['kode'];
        $master_proyek_sub = $this->mymodel->selectWithQuery("SELECT * FROM master_proyek_sub WHERE kode = '$kode_proyek'");
        $master_jenis = $this->mymodel->selectDataone("master_jenis", array('value' => $cek_permintaan['jenis']));
        $jenis_permintaan = $master_jenis['id'];

        foreach ($master_proyek_sub as $mps) {
            $user_jenis = $this->mymodel->selectDataone("user_jenis", array('id_user' => $mps['id_user'], 'jenis' => $jenis_permintaan));
            if ($user_jenis) {
                $id_user_jenis = $user_jenis['id_user'];
                if ($role_user == 1) {
                    $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 2");
                }
                if ($user_role) {
                    $notif['keterangan'] = 1;
                    $notif['id_user'] = $user_role['id'];
                    $notif['id_permintaan'] = $id;
                    $notif['status_notifikasi'] = '0';
                    $notif['tipe'] = 'create';
                    $notif['status'] = 'ENABLE';
                    $notif['created_at'] = date("Y-m-d H:i:s");
                    $notif['created_by'] = $id_user;
                    $this->mymodel->insertData('notifikasi', $notif);

                    $tokens[] = $user_role['token'];
                }
            }
        }

        $notifications = (object) array(
            'body' => $master_notifikasi['keterangan'],
            'title' => $cek_permintaan['kode'],
        );
        $messages = (object) array(
            'notification_title' => $cek_permintaan['kode'],
            'notification_body' => $master_notifikasi['keterangan'],
            'data_body_key' => $master_notifikasi['keterangan'],
            'id_sp' => $cek_permintaan['id'],
            'kode_sp' => $cek_permintaan['kode'],
        );
        $fields = array(
            'registration_ids' => $tokens,
            'data' => $messages
        );

        $this->curl->access_api($fields);

        $dt['status_permintaan'] = 1;

        $error = [];
        if (count($error) != 0) {
            $this->response([
                'status' => FALSE,
                'message' => $error,
                'data' => $dt
            ], REST_Controller::HTTP_OK);
        } else {
            $insert = $this->db->update('permintaan_barang', $dt, array('id' => $id));
            if ($insert) {
                // Set the response and exit
                $this->response([
                    'status' => TRUE,
                    'api_code' => 'Edited',
                    'message' => 'Surat Permintaan berhasil diajukan',
                    'data' => $dt
                ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Whoops , something trouble with system. please try again !',
                    'data' => []
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }
        }
    }

    public function verifikasi_sp_post()
    {
        $id = $this->input->post('id', TRUE);
        $id_user = $this->input->post('id_user', TRUE);
        $dt['catatan'] = $this->post('catatan');

        $user = $this->mymodel->selectDataone("user", array('id' => $id_user));
        $role_user = $user['role_id'];
        $role = $this->mymodel->selectDataone("role", array('id' => $role_user));

        $cek_permintaan = $this->mymodel->selectDataone("permintaan_barang", array('id' => $id));
        $master_proyek = $this->mymodel->selectDataone("master_proyek", array('id' => $cek_permintaan['id_proyek']));
        $kode_proyek = $master_proyek['kode'];
        $master_proyek_sub = $this->mymodel->selectWithQuery("SELECT * FROM master_proyek_sub WHERE kode = '$kode_proyek'");
        $master_jenis = $this->mymodel->selectDataone("master_jenis", array('value' => $cek_permintaan['jenis']));
        $jenis_permintaan = $master_jenis['id'];

        if ($this->post('status') == 0) {
            $master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => 3));
            $cek_notif_ke = $this->mymodel->selectWithQuery("SELECT ke FROM notifikasi WHERE id_permintaan = '$id' AND tipe = 'verifikasi-terima' ORDER BY ke desc LIMIT 1");
            $count_ke = $cek_notif_ke[0]['ke'] + 1;
            if ($role_user == 2) {
                $role_notif = 3;
                $dt['id_pm'] = $id_user;
                $dt['status_permintaan'] = 3;
            } else if ($role_user == 3) {
                $role_notif = 4;
                $dt['id_cc'] = $id_user;
                $dt['status_permintaan'] = 5;
            } else if ($role_user == 4) {
                $role_notif = 5;
                $dt['id_pd'] = $id_user;
                $dt['status_permintaan'] = 7;
            } else if ($role_user == 5) {
                $role_notif = 6;
                $dt['id_lp'] = $id_user;
                $dt['status_permintaan'] = 8;
                $dt['tgl_selesai'] = date("Y-m-d");
            }
            $notif['ke'] = $count_ke;
            $notif['keterangan'] = 3;
            $notif['tipe'] = 'verifikasi-terima';

            $notif_lp['ke'] = $count_ke;
            $notif_lp['keterangan'] = 3;
            $notif_lp['tipe'] = 'verifikasi-terima';

            $keterangan_notifikasi = $master_notifikasi['keterangan'];
        } else {
            $master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => 4));
            $cek_notif_ke = $this->mymodel->selectWithQuery("SELECT ke FROM notifikasi WHERE id_permintaan = '$id' AND tipe = 'verifikasi-tolak' ORDER BY ke desc LIMIT 1");
            $count_ke = $cek_notif_ke[0]['ke'] + 1;
            if ($role_user == 2) {
                $role_notif = 2;
                $dt['status_permintaan'] = 2;
            } else if ($role_user == 3) {
                $role_notif = 3;
                $dt['status_permintaan'] = 4;
            } else if ($role_user == 4) {
                $role_notif = 4;
                $dt['status_permintaan'] = 6;
            }
            $notif['ke'] = $count_ke;
            $notif['keterangan'] = 4;
            $notif['tipe'] = 'verifikasi-tolak';

            $notif_lp['ke'] = $count_ke;
            $notif_lp['keterangan'] = 4;
            $notif_lp['tipe'] = 'verifikasi-tolak';

            $keterangan_notifikasi = $master_notifikasi['keterangan'];
        }

        foreach ($master_proyek_sub as $mps) {
            $user_jenis = $this->mymodel->selectDataone("user_jenis", array('id_user' => $mps['id_user'], 'jenis' => $jenis_permintaan));
            if ($user_jenis) {
                $id_user_jenis = $user_jenis['id_user'];
                if ($role_user == 1) {
                    $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id = $role_notif");
                } else if ($role_user == 2) {
                    $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= $role_notif");
                } else if ($role_user == 3) {
                    $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= $role_notif");
                } else if ($role_user == 4) {
                    $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= $role_notif");
                } else if ($role_user == 5) {
                    $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= $role_notif");
                }
                if ($user_role) {
                    $notif['id_user'] = $user_role['id'];
                    $notif['id_permintaan'] = $id;
                    $notif['status_notifikasi'] = '0';
                    $notif['status'] = 'ENABLE';
                    $notif['created_at'] = date("Y-m-d H:i:s");
                    $notif['created_by'] = $id_user;
                    $this->mymodel->insertData('notifikasi', $notif);
                    $tokens[] = $user_role['token'];
                }
            }
        }

        if ($role_user == 4) {
            $user_lp = $this->mymodel->selectWithQuery("SELECT * FROM user WHERE role_id = 5");
            foreach ($user_lp as $lp) {
                $id_user_lp = $lp['id'];
                $user_jenis_lp = $this->mymodel->selectDataone("user_jenis", array('id_user' => $id_user_lp, 'jenis' => $jenis_permintaan));
                // print_r($id_user_lp);
                if ($user_jenis_lp) {
                    $notif_lp['id_user'] = $user_jenis_lp['id_user'];
                    $notif_lp['id_permintaan'] = $id;
                    $notif_lp['status_notifikasi'] = '0';
                    $notif_lp['status'] = 'ENABLE';
                    $notif_lp['created_at'] = date("Y-m-d H:i:s");
                    $notif_lp['created_by'] = $id_user;
                    $this->mymodel->insertData('notifikasi', $notif_lp);
                    $tokens[] = $user_role['token'];
                }
            }
        }

        if ($role_user == 5) {
            $user_lp = $this->mymodel->selectWithQuery("SELECT * FROM user WHERE role_id >= 5 AND role_id <= 6");
            foreach ($user_lp as $lp) {
                $id_user_lp = $lp['id'];
                $user_jenis_lp = $this->mymodel->selectDataone("user_jenis", array('id_user' => $id_user_lp, 'jenis' => $jenis_permintaan));
                // print_r($id_user_lp);
                if ($user_jenis_lp) {
                    $notif_lp['id_user'] = $user_jenis_lp['id_user'];
                    $notif_lp['id_permintaan'] = $id;
                    $notif_lp['status_notifikasi'] = '0';
                    $notif_lp['status'] = 'ENABLE';
                    $notif_lp['created_at'] = date("Y-m-d H:i:s");
                    $notif_lp['created_by'] = $id_user;
                    $this->mymodel->insertData('notifikasi', $notif_lp);
                    $tokens[] = $user_role['token'];
                }
            }
        }

        $notifications = (object) array(
            'body' => $keterangan_notifikasi,
            'title' => $cek_permintaan['kode'],
        );
        $messages = (object) array(
            'notification_title' => $cek_permintaan['kode'],
            'notification_body' => $master_notifikasi['keterangan'],
            'data_body_key' => $master_notifikasi['keterangan'],
            'id_sp' => $cek_permintaan['id'],
            'kode_sp' => $cek_permintaan['kode'],
        );
        $fields = array(
            'registration_ids' => $tokens,
            'data' => $messages
        );

        $this->curl->access_api($fields);

        $error = [];
        if (count($error) != 0) {
            $this->response([
                'status' => FALSE,
                'message' => $error,
                'data' => $dt
            ], REST_Controller::HTTP_OK);
        } else {
            $insert = $this->db->update('permintaan_barang', $dt, array('id' => $id));
            if ($insert) {
                // Set the response and exit
                $this->response([
                    'status' => TRUE,
                    'api_code' => 'Edited',
                    'message' => 'Surat Permintaan berhasil diverifikasi',
                    'data' => $dt
                ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Whoops , something trouble with system. please try again !',
                    'data' => []
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }
        }
    }

    public function batalkan_sp_post()
    {
        $id = $this->input->post('id', TRUE);
        $id_user = $this->input->post('id_user', TRUE);

        $user = $this->mymodel->selectDataone("user", array('id' => $id_user));
        $role_user = $user['role_id'];
        $role = $this->mymodel->selectDataone("role", array('id' => $role_user));

        $cek_permintaan = $this->mymodel->selectDataone("permintaan_barang", array('id' => $id));
        $master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => 5));

        $master_proyek = $this->mymodel->selectDataone("master_proyek", array('id' => $cek_permintaan['id_proyek']));
        $kode_proyek = $master_proyek['kode'];
        $master_proyek_sub = $this->mymodel->selectWithQuery("SELECT * FROM master_proyek_sub WHERE kode = '$kode_proyek'");
        $master_jenis = $this->mymodel->selectDataone("master_jenis", array('value' => $cek_permintaan['jenis']));
        $jenis_permintaan = $master_jenis['id'];

        foreach ($master_proyek_sub as $mps) {
            $user_jenis = $this->mymodel->selectDataone("user_jenis", array('id_user' => $mps['id_user'], 'jenis' => $jenis_permintaan));
            if ($user_jenis) {
                $id_user_jenis = $user_jenis['id_user'];
                if ($role_user == 1) {
                    $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id = 1");
                } else if ($role_user == 2) {
                    $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 2");
                } else if ($role_user == 3) {
                    $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 3");
                } else if ($role_user == 4) {
                    $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 4");
                }
                if ($user_role) {
                    $notif['id_user'] = $user_role['id'];
                    $notif['id_permintaan'] = $id;
                    $notif['status_notifikasi'] = '0';
                    $notif['status'] = 'ENABLE';
                    $notif['keterangan'] = 5;
                    $notif['tipe'] = 'batal';
                    $notif['created_at'] = date("Y-m-d H:i:s");
                    $notif['created_by'] = $id_user;
                    $this->mymodel->insertData('notifikasi', $notif);
                    $tokens[] = $user_role['token'];
                }
            }
        }

        $notifications = (object) array(
            'body' => $master_notifikasi['keterangan'],
            'title' => $cek_permintaan['kode'],
        );
        $messages = (object) array(
            'notification_title' => $cek_permintaan['kode'],
            'notification_body' => $master_notifikasi['keterangan'],
            'data_body_key' => $master_notifikasi['keterangan'],
            'id_sp' => $cek_permintaan['id'],
            'kode_sp' => $cek_permintaan['kode'],
        );

        $fields = array(
            'registration_ids' => $tokens,
            'data' => $messages
        );

        $this->curl->access_api($fields);

        $dt['status_permintaan'] = 8;

        $error = [];
        if (count($error) != 0) {
            $this->response([
                'status' => FALSE,
                'message' => $error,
                'data' => $dt
            ], REST_Controller::HTTP_OK);
        } else {
            $insert = $this->db->update('permintaan_barang', $dt, array('id' => $id));
            if ($insert) {
                // Set the response and exit
                $this->response([
                    'status' => TRUE,
                    'api_code' => 'Edited',
                    'message' => 'Surat Permintaan berhasil dibatalkan',
                    'data' => $dt
                ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Whoops , something trouble with system. please try again !',
                    'data' => []
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }
        }
    }

    public function history_sp_post()
    {
        $base_url = base_url();
        $id_sp = $this->post('id_sp');

        $permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id_sp));
        $notifikasi = $this->mymodel->selectWithQuery("SELECT * FROM notifikasi WHERE id_permintaan = '$id_sp' AND tipe != 'penugasan' GROUP BY tipe, ke ORDER BY created_at desc");

        if ($permintaan_barang) {
            $log_data = json_decode($permintaan_barang['log']);
            $count_array = count($log_data);
            foreach ($notifikasi as $notif) {
                $date = date_create($notif['created_at']);
                $date = date_format($date, "d M Y h:i:s");
                $master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => $notif['keterangan']));
                $user_notifikasi = $this->mymodel->selectDataone("user", array('id' => $notif['created_by']));
                $role_notifikasi = $this->mymodel->selectDataone("role", array('id' => $user_notifikasi['role_id']));
                $permintaan_barang_notifikasi = $this->mymodel->selectDataone("permintaan_barang", array('id' => $notif['id_permintaan']));

                $detail = array();
                $tombol_detail = 0;
                if ($notif['tipe'] == 'edit') {
                    $count_array--;
                    $tombol_detail = 1;
                    $text_count = 0;
                    for ($a = $count_array; $a >= $count_array - 1; $a--) {
                        $text_count++;
                        if ($text_count == 1) {
                            $text = 'Baru';
                        } else {
                            $text = 'Lama';
                        }

                        $items = array();
                        $permintaan_barang_sub = $log_data[$a]->sub;
                        foreach ($permintaan_barang_sub as $pbs) {
                            $persyaratan_arr = array();
                            $persyaratan = json_decode($pbs->persyaratan);
                            if ($persyaratan) {
                                foreach ($persyaratan as $psy) {
                                    $persyaratan_arr[] = array(
                                        'persyaratan' => $psy->persyaratan
                                    );
                                }
                            }

                            $keterangan_arr = array();
                            $keterangan = json_decode($pbs->keterangan);
                            if ($keterangan) {
                                foreach ($keterangan as $ket) {
                                    $user_history = $this->mymodel->selectDataone("user", array('id' => $ket->id_user));
                                    $role_history = $this->mymodel->selectDataone("role", array('id' => $ket->role_user));
                                    $keterangan_arr[] = array(
                                        'tanggal' => $ket->tanggal,
                                        'nama_user' => $user_history['name'],
                                        'role_user' => $role_history['role'],
                                        'keterangan' => $ket->keterangan
                                    );
                                }
                            }

                            $items[] = array(
                                'id_barang' => $pbs->id_barang,
                                'kode_pekerjaan' => $pbs->kode_pekerjaan,
                                'id_satuan' => $pbs->id_satuan,
                                'qty' => $pbs->qty,
                                'fungsi' => $pbs->fungsi,
                                'target' => $pbs->target,
                                'keterangan' => $keterangan_arr,
                                'kapasitas' => $pbs->kapasitas,
                                'merk' => $pbs->merk,
                                'waktu_pemakaian' => $pbs->waktu_pemakaian,
                                'waktu_pelaksanaan' => $pbs->waktu_pelaksanaan,
                                'persyaratan' => $persyaratan_arr,
                            );

                            // print_r($items);
                        }

                        $files = array();
                        $file_lampiran = $log_data[$a]->file;
                        if ($file_lampiran) {
                            foreach ($file_lampiran as $file) {
                                $files[] = array(
                                    'dir' => base_url($file->dir),
                                    'keterangan' => $file->keterangan,
                                );
                            }
                        }

                        $detail[] = array(
                            'text' => $text,
                            'items' => $items,
                            'files' => $files
                        );
                    }
                }

                $bg = '';
                if ($notif['tipe'] == 'create') {
                    $bg = '#FFB153';
                } else if ($notif['tipe'] == 'edit') {
                    $bg = '#E9E9E9';
                } else if ($notif['tipe'] == 'verifikasi-terima') {
                    $bg = '#33FF7F';
                } else if ($notif['tipe'] == 'verifikasi-tolak') {
                    $bg = '#FF5733';
                } else if ($notif['tipe'] == 'batal') {
                    $bg = '#FF5733';
                } else if ($notif['tipe'] == 'penugasan') {
                    $bg = '#FFFF53';
                }

                $response[] = array(
                    'keterangan' => $master_notifikasi['keterangan'],
                    'tombol_detail' => $tombol_detail,
                    'warna' => $bg,
                    'user' => $user_notifikasi['name'],
                    'role' => $role_notifikasi['role'],
                    'tanggal' => $date,
                    'catatan' => $permintaan_barang_notifikasi['catatan'],
                    'detail' => $detail
                );
            }
            // die();

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function history_sp_get()
    {
        $base_url = base_url();
        $id_sp = $this->get('id_sp');

        $permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id_sp));
        $notifikasi = $this->mymodel->selectWithQuery("SELECT * FROM notifikasi WHERE id_permintaan = '$id_sp' AND tipe != 'penugasan' GROUP BY tipe, ke ORDER BY created_at desc");

        if ($permintaan_barang) {
            $log_data = json_decode($permintaan_barang['log']);
            $count_array = count($log_data);
            foreach ($notifikasi as $notif) {
                $date = date_create($notif['created_at']);
                $date = date_format($date, "d M Y h:i:s");
                $master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => $notif['keterangan']));
                $user_notifikasi = $this->mymodel->selectDataone("user", array('id' => $notif['created_by']));
                $role_notifikasi = $this->mymodel->selectDataone("role", array('id' => $user_notifikasi['role_id']));
                $permintaan_barang_notifikasi = $this->mymodel->selectDataone("permintaan_barang", array('id' => $notif['id_permintaan']));

                $detail = array();
                $tombol_detail = 0;
                if ($notif['tipe'] == 'edit') {
                    $count_array--;
                    $tombol_detail = 1;
                    $text_count = 0;
                    for ($a = $count_array; $a >= $count_array - 1; $a--) {
                        $text_count++;
                        if ($text_count == 1) {
                            $text = 'Baru';
                        } else {
                            $text = 'Lama';
                        }

                        $items = array();
                        $permintaan_barang_sub = $log_data[$a]->sub;
                        foreach ($permintaan_barang_sub as $pbs) {
                            $persyaratan_arr = array();
                            $persyaratan = json_decode($pbs->persyaratan);
                            if ($persyaratan) {
                                foreach ($persyaratan as $psy) {
                                    $persyaratan_arr[] = array(
                                        'persyaratan' => $psy->persyaratan
                                    );
                                }
                            }

                            $keterangan_arr = array();
                            $keterangan = json_decode($pbs->keterangan);
                            if ($keterangan) {
                                foreach ($keterangan as $ket) {
                                    $user_history = $this->mymodel->selectDataone("user", array('id' => $ket->id_user));
                                    $role_history = $this->mymodel->selectDataone("role", array('id' => $ket->role_user));
                                    $keterangan_arr[] = array(
                                        'tanggal' => $ket->tanggal,
                                        'nama_user' => $user_history['name'],
                                        'role_user' => $role_history['role'],
                                        'keterangan' => $ket->keterangan
                                    );
                                }
                            }

                            $items[] = array(
                                'id_barang' => $pbs->id_barang,
                                'kode_pekerjaan' => $pbs->kode_pekerjaan,
                                'id_satuan' => $pbs->id_satuan,
                                'qty' => $pbs->qty,
                                'fungsi' => $pbs->fungsi,
                                'target' => $pbs->target,
                                'keterangan' => $keterangan_arr,
                                'kapasitas' => $pbs->kapasitas,
                                'merk' => $pbs->merk,
                                'waktu_pemakaian' => $pbs->waktu_pemakaian,
                                'waktu_pelaksanaan' => $pbs->waktu_pelaksanaan,
                                'persyaratan' => $persyaratan_arr,
                            );

                            // print_r($items);
                        }

                        $files = array();
                        $file_lampiran = $log_data[$a]->file;
                        if ($file_lampiran) {
                            foreach ($file_lampiran as $file) {
                                $files[] = array(
                                    'dir' => base_url($file->dir),
                                    'keterangan' => $file->keterangan,
                                );
                            }
                        }

                        $detail[] = array(
                            'text' => $text,
                            'items' => $items,
                            'files' => $files
                        );
                    }
                }

                $bg = '';
                if ($notif['tipe'] == 'create') {
                    $bg = '#FFB153';
                } else if ($notif['tipe'] == 'edit') {
                    $bg = '#E9E9E9';
                } else if ($notif['tipe'] == 'verifikasi-terima') {
                    $bg = '#33FF7F';
                } else if ($notif['tipe'] == 'verifikasi-tolak') {
                    $bg = '#FF5733';
                } else if ($notif['tipe'] == 'batal') {
                    $bg = '#FF5733';
                } else if ($notif['tipe'] == 'penugasan') {
                    $bg = '#FFFF53';
                }

                $response[] = array(
                    'keterangan' => $master_notifikasi['keterangan'],
                    'tombol_detail' => $tombol_detail,
                    'warna' => $bg,
                    'user' => $user_notifikasi['name'],
                    'role' => $role_notifikasi['role'],
                    'tanggal' => $date,
                    'catatan' => $permintaan_barang_notifikasi['catatan'],
                    'detail' => $detail
                );
            }
            // die();

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    // <-- ITEM -->
    public function detail_item_sp_post()
    {
        $base_url = base_url('webfile/');
        $id = $this->post('id');

        $cost_code =  $this->mymodel->selectWhere('cost_code', null);
        $permintaan_barang_sub =  $this->mymodel->selectDataone('permintaan_barang_sub', array('id' => $id));
        $permintaan_barang =  $this->mymodel->selectDataone('permintaan_barang', array('kode' => $permintaan_barang_sub['kode']));

        if ($permintaan_barang_sub) {
            $persyaratan_arr = array();
            $persyaratan = json_decode($permintaan_barang_sub['persyaratan']);
            foreach ($persyaratan as $psy) {
                $persyaratan_arr[] = array(
                    'persyaratan' => $psy->persyaratan
                );
            }
            $keterangan_arr = array();
            $keterangan = json_decode($permintaan_barang_sub['keterangan']);
            foreach ($keterangan as $ket) {
                $user_history = $this->mymodel->selectDataone("user", array('id' => $ket->id_user));
                $role_history = $this->mymodel->selectDataone("role", array('id' => $ket->role_user));
                $keterangan_arr[] = array(
                    'tanggal' => $ket->tanggal,
                    'nama_user' => $user_history['name'],
                    'role_user' => $role_history['role'],
                    'keterangan' => $ket->keterangan
                );
            }
            $response[] = array(
                'id' => $permintaan_barang_sub['id'],
                'id_barang' => $permintaan_barang_sub['id_barang'],
                'kode_pekerjaan' => $permintaan_barang_sub['kode_pekerjaan'],
                'id_satuan' => $permintaan_barang_sub['id_satuan'],
                'qty' => $permintaan_barang_sub['qty'],
                'fungsi' => $permintaan_barang_sub['fungsi'],
                'target' => $permintaan_barang_sub['target'],
                'keterangan' => $keterangan_arr,
                'kapasitas' => $permintaan_barang_sub['kapasitas'],
                'merk' => $permintaan_barang_sub['merk'],
                'waktu_pemakaian' => $permintaan_barang_sub['waktu_pemakaian'],
                'waktu_pelaksanaan' => $permintaan_barang_sub['waktu_pelaksanaan'],
                'persyaratan' => $persyaratan_arr
            );

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function detail_item_sp_get()
    {
        $base_url = base_url('webfile/');
        $id = $this->get('id');

        $cost_code =  $this->mymodel->selectWhere('cost_code', null);
        $permintaan_barang_sub =  $this->mymodel->selectDataone('permintaan_barang_sub', array('id' => $id));
        $permintaan_barang =  $this->mymodel->selectDataone('permintaan_barang', array('kode' => $permintaan_barang_sub['kode']));

        if ($permintaan_barang_sub) {
            $persyaratan_arr = array();
            $persyaratan = json_decode($permintaan_barang_sub['persyaratan']);
            foreach ($persyaratan as $psy) {
                $persyaratan_arr[] = array(
                    'persyaratan' => $psy->persyaratan
                );
            }
            $keterangan_arr = array();
            $keterangan = json_decode($permintaan_barang_sub['keterangan']);
            foreach ($keterangan as $ket) {
                $user_history = $this->mymodel->selectDataone("user", array('id' => $ket->id_user));
                $role_history = $this->mymodel->selectDataone("role", array('id' => $ket->role_user));
                $keterangan_arr[] = array(
                    'tanggal' => $ket->tanggal,
                    'nama_user' => $user_history['name'],
                    'role_user' => $role_history['role'],
                    'keterangan' => $ket->keterangan
                );
            }
            $response[] = array(
                'id' => $permintaan_barang_sub['id'],
                'id_barang' => $permintaan_barang_sub['id_barang'],
                'kode_pekerjaan' => $permintaan_barang_sub['kode_pekerjaan'],
                'id_satuan' => $permintaan_barang_sub['id_satuan'],
                'qty' => $permintaan_barang_sub['qty'],
                'fungsi' => $permintaan_barang_sub['fungsi'],
                'target' => $permintaan_barang_sub['target'],
                'keterangan' => $keterangan_arr,
                'kapasitas' => $permintaan_barang_sub['kapasitas'],
                'merk' => $permintaan_barang_sub['merk'],
                'waktu_pemakaian' => $permintaan_barang_sub['waktu_pemakaian'],
                'waktu_pelaksanaan' => $permintaan_barang_sub['waktu_pelaksanaan'],
                'persyaratan' => $persyaratan_arr
            );

            $this->response([
                'status' => TRUE,
                'message' => 'Data Ditemukan',
                'data' => $response
            ], REST_Controller::HTTP_OK);
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Data Tidak Ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function create_item_sp_post()
    {
        $kode_pekerjaan = $this->post('kode_pekerjaan');
        $id_barang = $this->post('id_barang');
        $id_satuan = $this->post('id_satuan');
        $qty = $this->post('qty');
        $fungsi = $this->post('fungsi');
        $target = $this->post('target');
        $keterangan = $this->post('keterangan');
        $kapasitas = $this->post('kapasitas');
        $merk = $this->post('merk');
        $waktu_pemakaian = $this->post('waktu_pemakaian');
        $waktu_pelaksanaan = $this->post('waktu_pelaksanaan');
        $persyaratan = $this->post('persyaratan');
        $kode = $this->post('kode');
        $id_user = $this->post('id_user');

        $count_persyaratan = count($persyaratan);

        $input = [
            'kode_pekerjaan' => $this->post('kode_pekerjaan'),
            'id_barang' => $this->post('id_barang'),
            'id_satuan' => $this->post('id_satuan'),
            'qty' => $this->post('qty'),
            'fungsi' => $this->post('fungsi'),
            'target' => $this->post('target'),
            'keterangan' => $this->post('keterangan'),
            'kapasitas' => $this->post('kapasitas'),
            'merk' => $this->post('merk'),
            'waktu_pemakaian' => $this->post('waktu_pemakaian'),
            'waktu_pelaksanaan' => $this->post('waktu_pelaksanaan'),
            'persyaratan' => $this->post('persyaratan'),
            'kode' => $this->post('kode')
        ];

        $error = [];

        if (count($error) != 0) {
            $this->response([
                'status' => FALSE,
                'message' => $error,
                'data' => $input
            ], REST_Controller::HTTP_OK);
        } else {

            for ($p = 0; $p < $count_persyaratan; $p++) {
                $persyaratan_arr[$p] = (object) array(
                    'persyaratan' => $persyaratan[$p]
                );
            }

            $dta['kode'] = $kode;
            $dta['id_barang'] = $id_barang;
            $dta['kode_pekerjaan'] = $kode_pekerjaan;
            $dta['id_satuan'] = $id_satuan;
            $dta['qty'] = $qty;
            $dta['fungsi'] = $fungsi;
            $dta['target'] = $target;
            $dta['keterangan'] = $keterangan;
            $dta['kapasitas'] = $kapasitas;
            $dta['merk'] = $merk;
            $dta['waktu_pemakaian'] = $waktu_pemakaian;
            $dta['waktu_pelaksanaan'] = $waktu_pelaksanaan;
            $dta['persyaratan'] = json_encode($persyaratan_arr);
            $dta['created_at'] = date('Y-m-d H:i:s');
            $dta['status'] = "ENABLE";
            $dta['created_by'] = $id_user;

            $insert = $this->db->insert('permintaan_barang_sub', $dta);

            if ($insert) {
                // Set the response and exit
                $this->response([
                    'status' => TRUE,
                    'api_code' => 'Created',
                    'message' => 'Item berhasil dibuat'
                ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Whoops , something trouble with system. please try again !'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }
        }
    }

    public function edit_item_sp_post()
    {
        $kode_pekerjaan = $this->post('kode_pekerjaan');
        $id_barang = $this->post('id_barang');
        $id_satuan = $this->post('id_satuan');
        $qty = $this->post('qty');
        $fungsi = $this->post('fungsi');
        $target = $this->post('target');
        $keterangan = $this->post('keterangan');
        $kapasitas = $this->post('kapasitas');
        $merk = $this->post('merk');
        $waktu_pemakaian = $this->post('waktu_pemakaian');
        $waktu_pelaksanaan = $this->post('waktu_pelaksanaan');
        $persyaratan = $this->post('persyaratan');
        $kepada = $this->post('kepada');
        $penugasan = $this->post('penugasan');
        $kode = $this->post('kode');
        $id_sp = $this->post('id_sp');
        $id_user = $this->post('id_user');

        $count_persyaratan = count($persyaratan);

        $input = [
            'kode_pekerjaan' => $this->post('kode_pekerjaan'),
            'id_barang' => $this->post('id_barang'),
            'id_satuan' => $this->post('id_satuan'),
            'qty' => $this->post('qty'),
            'fungsi' => $this->post('fungsi'),
            'target' => $this->post('target'),
            'keterangan' => $this->post('keterangan'),
            'kapasitas' => $this->post('kapasitas'),
            'merk' => $this->post('merk'),
            'waktu_pemakaian' => $this->post('waktu_pemakaian'),
            'waktu_pelaksanaan' => $this->post('waktu_pelaksanaan'),
            'persyaratan' => $this->post('persyaratan'),
            'kode' => $this->post('kode')
        ];

        $error = [];

        if (count($error) != 0) {
            $this->response([
                'status' => FALSE,
                'message' => $error,
                'data' => $input
            ], REST_Controller::HTTP_OK);
        } else {

            for ($p = 0; $p < $count_persyaratan; $p++) {
                $persyaratan_arr[$p] = (object) array(
                    'persyaratan' => $persyaratan[$p]
                );
            }

            $user = $this->mymodel->selectDataone("user", array('id' => $id_user));
            $role_user = $user['role_id'];
            $permintaan_barang_sub = $this->mymodel->selectDataone('permintaan_barang_sub', array('id' => $id_sp));

            $keterangan_array = json_decode($permintaan_barang_sub['keterangan']);
            $count_keterangan = count($keterangan_array);
            $keterangan_array[$count_keterangan] = (object) array(
                'keterangan' => $keterangan,
                'tanggal' => date('Y-m-d H:i:s'),
                'id_user' => $id_user,
                'role_user' => $role_user,
            );
            if ($keterangan != '') {
                $dta['keterangan'] = json_encode($keterangan_array);
            }

            if ($kepada != 0) {
                if ($penugasan == 'Selesai' && $role_user == 3) { } else {
                    $permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('kode' => $kode));
                    $master_proyek = $this->mymodel->selectDataone("master_proyek", array('id' => $permintaan_barang['id_proyek']));
                    $kode_proyek = $master_proyek['kode'];
                    $id = $permintaan_barang['id'];
                    $master_proyek_sub = $this->mymodel->selectWithQuery("SELECT * FROM master_proyek_sub WHERE kode = '$kode_proyek'");
                    $master_jenis = $this->mymodel->selectDataone("master_jenis", array('value' => $permintaan_barang['jenis']));
                    $jenis_permintaan = $master_jenis['id'];

                    $cek_notif_ke = $this->mymodel->selectWithQuery("SELECT ke FROM notifikasi WHERE id_permintaan = '$id' AND tipe = 'penugasan' ORDER BY ke desc LIMIT 1");
                    $count_ke = $cek_notif_ke[0]['ke'] + 1;
                    if ($role_user == 3) {
                        $master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => 6));
                        $keterangan_notif = 6;
                        $keterangan_notifikasi = $master_notifikasi['keterangan'];
                    } else {
                        $master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => 7));
                        $keterangan_notif = 7;
                        $keterangan_notifikasi = $master_notifikasi['keterangan'];
                    }
                    foreach ($master_proyek_sub as $mps) {
                        $user_jenis = $this->mymodel->selectDataone("user_jenis", array('id_user' => $mps['id_user'], 'jenis' => $jenis_permintaan));
                        if ($user_jenis) {
                            $id_user_jenis = $user_jenis['id_user'];
                            if ($role_user == 3) {
                                $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id = $kepada");
                            } else {
                                $user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id = 3");
                            }

                            if ($user_role) {
                                $notif['keterangan'] = $keterangan_notif;
                                $notif['id_user'] = $user_role['id'];
                                $notif['id_permintaan'] = $id;
                                $notif['status_notifikasi'] = '0';
                                $notif['tipe'] = 'penugasan';
                                $notif['ke'] = $count_ke;
                                $notif['status'] = 'ENABLE';
                                $notif['created_at'] = date("Y-m-d H:i:s");
                                $notif['created_by'] = $id_user;
                                $this->mymodel->insertData('notifikasi', $notif);

                                $tokens[] = $user_role['token'];
                            }
                        }
                    }

                    $notifications = (object) array(
                        'body' => $keterangan_notifikasi,
                        'title' => $permintaan_barang['kode'],
                    );
                    $messages = (object) array(
                        'notification_title' => $permintaan_barang['kode'],
                        'notification_body' => $master_notifikasi['keterangan'],
                        'data_body_key' => $master_notifikasi['keterangan'],
                        'id_sp' => $permintaan_barang['id'],
                        'kode_sp' => $permintaan_barang['kode'],
                    );
                    $fields = array(
                        'registration_ids' => $tokens,
                        'data' => $messages
                    );

                    $this->curl->access_api($fields);
                }
            }

            $dta['kode'] = $kode;
            $dta['id_barang'] = $id_barang;
            $dta['kode_pekerjaan'] = $kode_pekerjaan;
            $dta['id_satuan'] = $id_satuan;
            $dta['qty'] = $qty;
            $dta['fungsi'] = $fungsi;
            $dta['target'] = $target;
            $dta['kapasitas'] = $kapasitas;
            $dta['merk'] = $merk;
            $dta['waktu_pemakaian'] = $waktu_pemakaian;
            $dta['waktu_pelaksanaan'] = $waktu_pelaksanaan;
            $dta['persyaratan'] = json_encode($persyaratan_arr);
            $dta['created_at'] = date('Y-m-d H:i:s');
            $dta['status'] = "ENABLE";
            $dta['created_by'] = $id_user;

            $insert = $this->db->update('permintaan_barang_sub', $dta, array('id' => $id_sp));

            if ($insert) {
                // Set the response and exit
                $this->response([
                    'status' => TRUE,
                    'api_code' => 'Edited',
                    'message' => 'Item berhasil diubah'
                ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
            } else {
                // Set the response and exit
                $this->response([
                    'status' => FALSE,
                    'message' => 'Whoops , something trouble with system. please try again !'
                ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
            }
        }
    }

    public function delete_item_sp_post()
    {
        $id = $this->post('id');

        // Validate the id.
        if ($id <= 0) {
            // Set the response and exit
            $this->response(NULL, REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        $data = $this->mymodel->selectDataone('permintaan_barang_sub', ['id' => $id]);

        if (!$data) {
            $this->response([
                'status' => FALSE,
                'message' => 'Data tidak ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }

        $delete = $this->db->delete('permintaan_barang_sub', ['id' => $id]);
        if ($delete) {
            // Set the response and exit
            $this->response([
                'status' => TRUE,
                'message' => 'Data berhasil dihapus',
                'data' => $data
            ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Whoops , something trouble with system. please try again !',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function tambah_file_post()
    {
        $keterangan = $this->post('keterangan');
        $id = $this->post('id');

        $permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));

        $kode = $permintaan_barang['kode'];

        if (!empty($_FILES['file']['name'])) {
            $dir  = "webfile/";
            $config['upload_path']          = $dir;
            $config['allowed_types']        = '*';
            $config['file_name']           = 'SP-' . $id . '-' . $kode;
            $this->load->library('upload', $config);
            if (!$this->upload->do_upload('file')) {
                $error = $this->upload->display_errors();
                $this->alert->alertdanger($error);
            } else {
                $file = $this->upload->data();

                $d['name'] = $file['file_name'];
                $d['mime'] = $file['file_type'];
                $d['dir'] = $dir . $file['file_name'];
                $d['table'] = 'permintaan_barang';
                $d['table_id'] = $id;
                $d['keterangan'] = $keterangan;
                $d['status'] = 'ENABLE';
                $d['created_at'] = date("Y-m-d H:i:s");
                $insert = $this->db->insert('file', $d);
            }
        }

        if ($insert) {
            // Set the response and exit
            $this->response([
                'status' => TRUE,
                'api_code' => 'Created',
                'message' => 'File berhasil dibuat'
            ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Whoops , something trouble with system. please try again !'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function edit_file_post()
    {
        $keterangan = $this->post('keterangan');
        $id_file = $this->post('id_file');

        $file = $this->mymodel->selectDataone('file', array('id' => $id_file));
        $permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('id' => $file['table_id']));
        $id = $permintaan_barang['id'];
        $kode = $permintaan_barang['kode'];

        if (!empty($_FILES['file']['name'])) {
            $dir  = "webfile/";
            $config['upload_path']          = $dir;
            $config['allowed_types']        = '*';
            $config['file_name']           = 'SP-' . $id . '-' . $kode;
            $this->load->library('upload', $config);
            if (!$this->upload->do_upload('file')) {
                $error = $this->upload->display_errors();
                $this->alert->alertdanger($error);
            } else {
                $file = $this->upload->data();

                $d['name'] = $file['file_name'];
                $d['mime'] = $file['file_type'];
                $d['dir'] = $dir . $file['file_name'];
                $d['keterangan'] = $keterangan;
                $d['updated_at'] = date("Y-m-d H:i:s");
                $insert = $this->db->update('file', $d, array('id' => $id_file));
            }
        } else {
            $d['keterangan'] = $keterangan;
            $d['updated_at'] = date("Y-m-d H:i:s");
            $insert = $this->db->update('file', $d, array('id' => $id_file));
        }

        if ($insert) {
            // Set the response and exit
            $this->response([
                'status' => TRUE,
                'api_code' => 'Edited',
                'message' => 'File berhasil dibuat'
            ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Whoops , something trouble with system. please try again !'
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }

    public function delete_file_post()
    {
        $id = $this->post('id_file');

        // Validate the id.
        if ($id <= 0) {
            // Set the response and exit
            $this->response(NULL, REST_Controller::HTTP_BAD_REQUEST); // BAD_REQUEST (400) being the HTTP response code
        }

        $data = $this->mymodel->selectDataone('file', ['id' => $id]);

        if (!$data) {
            $this->response([
                'status' => FALSE,
                'message' => 'Data tidak ditemukan',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }

        $delete = $this->db->delete('file', ['id' => $id]);
        if ($delete) {
            // Set the response and exit
            $this->response([
                'status' => TRUE,
                'message' => 'Data berhasil dihapus',
                'data' => $data
            ], REST_Controller::HTTP_OK); // OK (200) being the HTTP response code
        } else {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => 'Whoops , something trouble with system. please try again !',
                'data' => []
            ], REST_Controller::HTTP_NOT_FOUND); // NOT_FOUND (404) being the HTTP response code
        }
    }
}
