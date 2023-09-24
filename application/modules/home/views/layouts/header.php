<!DOCTYPE html>
<html lang="en" data-theme="light">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="<?= base_url('./assets/dist/quiz.png') ?>">
    <title>Quizapp</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@3.7.6/dist/full.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="<?= base_url('./assets/frontback/js/swal.js') ?>"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<style>
    html {
        background: white;
    }
</style>

<body>
    <div class="navbar">
        <div class="navbar-start">
            <div class="dropdown">
                <label tabindex="0" class="btn bg-inherit md:hidden">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h8m-8 6h16" />
                    </svg>
                </label>
                <ul tabindex="0" class="menu menu-sm text-black dropdown-content mt-3 z-[1] p-2 shadow bg-base-100 rounded-box w-52">
                    <li><a href="<?= base_url('selectcategory') ?>">Play Quiz</a></li>
                    <li><a>View Questions</a></li>
                    <li>
                        <a>Add items</a>
                        <ul class="p-2">
                            <li><a href="<?= base_url('addimages') ?>">Images</a></li>
                            <li><a href="<?= base_url('addvideos') ?>">Videos</a></li>
                            <li><a href="<?= base_url('addpowerpoint') ?>">Powerpoints</a></li>
                        </ul>
                    </li>
                    <?php
                    if ($this->session->userdata('log') === 'logged') {
                    ?>
                        <li><a href="<?= base_url('logout') ?>">Logout</a></li>
                    <?php } ?>
                </ul>
            </div>
            <a href="<?= base_url('') ?>" class="btn btn-ghost normal-case text-xl text-black">Quizapp</a>
        </div>
        <div class="navbar-center hidden lg:flex">
            <ul class="menu menu-horizontal px-1">
                <li tabindex="0">
                    <details>
                        <summary>Add items</summary>
                        <ul class="p-2">
                            <li><a href="<?= base_url('addimages') ?>">Images</a></li>
                            <li><a href="<?= base_url('addvideos') ?>">Videos</a></li>
                            <li><a href="<?= base_url('addpowerpoint') ?>">Powerpoints</a></li>
                        </ul>
                    </details>
                </li>
                <?php
                if ($this->session->userdata('log') === 'logged') {
                ?>
                    <li><a href="<?= base_url('selectcategory') ?>">Play Quiz</a></li>
                <?php } else { ?>
                    <li><a href="<?= base_url('register') ?>">Register</a></li>

                <?php } ?>
            </ul>
        </div>
        <?php
        if ($this->session->userdata('log') === 'logged') {
        ?>
            <div class="navbar-end space-x-3">
                <a><?= $this->session->userdata('uname') ?> </a>
                <a href="<?= base_url('logout') ?>" class="btn btn-info btn-sm hidden md:flex">Logout</a>

            </div>
        <?php } else { ?>
            <div class="navbar-end">
                <a href="<?= base_url('login') ?>" class="btn btn-info btn-sm md:flex">Login</a>
            </div>
        <?php } ?>

    </div>