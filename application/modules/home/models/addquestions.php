<?php
class addquestions extends CI_Model
{
  public function viewquests()
  {
    $query = "(
                SELECT qq.*, 
                      json_agg(jsonb_build_object('answer', a.answer, 'is_correct', a.is_correct)) AS answerss
                FROM quiz_questions AS qq
                INNER JOIN answers AS a ON qq.qid = a.qid
                WHERE qq.difficulty = 'hard'
                GROUP BY qq.qid
                LIMIT 1
              )
              UNION ALL
              (
                SELECT qq.*, 
                      json_agg(jsonb_build_object('answer', a.answer, 'is_correct', a.is_correct)) AS answerss
                FROM quiz_questions AS qq
                INNER JOIN answers AS a ON qq.qid = a.qid
                WHERE qq.difficulty = 'medium'
                GROUP BY qq.qid
                LIMIT 1
              )
              UNION ALL
              (
                SELECT qq.*, 
                      json_agg(jsonb_build_object('answer', a.answer, 'is_correct', a.is_correct)) AS answerss
                FROM quiz_questions AS qq
                INNER JOIN answers AS a ON qq.qid = a.qid
                WHERE qq.difficulty = 'easy'
                GROUP BY qq.qid
                LIMIT 1
              )";
    $result = $this->db->query($query);
    return $result->result();
  }
  public function orderquest()
  {
    $query = "SELECT qq.*, 
                 json_agg(jsonb_build_object('answer', a.answer, 'is_correct', a.is_correct)) AS answerss
          FROM quiz_questions AS qq
          INNER JOIN answers AS a ON qq.qid = a.qid
          WHERE qq.difficulty = 'easy'
          GROUP BY qq.qid
          ORDER BY qq.qid      
          ";
    $result = $this->db->query($query);
    return $result->result();
  }
}
