<!-- Bootstrap CSS link -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap JavaScript and Popper.js (required for Bootstrap) links -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- Add this JavaScript to your view file -->


Hello world
<a href="<?= base_url('viewques') ?>">Questions</a>
<a href="<?= base_url('register') ?>">register</a>
<a href="<?= base_url('leaderboard') ?>">leaderboard</a>

<br>
<?php echo form_open_multipart('Home/getques') ?>
<label for="apiurl">Enter url</label>
<input type="url" name="apiurl" id="apiurl">
<button type="submit">Submit</button><br />
<?php form_close(); ?>
<?php if ($this->session->userdata('log') === 'logged') { ?>
    <a href="<?= base_url('quiz') ?>">Quiz</a><br />

    <?php echo $this->session->userdata('uname'); ?><br />
    <?php echo $this->session->userdata('fname'); ?><br />
    <?php echo $this->session->userdata('address'); ?><br />
    <a href="<?= base_url('logout') ?>">logout</a>
<?php } else { ?>
    Please login to play quiz
    <a href="<?= base_url('login') ?>">Login</a>

<?php } ?>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        $('quizLink').click(function(e) {
            e.preventDefault();
            if ("<?= $this->session->userdata('log') ?>" !== 'logged') {
                $('loginModal').modal('show');
            } else {
                window.location.href = "<?= base_url('quiz') ?>";
            }
        });
    });
</script>