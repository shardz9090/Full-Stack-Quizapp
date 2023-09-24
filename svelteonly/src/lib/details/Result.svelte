<script>
  import jQuery from "jquery";

  export let corrselans;
  export let resultans;
  export let correct;
  export let sendlen;
  export let incorrect;
  export let timedout;
  export let skipped;
  export let username;
  export let totalTime;
  export let corans;
  export let incans;
  export let skpans;

  let difficulty;
  let qnum = 0;
  let minutes = 0,
    seconds = 0,
    hours = 0;

  function secstohr(secs) {
    seconds = secs % 60;
    minutes = Math.floor((secs % 3600) / 60);
    hours = Math.floor(secs / 3600);
    return hours + "h " + minutes + "m " + seconds + "s";
  }

  jQuery(document).ready(function () {
    jQuery('input[class*="checked"]').prop("checked", true);
    jQuery('input[class*="nocheck"]').prop("checked", false);
  });

  function buttoncolor(answer, qnum) {
    if (corrselans[qnum] === "noanswer") {
      return "nocheck";
    } else {
      if (answer === corrselans[qnum]) {
        return "checked";
      } else {
        return "nocheck";
      }
    }
  }

  function checkans(answered, qnum) {
    const sel_value = answered;
    const isCorrect = JSON.parse(resultans[qnum].answerss).find(
      (ans) => ans.answer === sel_value
    ).is_correct;
    if (isCorrect === "Y") {
      return "bg-green-400";
    } else {
      return "bg-red-400";
    }
  }

  function changeques(change) {
    if (change === -2) {
      console.log(qnum);
      console.log(sendlen);
      if (qnum < sendlen - 1) {
        qnum += 1;
        jQuery(document).ready(function () {
          jQuery('input[class*="checked"]').prop("checked", true);
          jQuery('input[class*="nocheck"]').prop("checked", false);
        });
      }
    } else if (change === -1) {
      if (qnum > 0) {
        qnum -= 1;
        jQuery(document).ready(function () {
          jQuery('input[class*="checked"]').prop("checked", true);
          jQuery('input[class*="nocheck"]').prop("checked", false);
        });
      }
    } else {
      qnum = change;
      jQuery(document).ready(function () {
        jQuery('input[class*="checked"]').prop("checked", true);
        jQuery('input[class*="nocheck"]').prop("checked", false);
      });
    }
  }

  $: difficulty =
    resultans[qnum].difficulty.charAt(0).toUpperCase() +
    resultans[qnum].difficulty.slice(1).toLowerCase();
</script>

<div
  class="md:grid md:grid-cols-[6fr,4fr] gap-3 md:w-5/6 w-full h-full md:mx-auto rounded-lg mt-2"
>
  <div class="infoques space-y-4 p-5 shadow-xl">
    <div
      class="infodiv p-4 bg-white rounded-xl shadow-lg flex items-center space-x-4"
    >
      <div class="text-xl font-medium text-black">
        {username}'s Result <br />
        Total Questions =
        <span class="text-yellow-400 font-medium">{sendlen}</span>
        | Total Time Duration =
        <span class="text-slate-400 font-medium">{secstohr(totalTime)}</span>
        <br />
        Total Correct =
        <span class="text-green-400 font-medium">{correct}</span>
        | Total Incorrect =
        <span class="text-red-400 font-medium">{incorrect}</span>
        | Skipped = <span class="text-yellow-300 font-medium">{skipped}</span>
        | Timed Out =
        <span class="text-yellow-300 font-medium">{timedout}</span>

        <br />
      </div>
    </div>

    <div class="quesansdiv md:pt-2 space-y-4">
      <div class="qescont">
        <div
          class="p-4 h-full w-30 bg-white mx-auto rounded-xl shadow-lg flex items-center space-x-9"
        >
          <div
            class="text-black font-medium text-2xl whitespace-normal overflow-hidden"
          >
            <u class="font-medium text-lg">Q no.{qnum + 1}</u>
            {@html resultans[qnum].question}
          </div>
        </div>
      </div>

      <div class="grid grid-cols-1 gap-5 md:grid-cols-2 md:gap-10">
        {#each JSON.parse(resultans[qnum].answerss) as answers}
          <label
            class="border-4 p-2 w-full max-w-sm mx-auto items-center {checkans(
              answers.answer,
              qnum
            )} rounded-xl shadow-lg flex items-center space-x-4"
          >
            <input
              disabled
              type="radio"
              class="form-radio text-indigo-600 h-7 w-7 {buttoncolor(
                answers.answer,
                qnum
              )}"
              name="answer"
              value={answers.answer}
            />
            <p
              class="text-black {answers.answer === corrselans[qnum]
                ? 'font-bold'
                : 'font-thin'}"
            >
              {@html answers.answer}
            </p>
          </label>
        {/each}
      </div>
    </div>
  </div>
  <div class="resultdiv h-48 items-center gap-4">
    <div class="containerinfo bg-white p-4 rounded-lg shadow-lg">
      <span class="text-gray-500 whitespace-nowrap dark:text-gray-400">
        <span class="font-bold"
          >Current Difficulty =
          <span
            class="{difficulty === 'Easy'
              ? 'text-green-400'
              : difficulty === 'Medium'
              ? 'text-orange-400'
              : 'text-red-400'} font-medium">{difficulty}</span
          >
        </span><br />
        <hr />
        <br />

        <div class="grid grid-cols-5 md:grid-cols-5 gap-2">
          {#each Array(sendlen) as _, index}
            <button
              class="{corans.includes(index)
                ? 'bg-green-400'
                : incans.includes(index)
                ? 'bg-red-400'
                : 'bg-yellow-200'} border-2 hover:border-amber-200 border-black w-10 h-7 flex items-center justify-center rounded-tr-xl rounded-bl-xl"
              on:click={() => changeques(index)}
            >
              <span class="text-black">{index + 1}</span>
            </button>
          {/each}
        </div>
        <br />
        <div class="flex justify-center items-center">
          <button
            on:click={() => changeques(-1)}
            class="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded-l"
          >
            Prev
          </button>
          <button
            class="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded-r"
            on:click={() => changeques(-2)}
          >
            Next
          </button>
        </div>
        <br />
        <hr />
        <br />
        <div class="grid grid-cols-3 gap-2">
          <button
            class="bg-yellow-200 text-white font-bold py-2 rounded cursor-not-allowed"
          >
            Skipped <span class="bg-white text-black px-2 rounded-sm"
              >{skpans.length}</span
            >
          </button>
          <button
            class="bg-green-400 text-white font-bold py-2 rounded cursor-not-allowed"
          >
            Correct <span class="bg-white text-black px-2 rounded-sm"
              >{corans.length}</span
            >
          </button>
          <button
            class="bg-red-400 text-white font-bold py-2 rounded cursor-not-allowed"
          >
            Incorrect <span class="bg-white text-black px-2 rounded-sm"
              >{incans.length}</span
            >
          </button>
        </div>
      </span>
    </div>
  </div>
</div>
