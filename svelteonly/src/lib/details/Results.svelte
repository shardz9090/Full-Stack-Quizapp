<script>
  import Leaderboard from "./leaderboard.svelte";
  import Result from "./Result.svelte";

  export let corrselans;
  export let resultans;
  export let correct;
  export let sendlen;
  export let incorrect;
  export let timedout;
  export let skipped;
  export let obtainedmarks;
  export let user;
  export let username;
  export let totalTime;
  export let skpans;
  export let corans;
  export let incans;
  //send to database
  const quizData = {
    user,
    correct,
    obtainedmarks,
    totalTime,
  };

  fetch("http://localhost/quizapp/api/Apihome/getscores", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(quizData),
  })
    .then((response) => {
      if (response.ok) {
        return response.json();
      } else {
        throw new Error("HTTP error: " + response.status);
      }
    })
    .then((data) => {
      console.log("Quiz data sent successfully:", data);
    })
    .catch((error) => {
      console.error("Error sending quiz data:", error);
    });

  //end database code

  let showleader = false;
  let showresult = false;

  function changeleader() {
    showleader = !showleader;
    showresult = false;
  }
  function changeresult() {
    showresult = !showresult;
    showleader = false;
  }

  function reloadPage() {
    window.location.reload();
  }
</script>

<div class="md:w-5/6 w-full h-full md:mx-auto rounded-lg">
  <div class="md:grid md:grid-cols-3 p-4 bg-white rounded-xl shadow-lg">
    <div class="leaderbtn flex justify-center items-center mt-2">
      {#if showleader}
        <button
          on:click={changeleader}
          class="text-white btn btn-outline btn-info font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2"
        >
          Hide Leaderboard
        </button>
      {:else}
        <button
          on:click={changeleader}
          class="text-white btn btn-outline btn-info font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2"
        >
          Show Leaderboard
        </button>
      {/if}
    </div>

    <div class="againbtn flex justify-center items-center mt-2">
      <button
        on:click={reloadPage}
        class="btn btn-wide text-white btn-success font-medium rounded-lg text-sm text-center"
        >Play Again</button
      >
    </div>
    <div class="resultbtn flex justify-center items-center mt-2">
      {#if showresult}
        <button
          on:click={changeresult}
          class="text-white btn btn-outline btn-info font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2"
        >
          Hide Result
        </button>
      {:else}
        <button
          on:click={changeresult}
          class="text-white btn btn-outline btn-info font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2"
        >
          Show Result
        </button>
      {/if}
    </div>
  </div>
</div>
{#if !showleader && !showresult}
  <div class="flex justify-center items-center">
    <span class="text-2xl font-medium text-black">YOUR RESULT</span>
  </div>
  <div class="flex justify-center items-center">
    <div
      class="radial-progress text-primary bg-yellow-300"
      style="--value:{(correct / sendlen) *
        100}; --size:20rem; --thickness: 1.5rem;"
    >
      <span class="text-black font-medium text-xl"
        >Total Marks =
        <span class="text-green-600 font-medium">{obtainedmarks}</span>
        <br /></span
      >
      <span class="text-xl font-medium"
        >Correct =
        {((correct / sendlen) * 100).toFixed(2)} %
      </span>
    </div>
  </div>
{/if}
{#if showleader}
  <Leaderboard {username} />
{/if}
{#if showresult}
  <Result
    {skpans}
    {corans}
    {incans}
    {totalTime}
    {corrselans}
    {resultans}
    {sendlen}
    {correct}
    {incorrect}
    {skipped}
    {timedout}
    {username}
  />
  <div class="empty" />
{/if}
<div class="empty" />

<style>
  @media screen and (max-width: 600px) {
    .empty {
      height: 20vh;
    }
  }
</style>
