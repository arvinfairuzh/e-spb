<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
error_reporting(0);
class Monitoring_logistik extends MY_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Report_monitoring_logistik', 'rMonitoring_logistik');
  }

  public function index()
  {
    $filter = array(
      'proyek' => $this->input->post('proyek'),
      'status' => $this->input->post('status'),
      'jenis' => $this->input->post('jenis'),
      'kode_sp' => $this->input->post('kode_sp'),
    );

    // print_r($page);
    // die();
    $this->session->set_userdata($filter);

    $data['page_name'] = "Report Monitoring_logistik";
    $this->template->load('template/template', 'report/monitoring_logistik/all', $data);
  }


  function ajaxAll()
  {
    $list = $this->rMonitoring_logistik->get_datatables();
    $data = array();
    $i = 1;
    foreach ($list as $u) {
      $row = array();

      $row[] = $i;
      $row[] = $u->tanggal_diajukan;
      $row[] = $u->status_pengajuan;
      $row[] = $u->officer;
      $row[] = $u->kode_proyek;
      $row[] = $u->proyek;
      $row[] = $u->no_sp;
      $row[] = $u->jenis_barang;
      $row[] = $u->vol;
      $row[] = $u->satuan;
      $row[] = $u->vol_po;
      $row[] = $u->satuan_po;
      $row[] = $u->harga_satuan;
      $row[] = $u->jumlah;
      $row[] = $u->no_sp_proyek;
      $row[] = $u->no_sp_ga_it;
      $row[] = $u->jam_sp_diterima;
      $row[] = $u->tanggal_sp_diterima;
      $row[] = $u->tanggal_target_datang;
      $row[] = $u->target_pencapaian;
      $row[] = $u->supplier;
      $row[] = $u->contact;
      $row[] = $u->no_po;
      $row[] = $u->keterangan;
      $row[] = $u->spk_angkutan;
      $row[] = "-";
      $data[] = $row;
      $i++;
    }



    $output = array(
      "draw" => $_POST['draw'],
      "recordsTotal" => $this->rMonitoring_logistik->count_all(),
      "recordsFiltered" => $this->rMonitoring_logistik->count_filtered(),
      "data" => $data
    );

    echo json_encode($output);
  }


  function getExcel()
  {
    $list = $this->rMonitoring_logistik->get_data();
    $data = array();
    $i = 1;
    foreach ($list as $u) {



      $data[] = array($i, $u->tanggal_diajukan, $u->status_pengajuan, $u->officer, $u->kode_proyek, $u->proyek, $u->no_sp, $u->jenis_barang, $u->vol, $u->satuan, $u->vol_po, $u->satuan_po, $u->harga_satuan, $u->jumlah, $u->no_sp_proyek, $u->no_sp_ga_it, $u->jam_sp_diterima, $u->tanggal_sp_diterima, $u->tanggal_target_datang, $u->target_pencapaian, $u->supplier, $u->contact, $u->no_po, $u->keterangan, $u->spk_angkutan);

      $i++;
    }

    $judul = "Report Monitoring_logistik";

    $head = array('No', 'tanggal_diajukan', 'status_pengajuan', 'officer', 'kode_proyek', 'proyek', 'no_sp', 'jenis_barang', 'vol', 'satuan', 'vol_po', 'satuan_po', 'harga_satuan', 'jumlah', 'no_sp_proyek', 'no_sp_ga_it', 'jam_sp_diterima', 'tanggal_sp_diterima', 'tanggal_target_datang', 'target_pencapaian', 'supplier', 'contact', 'no_po', 'keterangan', 'spk_angkutan');

    $json = [
      'judul' => $judul,
      'head' => $head,
      'data' => $data
    ];

    $this->session->set_flashdata('report', $json);
    redirect('fitur/exportreport');
  }
}

/* End of file  */
/* Location: ./application/controllers/ */
