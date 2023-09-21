<div class="videoform flex justify-center items-center">
    <div class="formvideo bg-orange-200 p-2 rounded-xl">
        <div class="pagetitle flex justify-center items-center">
            <h1 class="text-xl text-black">Enter Registration Details</h1>
        </div>
        <?php echo form_open_multipart('Home/registermod') ?>
        <div class=" form-control w-full max-w-xs">
            <label class="label">
                <span class="label-text">Username</span>
            </label>
            <input type="text" name="uname" id="uname" placeholder="Enter Username" class="input input-bordered input-success w-full max-w-md" />
        </div>
        <div class=" form-control w-full max-w-xs">
            <label class="label">
                <span class="label-text">Full Name</span>
            </label>
            <input type="text" name="fname" id="fname" placeholder="Enter Full Name" class="input input-bordered input-success w-full max-w-md" />
        </div>
        <div class=" form-control w-full max-w-xs">
            <label class="label">
                <span class="label-text">Password</span>
            </label>
            <input type="password" name="password" id="password" placeholder="Enter Password" class="input input-bordered input-success w-full max-w-md" />
        </div>
        <div class=" form-control w-full max-w-xs">
            <label class="label">
                <span class="label-text">Address</span>
            </label>
            <input type="text" name="address" id="address" placeholder="Enter your address" class="input input-bordered input-success w-full max-w-md" />
        </div>
        <br>
        <button class="btn btn-success">Register</button>
        <?php form_close() ?>
        <br>
        <p>Already have an account? <a href="<?= base_url('login') ?>" class="text-blue-700 underline">Login</a></p>

    </div>
</div>