<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<form id="uploadForm" enctype="multipart/form-data">
    <label for="iname">Image name</label>
    <input type="text" name="iname" id="iname"><br>
    <label for="idescription">Description</label>
    <input type="text" name="idescription" id="idescription"><br>
    <label for="iimage">Image file</label>
    <input type="file" name="iimage" id="iimage"><br>
    <button type="submit">Upload</button>
</form>

<div id="uploadResult"></div>

<script>
    $(document).ready(function() {
        $('#uploadForm').submit(function(e) {
            e.preventDefault();

            var formData = new FormData(this);

            $.ajax({
                url: '<?php echo base_url('Home/getimages'); ?>',
                type: 'POST',
                data: formData,
                contentType: false,
                processData: false,
                success: function(response) {
                    var result = JSON.parse(response);
                    if (result.status === 'success') {
                        $('#uploadResult').html(result.message);
                    } else {
                        $('#uploadResult').html('Upload failed: ' + result.message);
                    }
                },
                error: function(error) {
                    $('#uploadResult').html('AJAX error: ' + JSON.stringify(error));
                }
            });
        });
    });
</script>