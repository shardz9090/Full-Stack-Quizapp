<?php
class api_model extends CI_Model
{
    public function api_quests()
    {
        $query = "(
            SELECT qq.*,
                json_agg(jsonb_build_object('answer', a.answer, 'is_correct', a.is_correct) ORDER BY RANDOM()) AS answerss
                FROM quiz_questions AS qq
                INNER JOIN answers AS a ON qq.qid = a.qid
                WHERE qq.difficulty = 'easy'
                GROUP BY qq.qid
                LIMIT 1
            )
            UNION ALL
            (
                SELECT qq.*,
                json_agg(jsonb_build_object('answer', a.answer, 'is_correct', a.is_correct) ORDER BY RANDOM()) AS answerss
                FROM quiz_questions AS qq
                INNER JOIN answers AS a ON qq.qid = a.qid
                WHERE qq.difficulty = 'medium'
                GROUP BY qq.qid
                LIMIT 1
            )
            UNION ALL
            (
                SELECT qq.*,
                json_agg(jsonb_build_object('answer', a.answer, 'is_correct', a.is_correct) ORDER BY RANDOM()) AS answerss
                FROM quiz_questions AS qq
                INNER JOIN answers AS a ON qq.qid = a.qid
                WHERE qq.difficulty = 'hard'
                GROUP BY qq.qid
                LIMIT 1
            )";
        $result = $this->db->query($query);
        return $result->result();
    }
    public function viewleaders()
    {
        $query = "SELECT
              u.uname,
              SUM(CASE WHEN quiztime >= CURRENT_DATE - INTERVAL '1 days' THEN marks ELSE 0 END) AS onetotal_marks,
              SUM(CASE WHEN quiztime >= CURRENT_DATE - INTERVAL '7 days' THEN marks ELSE 0 END) AS weektotal_marks,
              SUM(CASE WHEN quiztime >= CURRENT_DATE - INTERVAL '30 days' THEN marks ELSE 0 END) AS monthtotal_marks,
              SUM(marks) AS alltotal
          FROM leaderboard AS ld
          INNER JOIN users AS u ON ld.uid = u.uid
          GROUP BY u.uid
          ORDER BY alltotal DESC;";
        $result = $this->db->query($query);
        return $result->result();
    }
    public function currentuser()
    {
        $query = "SELECT
              SUM(CASE WHEN quiztime >= CURRENT_DATE - INTERVAL '1 days' THEN marks ELSE 0 END) AS onetotal_marks,
              SUM(CASE WHEN quiztime >= CURRENT_DATE - INTERVAL '7 days' THEN marks ELSE 0 END) AS weektotal_marks,
              SUM(CASE WHEN quiztime >= CURRENT_DATE - INTERVAL '30 days' THEN marks ELSE 0 END) AS monthtotal_marks,
              SUM(marks) AS alltotal
          FROM leaderboard AS ld
          INNER JOIN users AS u ON ld.uid = u.uid         
          WHERE u.uname='shard';";
        $result = $this->db->query($query);
        return $result->result();
    }
}
