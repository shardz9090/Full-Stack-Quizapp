<?php defined('BASEPATH') or exit('No direct script access allowed');

class Home extends MY_Controller
{

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	/**
	 * [__construct description]
	 *
	 * @method __construct
	 */
	public function __construct()
	{
		// Load the constructer from MY_Controller
		parent::__construct();
	}

	/**
	 * [index description]
	 *
	 * @method index
	 *
	 * @return [type] [description]
	 */
	public function login()
	{
		$data['main'] = 'login';
		$this->load->view('layouts/main_view', $data);
	}
	public function index()
	{
		$data['main'] = 'index';
		$this->load->view('layouts/main_view', $data);
	}

	public function getvideos()
	{
		$vname = $this->input->post('vname');
		$vdescription = $this->input->post('vdescription');

		$config['upload_path'] = './assets/uploads/video';
		$config['allowed_types'] = 'mp4|avi|mov|mkv';
		$this->load->library('upload', $config);

		if ($this->upload->do_upload('vvideo')) {
			$upload_data = $this->upload->data();
			$video_file = $upload_data['file_name'];

			$data = [
				'vname' => $vname,
				'vdescription' => $vdescription,
				'vvideo' => $video_file
			];

			$this->db->insert('videos', $data);

			echo "Upload successful!";
			redirect('addvideos');
		} else {
			echo "Upload failed: " . $this->upload->display_errors();
		}
	}
	public function getimages()
	{

		$iname = $this->input->post('iname');
		$idescription = $this->input->post('idescription');

		$config['upload_path'] = './assets/uploads/image';
		$config['allowed_types'] = 'gif|jpg|png|jpeg|webp';
		$this->load->library('upload', $config);

		if ($this->upload->do_upload('iimage')) {
			$upload_data = $this->upload->data();
			$image_file = $upload_data['file_name'];

			$data = [
				'iname' => $iname,
				'idescription' => $idescription,
				'iimage' => $image_file
			];

			$this->db->insert('images', $data);

			echo json_encode(['status' => 'success', 'message' => 'Upload successful']);
		} else {
			echo json_encode(['status' => 'error', 'message' => $this->upload->display_errors()]);
		}
	}
	public function getpowerpoint()
	{
		$pname = $this->input->post('pname');
		$pdescription = $this->input->post('pdescription');

		$config['upload_path'] = './assets/uploads/powerpoint';
		$config['allowed_types'] = 'ppt|pptx';
		$this->load->library('upload', $config);

		if ($this->upload->do_upload('ppowerpoint')) {
			$upload_data = $this->upload->data();
			$powerpoint_file = $upload_data['file_name'];

			$data = [
				'pname' => $pname,
				'pdescription' => $pdescription,
				'ppowerpoint' => $powerpoint_file
			];

			$this->db->insert('powerpoints', $data);

			echo "Upload successful!";
			redirect('addpowerpoint');
		} else {
			echo "Upload failed: " . $this->upload->display_errors();
		}
	}

	public function getques()
	{

		$url = $this->input->post('apiurl');

		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$response = curl_exec($ch);
		curl_close($ch);

		$data = json_decode($response, true);
		$results = $data['results'];
		$questions = [];
		foreach ($results as $result) {
			$question = [
				'category' => $result['category'],
				'type' => $result['type'],
				'difficulty' => $result['difficulty'],
				'question' => $result['question'],
				'correct_answer' => $result['correct_answer'],
				'incorrect_answers' => $result['incorrect_answers'],
			];

			$questions[] = $question;
		}

		foreach ($questions as $question) {

			$difficulty = strtolower($question['difficulty']);

			if ($difficulty === 'easy') {
				$question['time'] = 30;
			} elseif ($difficulty === 'medium') {
				$question['time'] = 60;
			} else {
				$question['time'] = 90;
			}

			$questionData = array(
				'category' => $question['category'],
				'type' => $question['type'],
				'difficulty' => $question['difficulty'],
				'question' => $question['question'],
				'time' => $question['time'],
			);

			$this->db->insert('quiz_questions', $questionData);

			$qid = $this->db->insert_id();

			$correctAnswerData = array(
				'qid' => $qid,
				'answer' => $question['correct_answer'],
				'is_correct' => 'Y',
			);

			$this->db->insert('answers', $correctAnswerData);

			foreach ($question['incorrect_answers'] as $incorrectAnswer) {
				$incorrectAnswerData = array(
					'qid' => $qid,
					'answer' => $incorrectAnswer,
					'is_correct' => 'N',
				);

				$this->db->insert('answers', $incorrectAnswerData);
			}
		}
		$data['main'] = 'disp_view';
		$data['questions'] = $questions;
		$this->load->view('layouts/main_view', $data);
	}
	public function viewques()
	{
		$data['questions'] = $this->addquestions->orderquest();
		$data['main'] = 'viewques';
		$this->load->view('layouts/main_view', $data);
	}

	public function quiz()
	{
		$data['main'] = 'quiz';
		$this->load->view('layouts/main_view', $data);
	}
	public function addvideos()
	{
		$data['main'] = 'addvideos';
		$this->load->view('layouts/main_view', $data);
	}
	public function addimages()
	{
		$data['main'] = 'addimages';
		$this->load->view('layouts/main_view', $data);
	}
	public function addpowerpoint()
	{
		$data['main'] = 'addpowerpoint';
		$this->load->view('layouts/main_view', $data);
	}
	public function loginmod()
	{
		$uname = $this->input->post('uname');
		$password = $this->input->post('password');
		$this->db->where('uname', $uname);
		$this->db->where('password', $password);
		$query = $this->db->get('users');
		$find = $query->num_rows();
		if ($find > 0) {
			$this->usersprocess->login($query);
			$response['success'] = true;
			$response['message'] = 'Logged in successfully.';
			redirect('');
		} else {
			$response['success'] = false;
			$response['message'] = 'Login failed. Invalid credentials.';
		}
		header('Content-Type: application/json');
		echo json_encode($response);
	}
	public function register()
	{
		$data['main'] = 'register';
		$this->load->view('layouts/main_view', $data);
	}
	public function registermod()
	{
		$uname = $this->input->post('uname');
		$password = $this->input->post('password');
		$fname = $this->input->post('fname');
		$address = $this->input->post('address');
		$data = array(
			'uname' => $uname,
			'password' => $password,
			'fname' => $fname,
			'address' => $address,
		);
		$this->usersprocess->register($data);
		redirect('login');
		print_r($data);
	}
	public function logout()
	{
		$this->session->sess_destroy();
		redirect('login');
	}
	public function selectcategory()
	{
		$categories = $this->api_model->getcategory();
		$data['categories'] = $categories;
		$data['main'] = 'selectcategory';
		$this->load->view('layouts/main_view', $data);
	}
}
