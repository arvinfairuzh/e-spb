<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Master_proyek extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$data['page_name'] = "master_proyek";
		$this->template->load('template/template', 'master/master_proyek/all-master_proyek', $data);
	}

	public function create()
	{
		$data['page_name'] = "master_proyek";
		$this->template->load('template/template', 'master/master_proyek/add-master_proyek', $data);
	}

	public function validate()
	{
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$this->form_validation->set_rules('dt[kode]', '<strong>Kode</strong>', 'required');
		$this->form_validation->set_rules('dt[nama]', '<strong>Nama</strong>', 'required');
		$this->form_validation->set_rules('dt[lokasi]', '<strong>Lokasi</strong>', 'required');
	}

	public function store()
	{
		$this->validate();
		if ($this->form_validation->run() == FALSE) {
			$this->alert->alertdanger(validation_errors());
		} else {
			$dt = $_POST['dt'];
			$id_role = $_POST['id_role'];
			$id_user = $_POST['id_user'];
			$count_id_role = count($id_role);

			for ($i = 0; $i < $count_id_role; $i++) {
				$json[$i] = array(
					'kode' => $dt['kode'],
					'id_role' => $id_role[$i],
					'id_user' => $id_user[$i]
				);

				$dta['kode'] = $dt['kode'];
				$dta['id_role'] = $id_role[$i];
				$dta['id_user'] = $id_user[$i];
				$dta['created_at'] = date('Y-m-d H:i:s');
				$dta['status'] = "ENABLE";
				$dta['created_by'] = $_SESSION['id'];

				$this->mymodel->insertData('master_proyek_sub', $dta);
			}

			$datajson = json_encode($json);

			$dt['json'] = $datajson;
			$dt['created_by'] = $_SESSION['id'];
			$dt['created_at'] = date('Y-m-d H:i:s');
			$dt['status'] = "ENABLE";
			$str = $this->mymodel->insertData('master_proyek', $dt);
			$last_id = $this->db->insert_id();
			if (!empty($_FILES['file']['name'])) {
				$dir  = "webfile/";
				$config['upload_path']          = $dir;
				$config['allowed_types']        = '*';
				$config['file_name']           = 'proyek-' . $last_id;
				$this->load->library('upload', $config);
				if (!$this->upload->do_upload('file')) {
					$error = $this->upload->display_errors();
					$this->alert->alertdanger($error);
				} else {
					$file = $this->upload->data();
					$dt['file'] = $file['file_name'];
					$str =  $this->mymodel->updateData('master_proyek', $dt, array('id' => $last_id));
					return $str;
				}
			}
			$this->alert->alertsuccess('Success Send Data');
		}
	}

	public function json()
	{
		$status = $_GET['status'];
		if ($status == '') {
			$status = 'ENABLE';
		}
		header('Content-Type: application/json');
		$this->datatables->select('id,kode,nama,lokasi,status');
		$this->datatables->where('status', $status);
		$this->datatables->from('master_proyek');
		if ($status == "ENABLE") {
			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'id');
		} else {
			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');
		}
		echo $this->datatables->generate();
	}

	public function edit($id)
	{
		$data['master_proyek'] = $this->mymodel->selectDataone('master_proyek', array('id' => $id));
		$kode = $data['master_proyek']['kode'];
		$data['master_proyek_sub'] = $this->mymodel->selectWithQuery("SELECT * FROM master_proyek_sub WHERE kode = '$kode'");
		$data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'master_proyek'));
		$data['page_name'] = "master_proyek";

		$this->template->load('template/template', 'master/master_proyek/edit-master_proyek', $data);
	}

	public function update()
	{
		$this->validate();
		if ($this->form_validation->run() == FALSE) {
			$this->alert->alertdanger(validation_errors());
		} else {
			$id = $this->input->post('id', TRUE);
			$id_role = $_POST['id_role'];
			$id_user = $_POST['id_user'];
			$count_id_role = count($id_role);

			$dt = $_POST['dt'];

			$this->db->delete('master_proyek_sub',  array('kode' => $dt['kode']));
			for ($i = 0; $i < $count_id_role; $i++) {
				$json[$i] = array(
					'kode' => $dt['kode'],
					'id_role' => $id_role[$i],
					'id_user' => $id_user[$i]
				);

				$dta['kode'] = $dt['kode'];
				$dta['id_role'] = $id_role[$i];
				$dta['id_user'] = $id_user[$i];
				$dta['created_at'] = date('Y-m-d H:i:s');
				$dta['status'] = "ENABLE";
				$dta['created_by'] = $_SESSION['id'];

				$this->mymodel->insertData('master_proyek_sub', $dta);
			}
			$datajson = json_encode($json);

			$dt['json'] = $datajson;

			if (!empty($_FILES['file']['name'])) {
				$dir  = "webfile/";
				$config['upload_path']          = $dir;
				$config['allowed_types']        = '*';
				$config['file_name']           = 'proyek-' . $id;
				$this->load->library('upload', $config);
				if (!$this->upload->do_upload('file')) {
					$error = $this->upload->display_errors();
					$this->alert->alertdanger($error);
				} else {
					$file = $this->upload->data();
					$dt['file'] = $file['file_name'];
					$dt['updated_at'] = date("Y-m-d H:i:s");
					$str = $this->mymodel->updateData('master_proyek', $dt, array('id' => $id));
					return $str;
				}
			} else {
				$dt['updated_at'] = date("Y-m-d H:i:s");
				$str = $this->mymodel->updateData('master_proyek', $dt, array('id' => $id));
				return $str;
			}
		}
	}


	public function delete_proyek_role($id)

	{
		$master_proyek_sub = $this->mymodel->selectDataone("master_proyek_sub", array('id' => $id));
		$master_proyek = $this->mymodel->selectDataone("master_proyek", array('kode' => $master_proyek_sub['kode']));
		$this->mymodel->deleteData('master_proyek_sub',  array('id' => $id));
		header('Location: ' . base_url('master/master_proyek/edit/' . $master_proyek['id']));
	}

	public function delete()

	{

		$id = $this->input->post('id', TRUE);
		$file = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'master_proyek'));

		@unlink($file['dir']);

		$this->mymodel->deleteData('file',  array('table_id' => $id, 'table' => 'master_proyek'));



		$str = $this->mymodel->deleteData('master_proyek',  array('id' => $id));
		return $str;
	}



	public function status($id, $status)

	{

		$this->mymodel->updateData('master_proyek', array('status' => $status), array('id' => $id));


		redirect('master/Master_proyek');
	}
}
