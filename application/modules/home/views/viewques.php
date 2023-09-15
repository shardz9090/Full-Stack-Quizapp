<style>
    table,
    tr,
    th,
    td {
        border: 1px solid black;
    }
</style>

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
                <td><?php echo $ques->answerss ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>