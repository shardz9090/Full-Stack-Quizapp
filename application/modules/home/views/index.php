<script src="<?php base_url('./assets/frontback/js/jquery/jquery-3.7.1.js') ?>"></script>
<script src="<?php base_url('./assets/frontback/js/jquery/jquery-3.7.1.min.map') ?>"></script>


<div class="videoform flex justify-center items-center">
    <div class="formvideo bg-orange-200 p-2 rounded-xl">
        <div class="pagetitle flex justify-center items-center">
            <h1 class="text-xl text-black">Add questions??</h1>
        </div>
        <?php echo form_open_multipart('Home/getques') ?>
        <div class=" form-control w-full max-w-xs">
            <label class="label">
                <span class="label-text">Valid API URL </span>
            </label>
            <input type="url" name="apiurl" id="apiurl" placeholder="Enter Url" class="input input-bordered input-success w-full max-w-xs" />
        </div>
        <br>
        <button class="btn btn-success">Submit</button>
        <?php form_close() ?>
    </div>
</div>