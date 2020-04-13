<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

class Report_surat_permintaan extends CI_Model
{

    public function __construct()
    {

        $this->load->database();
        $id_user = $_SESSION['id'];
        $proyek = $_SESSION['proyek'];
        $jenis = $_SESSION['jenis'];
        $status_permintaan = $_SESSION['status'];
        $page = $_SESSION['page'];

        if ($page == 'dataku') {
            if ($_SESSION['role_id'] == 1) {
                $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 0 AND id_pic =' . $id_user;
            } else if ($_SESSION['role_id'] == 2) {
                $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 1 ';
            } else if ($_SESSION['role_id'] == 3) {
                $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 3 ';
            } else if ($_SESSION['role_id'] == 4) {
                $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 5 ';
            } else if ($_SESSION['role_id'] == 5) {
                $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 7 ';
            } else if ($_SESSION['role_id'] == 6) {
                $qry_verifikasi = ' AND permintaan_barang.status_permintaan = 8 ';
            }
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

        if ($_SESSION['role_id'] == 0) {
            $qry_page = "";
        } else if ($_SESSION['role_id'] == 5 || $_SESSION['role_id'] == 6) {
            $qry_page = "WHERE permintaan_barang.status = 'ENABLE' " . $qry_jenisku . " " . $qry_verifikasi;
        } else {
            $qry_page = "WHERE permintaan_barang.status = 'ENABLE' " . $qry_proyekku . " " . $qry_jenisku . " " . $qry_verifikasi;
        }

        $qry_proyek = '';
        $qry_jenis = '';
        $qry_sp = '';
        if ($proyek) {
            $qry_proyek = " AND a.id_proyek = '$proyek'";
        }
        if ($jenis) {
            $qry_jenis = " AND a.jenis = '$jenis'";
        }
        if ($status_permintaan) {
            $qry_sp = " AND a.status_permintaan = '$status_permintaan'";
        }

        // print_r($qry_proyek);
        // die();
        $this->column_order = array('kode', 'tanggal_pengajuan', 'proyek', 'lokasi', 'status_permintaan', 'jenis'); //field yang ada di table user
        $this->column_search = array('kode', 'tanggal_pengajuan', 'proyek', 'lokasi', 'status_permintaan', 'jenis'); //field yang ada di table user
        $this->order = array('kode' => 'asc'); // default order 
        $this->table = "(SELECT * FROM 
        (
            SELECT permintaan_barang.id,permintaan_barang.kode,permintaan_barang.id_proyek,master_proyek.nama as proyek,
            master_proyek.lokasi,catatan,status_permintaan as id_status,master_status.nama as status_permintaan,
            permintaan_barang.jenis,permintaan_barang.status, DATE_FORMAT(permintaan_barang.created_at ,'%d-%m-%Y') as tanggal_pengajuan
            FROM permintaan_barang
            LEFT JOIN master_proyek ON permintaan_barang.id_proyek = master_proyek.id
            LEFT JOIN master_status ON permintaan_barang.status_permintaan = master_status.id
            " . $qry_page . "
        ) a 
        WHERE a.status = 'ENABLE' " . $qry_proyek . $qry_jenis . $qry_sp . ") as tabledata";
    }


    private function _get_datatables_query()
    {

        $this->db->from($this->table);
        $i = 0;
        foreach ($this->column_search as $item) // looping awal
        {
            if ($_POST['search']['value']) // jika datatable mengirimkan pencarian dengan metode POST
            {
                if ($i === 0) // looping awal
                {
                    $this->db->group_start();
                    $this->db->like($item, $_POST['search']['value']);
                } else {
                    $this->db->or_like($item, $_POST['search']['value']);
                }
                if (count($this->column_search) - 1 == $i)

                    $this->db->group_end();
            }
            $i++;
        }



        if (isset($_POST['order'])) {
            $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
        } else if (isset($this->order)) {
            $order = $this->order;
            $this->db->order_by(key($order), $order[key($order)]);
        }
    }



    function get_datatables()
    {

        $this->_get_datatables_query();
        if ($_POST['length'] != -1)
            $this->db->limit($_POST['length'], $_POST['start']);
        $query = $this->db->get();
        return $query->result();
    }



    function count_filtered()
    {

        $this->_get_datatables_query();
        $query = $this->db->get();
        return $query->num_rows();
    }



    public function count_all()
    {

        $this->db->from($this->table);
        return $this->db->count_all_results();
    }


    function get_data()
    {

        $this->db->from($this->table);
        $query = $this->db->get();
        return $query->result();
    }
}
