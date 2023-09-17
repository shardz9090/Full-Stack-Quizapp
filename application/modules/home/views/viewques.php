<style>
    table,
    tr,
    th,
    td {
        border: 1px solid black;
    }
</style>
<a href="<?= base_url('') ?>">Home</a>
<table>
    <thead>
        <tr>
            <th>id</th>
            <th>Category</th>
            <th>Type</th>
            <th>Difficulty</th>
            <th>Question</th>
            <th>Answers</th>

        </tr>
    </thead>
    <tbody>
        <?php foreach ($questions as $ques) : ?>
            <tr>
                <td><?php echo $ques->qid ?></td>
                <td><?php echo $ques->category ?></td>
                <td><?php echo $ques->type ?></td>
                <td><?php echo $ques->difficulty ?></td>
                <td><?php echo $ques->question ?></td>
                <td><?php
                    $answersArray = json_decode($ques->answerss, true);
                    shuffle($answersArray);
                    foreach ($answersArray as $answerItem) {
                        if ($answerItem['is_correct'] === 'Y') {
                            echo '<strong>' . $answerItem['answer'] . '</strong>, ';
                        } else {
                            echo $answerItem['answer'] . ', ';
                        }
                    }

                    ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>