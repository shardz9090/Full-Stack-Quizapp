<div class="loginform flex justify-center items-center">
    <div class="formlogin shadow-2xl p-2 rounded-xl w-4/5 sm:w-1/2">
        <div class="pagetitle flex justify-center items-center p-5">
            <h1 class="text-xl text-black">Enter Login Details</h1>
        </div>
        <div class="formdiv md:p-5">
            <?php echo form_open_multipart('Home/loginmod', array('id' => 'loginform')); ?>
            <div class=" form-control w-full">
                <label class="label">
                    <span class="label-text">Username</span>
                </label>
                <input type="text" name="uname" id="uname" placeholder="Enter Username" class="input input-bordered input-success w-full max-w-md" />
            </div>
            <div class=" form-control w-full">
                <label class="label">
                    <span class="label-text">Password</span>
                </label>
                <input type="password" name="password" id="password" placeholder="Enter Password" class="input input-bordered input-success w-full max-w-md" />
            </div>
            <br>
            <button class="btn btn-primary btn-sm">Login</button>
            <br>
            <a href="<?= base_url('register') ?>" class="text-blue-700 underline">Create an account?</a>
            <?php form_close() ?>
        </div>

    </div>
</div>

<script>
    $(document).ready(function() {
        $('#loginform').submit(function(e) {
            e.preventDefault();

            $.ajax({
                type: 'POST',
                url: $(this).attr('action'),
                data: $(this).serialize(),
                success: function(response) {
                    if (response.success) {
                        Swal.fire({
                            icon: "success",
                            title: "Logged in!",
                            text: response.message,
                            confirmButtonColor: "#3085d6",
                            confirmButtonText: "OK"
                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.location.href = "<?php echo base_url(); ?>";
                            }
                        });
                    } else {
                        Swal.fire({
                            icon: "error",
                            title: "Wrong Credentials.",
                            text: response.message,
                            confirmButtonColor: "#d33",
                            confirmButtonText: "OKK"
                        });
                    }
                }
            });
        });
    });
</script>