<div class="flex justify-center items-center">
    <div id="rules-page" class="hidden shadow-xl w-5/6 md:w-3/5 rounded-lg p-1 md:p-5">
        <!-- Rules content goes here -->
        <h1 class="text-xl">Welcome to the Quiz Page</h1>
        <ol class="list-decimal p-5">
            <li>
                <p>Please read and accept the rules below:</p>
            </li>
            <li>
                <p>In a week, you need to play at least 1 round of Weekly Challenges.</p>
            </li>
            <li>
                <p>If you couldnt perform well in Round 1 and you think that you could perform better, you can play Round 2.</p>
            </li>
            <li>
                <p>If you play Round 2, the points you earned from Round 1 will be invalid.</p>
            </li>
            <li>
                <p>Only 90% of the points you earned from Round 2 will be considered.</p>
            </li>
            <li>
                <p>If you think you can perform better in Round 3, you can play Round 3.</p>
            </li>
            <li>
                <p>If you play Round 3, the points you earned from Round 2 will be invalid.</p>
            </li>
            <li>
                <p>Only 80% of the points you earned from Round 3 will be considered.</p>
            </li>
        </ol>
        <br> <br>
        <label>
            <input type="checkbox" id="acceptRules"> I accept the rules
        </label><br><br>
        <div class="confirmation flex justify-center items-center">
            <button id="confirmRules" class="btn btn-primary">Start</button>
        </div>
    </div>
</div>

<div id="content" class="grid grid-cols-1 md:grid-cols-3 gap-5 hidden">
    <?php foreach ($categories as $cats) : ?>
        <div class="card w-96 bg-base-100 hover:shadow-2xl border border-1">
            <div class="card-body">
                <h2 class="card-title"> <?php echo $cats->category; ?></h2>
                <p>Play category <?php echo $cats->category; ?> ?</p>
                <div class="card-actions justify-end">
                    <button class="btn btn-success"><a href="<?= base_url('quiz?category=' . urlencode($cats->category)) ?>">Start now</a></button>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>

<script>
    // JavaScript code for handling the rules and content visibility

    document.addEventListener("DOMContentLoaded", function() {
        const rulesPage = document.getElementById("rules-page");
        const content = document.getElementById("content");
        const acceptRules = document.getElementById("acceptRules");
        const confirmRules = document.getElementById("confirmRules");

        // Always show the rules page on page load
        rulesPage.classList.remove("hidden");

        confirmRules.addEventListener("click", function() {
            if (acceptRules.checked) {
                localStorage.setItem("acceptedRules", "true");
                rulesPage.classList.add("hidden");
                content.classList.remove("hidden");
            } else {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please accept the rules before pressing ok!'
                })
            }
        });
    });
</script>