<?php
$this->load->view('layouts/header')
?>
<div class="mainview md:p-12 p-2 min-h-screen">
    <?php
    $this->load->view($main);

    ?>
</div>
<?php
$this->load->view('layouts/footer');
?>