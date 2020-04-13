<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
error_reporting(0);

class User extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$data['page_name'] = "user";
		$this->template->load('template/template', 'master/user/all-user', $data);
	}

	public function create()
	{
		$data['page_name'] = "user";
		$this->template->load('template/template', 'master/user/add-user', $data);
	}


	public function password_check($str)
	{
		$this->form_validation->set_message('password_check', "password must combine alphabet and numeric");
		$message = FALSE;
		if (preg_match('#[0-9]#', $str) && preg_match('#[a-zA-Z]#', $str)) {
			$message = TRUE;
		}
		return $message;
	}

	public function store()
	{
		$this->form_validation->set_error_delimiters('<li>', '</li>');

		$this->form_validation->set_rules(
			'dt[nip]',
			'<strong>Username</strong>',
			'required|is_unique[user.nip]',
			array(
				'required'      => 'You have not provided %s.',
				'is_unique'     => 'This %s already exists.'
			)
		);
		$this->form_validation->set_rules(
			'dt[email]',
			'<strong>Email</strong>',
			'required|is_unique[user.email]',
			array(
				'required'      => 'You have not provided %s.',
				'is_unique'     => 'This %s already exists.'
			)
		);
		$this->form_validation->set_rules('dt[password]', '<strong>Pasword</strong>', 'required|min_length[6]');
		$this->form_validation->set_rules('password_confirmation_field', 'Password Confirmation Field', 'required|matches[dt[password]]');
		$this->form_validation->set_rules('dt[name]', '<strong>Name</strong>', 'required');
		$this->form_validation->set_rules('dt[role_id]', '<strong>Role</strong>', 'required');
		$this->form_validation->set_rules('dt[desc]', '<strong>Description</strong>', 'required');
		if ($this->form_validation->run() == FALSE) {
			$this->alert->alertdanger(validation_errors());
		} else {
			$dt = $_POST['dt'];

			$jenis = $_POST['jenis'];
			$count_jenis = count($jenis);

			for ($i = 0; $i < $count_jenis; $i++) {
				$json[$i] = array(
					'jenis' => $jenis[$i]
				);
			}

			$datajson = json_encode($json);

			$dt['jenis'] = $datajson;
			$dt['password'] = md5($dt['password']);
			$dt['created_by'] = $_SESSION['id'];
			$dt['created_at'] = date('Y-m-d H:i:s');
			$dt['status'] = "ENABLE";
			$str = $this->mymodel->insertData('user', $dt);
			$last_id = $this->db->insert_id();

			for ($i = 0; $i < $count_jenis; $i++) {
				$dta['jenis'] = $jenis[$i];
				$dta['id_user'] = $last_id;

				$this->mymodel->insertData('user_jenis', $dta);
			}

			if (!empty($_FILES['file']['name'])) {
				$path = $_SERVER['DOCUMENT_ROOT'] . "/e-spb/webfile/";

				$file_ext = $_FILES['file']['name'];
				$ext = pathinfo($file_ext, PATHINFO_EXTENSION);
				$file_name = $_FILES['file']['name'];
				$file_size = $_FILES['file']['size'];
				$file_tmp = $_FILES['file']['tmp_name'];
				$file_type = $_FILES['file']['type'];

				$namafile = '';
				if ($file_name != '') {
					$namafile = 'user-file-' . $last_id . '-' . $file_name;
				} else {
					$namafile = 'user-file-' . $last_id . '-' . $file_name;
				}
				move_uploaded_file($file_tmp, $path . $namafile);

				$fl['file'] = $namafile;
				$str =  $this->db->update('user', $fl, array('id' => $last_id));
			}

			if (!empty($_FILES['ttd']['name'])) {
				$path = $_SERVER['DOCUMENT_ROOT'] . "/e-spb/webfile/";

				$ttd_ext = $_FILES['ttd']['name'];
				$ext = pathinfo($ttd_ext, PATHINFO_EXTENSION);
				$ttd_name = $_FILES['ttd']['name'];
				$ttd_size = $_FILES['ttd']['size'];
				$ttd_tmp = $_FILES['ttd']['tmp_name'];
				$ttd_type = $_FILES['ttd']['type'];

				$namattd = '';
				if ($ttd_name != '') {
					$namattd = 'user-ttd-' . $last_id . '-' . $ttd_name;
				} else {
					$namattd = 'user-ttd-' . $last_id . '-' . $ttd_name;
				}
				move_uploaded_file($ttd_tmp, $path . $namattd);

				$tt['ttd'] = $namattd;
				$str =  $this->db->update('user', $tt, array('id' => $last_id));
			}

			$this->alert->alertsuccess('Success Send Data');
		}
	}

	public function json()
	{
		$status = $_GET['status'];
		$role_id = $_SESSION['role_id'];
		// print_r($sub_role_id);
		// die();
		if ($status == '') {
			$status = 'ENABLE';
		}
		header('Content-Type: application/json');
		$this->datatables->select('user.id,nip,name,email,password,role.role as role_id,desc,user.status');

		$this->datatables->where('user.status', $status);
		$this->datatables->from('user');
		$this->datatables->join('role', 'user.role_id = role.id', 'left');
		if ($status == "ENABLE") {
			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button></div>', 'id');
		} else {
			$this->datatables->add_column('view', '<div class="btn-group"><button type="button" class="btn btn-sm btn-primary" onclick="edit($1)"><i class="fa fa-pencil"></i> Edit</button><button type="button" onclick="hapus($1)" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> Hapus</button></div>', 'id');
		}
		echo $this->datatables->generate();
	}

	public function edit($id)
	{
		$data['user'] = $this->mymodel->selectDataone('user', array('id' => $id));
		$data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'user'));
		$data['page_name'] = "user";

		$this->template->load('template/template', 'master/user/edit-user', $data);
	}



	public function update()
	{
		$id = $this->input->post('id', TRUE);
		$user = $this->mymodel->selectDataone('user', array('id' => $id));
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$nip = $_POST['dt']['nip'];
		$email = $_POST['dt']['email'];
		$password = $this->input->post('password');

		$nip1 = $user['nip'];
		if ($nip != $nip1) {
			$this->form_validation->set_rules(
				'dt[nip]',
				'<strong>NIP</strong>',
				'required|is_unique[user.nip]',
				array(
					'required'      => 'You have not provided %s.',
					'is_unique'     => 'This %s already exists.'
				)
			);
		}

		$email1 = $user['email'];
		if ($email != $email1) {
			$this->form_validation->set_rules(
				'dt[email]',
				'<strong>email</strong>',
				'required|is_unique[user.email]',
				array(
					'required'      => 'You have not provided %s.',
					'is_unique'     => 'This %s already exists.'
				)
			);
		}

		if ($password != "") {
			// $dt['password'] = md5($password);
			// $this->form_validation->set_rules('dt[password]', '<strong>Pasword</strong>', 'required');
			$this->form_validation->set_rules('password', '<strong>Pasword</strong>', 'required|min_length[6]|callback_password_check');
			$this->form_validation->set_rules('password_confirmation_field', 'Password Confirmation Field', 'required|matches[password]');
		}

		$this->form_validation->set_rules('dt[name]', '<strong>Name</strong>', 'required');
		$this->form_validation->set_rules('dt[role_id]', '<strong>Role</strong>', 'required');
		$this->form_validation->set_rules('dt[desc]', '<strong>Description</strong>', 'required');
		if ($this->form_validation->run() == FALSE) {
			$this->alert->alertdanger(validation_errors());
		} else {
			$dt = $_POST['dt'];
			if ($password != "") {
				$dt['password'] = md5($password);
			}

			$jenis = $_POST['jenis'];
			$count_jenis = count($jenis);
			$this->db->delete('user_jenis',  array('id_user' => $id));
			for ($i = 0; $i < $count_jenis; $i++) {
				$json[$i] = array(
					'jenis' => $jenis[$i]
				);

				$dta['jenis'] = $jenis[$i];
				$dta['id_user'] = $id;

				$this->mymodel->insertData('user_jenis', $dta);
			}
			$datajson = json_encode($json);

			$dt['jenis'] = $datajson;
			$dt['updated_at'] = date("Y-m-d H:i:s");
			// print_r($_FILES['ttd']['name']);
			// die();
			if (!empty($_FILES['file']['name'])) {
				$dir  = "webfile/";
				$config['upload_path']          = $dir;
				$config['allowed_types']        = '*';
				$config['file_name']           = 'user-file-' . $id;
				$this->load->library('upload', $config);
				if (!$this->upload->do_upload('file')) {
					$error = $this->upload->display_errors();
					$this->alert->alertdanger($error);
				} else {
					$file = $this->upload->data();
					$dt['file'] = $file['file_name'];
				}
			}
			if (!empty($_FILES['ttd']['name'])) {
				$dir  = "webfile/";
				$configa['upload_path']          = $dir;
				$configa['allowed_types']        = '*';
				$configa['file_name']           = 'user-ttd-' . $id;
				$this->load->library('upload', $configa);
				if (!$this->upload->do_upload('ttd')) {
					$error = $this->upload->display_errors();
					$this->alert->alertdanger($error);
				} else {
					$ttd = $this->upload->data();
					$dt['ttd'] = $ttd['file_name'];
				}
			}
			$str =  $this->mymodel->updateData('user', $dt, array('id' => $id));
			// die();
			return $str;
		}
	}

	public function delete()
	{
		$id = $this->input->post('id', TRUE);
		$file = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'user'));

		@unlink($file['dir']);
		$this->mymodel->deleteData('file',  array('table_id' => $id, 'table' => 'user'));



		$str = $this->mymodel->deleteData('user',  array('id' => $id));
		return $str;
	}



	public function status($id, $status)

	{

		$this->mymodel->updateData('user', array('status' => $status), array('id' => $id));


		redirect('master/User');
	}

	public function editUser($id)
	{
		$id = $this->template->sonDecode($id);
		$data['user'] = $this->mymodel->selectDataone('user', array('id' => $id));
		$data['file'] = $this->mymodel->selectDataone('file', array('table_id' => $id, 'table' => 'user'));
		$data['page_name'] = 'master';
		$data['id'] = $id;

		$this->template->load('template/template', 'master/user/user-edit', $data);
	}

	public function updateUser()
	{
		$this->form_validation->set_error_delimiters('<li>', '</li>');
		$email = $_POST['dt']['email'];
		$password_last = $this->input->post('password_last');
		$password_new = $this->input->post('password_new');

		$email1 = $this->input->post('email');
		if ($email != $email1) {
			$this->form_validation->set_rules(
				'dt[email]',
				'<strong>email</strong>',
				'required|is_unique[user.email]',
				array(
					'required'      => 'You have not provided %s.',
					'is_unique'     => 'This %s already exists.'
				)
			);
		}


		if ($password_last != "") {
			// $dt['password_last'] = md5($password_last);
			// $this->form_validation->set_rules('dt[password_last]', '<strong>Pasword</strong>', 'required');
			$this->form_validation->set_rules('password_last', '<strong>Pasword</strong>', 'required');
			$this->form_validation->set_rules('password_new', '<strong>Pasword</strong>', 'required|min_length[6]|callback_password_check');
			$this->form_validation->set_rules('password_confirm', 'Password Confirmation Field', 'required|matches[password_new]');
		}


		$this->form_validation->set_rules('dt[name]', '<strong>Name</strong>', 'required');
		$this->form_validation->set_rules('dt[desc]', '<strong>Description</strong>', 'required');


		if ($this->form_validation->run() == FALSE) {
			$error =  validation_errors();
			$this->alert->alertdanger($error);
		} else {

			$dt = $this->input->post('dt');
			$id = $this->input->post('ids');
			if ($password_new != "") {
				$dt['password'] = md5($password_new);
			}

			$jenis = $_POST['jenis'];
			$count_jenis = count($jenis);
			$this->db->delete('user_jenis',  array('id_user' => $id));
			for ($i = 0; $i < $count_jenis; $i++) {
				$json[$i] = array(
					'jenis' => $jenis[$i]
				);

				$dta['jenis'] = $jenis[$i];
				$dta['id_user'] = $id;

				$this->mymodel->insertData('user_jenis', $dta);
			}

			$datajson = json_encode($json);

			$dt['jenis'] = $datajson;

			$dt['updated_at'] = date("Y-m-d H:i:s");


			if (!empty($_FILES['file']['name'])) {
				$path = $_SERVER['DOCUMENT_ROOT'] . "/e-spb/webfile/";

				$file_ext = $_FILES['file']['name'];
				$ext = pathinfo($file_ext, PATHINFO_EXTENSION);
				$file_name = $_FILES['file']['name'];
				$file_size = $_FILES['file']['size'];
				$file_tmp = $_FILES['file']['tmp_name'];
				$file_type = $_FILES['file']['type'];

				$namafile = '';
				if ($file_name != '') {
					$namafile = 'user-file-' . $id . '-' . $file_name;
				} else {
					$namafile = 'user-file-' . $id . '-' . $file_name;
				}
				move_uploaded_file($file_tmp, $path . $namafile);

				$dt['file'] = $namafile;
			}

			if (!empty($_FILES['ttd']['name'])) {
				$path = $_SERVER['DOCUMENT_ROOT'] . "/e-spb/webfile/";

				$ttd_ext = $_FILES['ttd']['name'];
				$ext = pathinfo($ttd_ext, PATHINFO_EXTENSION);
				$ttd_name = $_FILES['ttd']['name'];
				$ttd_size = $_FILES['ttd']['size'];
				$ttd_tmp = $_FILES['ttd']['tmp_name'];
				$ttd_type = $_FILES['ttd']['type'];

				$namattd = '';
				if ($ttd_name != '') {
					$namattd = 'user-ttd-' . $id . '-' . $ttd_name;
				} else {
					$namattd = 'user-ttd-' . $id . '-' . $ttd_name;
				}
				move_uploaded_file($ttd_tmp, $path . $namattd);

				$dt['ttd'] = $namattd;
			}
			// print_r($dt);
			// die();
			$str =  $this->mymodel->updateData('user', $dt, array('id' => $id));
			return $str;
		}
	}
}
