<?php echo form_open_multipart('Home/getvideos') ?>
<input type="text" name="vname" id="vname">
<input type="text" name="vdescription" id="vdescription">
<input type="file" name="vvideo" id="vvideo">
<button type="submit">Upload</button>
<?php form_close() ?>