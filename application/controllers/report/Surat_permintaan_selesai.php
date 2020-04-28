<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
error_reporting(0);
class Surat_permintaan_selesai extends MY_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Report_surat_permintaan_selesai', 'rSurat_permintaan_selesai');
  }

  public function index()
  {
    $data['page_name'] = "Report Surat_permintaan";
    $this->template->load('template/template', 'report/surat_permintaan_selesai/all', $data);
  }

  function ajaxAll()
  {
    $list = $this->rSurat_permintaan_selesai->get_datatables();
    $data = array();
    $i = 1;
    foreach ($list as $u) {
      $row = array();

      $row[] = $i;
      $row[] = $u->kode;
      $row[] = $u->tanggal_pengajuan;

      if ($u->tgl_selesai == '0000-00-00') {
        $row[] = '-';
      } else {
        // Start date
        $date = $u->created_at;
        $date = new DateTime($date);
        $date->modify('-1 day');
        $date = $date->format('Y-m-d');
        // End date
        $end_date = $u->tgl_selesai;
        $day = "";
        $durasi = 0;
        while (strtotime($date) <= strtotime($end_date)) {
          $date = "$date\n";
          $day = "$day\n";
          if ($day == 6 || $day == 0) { } else {
            $durasi += 1;
          }

          $hari_libur = $this->mymodel->selectDataOne('hari_libur', array('tanggal' => $date, 'status' => 'ENABLE'));
          if ($hari_libur) {
            $tgl_hl = $hari_libur['tanggal'];
            $hl = new DateTime($tgl_hl);
            $day_hari_libur = $hl->format('w');
            if ($day_hari_libur == 6 || $day_hari_libur == 0) { } else {
              $durasi -= 1;
            }
          }
          $d = new DateTime($date);
          $d->modify('+1 day');
          $date = $d->format('Y-m-d');
          $day = $d->format('w');
        }
        $row[] = $durasi . ' hari';
      }
      $row[] = $u->proyek;
      $row[] = $u->lokasi;
      if ($u->id_status == '1' || $u->id_status == '3' || $u->id_status == '5' || $u->id_status == '7' || $u->id_status == '8') {
        $status_permintaan = '<font color="green">' . $u->status_permintaan . '</font>';
      } else if ($u->id_status == '2' || $u->id_status == '4' || $u->id_status == '6' || $u->id_status == '9') {
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
      "recordsTotal" => $this->rSurat_permintaan_selesai->count_all(),
      "recordsFiltered" => $this->rSurat_permintaan_selesai->count_filtered(),
      "data" => $data
    );

    echo json_encode($output);
  }


  function getExcel()
  {
    $list = $this->rSurat_permintaan_selesai->get_data();
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
