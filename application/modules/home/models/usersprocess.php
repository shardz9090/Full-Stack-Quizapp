<?php
class usersprocess extends CI_Model
{
  public function viewleaders()
  {
    $query = "SELECT ld.*, u.uname
          FROM leaderboard AS ld
          INNER JOIN users AS u ON ld.uid = u.uid
          ORDER BY ld.marks DESC, ld.time ASC, ld.correct DESC";
    $result = $this->db->query($query);
    return $result->result();
  }

  public function register($data)
  {
    $this->db->insert('users', $data);
  }
  public function login($query)
  {
    $this->session->set_userdata('uid', $query->row()->uid);
    $this->session->set_userdata('uname', $query->row()->uname);
    $this->session->set_userdata('address', $query->row()->address);
    $this->session->set_userdata('fname', $query->row()->fname);
    $this->session->set_userdata('log', 'logged');
  }
}
