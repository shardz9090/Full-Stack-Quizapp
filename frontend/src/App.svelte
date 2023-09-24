<script>
  import Triviaview from "./lib/Triviaview.svelte";
  // import Timer from "./lib/Timer.svelte";
  import "./app.css";
  import "flowbite";
</script>

<svelte:head>
  <title>QUIZAPP</title>
</svelte:head>

<main class="flex flex-col min-h-screen">
  <div class="containerrr">
    <div class="slotbody mx-10 flex-grow">
      <Triviaview />
    </div>
  </div>
</main>
