<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Surat_permintaan extends MY_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Report_surat_permintaan', 'rSurat_permintaan');
  }

  public function index()
  {
    $data['page_name'] = "Report Surat_permintaan";
    $this->template->load('template/template', 'report/surat_permintaan/all', $data);
  }

  function ajaxAll()
  {
    $list = $this->rSurat_permintaan->get_datatables();
    $data = array();
    $i = 1;
    foreach ($list as $u) {
      $row = array();

      $row[] = $i;
      $row[] = $u->kode;
      $row[] = $u->tanggal_pengajuan;
      $row[] = $u->proyek;
      $row[] = $u->lokasi;
      if ($u->id_status == '1' || $u->id_status == '3' || $u->id_status == '5' || $u->id_status == '7') {
        $status_permintaan = '<font color="green">' . $u->status_permintaan . '</font>';
      } else if ($u->id_status == '2' || $u->id_status == '4' || $u->id_status == '6' || $u->id_status == '8') {
        $status_permintaan = '<font color="red">' . $u->status_permintaan . '</font>';
      } else {
        $status_permintaan = '<font color="blue">' . $u->status_permintaan . '</font>';
      }
      $row[] = $status_permintaan;

      if ($u->jenis == 'SPB') {
        $jenis = '<font color="blue">SPB</font>';
      } else if ($u->jenis == 'SPA') {
        $jenis = '<font color="orange">SPA</font>';
      } else if ($u->jenis == 'SPS') {
        $jenis = '<font color="red">SPS</font>';
      }

      $row[] = $jenis;
      $row[] = '<div class="btn-group btn-block">
                <button type="button" class="btn btn-sm btn-warning btn-block" onclick="detail(' . $u->id . ')"><i class="fa fa-eye"></i> Detail</button>
                </div>';
      $data[] = $row;
      $i++;
    }



    $output = array(
      "draw" => $_POST['draw'],
      "recordsTotal" => $this->rSurat_permintaan->count_all(),
      "recordsFiltered" => $this->rSurat_permintaan->count_filtered(),
      "data" => $data
    );

    echo json_encode($output);
  }


  function getExcel()
  {
    $list = $this->rSurat_permintaan->get_data();
    $data = array();
    $i = 1;
    foreach ($list as $u) {



      $data[] = array($i, $u->kode, $u->id_proyek, $u->lokasi, $u->status_permintaan, $u->jenis);

      $i++;
    }

    $judul = "Report Surat_permintaan";

    $head = array('No', 'kode', 'id_proyek', 'lokasi', 'status_permintaan', 'jenis');

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
