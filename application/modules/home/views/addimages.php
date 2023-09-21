<script src="<?php base_url('./assets/frontback/js/jquery/jquery-3.7.1.js') ?>"></script>
<script src="<?php base_url('./assets/frontback/js/jquery/jquery-3.7.1.min.map') ?>"></script>

<div class="videoform flex justify-center items-center">
    <div class="formvideo bg-orange-200 p-2 rounded-xl">
        <div class="pagetitle flex justify-center items-center">
            <h1 class="text-xl text-black">Enter Image Details</h1>
        </div>
        <form id="uploadForm" enctype="multipart/form-data">
            <div class=" form-control w-full max-w-xs">
                <label class="label">
                    <span class="label-text">Image Name</span>
                </label>
                <input type="text" name="iname" id="iname" placeholder="Image Name" class="input input-bordered w-full max-w-sm" />
            </div>
            <div class=" form-control w-full max-w-xs">
                <label class="label">
                    <span class="label-text">Image Description</span>
                </label>
                <textarea placeholder="Image Description" class="textarea textarea-bordered textarea-lg w-full max-w-sm" name="idescription" id="idescription""></textarea>
        </div>
        <div class=" form-control w-full max-w-xs">
            <label class="label">
                <span class="label-text">Image</span>
            </label>
            <input type="file" class="file-input file-input-bordered w-full max-w-sm" name="iimage" id="iimage"/>
        </div>
        <br>
        <button class="btn btn-success">Upload</button>
        </form>
    </div>
</div>

<div id="uploadResult" class="bg-white text-black text-2xl"></div>

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