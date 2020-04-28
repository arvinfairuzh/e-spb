<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

class Report_monitoring_logistik extends CI_Model
{

    public function __construct()
    {

        $this->load->database();

        $id_user = $_SESSION['id'];
        $proyek = $_SESSION['proyek'];
        $jenis = $_SESSION['jenis'];
        $status_permintaan = $_SESSION['status'];
        $kode_sp = $_SESSION['kode_sp'];

        $qry_proyek = '';
        $qry_jenis = '';
        $qry_sp = '';
        $qry_kode = '';
        if ($proyek) {
            $qry_proyek = " AND b.id_proyek = '$proyek'";
        }
        if ($jenis) {
            $qry_jenis = " AND b.jenis = '$jenis'";
        }
        if ($status_permintaan) {
            $qry_sp = " AND b.status_permintaan = '$status_permintaan'";
        }
        if ($kode_sp) {
            $qry_kode = " AND b.kode = '$kode_sp'";
        }

        $this->column_order = array(null, 'tanggal_diajukan', 'status_pengajuan', 'officer', 'kode_proyek', 'proyek', 'no_sp', 'jenis_barang', 'vol', 'satuan', 'vol_po', 'satuan_po', 'harga_satuan', 'jumlah', 'no_sp_proyek', 'no_sp_ga_it', 'jam_sp_diterima', 'tanggal_sp_diterima', 'tanggal_target_datang', 'target_pencapaian', 'supplier', 'contact', 'no_po', 'keterangan', 'spk_angkutan'); //field yang ada di table user
        $this->column_search = array(null, 'tanggal_diajukan', 'status_pengajuan', 'officer', 'kode_proyek', 'proyek', 'no_sp', 'jenis_barang', 'vol', 'satuan', 'vol_po', 'satuan_po', 'harga_satuan', 'jumlah', 'no_sp_proyek', 'no_sp_ga_it', 'jam_sp_diterima', 'tanggal_sp_diterima', 'tanggal_target_datang', 'target_pencapaian', 'supplier', 'contact', 'no_po', 'keterangan', 'spk_angkutan'); //field yang ada di table user
        $this->order = array('tanggal_diajukan' => 'asc'); // default order 
        $this->table = "(SELECT b.created_at as tanggal_diajukan, d.nama as status_pengajuan, '' as officer, c.kode as kode_proyek, c.nama as proyek, b.kode as no_sp, a.id_barang as jenis_barang, a.qty as vol, a.id_satuan as satuan, '' as vol_po, '' as satuan_po, '' as harga_satuan, '' as jumlah, '' as no_sp_proyek, '' as no_sp_ga_it, '' as jam_sp_diterima, '' as tanggal_sp_diterima, a.target as tanggal_target_datang, '' as target_pencapaian, '' as supplier, '' as contact, '' as no_po, '' as keterangan, '' as spk_angkutan
FROM permintaan_barang_sub a
JOIN permintaan_barang b
ON a.kode = b.kode
JOIN master_proyek c
ON b.id_proyek = c.id
LEFT JOIN master_status d
ON b.status_permintaan = d.id
WHERE a.status = 'ENABLE' " . $qry_proyek . $qry_jenis . $qry_sp . $qry_kode . ") as tabledata";
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
