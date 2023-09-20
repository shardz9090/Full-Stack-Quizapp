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
		$this->load->view('login');
	}
	public function index()
	{
		$this->load->view('about');
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
		// Get the URL from the user.
		$url = $this->input->post('apiurl');

		// Use CURL to fetch the data from the URL.
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

		$this->load->view('disp_view', ['questions' => $questions]);
	}
	public function viewques()
	{
		$data['questions'] = $this->addquestions->orderquest();
		$data['main'] = 'viewques';
		$this->load->view('layouts/main_view', $data);
	}

	public function getleaders()
	{
		header("content-type:application/json");
		$leaders = $this->usersprocess->viewleaders();
		echo json_encode(array(
			"status" => "ok",
			"played_num" => count($leaders),
			"results" => $leaders,
		));
	}


	public function quiz()
	{
		$this->load->view('quiz');
	}
	public function quizmode()
	{
		$this->load->view('quizmode');
	}
	public function addvideos()
	{
		$this->load->view('addvideos');
	}
	public function addimages()
	{
		$this->load->view('addimages');
	}
	public function addpowerpoint()
	{
		$this->load->view('addpowerpoint');
	}
	public function loginmod()
	{
		if ($_SERVER['REQUEST_METHOD'] === 'POST') {
			$uname = $this->input->post('uname');
			$password = $this->input->post('password');
			$this->db->where('uname', $uname);
			$this->db->where('password', $password);
			$query = $this->db->get('users');
			$find = $query->num_rows();
			if ($find > 0) {
				$this->usersprocess->login($query);
				redirect('about');
			} else {
				echo "wrong password";
			}
		}
	}
	public function register()
	{
		$this->load->view('register');
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
}
