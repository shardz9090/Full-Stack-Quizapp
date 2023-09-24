<style>
    table,
    tr,
    th,
    td {
        border: 1px solid black;
    }
</style>
<h1>Questions</h1>
<table>
    <thead>
        <tr>
            <th>Category</th>
            <th>Type</th>
            <th>Difficulty</th>
            <th>Question</th>
            <th>Correct Answer</th>
            <th>Incorrect Answers</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($questions as $question) : ?>
            <tr>
                <td><?php echo $question['category']; ?></td>
                <td><?php echo $question['type']; ?></td>
                <td><?php echo $question['difficulty']; ?></td>
                <td><?php echo $question['question']; ?></td>
                <td><?php echo $question['correct_answer']; ?></td>
                <td><?php echo implode(', ', $question['incorrect_answers']); ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>