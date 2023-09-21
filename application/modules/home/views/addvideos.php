<div class="videoform flex justify-center items-center">
    <div class="formvideo bg-orange-200 p-2 rounded-xl">
        <div class="pagetitle flex justify-center items-center">
            <h1 class="text-xl text-black">Enter Video Details</h1>
        </div>
        <?php echo form_open_multipart('Home/getvideos') ?>
        <div class=" form-control w-full max-w-xs">
            <label class="label">
                <span class="label-text">Video Name</span>
            </label>
            <input type="text" name="vname" id="vname" placeholder="Video Name" class="input input-bordered w-full max-w-sm" />
        </div>
        <div class=" form-control w-full max-w-xs">
            <label class="label">
                <span class="label-text">Video Description</span>
            </label>
            <textarea placeholder="Video Description" class="textarea textarea-bordered textarea-lg w-full max-w-sm" name=" vdescription" id="vdescription""></textarea>
        </div>
        <div class=" form-control w-full max-w-xs">
            <label class="label">
                <span class="label-text">Video</span>
            </label>
            <input type="file" name="vvideo" id="vvideo" class="file-input file-input-bordered w-full max-w-sm" />
        </div>
        <br>
        <button class="btn btn-success">Upload</button>
        <?php form_close() ?>
    </div>
</div>