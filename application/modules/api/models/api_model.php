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
}
