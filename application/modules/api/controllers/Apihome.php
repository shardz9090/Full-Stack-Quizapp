<?php defined('BASEPATH') or exit('No direct script access allowed');

class Apihome extends MY_Controller
{
    public function getquestions()
    {
        header("content-type:application/json");
        $ques = $this->api_model->api_quests();

        echo json_encode(array(
            "status" => "ok",
            "no_of_questions" => count($ques),
            "uname" => $this->session->userdata('uname'),
            "uid" => $this->session->userdata('uid'),
            "results" => $ques,
        ));
    }
    //get from svelte getscores
    public function getscores()
    {
        $data = json_decode($this->input->raw_input_stream);
        $insert_data = array(
            'uid' => $data->user,
            'correct' => $data->correct,
            'marks' => $data->obtainedmarks,
            'time' => $data->totalTime,
        );

        $this->db->insert('leaderboard', $insert_data);
    }
}
