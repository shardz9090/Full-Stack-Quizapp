<a href="<?= base_url('') ?>">Go back</a>

<?php echo form_open_multipart('Home/registermod') ?>
<label for="uname">Username</label>
<input type="text" name="uname" id="uname">
<label for="fname">Full name</label>
<input type="text" name="fname" id="fname">
<label for="password">Password</label>
<input type="password" name="password" id="password">
<label for="address">Address</label>
<input type="text" name="address" id="address">
<button type="submit">Register</button>
<?php form_close(); ?>
<a href="<?= base_url('login') ?>">Login</a>