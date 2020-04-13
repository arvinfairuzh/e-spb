<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Ajax extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function get_lokasi($id)
    {
        $lokasi = $this->mymodel->selectWithQuery("SELECT * FROM master_proyek WHERE id = '$id'");
        // print_r($lokasi);
        // die();
        echo json_encode($lokasi);
    }

    public function get_user($id)
    {
        $user = $this->mymodel->selectWithQuery("SELECT * FROM user WHERE role_id = '$id'");
        // print_r($user);
        // die();
        echo json_encode($user);
    }

    public function get_jenis_barang($id)
    {
        $jenis_barang = $this->mymodel->selectWithQuery("SELECT * FROM cost_code WHERE kode_costcontrol = '$id'");
        // print_r($jenis_barang);
        // die();
        echo json_encode($jenis_barang);
    }
}
