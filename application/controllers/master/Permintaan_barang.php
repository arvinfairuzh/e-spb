<?php

use ___PHPSTORM_HELPERS\object;

if (!defined('BASEPATH')) exit('No direct script access allowed');
error_reporting(0);

class Permintaan_barang extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$filter = array(
			'proyek' => $this->input->post('proyek'),
			'status' => $this->input->post('status'),
			'jenis' => $this->input->post('jenis'),
		);

		$last_page = $_SESSION['page'];
		$now_page = $this->input->post('page');
		if ($now_page) {
			$change_page = $now_page;
		} else if (!$last_page) {
			if ($_SESSION['role_id'] == 0) {
				$change_page = 'semua';
			} else {
				$change_page = 'dataku';
			}
		} else {
			$change_page = $last_page;
		}
		$page = array(
			'page' => $change_page,
		);

		// print_r($page);
		// die();
		$this->session->set_userdata($filter);
		$this->session->set_userdata($page);

		$data['page_name'] = "permintaan_barang";
		$this->template->load('template/template', 'master/permintaan_barang/all-permintaan_barang', $data);
	}

	public function create()
	{
		$data['page_name'] = "permintaan_barang";
		$data['cost_code'] = $this->mymodel->selectWhere('cost_code', null);
		$this->template->load('template/template', 'master/permintaan_barang/add-permintaan_barang', $data);
	}

	public function create_alat()
	{
		$data['page_name'] = "permintaan_barang";
		$data['cost_code'] = $this->mymodel->selectWhere('cost_code', null);
		$this->template->load('template/template', 'master/permintaan_barang/add_alat-permintaan_barang', $data);
	}

	public function create_subkon()
	{
		$data['page_name'] = "permintaan_barang";
		$data['cost_code'] = $this->mymodel->selectWhere('cost_code', null);
		$this->template->load('template/template', 'master/permintaan_barang/add_subkon-permintaan_barang', $data);
	}

	public function tambah_item_barang_modal($id)
	{
		$data['id'] = $id;
		$data['permintaan_barang'] = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));
		$data['cost_code'] = $this->mymodel->selectWhere('cost_code', null);
		$this->load->view('master/permintaan_barang/add-permintaan_barang', $data);
	}

	public function tambah_item_alat_modal($id)
	{
		$data['id'] = $id;
		$data['permintaan_barang'] = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));
		$data['cost_code'] = $this->mymodel->selectWhere('cost_code', null);
		$this->load->view('master/permintaan_barang/add_alat-permintaan_barang', $data);
	}

	public function tambah_item_subkon_modal($id)
	{
		$data['id'] = $id;
		$data['permintaan_barang'] = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));
		$data['cost_code'] = $this->mymodel->selectWhere('cost_code', null);
		$this->load->view('master/permintaan_barang/add_subkon-permintaan_barang', $data);
	}

	public function edit_item_barang_modal($id)
	{
		$data['id'] = $id;
		$data['cost_code'] = $this->mymodel->selectWhere('cost_code', null);
		$data['permintaan_barang_sub'] = $this->mymodel->selectDataone('permintaan_barang_sub', array('id' => $id));
		$data['permintaan_barang'] = $this->mymodel->selectDataone('permintaan_barang', array('kode' => $data['permintaan_barang_sub']['kode']));
		$this->load->view('master/permintaan_barang/edit-item_barang', $data);
	}

	public function edit_item_alat_modal($id)
	{
		$data['id'] = $id;
		$data['cost_code'] = $this->mymodel->selectWhere('cost_code', null);
		$data['permintaan_barang_sub'] = $this->mymodel->selectDataone('permintaan_barang_sub', array('id' => $id));
		$data['permintaan_barang'] = $this->mymodel->selectDataone('permintaan_barang', array('kode' => $data['permintaan_barang_sub']['kode']));
		$this->load->view('master/permintaan_barang/edit-item_alat', $data);
	}

	public function edit_item_subkon_modal($id)
	{
		$data['id'] = $id;
		$data['cost_code'] = $this->mymodel->selectWhere('cost_code', null);
		$data['permintaan_barang_sub'] = $this->mymodel->selectDataone('permintaan_barang_sub', array('id' => $id));
		$data['permintaan_barang'] = $this->mymodel->selectDataone('permintaan_barang', array('kode' => $data['permintaan_barang_sub']['kode']));
		$this->load->view('master/permintaan_barang/edit-item_subkon', $data);
	}

	public function tambah_file_modal($id)
	{
		$data['id'] = $id;
		$data['permintaan_barang'] = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));
		$this->load->view('master/permintaan_barang/modal_file', $data);
	}

	public function edit_file_modal($id)
	{
		$data['id'] = $id;
		$data['file'] = $this->mymodel->selectDataone("file", array('id' => $id));
		$data['permintaan_barang'] = $this->mymodel->selectDataone('permintaan_barang', array('id' => $data['file']['table_id']));
		$this->load->view('master/permintaan_barang/modal_file_edit', $data);
	}

	public function tambah_file()
	{
		$keterangan = $_POST['keterangan'];
		$id = $_POST['id'];
		$kode = $_POST['kode'];

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
				$this->db->insert('file', $d);
			}
		}
		header('Location: ' . base_url('master/surat_permintaan/edit/' . $id));
	}

	public function edit_file($id_file)
	{
		$keterangan = $_POST['keterangan'];
		$id = $_POST['id'];
		$kode = $_POST['kode'];

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
				$this->db->update('file', $d, array('id' => $id_file));
			}
		} else {
			$d['keterangan'] = $keterangan;
			$d['updated_at'] = date("Y-m-d H:i:s");
			$this->db->update('file', $d, array('id' => $id_file));
		}
		header('Location: ' . base_url('master/surat_permintaan/edit/' . $id));
	}

	public function verifikasi_modal($id)
	{
		$data['permintaan_barang'] = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));
		$data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'permintaan_barang'));
		$data['page_name'] = "permintaan_barang";
		$data['id'] = $id;

		$this->load->view('master/permintaan_barang/modal_verifikasi', $data);
	}

	public function modal_history_barang($id)
	{
		$data['array_count'] = $id;

		$this->load->view('master/permintaan_barang/modal_history_barang', $data);
	}

	public function ajukan_modal()
	{
		$this->load->view('master/permintaan_barang/modal_ajukan');
	}

	public function ajukan_confirm_modal($jenis, $proyek)
	{
		$data['master_jenis'] = $this->mymodel->selectDataone('master_jenis', array('id' => $jenis));
		$data['master_proyek'] = $this->mymodel->selectDataone('master_proyek', array('id' => $proyek));
		$data['jenis'] = $jenis;
		$data['proyek'] = $proyek;

		$this->load->view('master/permintaan_barang/modal_ajukan_confirm', $data);
	}

	public function ajukan()
	{
		$sp = $_POST['sp'];
		$id_proyek = $_POST['id_proyek'];

		if ($sp == 1) {
			header('Location: ' . base_url('master/permintaan_barang/store/' . $id_proyek));
		} else if ($sp == 2) {
			header('Location: ' . base_url('master/permintaan_barang/store_alat/' . $id_proyek));
		} else if ($sp == 3) {
			header('Location: ' . base_url('master/permintaan_barang/store_subkon/' . $id_proyek));
		}
	}

	public function validate()
	{
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->form_validation->set_rules('dt[kode]', '<strong>Kode</strong>', 'required');
		$this->form_validation->set_rules('dt[nama_proyek]', '<strong>Nama Proyek</strong>', 'required');
		$this->form_validation->set_rules('dt[lokasi]', '<strong>Lokasi</strong>', 'required');
		$this->form_validation->set_rules('dt[status_1]', '<strong>Status 1</strong>', 'required');
		$this->form_validation->set_rules('dt[status_2]', '<strong>Status 2</strong>', 'required');
		$this->form_validation->set_rules('dt[status_3]', '<strong>Status 3</strong>', 'required');
		$this->form_validation->set_rules('dt[status_4]', '<strong>Status 4</strong>', 'required');
		$this->form_validation->set_rules('dt[status_5]', '<strong>Status 5</strong>', 'required');
	}

	public function store($id_proyek)
	{
		$master_proyek = $this->mymodel->selectDataone('master_proyek', array('id' => $id_proyek));
		$permintaan_barang = $this->mymodel->selectWhere('permintaan_barang', array('jenis' => 'SPB', 'id_proyek' => $id_proyek));
		$countid = count($permintaan_barang) + 1;
		$res = 'B-' . $master_proyek['kode'] . '-' . $countid;

		$dt['kode'] = $res;
		$dt['id_proyek'] = $id_proyek;
		$dt['created_by'] = $_SESSION['id'];
		$dt['created_at'] = date('Y-m-d H:i:s');
		$dt['status'] = "ENABLE";
		$dt['id_pic'] = $_SESSION['id'];
		$dt['jenis'] = "SPB";
		$dt['status_permintaan'] = 0;

		$this->mymodel->insertData('permintaan_barang', $dt);
		$last_id = $this->db->insert_id();

		header('Location: ' . base_url('master/surat_permintaan/edit/' . $last_id));
	}

	public function store_alat($id_proyek)
	{
		$master_proyek = $this->mymodel->selectDataone('master_proyek', array('id' => $id_proyek));
		$permintaan_barang = $this->mymodel->selectWhere('permintaan_barang', array('jenis' => 'SPA'));
		$countid = count($permintaan_barang) + 1;
		$res = 'A-' . $master_proyek['kode'] . '-' . $countid;

		$dt['kode'] = $res;
		$dt['id_proyek'] = $id_proyek;
		$dt['created_by'] = $_SESSION['id'];
		$dt['created_at'] = date('Y-m-d H:i:s');
		$dt['status'] = "ENABLE";
		$dt['id_pic'] = $_SESSION['id'];
		$dt['jenis'] = "SPA";
		$dt['status_permintaan'] = 0;

		$this->mymodel->insertData('permintaan_barang', $dt);
		$last_id = $this->db->insert_id();

		header('Location: ' . base_url('master/surat_permintaan/edit/' . $last_id));
	}

	public function store_subkon($id_proyek)
	{
		$master_proyek = $this->mymodel->selectDataone('master_proyek', array('id' => $id_proyek));
		$permintaan_barang = $this->mymodel->selectWhere('permintaan_barang', array('jenis' => 'SPS'));
		$countid = count($permintaan_barang) + 1;
		$res = 'S-' . $master_proyek['kode'] . '-' . $countid;

		$dt['kode'] = $res;
		$dt['id_proyek'] = $id_proyek;
		$dt['created_by'] = $_SESSION['id'];
		$dt['created_at'] = date('Y-m-d H:i:s');
		$dt['status'] = "ENABLE";
		$dt['id_pic'] = $_SESSION['id'];
		$dt['jenis'] = "SPS";
		$dt['status_permintaan'] = 0;

		$this->mymodel->insertData('permintaan_barang', $dt);
		$last_id = $this->db->insert_id();

		header('Location: ' . base_url('master/surat_permintaan/edit/' . $last_id));
	}

	public function json()
	{
		$status = $_GET['status'];
		$proyek = $_SESSION['proyek'];
		$jenis = $_SESSION['jenis'];
		$status_permintaan = $_SESSION['status'];
		if ($status == '') {
			$status = 'ENABLE';
		}
		header('Content-Type: application/json');
		$this->datatables->select('permintaan_barang.id,permintaan_barang.kode,master_proyek.nama as id_proyek,master_proyek.lokasi,catatan,status_permintaan as id_status,master_status.nama as status_permintaan,permintaan_barang.jenis,permintaan_barang.status');
		if ($proyek) {
			$this->datatables->where('permintaan_barang.id_proyek', $proyek);
		}
		if ($jenis) {
			$this->datatables->where('permintaan_barang.jenis', $jenis);
		}
		if ($status_permintaan) {
			$this->datatables->where('permintaan_barang.status_permintaan', $status_permintaan);
		}
		$this->datatables->where('permintaan_barang.status', $status);
		$this->datatables->from('permintaan_barang');
		$this->datatables->join('master_proyek', 'permintaan_barang.id_proyek = master_proyek.id', 'left');
		$this->datatables->join('master_status', 'permintaan_barang.status_permintaan = master_status.id', 'left');
		if ($status == "ENABLE") {
			$this->datatables->add_column('view', '<div class="btn-group btn-block"><button type="button" class="btn btn-block btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button>
			<button type="button" class="btn btn-sm btn-warning btn-block" onclick="detail($1)"><i class="fa fa-eye"></i> Detail</button></div>', 'id');
		} else {
			$this->datatables->add_column('view', '<div class="btn-group">
			<button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button>
			<button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');
		}
		echo $this->datatables->generate();
	}

	public function edit($id)
	{
		$data['permintaan_barang'] = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));
		$kode = $data['permintaan_barang']['kode'];
		$jenis = $data['permintaan_barang']['jenis'];
		$id_proyek = $data['permintaan_barang']['id_proyek'];
		$log = json_decode($data['permintaan_barang']['log']);
		$data['count_log'] = count($log);
		$data['permintaan_barang_sub'] = $this->mymodel->selectWithQuery("SELECT * FROM permintaan_barang_sub WHERE kode = '$kode'");
		$data['master_proyek'] = $this->mymodel->selectDataone('master_proyek', array('id' => $id_proyek));
		$data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'permintaan_barang'));
		$data['page_name'] = "permintaan_barang";

		if ($jenis == 'SPB') {
			$this->template->load('template/template', 'master/permintaan_barang/edit-permintaan_barang', $data);
		} else if ($jenis == 'SPA') {
			$this->template->load('template/template', 'master/permintaan_barang/edit_alat-permintaan_barang', $data);
		} else {
			$this->template->load('template/template', 'master/permintaan_barang/edit_subkon-permintaan_barang', $data);
		}
	}

	public function detail($id)
	{
		$data['permintaan_barang'] = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));
		$kode = $data['permintaan_barang']['kode'];
		$jenis = $data['permintaan_barang']['jenis'];
		$id_proyek = $data['permintaan_barang']['id_proyek'];
		$status_permintaan = $data['permintaan_barang']['status_permintaan'];
		$id_user = $data['permintaan_barang']['created_by'];
		$log = json_decode($data['permintaan_barang']['log']);
		$data['count_log'] = count($log);
		$data['permintaan_barang_sub'] = $this->mymodel->selectWithQuery("SELECT * FROM permintaan_barang_sub WHERE kode = '$kode' ORDER BY penugasan DESC");
		$data['master_proyek'] = $this->mymodel->selectDataone('master_proyek', array('id' => $id_proyek));
		$data['master_status'] = $this->mymodel->selectDataone('master_status', array('id' => $status_permintaan));
		$data['notifikasi'] = $this->mymodel->selectWithQuery("SELECT * FROM notifikasi WHERE id_permintaan = '$id' AND tipe != 'penugasan' GROUP BY tipe, ke ORDER BY created_at desc");
		$data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'permintaan_barang'));
		$data['page_name'] = "permintaan_barang";

		if ($jenis == 'SPB') {
			$this->template->load('template/template', 'master/permintaan_barang/detail-permintaan_barang', $data);
		} else if ($jenis == 'SPA') {
			$this->template->load('template/template', 'master/permintaan_barang/detail_alat-permintaan_barang', $data);
		} else {
			$this->template->load('template/template', 'master/permintaan_barang/detail_subkon-permintaan_barang', $data);
		}
	}

	public function cetak_form($id)
	{
		$data['permintaan_barang'] = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));
		$kode = $data['permintaan_barang']['kode'];
		$jenis = $data['permintaan_barang']['jenis'];
		$id_proyek = $data['permintaan_barang']['id_proyek'];
		$status_permintaan = $data['permintaan_barang']['status_permintaan'];
		$log = json_decode($data['permintaan_barang']['log']);
		$data['count_log'] = count($log);
		$data['permintaan_barang_sub'] = $this->mymodel->selectWithQuery("SELECT * FROM permintaan_barang_sub WHERE kode = '$kode'");
		$data['master_proyek'] = $this->mymodel->selectDataone('master_proyek', array('id' => $id_proyek));
		$data['master_status'] = $this->mymodel->selectDataone('master_status', array('id' => $status_permintaan));
		$data['notifikasi'] = $this->mymodel->selectWhere('notifikasi', array('id_permintaan' => $id));
		$data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'permintaan_barang'));
		$data['page_name'] = "permintaan_barang";

		if ($jenis == 'SPB') {
			$this->template->load('template/template', 'master/permintaan_barang/cetak_form-barang', $data);
		} else if ($jenis == 'SPA') {
			$this->template->load('template/template', 'master/permintaan_barang/cetak_form-alat', $data);
		} else {
			$this->template->load('template/template', 'master/permintaan_barang/cetak_form-subkon', $data);
		}
	}

	public function cetak($id)
	{
		$data['permintaan_barang'] = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));
		$kode = $data['permintaan_barang']['kode'];
		$jenis = $data['permintaan_barang']['jenis'];
		$id_proyek = $data['permintaan_barang']['id_proyek'];
		$status_permintaan = $data['permintaan_barang']['status_permintaan'];
		$log = json_decode($data['permintaan_barang']['log']);
		$data['count_log'] = count($log);
		$data['permintaan_barang_sub'] = $this->mymodel->selectWithQuery("SELECT * FROM permintaan_barang_sub WHERE kode = '$kode'");
		$data['master_proyek'] = $this->mymodel->selectDataone('master_proyek', array('id' => $id_proyek));
		$data['master_status'] = $this->mymodel->selectDataone('master_status', array('id' => $status_permintaan));
		$data['notifikasi'] = $this->mymodel->selectWhere('notifikasi', array('id_permintaan' => $id));
		$data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'permintaan_barang'));
		$data['page_name'] = "permintaan_barang";

		if ($jenis == 'SPB') {
			$this->load->view('master/permintaan_barang/print_barang', $data);
		} else if ($jenis == 'SPA') {
			$this->load->view('master/permintaan_barang/print_alat', $data);
		} else {
			$this->load->view('master/permintaan_barang/print_subkon', $data);
		}
	}

	public function update()
	{
		$id = $this->input->post('id', TRUE);
		$dt = $_POST['dt'];
		$kode = $_POST['kode'];
		$count_log = $_POST['count_log'];

		$permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));
		$permintaan_barang_sub = $this->mymodel->selectWithQuery("SELECT * FROM permintaan_barang_sub WHERE kode = '$kode'");
		$master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => 2));

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
				'created_by' => $_SESSION['id'],
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

		$role = $this->mymodel->selectDataone("role", array('id' => $_SESSION['role_id']));
		$user = $this->mymodel->selectDataone("user", array('id' => $_SESSION['id']));
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
				if ($_SESSION['role_id'] == 1) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id = 1");
				} else if ($_SESSION['role_id'] == 2) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 2");
				} else if ($_SESSION['role_id'] == 3) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 3");
				} else if ($_SESSION['role_id'] == 4) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 4");
				} else if ($_SESSION['role_id'] == 5) {
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
					$notif['created_by'] = $_SESSION['id'];
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
			'id_proyek' => $dt['id_proyek'],
			'lokasi' => $dt['lokasi'],
			'id_pic' => $_SESSION['id'],
			'id_pm' => 0,
			'id_cc' => 0,
			'id_pd' => 0,
			'id_lp' => 0,
			'status_permintaan' => 1,
			'jenis' => "SPB",
			'status' => "ENABLE",
			'created_by' => $_SESSION['id'],
			'created_at' => date('Y-m-d H:i:s'),
			'file' => $file_lampiran,
			'sub' => $barang,
		);
		$datalog = json_encode($log);
		$dt['log'] = $datalog;

		$dt['updated_at'] = date("Y-m-d H:i:s");

		$str = $this->mymodel->updateData('permintaan_barang', $dt, array('id' => $id));
		return $str;
	}

	public function insert_barang()
	{
		$kode_pekerjaan = $_POST['kode_pekerjaan'];
		$id_barang = $_POST['id_barang'];
		$id_satuan = $_POST['id_satuan'];
		$qty = $_POST['qty'];
		$fungsi = $_POST['fungsi'];
		$target = $_POST['target'];
		$keterangan = $_POST['keterangan'];
		$id = $_POST['id'];
		$kode = $_POST['kode'];

		$count_id_barang = count($id_barang);

		for ($i = 0; $i < $count_id_barang; $i++) {
			$dta['kode'] = $kode;
			$dta['id_barang'] = $id_barang[$i];
			$dta['kode_pekerjaan'] = $kode_pekerjaan[$i];
			$dta['id_satuan'] = $id_satuan[$i];
			$dta['qty'] = $qty[$i];
			$dta['fungsi'] = $fungsi[$i];
			$dta['target'] = $target[$i];
			$dta['keterangan'] = $keterangan[$i];
			$dta['created_at'] = date('Y-m-d H:i:s');
			$dta['status'] = "ENABLE";
			$dta['created_by'] = $_SESSION['id'];

			$this->mymodel->insertData('permintaan_barang_sub', $dta);
		}

		header('Location: ' . base_url('master/surat_permintaan/edit/' . $id));
	}

	public function ubah_barang($id_pbs)
	{
		$kode_pekerjaan = $_POST['kode_pekerjaan'];
		$id_barang = $_POST['id_barang'];
		$id_satuan = $_POST['id_satuan'];
		$qty = $_POST['qty'];
		$fungsi = $_POST['fungsi'];
		$target = $_POST['target'];
		$keterangan = $_POST['keterangan'];
		$kepada = $_POST['kepada'];
		$penugasan = $_POST['penugasan'];
		$id = $_POST['id'];
		$kode = $_POST['kode'];
		$i = 0;

		$permintaan_barang_sub = $this->mymodel->selectDataone('permintaan_barang_sub', array('id' => $id_pbs));

		$keterangan_array = json_decode($permintaan_barang_sub['keterangan']);
		$count_keterangan = count($keterangan_array);
		$keterangan_array[$count_keterangan] = (object) array(
			'keterangan' => $keterangan[$i],
			'tanggal' => date('Y-m-d H:i:s'),
			'id_user' => $_SESSION['id'],
			'role_user' => $_SESSION['role_id'],
		);
		if ($keterangan[$i] != '') {
			$dta['keterangan'] = json_encode($keterangan_array);
		}

		if ($kepada != 0) {
			if ($penugasan[$i] == 'Selesai' && $_SESSION['role_id'] == 3) { } else {
				$permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));
				$master_proyek = $this->mymodel->selectDataone("master_proyek", array('id' => $permintaan_barang['id_proyek']));
				$kode_proyek = $master_proyek['kode'];
				$master_proyek_sub = $this->mymodel->selectWithQuery("SELECT * FROM master_proyek_sub WHERE kode = '$kode_proyek'");
				$master_jenis = $this->mymodel->selectDataone("master_jenis", array('value' => $permintaan_barang['jenis']));
				$jenis_permintaan = $master_jenis['id'];

				$cek_notif_ke = $this->mymodel->selectWithQuery("SELECT ke FROM notifikasi WHERE id_permintaan = '$id' AND tipe = 'penugasan' ORDER BY ke desc LIMIT 1");
				$count_ke = $cek_notif_ke[0]['ke'] + 1;
				if ($_SESSION['role_id'] == 3) {
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
						if ($_SESSION['role_id'] == 3) {
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
							$notif['created_by'] = $_SESSION['id'];
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
		$dta['id_barang'] = $id_barang[$i];
		$dta['kode_pekerjaan'] = $kode_pekerjaan[$i];
		$dta['id_satuan'] = $id_satuan[$i];
		$dta['qty'] = $qty[$i];
		$dta['fungsi'] = $fungsi[$i];
		$dta['target'] = $target[$i];
		$dta['kepada'] = $kepada;
		$dta['penugasan'] = $penugasan[$i];
		$dta['created_at'] = date('Y-m-d H:i:s');
		$dta['status'] = "ENABLE";
		$dta['created_by'] = $_SESSION['id'];

		$this->db->update('permintaan_barang_sub', $dta, array('id' => $id_pbs));

		header('Location: ' . base_url('master/surat_permintaan/edit/' . $id));
	}

	public function update_alat()
	{
		$id = $this->input->post('id', TRUE);
		$dt = $_POST['dt'];
		$kode = $_POST['kode'];
		$count_log = $_POST['count_log'];

		$permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));
		$permintaan_barang_sub = $this->mymodel->selectWithQuery("SELECT * FROM permintaan_barang_sub WHERE kode = '$kode'");
		$master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => 2));

		$count_id_barang = count($permintaan_barang_sub);

		for ($i = 0; $i < $count_id_barang; $i++) {
			$barang[$i] = array(
				'kode' => $kode,
				'id_barang' => $permintaan_barang_sub[$i]['id_barang'],
				'kode_pekerjaan' => $permintaan_barang_sub[$i]['kode_pekerjaan'],
				'id_satuan' => $permintaan_barang_sub[$i]['id_satuan'],
				'qty' => $permintaan_barang_sub[$i]['qty'],
				'kapasitas' => $permintaan_barang_sub[$i]['kapasitas'],
				'merk' => $permintaan_barang_sub[$i]['merk'],
				'waktu_pemakaian' => $permintaan_barang_sub[$i]['waktu_pemakaian'],
				'keterangan' => $permintaan_barang_sub[$i]['keterangan'],
				'created_at' => date('Y-m-d H:i:s'),
				'status' => "ENABLE",
				'created_by' => $_SESSION['id'],
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

		$role = $this->mymodel->selectDataone("role", array('id' => $_SESSION['role_id']));
		$user = $this->mymodel->selectDataone("user", array('id' => $_SESSION['id']));
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
				if ($_SESSION['role_id'] == 1) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id = 1");
				} else if ($_SESSION['role_id'] == 2) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 2");
				} else if ($_SESSION['role_id'] == 3) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 3");
				} else if ($_SESSION['role_id'] == 4) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 4");
				} else if ($_SESSION['role_id'] == 5) {
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
					$notif['created_by'] = $_SESSION['id'];
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
			'id_proyek' => $dt['id_proyek'],
			'lokasi' => $dt['lokasi'],
			'id_pic' => $_SESSION['id'],
			'id_pm' => 0,
			'id_cc' => 0,
			'id_pd' => 0,
			'id_lp' => 0,
			'status_permintaan' => 1,
			'jenis' => "SPB",
			'status' => "ENABLE",
			'created_by' => $_SESSION['id'],
			'created_at' => date('Y-m-d H:i:s'),
			'file' => $file_lampiran,
			'sub' => $barang,
		);
		$datalog = json_encode($log);
		$dt['log'] = $datalog;
		$dt['updated_at'] = date("Y-m-d H:i:s");
		$str = $this->mymodel->updateData('permintaan_barang', $dt, array('id' => $id));
		return $str;
	}

	public function insert_alat()
	{
		$kode_pekerjaan = $_POST['kode_pekerjaan'];
		$id_barang = $_POST['id_barang'];
		$id_satuan = $_POST['id_satuan'];
		$qty = $_POST['qty'];
		$kapasitas = $_POST['kapasitas'];
		$merk = $_POST['merk'];
		$waktu_pemakaian = $_POST['waktu_pemakaian'];
		$keterangan = $_POST['keterangan'];
		$id = $_POST['id'];
		$kode = $_POST['kode'];

		$count_id_barang = count($id_barang);

		for ($i = 0; $i < $count_id_barang; $i++) {
			$dta['kode'] = $kode;
			$dta['id_barang'] = $id_barang[$i];
			$dta['kode_pekerjaan'] = $kode_pekerjaan[$i];
			$dta['id_satuan'] = $id_satuan[$i];
			$dta['qty'] = $qty[$i];
			$dta['kapasitas'] = $kapasitas[$i];
			$dta['merk'] = $merk[$i];
			$dta['waktu_pemakaian'] = $waktu_pemakaian[$i];
			$dta['keterangan'] = $keterangan[$i];
			$dta['created_at'] = date('Y-m-d H:i:s');
			$dta['status'] = "ENABLE";
			$dta['created_by'] = $_SESSION['id'];

			$this->mymodel->insertData('permintaan_barang_sub', $dta);
		}

		header('Location: ' . base_url('master/surat_permintaan/edit/' . $id));
	}

	public function ubah_alat($id_pbs)
	{
		$kode_pekerjaan = $_POST['kode_pekerjaan'];
		$id_barang = $_POST['id_barang'];
		$id_satuan = $_POST['id_satuan'];
		$qty = $_POST['qty'];
		$kapasitas = $_POST['kapasitas'];
		$merk = $_POST['merk'];
		$waktu_pemakaian = $_POST['waktu_pemakaian'];
		$keterangan = $_POST['keterangan'];
		$kepada = $_POST['kepada'];
		$penugasan = $_POST['penugasan'];
		$id = $_POST['id'];
		$kode = $_POST['kode'];
		$i = 0;

		$permintaan_barang_sub = $this->mymodel->selectDataone('permintaan_barang_sub', array('id' => $id_pbs));

		$keterangan_array = json_decode($permintaan_barang_sub['keterangan']);
		$count_keterangan = count($keterangan_array);
		$keterangan_array[$count_keterangan] = (object) array(
			'keterangan' => $keterangan[$i],
			'tanggal' => date('Y-m-d H:i:s'),
			'id_user' => $_SESSION['id'],
			'role_user' => $_SESSION['role_id'],
		);
		if ($keterangan[$i] != '') {
			$dta['keterangan'] = json_encode($keterangan_array);
		}

		if ($kepada != 0) {
			if ($penugasan[$i] == 'Selesai' && $_SESSION['role_id'] == 3) { } else {
				$permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));
				$master_proyek = $this->mymodel->selectDataone("master_proyek", array('id' => $permintaan_barang['id_proyek']));
				$kode_proyek = $master_proyek['kode'];
				$master_proyek_sub = $this->mymodel->selectWithQuery("SELECT * FROM master_proyek_sub WHERE kode = '$kode_proyek'");
				$master_jenis = $this->mymodel->selectDataone("master_jenis", array('value' => $permintaan_barang['jenis']));
				$jenis_permintaan = $master_jenis['id'];

				$cek_notif_ke = $this->mymodel->selectWithQuery("SELECT ke FROM notifikasi WHERE id_permintaan = '$id' AND tipe = 'penugasan' ORDER BY ke desc LIMIT 1");
				$count_ke = $cek_notif_ke[0]['ke'] + 1;
				if ($_SESSION['role_id'] == 3) {
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
						if ($_SESSION['role_id'] == 3) {
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
							$notif['created_by'] = $_SESSION['id'];
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
		$dta['id_barang'] = $id_barang[$i];
		$dta['kode_pekerjaan'] = $kode_pekerjaan[$i];
		$dta['id_satuan'] = $id_satuan[$i];
		$dta['qty'] = $qty[$i];
		$dta['kapasitas'] = $kapasitas[$i];
		$dta['merk'] = $merk[$i];
		$dta['waktu_pemakaian'] = $waktu_pemakaian[$i];
		$dta['kepada'] = $kepada;
		$dta['penugasan'] = $penugasan[$i];
		$dta['created_at'] = date('Y-m-d H:i:s');
		$dta['status'] = "ENABLE";
		$dta['created_by'] = $_SESSION['id'];

		$this->db->update('permintaan_barang_sub', $dta, array('id' => $id_pbs));


		header('Location: ' . base_url('master/surat_permintaan/edit/' . $id));
	}

	public function update_subkon()
	{
		$id = $this->input->post('id', TRUE);
		$dt = $_POST['dt'];
		$kode = $_POST['kode'];
		$count_log = $_POST['count_log'];

		$permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));
		$permintaan_barang_sub = $this->mymodel->selectWithQuery("SELECT * FROM permintaan_barang_sub WHERE kode = '$kode'");
		$master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => 2));

		$count_id_barang = count($permintaan_barang_sub);

		for ($i = 0; $i < $count_id_barang; $i++) {
			$barang[$i] = array(
				'kode' => $kode,
				'id_barang' => $permintaan_barang_sub[$i]['id_barang'],
				'kode_pekerjaan' => $permintaan_barang_sub[$i]['kode_pekerjaan'],
				'id_satuan' => $permintaan_barang_sub[$i]['id_satuan'],
				'qty' => $permintaan_barang_sub[$i]['qty'],
				'waktu_pelaksanaan' => $permintaan_barang_sub[$i]['waktu_pelaksanaan'],
				'persyaratan' => $permintaan_barang_sub[$i]['persyaratan'],
				'keterangan' => $permintaan_barang_sub[$i]['keterangan'],
				'created_at' => date('Y-m-d H:i:s'),
				'status' => "ENABLE",
				'created_by' => $_SESSION['id'],
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

		$role = $this->mymodel->selectDataone("role", array('id' => $_SESSION['role_id']));
		$user = $this->mymodel->selectDataone("user", array('id' => $_SESSION['id']));
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
				if ($_SESSION['role_id'] == 1) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id = 1");
				} else if ($_SESSION['role_id'] == 2) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 2");
				} else if ($_SESSION['role_id'] == 3) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 3");
				} else if ($_SESSION['role_id'] == 4) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 4");
				} else if ($_SESSION['role_id'] == 5) {
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
					$notif['created_by'] = $_SESSION['id'];
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
			'id_proyek' => $dt['id_proyek'],
			'lokasi' => $dt['lokasi'],
			'id_pic' => $_SESSION['id'],
			'id_pm' => 0,
			'id_cc' => 0,
			'id_pd' => 0,
			'id_lp' => 0,
			'status_permintaan' => 1,
			'jenis' => "SPB",
			'status' => "ENABLE",
			'created_by' => $_SESSION['id'],
			'created_at' => date('Y-m-d H:i:s'),
			'file' => $file_lampiran,
			'sub' => $barang,
		);
		$datalog = json_encode($log);
		$dt['log'] = $datalog;
		$dt['updated_at'] = date("Y-m-d H:i:s");
		$str = $this->mymodel->updateData('permintaan_barang', $dt, array('id' => $id));
		return $str;
	}

	public function insert_subkon()
	{
		$kode_pekerjaan = $_POST['kode_pekerjaan'];
		$id_barang = $_POST['id_barang'];
		$id_satuan = $_POST['id_satuan'];
		$qty = $_POST['qty'];
		$waktu_pelaksanaan = $_POST['waktu_pelaksanaan'];
		$persyaratan = $_POST['persyaratan'];
		$keterangan = $_POST['keterangan'];
		$id = $_POST['id'];
		$kode = $_POST['kode'];

		$count_id_barang = count($id_barang);
		$count_persyaratan = count($persyaratan);

		for ($i = 0; $i < $count_id_barang; $i++) {

			$dta['kode'] = $kode;
			$dta['id_barang'] = $id_barang[$i];
			$dta['kode_pekerjaan'] = $kode_pekerjaan[$i];
			$dta['id_satuan'] = $id_satuan[$i];
			$dta['qty'] = $qty[$i];
			$dta['waktu_pelaksanaan'] = $waktu_pelaksanaan[$i];

			for ($p = 0; $p < $count_persyaratan; $p++) {
				$persyaratan_arr[$p] = (object) array(
					'persyaratan' => $persyaratan[$p]
				);
			}
			// print_r($persyaratan_arr);
			$dta['persyaratan'] = json_encode($persyaratan_arr);
			$dta['keterangan'] = $keterangan[$i];

			$dta['created_at'] = date('Y-m-d H:i:s');
			$dta['status'] = "ENABLE";
			$dta['created_by'] = $_SESSION['id'];

			// die();
			$this->mymodel->insertData('permintaan_barang_sub', $dta);
		}

		header('Location: ' . base_url('master/surat_permintaan/edit/' . $id));
	}

	public function ubah_subkon($id_pbs)
	{
		$kode_pekerjaan = $_POST['kode_pekerjaan'];
		$id_barang = $_POST['id_barang'];
		$id_satuan = $_POST['id_satuan'];
		$qty = $_POST['qty'];
		$waktu_pelaksanaan = $_POST['waktu_pelaksanaan'];
		$persyaratan = $_POST['persyaratan'];
		$keterangan = $_POST['keterangan'];
		$kepada = $_POST['kepada'];
		$penugasan = $_POST['penugasan'];
		$id = $_POST['id'];
		$kode = $_POST['kode'];
		$i = 0;
		$permintaan_barang_sub = $this->mymodel->selectDataone('permintaan_barang_sub', array('id' => $id_pbs));

		$keterangan_array = json_decode($permintaan_barang_sub['keterangan']);
		$count_keterangan = count($keterangan_array);
		$keterangan_array[$count_keterangan] = (object) array(
			'keterangan' => $keterangan[$i],
			'tanggal' => date('Y-m-d H:i:s'),
			'id_user' => $_SESSION['id'],
			'role_user' => $_SESSION['role_id'],
		);
		if ($keterangan[$i] != '') {
			$dta['keterangan'] = json_encode($keterangan_array);
		}

		if ($kepada != 0) {
			if ($penugasan[$i] == 'Selesai' && $_SESSION['role_id'] == 3) { } else {
				$permintaan_barang = $this->mymodel->selectDataone('permintaan_barang', array('id' => $id));
				$master_proyek = $this->mymodel->selectDataone("master_proyek", array('id' => $permintaan_barang['id_proyek']));
				$kode_proyek = $master_proyek['kode'];
				$master_proyek_sub = $this->mymodel->selectWithQuery("SELECT * FROM master_proyek_sub WHERE kode = '$kode_proyek'");
				$master_jenis = $this->mymodel->selectDataone("master_jenis", array('value' => $permintaan_barang['jenis']));
				$jenis_permintaan = $master_jenis['id'];

				$cek_notif_ke = $this->mymodel->selectWithQuery("SELECT ke FROM notifikasi WHERE id_permintaan = '$id' AND tipe = 'penugasan' ORDER BY ke desc LIMIT 1");
				$count_ke = $cek_notif_ke[0]['ke'] + 1;
				if ($_SESSION['role_id'] == 3) {
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
						if ($_SESSION['role_id'] == 3) {
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
							$notif['created_by'] = $_SESSION['id'];
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

		$count_persyaratan = count($persyaratan);

		$dta['kode'] = $kode;
		$dta['id_barang'] = $id_barang[$i];
		$dta['kode_pekerjaan'] = $kode_pekerjaan[$i];
		$dta['id_satuan'] = $id_satuan[$i];
		$dta['qty'] = $qty[$i];
		$dta['waktu_pelaksanaan'] = $waktu_pelaksanaan[$i];

		for ($p = 0; $p < $count_persyaratan; $p++) {
			$persyaratan_arr[$p] = (object) array(
				'persyaratan' => $persyaratan[$p]
			);
		}
		// print_r($persyaratan_arr);
		$dta['persyaratan'] = json_encode($persyaratan_arr);
		$dta['kepada'] = $kepada;
		$dta['penugasan'] = $penugasan[$i];

		$dta['created_at'] = date('Y-m-d H:i:s');
		$dta['status'] = "ENABLE";
		$dta['created_by'] = $_SESSION['id'];

		// die();
		$this->db->update('permintaan_barang_sub', $dta, array('id' => $id_pbs));

		header('Location: ' . base_url('master/surat_permintaan/edit/' . $id));
	}

	public function verifikasi($id)
	{
		$dt = $_POST['dt'];
		$id_user = $_SESSION['id'];
		$role_user = $_SESSION['role_id'];
		$cek_permintaan = $this->mymodel->selectDataone("permintaan_barang", array('id' => $id));
		$role = $this->mymodel->selectDataone("role", array('id' => $_SESSION['role_id']));
		$user = $this->mymodel->selectDataone("user", array('id' => $_SESSION['id']));

		$master_proyek = $this->mymodel->selectDataone("master_proyek", array('id' => $cek_permintaan['id_proyek']));
		$kode_proyek = $master_proyek['kode'];
		$master_proyek_sub = $this->mymodel->selectWithQuery("SELECT * FROM master_proyek_sub WHERE kode = '$kode_proyek'");
		$master_jenis = $this->mymodel->selectDataone("master_jenis", array('value' => $cek_permintaan['jenis']));
		$jenis_permintaan = $master_jenis['id'];

		if ($_POST['status'] == 0) {
			$master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => 3));
			$cek_notif_ke = $this->mymodel->selectWithQuery("SELECT ke FROM notifikasi WHERE id_permintaan = '$id' AND tipe = 'verifikasi-terima' ORDER BY ke desc LIMIT 1");
			$count_ke = $cek_notif_ke[0]['ke'] + 1;
			if ($_SESSION['role_id'] == 2) {
				$role_notif = 3;
				$dt['id_pm'] = $_SESSION['id'];
				$dt['status_permintaan'] = 3;
			} else if ($_SESSION['role_id'] == 3) {
				$role_notif = 4;
				$dt['id_cc'] = $_SESSION['id'];
				$dt['status_permintaan'] = 5;
			} else if ($_SESSION['role_id'] == 4) {
				$role_notif = 5;
				$dt['id_pd'] = $_SESSION['id'];
				$dt['status_permintaan'] = 7;
			} else if ($_SESSION['role_id'] == 5) {
				$role_notif = 6;
				$dt['id_lp'] = $_SESSION['id'];
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
			if ($_SESSION['role_id'] == 2) {
				$role_notif = 2;
				$dt['status_permintaan'] = 2;
			} else if ($_SESSION['role_id'] == 3) {
				$role_notif = 3;
				$dt['status_permintaan'] = 4;
			} else if ($_SESSION['role_id'] == 4) {
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
				if ($_SESSION['role_id'] == 1) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id = $role_notif");
				} else if ($_SESSION['role_id'] == 2) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= $role_notif");
				} else if ($_SESSION['role_id'] == 3) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= $role_notif");
				} else if ($_SESSION['role_id'] == 4) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= $role_notif");
				} else if ($_SESSION['role_id'] == 5) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= $role_notif");
				}
				if ($user_role) {
					$notif['id_user'] = $user_role['id'];
					$notif['id_permintaan'] = $id;
					$notif['status_notifikasi'] = '0';
					$notif['status'] = 'ENABLE';
					$notif['created_at'] = date("Y-m-d H:i:s");
					$notif['created_by'] = $_SESSION['id'];
					$this->mymodel->insertData('notifikasi', $notif);

					$tokens[] = $user_role['token'];
				}
			}
		}

		if ($_SESSION['role_id'] == 4) {
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
					$notif_lp['created_by'] = $_SESSION['id'];
					$this->mymodel->insertData('notifikasi', $notif_lp);

					$tokens[] = $lp['token'];
				}
			}
		}

		if ($_SESSION['role_id'] == 5) {
			$user_lp = $this->mymodel->selectWithQuery("SELECT * FROM user WHERE role_id >= 5 AND role_id <= 6");
			foreach ($user_lp as $lp) {
				$id_user_lp = $lp['id'];
				$user_jenis_lp = $this->mymodel->selectDataone("user_jenis", array('id_user' => $id_user_lp, 'jenis' => $jenis_permintaan));
				// print_r($user_jenis_lp);
				if ($user_jenis_lp) {
					$notif_lp['id_user'] = $user_jenis_lp['id_user'];
					$notif_lp['id_permintaan'] = $id;
					$notif_lp['status_notifikasi'] = '0';
					$notif_lp['status'] = 'ENABLE';
					$notif_lp['created_at'] = date("Y-m-d H:i:s");
					$notif_lp['created_by'] = $_SESSION['id'];
					$this->mymodel->insertData('notifikasi', $notif_lp);

					$tokens[] = $lp['token'];
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

		$str = $this->mymodel->updateData('permintaan_barang', $dt, array('id' => $id));
		header('Location: ' . base_url('master/surat_permintaan/detail/' . $id));
	}

	public function ajukan_to_pm($id)
	{
		$master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => 1));
		$cek_permintaan = $this->mymodel->selectDataone("permintaan_barang", array('id' => $id));
		$role = $this->mymodel->selectDataone("role", array('id' => $_SESSION['role_id']));
		$user = $this->mymodel->selectDataone("user", array('id' => $_SESSION['id']));
		$master_proyek = $this->mymodel->selectDataone("master_proyek", array('id' => $cek_permintaan['id_proyek']));
		$kode_proyek = $master_proyek['kode'];
		$master_proyek_sub = $this->mymodel->selectWithQuery("SELECT * FROM master_proyek_sub WHERE kode = '$kode_proyek'");
		$master_jenis = $this->mymodel->selectDataone("master_jenis", array('value' => $cek_permintaan['jenis']));
		$jenis_permintaan = $master_jenis['id'];

		foreach ($master_proyek_sub as $mps) {
			$user_jenis = $this->mymodel->selectDataone("user_jenis", array('id_user' => $mps['id_user'], 'jenis' => $jenis_permintaan));
			if ($user_jenis) {
				$id_user_jenis = $user_jenis['id_user'];
				if ($_SESSION['role_id'] == 1) {
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
					$notif['created_by'] = $_SESSION['id'];
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
		$str = $this->mymodel->updateData('permintaan_barang', $dt, array('id' => $id));
		header('Location: ' . base_url('master/surat_permintaan/detail/' . $id));
	}

	public function batalkan($id)
	{
		$cek_permintaan = $this->mymodel->selectDataone("permintaan_barang", array('id' => $id));
		$role = $this->mymodel->selectDataone("role", array('id' => $_SESSION['role_id']));
		$user = $this->mymodel->selectDataone("user", array('id' => $_SESSION['id']));

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
				if ($_SESSION['role_id'] == 1) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id = 1");
				} else if ($_SESSION['role_id'] == 2) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 2");
				} else if ($_SESSION['role_id'] == 3) {
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id <= 3");
				} else if ($_SESSION['role_id'] == 4) {
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
					$notif['created_by'] = $_SESSION['id'];
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

		$dt['status_permintaan'] = 9;
		$str = $this->mymodel->updateData('permintaan_barang', $dt, array('id' => $id));

		header('Location: ' . base_url('master/surat_permintaan/detail/' . $id));
	}

	public function read($id)
	{
		$ceknotifikasi = $this->mymodel->selectDataone("notifikasi", array('id' => $id));
		$id_permintaan = $ceknotifikasi['id_permintaan'];

		if ($_SESSION['role_id'] == 0) {
			$notif['status'] = 'DISABLE';
			$notif['updated_at'] = date("Y-m-d H:i:s");
		} else {
			$notif['status_notifikasi'] = '1';
			$notif['updated_at'] = date("Y-m-d H:i:s");
		}

		$this->db->update('notifikasi', $notif, array('id' => $id));

		header('Location: ' . base_url('master/surat_permintaan/detail/' . $id_permintaan));
	}

	public function delete_permintaan($id)
	{
		$permintaan_barang_sub = $this->mymodel->selectDataone("permintaan_barang_sub", array('id' => $id));
		$permintaan_barang = $this->mymodel->selectDataone("permintaan_barang", array('kode' => $permintaan_barang_sub['kode']));
		$this->mymodel->deleteData('permintaan_barang_sub',  array('id' => $id));
		header('Location: ' . base_url('master/surat_permintaan/edit/' . $permintaan_barang['id']));
	}

	public function delete_file($id)
	{
		$file = $this->mymodel->selectDataone("file", array('id' => $id));
		$this->mymodel->deleteData('file',  array('id' => $id));
		header('Location: ' . base_url('master/surat_permintaan/edit/' . $file['table_id']));
	}

	public function delete()
	{
		$id = $this->input->post('id', TRUE);
		$file = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'permintaan_barang'));
		@unlink($file['dir']);
		$this->mymodel->deleteData('file',  array('table_id' => $id, 'table' => 'permintaan_barang'));

		$str = $this->mymodel->deleteData('permintaan_barang',  array('id' => $id));
		return $str;
	}

	public function status($id, $status)
	{
		$this->mymodel->updateData('permintaan_barang', array('status' => $status), array('id' => $id));
		redirect('master/Permintaan_barang');
	}

	public function reminder_cc()
	{
		$permintaan_barang = $this->mymodel->selectWithQuery("SELECT * FROM permintaan_barang WHERE status_permintaan = 3");
		$master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => 8));

		foreach ($permintaan_barang as $pb) {
			$master_proyek = $this->mymodel->selectDataone("master_proyek", array('id' => $pb['id_proyek']));
			$kode_proyek = $master_proyek['kode'];
			$master_proyek_sub = $this->mymodel->selectWithQuery("SELECT * FROM master_proyek_sub WHERE kode = '$kode_proyek'");
			$master_jenis = $this->mymodel->selectDataone("master_jenis", array('value' => $pb['jenis']));
			$jenis_permintaan = $master_jenis['id'];

			$tokens = array();
			foreach ($master_proyek_sub as $mps) {
				$user_jenis = $this->mymodel->selectDataone("user_jenis", array('id_user' => $mps['id_user'], 'jenis' => $jenis_permintaan));
				if ($user_jenis) {
					$id_user_jenis = $user_jenis['id_user'];
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id = 3");
					if ($user_role) {
						$tokens[] = $user_role['token'];
						$notifications = (object) array(
							'body' => 'Surat Permintaan ' . $pb['kode'] . ' Menunggu Verifikasi Anda.',
							'title' => $pb['kode'],
						);
						$messages = (object) array(
							'notification_title' => $pb['kode'],
							'notification_body' => 'Surat Permintaan ' . $pb['kode'] . ' Menunggu Verifikasi Anda.',
							'data_body_key' => 'Surat Permintaan ' . $pb['kode'] . ' Menunggu Verifikasi Anda.',
							'id_sp' => $pb['id'],
							'kode_sp' => $pb['kode'],
						);
					}
				}
			}
			$fields = array(
				'registration_ids' => $tokens,
				'data' => $messages
			);
			header("Content-type:application/json");
			print_r($fields);
			print_r($this->curl->access_api($fields));
		}
	}

	public function reminder_pd()
	{
		// $role_user = $user['role_id'];
		// $role = $this->mymodel->selectDataone("role", array('id' => $role_user));

		$permintaan_barang = $this->mymodel->selectWithQuery("SELECT * FROM permintaan_barang WHERE status_permintaan = 5");
		$master_notifikasi = $this->mymodel->selectDataone("master_notifikasi", array('id' => 8));

		foreach ($permintaan_barang as $pb) {

			$master_proyek = $this->mymodel->selectDataone("master_proyek", array('id' => $pb['id_proyek']));
			$kode_proyek = $master_proyek['kode'];
			$master_proyek_sub = $this->mymodel->selectWithQuery("SELECT * FROM master_proyek_sub WHERE kode = '$kode_proyek'");
			$master_jenis = $this->mymodel->selectDataone("master_jenis", array('value' => $pb['jenis']));
			$jenis_permintaan = $master_jenis['id'];

			$tokens = array();
			foreach ($master_proyek_sub as $mps) {
				$user_jenis = $this->mymodel->selectDataone("user_jenis", array('id_user' => $mps['id_user'], 'jenis' => $jenis_permintaan));
				if ($user_jenis) {
					$id_user_jenis = $user_jenis['id_user'];
					$user_role = $this->mymodel->selectDataone("user", "id = '$id_user_jenis' AND role_id = 4");
					if ($user_role) {
						$tokens[] = $user_role['token'];
						$notifications = (object) array(
							'body' => 'Surat Permintaan ' . $pb['kode'] . ' Menunggu Verifikasi Anda.',
							'title' => $pb['kode'],
						);
						$messages = (object) array(
							'notification_title' => $pb['kode'],
							'notification_body' => 'Surat Permintaan ' . $pb['kode'] . ' Menunggu Verifikasi Anda.',
							'data_body_key' => 'Surat Permintaan ' . $pb['kode'] . ' Menunggu Verifikasi Anda.',
							'id_sp' => $pb['id'],
							'kode_sp' => $pb['kode'],
						);
					}
				}
			}
			$fields = array(
				'registration_ids' => $tokens,
				'data' => $messages
			);
			header("Content-type:application/json");
			print_r($fields);
			print_r($this->curl->access_api($fields));
		}
	}
}
