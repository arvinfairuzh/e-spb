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

        $cekusername = $this->mymodel->selectDataone('user', array('nip' => $this->post('username')));
        if ($cekusername) {
            if ($user['status'] == 'ENABLE') {
                $data['token'] = $token;
                $this->db->update('user', $data, array('id' => $user['id']));
                $this->response([
                    'status' => TRUE,
                    'api_code' => 'Berhasil Masuk',
                    'message' => 'Selamat, Anda Berhasil Masuk',
                    'data' => $user
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

    public function datacostcode_post()
    {
        $base_url = base_url('webfile/');
        $id = $this->post('id');

        if ($id == 'all') {
            $qrya = "";
        } else {
            $qrya = " WHERE id = '$id'";
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

    public function MyData_post()
    {
        $base_url = base_url('webfile/');
        $id_user = $this->post('id_user');

        $user = $this->mymodel->selectDataone("user", array('id' => $id_user));
        $master_proyek_sub = $this->mymodel->selectWithQuery("SELECT master_proyek.id, master_proyek.nama FROM master_proyek_sub LEFT JOIN master_proyek ON master_proyek_sub.kode = master_proyek.kode WHERE id_user = '$id_user'");
        $jenisku = $this->mymodel->selectWithQuery("SELECT master_jenis.id, master_jenis.value FROM user_jenis LEFT JOIN master_jenis ON user_jenis.jenis = master_jenis.id WHERE id_user = '$id_user'");

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
        } else {
            $qry_verifikasi = '';
        }

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

    public function create_sp_post()
    {
        $id_proyek = $_POST['id_proyek'];
        $jenis = $_POST['jenis'];
        $id_user = $_POST['id_user'];

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

        $kode = $permintaan_barang['kode'];
        $log = json_decode($permintaan_barang['log']);
        $count_log = count($log);

        $permintaan_barang_sub = $this->mymodel->selectWithQuery("SELECT * FROM permintaan_barang_sub WHERE kode = '$kode'");

        $count_id_barang = count($permintaan_barang_sub);

        for ($i = 0; $i < $count_id_barang; $i++) {
            $barang[$i] = array(
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
                }
            }
        }

        if (!empty($_FILES['file']['name'])) {
            $dir  = "webfile/";
            $config['upload_path']          = $dir;
            $config['allowed_types']        = '*';
            $config['file_name']           = 'SP-SPB-' . $id . '-' . $kode;
            $this->load->library('upload', $config);
            if (!$this->upload->do_upload('file')) {
                $error = $this->upload->display_errors();
                $this->alert->alertdanger($error);
            } else {
                $file = $this->upload->data();
                $dt['file'] = $file['file_name'];
            }
        }

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
            'file' => $file['file_name'],
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

        $permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id_sp));
        $kode = $permintaan_barang['kode'];
        $id_proyek = $permintaan_barang['id_proyek'];
        $status_permintaan = $permintaan_barang['status_permintaan'];
        $permintaan_barang_sub = $this->mymodel->selectWithQuery("SELECT * FROM permintaan_barang_sub WHERE kode = '$kode'");
        $master_proyek = $this->mymodel->selectDataone('master_proyek', array('id' => $id_proyek));
        $master_status = $this->mymodel->selectDataone('master_status', array('id' => $status_permintaan));

        if ($permintaan_barang) {
            foreach ($permintaan_barang_sub as $pbs) {
                $persyaratan = json_decode($pbs['persyaratan']);
                foreach ($persyaratan as $psy) {
                    $persyaratan_arr[] = array(
                        'persyaratan' => $psy->persyaratan
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
                    'keterangan' => $pbs['keterangan'],
                    'kapasitas' => $pbs['kapasitas'],
                    'merk' => $pbs['merk'],
                    'waktu_pemakaian' => $pbs['waktu_pemakaian'],
                    'waktu_pelaksanaan' => $pbs['waktu_pelaksanaan'],
                    'persyaratan' => $persyaratan_arr
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
                'id_status' => $permintaan_barang['status_permintaan'],
                'status_permintaan' => $master_status['nama'],
                'file_lampiran' => $permintaan_barang['file'],
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
        $id = $_POST['id'];

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
                }
            }
        }

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
        $dt['catatan'] = $_POST['catatan'];

        $user = $this->mymodel->selectDataone("user", array('id' => $id_user));
        $role_user = $user['role_id'];
        $role = $this->mymodel->selectDataone("role", array('id' => $role_user));

        $cek_permintaan = $this->mymodel->selectDataone("permintaan_barang", array('id' => $id));
        $master_proyek = $this->mymodel->selectDataone("master_proyek", array('id' => $cek_permintaan['id_proyek']));
        $kode_proyek = $master_proyek['kode'];
        $master_proyek_sub = $this->mymodel->selectWithQuery("SELECT * FROM master_proyek_sub WHERE kode = '$kode_proyek'");
        $master_jenis = $this->mymodel->selectDataone("master_jenis", array('value' => $cek_permintaan['jenis']));
        $jenis_permintaan = $master_jenis['id'];

        if ($_POST['status'] == 0) {
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
            }
            $notif['ke'] = $count_ke;
            $notif['keterangan'] = 3;
            $notif['tipe'] = 'verifikasi-terima';
        } else {
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
                }
                if ($user_role) {
                    $notif['id_user'] = $user_role['id'];
                    $notif['id_permintaan'] = $id;
                    $notif['status_notifikasi'] = '0';
                    $notif['status'] = 'ENABLE';
                    $notif['created_at'] = date("Y-m-d H:i:s");
                    $notif['created_by'] = $id_user;
                    $this->mymodel->insertData('notifikasi', $notif);
                }
            }
        }

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
                }
            }
        }

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

    // <-- ITEM -->
    public function detail_item_sp_post()
    {
        $base_url = base_url('webfile/');
        $id = $this->post('id');

        $cost_code =  $this->mymodel->selectWhere('cost_code', null);
        $permintaan_barang_sub =  $this->mymodel->selectDataone('permintaan_barang_sub', array('id' => $id));
        $permintaan_barang =  $this->mymodel->selectDataone('permintaan_barang', array('kode' => $permintaan_barang_sub['kode']));

        if ($permintaan_barang_sub) {
            $persyaratan = json_decode($permintaan_barang_sub['persyaratan']);
            foreach ($persyaratan as $psy) {
                $persyaratan_arr[] = array(
                    'persyaratan' => $psy->persyaratan
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
                'keterangan' => $permintaan_barang_sub['keterangan'],
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
        $kode_pekerjaan = $_POST['kode_pekerjaan'];
        $id_barang = $_POST['id_barang'];
        $id_satuan = $_POST['id_satuan'];
        $qty = $_POST['qty'];
        $fungsi = $_POST['fungsi'];
        $target = $_POST['target'];
        $keterangan = $_POST['keterangan'];
        $kapasitas = $_POST['kapasitas'];
        $merk = $_POST['merk'];
        $waktu_pemakaian = $_POST['waktu_pemakaian'];
        $waktu_pelaksanaan = $_POST['waktu_pelaksanaan'];
        $persyaratan = $_POST['persyaratan'];
        $kode = $_POST['kode'];
        $id_user = $_POST['id_user'];

        $count_persyaratan = count($persyaratan);

        $input = [
            'kode_pekerjaan' => $_POST['kode_pekerjaan'],
            'id_barang' => $_POST['id_barang'],
            'id_satuan' => $_POST['id_satuan'],
            'qty' => $_POST['qty'],
            'fungsi' => $_POST['fungsi'],
            'target' => $_POST['target'],
            'keterangan' => $_POST['keterangan'],
            'kapasitas' => $_POST['kapasitas'],
            'merk' => $_POST['merk'],
            'waktu_pemakaian' => $_POST['waktu_pemakaian'],
            'waktu_pelaksanaan' => $_POST['waktu_pelaksanaan'],
            'persyaratan' => $_POST['persyaratan'],
            'kode' => $_POST['kode']
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
        $kode_pekerjaan = $_POST['kode_pekerjaan'];
        $id_barang = $_POST['id_barang'];
        $id_satuan = $_POST['id_satuan'];
        $qty = $_POST['qty'];
        $fungsi = $_POST['fungsi'];
        $target = $_POST['target'];
        $keterangan = $_POST['keterangan'];
        $kapasitas = $_POST['kapasitas'];
        $merk = $_POST['merk'];
        $waktu_pemakaian = $_POST['waktu_pemakaian'];
        $waktu_pelaksanaan = $_POST['waktu_pelaksanaan'];
        $persyaratan = $_POST['persyaratan'];
        $kode = $_POST['kode'];
        $id_sp = $_POST['id_sp'];
        $id_user = $_POST['id_user'];

        $count_persyaratan = count($persyaratan);

        $input = [
            'kode_pekerjaan' => $_POST['kode_pekerjaan'],
            'id_barang' => $_POST['id_barang'],
            'id_satuan' => $_POST['id_satuan'],
            'qty' => $_POST['qty'],
            'fungsi' => $_POST['fungsi'],
            'target' => $_POST['target'],
            'keterangan' => $_POST['keterangan'],
            'kapasitas' => $_POST['kapasitas'],
            'merk' => $_POST['merk'],
            'waktu_pemakaian' => $_POST['waktu_pemakaian'],
            'waktu_pelaksanaan' => $_POST['waktu_pelaksanaan'],
            'persyaratan' => $_POST['persyaratan'],
            'kode' => $_POST['kode']
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
        $id = $_POST['id'];

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
}
