<div class="videoform flex justify-center items-center">
    <div class="formvideo bg-orange-200 p-2 rounded-xl">
        <div class="pagetitle flex justify-center items-center">
            <h1 class="text-xl text-black">Enter Login Details</h1>
        </div>
        <?php echo form_open_multipart('Home/loginmod') ?>
        <div class=" form-control w-full max-w-xs">
            <label class="label">
                <span class="label-text">Username</span>
            </label>
            <input type="text" name="uname" id="uname" placeholder="Enter Username" class="input input-bordered input-success w-full max-w-md" />
        </div>
        <div class=" form-control w-full max-w-xs">
            <label class="label">
                <span class="label-text">Password</span>
            </label>
            <input type="password" name="password" id="password" placeholder="Enter Password" class="input input-bordered input-success w-full max-w-md" />
        </div>
        <br>
        <button class="btn btn-success">Login</button>
        <?php form_close() ?>
        <br>
        <a href="<?= base_url('register') ?>" class="text-blue-700 underline">Create an account?</a>
    </div>
</div>