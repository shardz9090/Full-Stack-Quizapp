<?php
class usersprocess extends CI_Model
{
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
