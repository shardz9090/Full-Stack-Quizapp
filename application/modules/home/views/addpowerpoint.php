<?php echo form_open_multipart('Home/getpowerpoint') ?>
<label for="pname">powerpoint name</label>
<input type="text" name="pname" id="pname"><br>
<label for="pdescription">Description</label>
<input type="text" name="pdescription" id="pdescription"><br>
<label for="ppowerpoint">Powerpoint file</label>
<input type="file" name="ppowerpoint" id="ppowerpoint"><br>
<button type="submit">Upload</button>
<?php form_close() ?>