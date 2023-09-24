<div class="ppform flex justify-center items-center">
    <div class="formpp shadow-2xl p-2 rounded-xl">
        <div class="pagetitle flex justify-center items-center">
            <h1 class="text-xl text-black">Enter Powerpoint Details</h1>
        </div>
        <?php echo form_open_multipart('Home/getpowerpoint') ?>
        <div class=" form-control w-full max-w-xs">
            <label class="label">
                <span class="label-text">Powerpoint Name</span>
            </label>
            <input type="text" name="pname" id="pname" placeholder="Powerpoint Name" class="input input-bordered w-full max-w-sm" />
        </div>
        <div class=" form-control w-full max-w-xs">
            <label class="label">
                <span class="label-text">Powerpoint Description</span>
            </label>
            <textarea placeholder="Powerpoint Description" class="textarea textarea-bordered textarea-lg w-full max-w-sm" name=" pdescription" id="pdescription""></textarea>
        </div>
        <div class=" form-control w-full max-w-xs">
            <label class="label">
                <span class="label-text">Powerpoint File</span>
            </label>
            <input type="file" name="ppowerpoint" id="ppowerpoint" class="file-input file-input-bordered w-full max-w-sm" />
        </div>
        <br>
        <button class="btn btn-success">Upload</button>
        <?php form_close() ?>
    </div>
</div>