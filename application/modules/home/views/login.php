<?php echo form_open_multipart('Home/loginmod') ?>
<label for="uname">Username</label>
<input type="text" name="uname" id="uname"><br>
<label for="password">Password</label>
<input type="password" name="password" id="password">
<button type="submit">Login</button>
<? form_close(); ?>
<a href="<?= base_url('register') ?>">Register</a>