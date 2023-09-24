<script>
  import Info from "./details/Info.svelte";
  import { tweened } from "svelte/motion";
  import { Alert } from "flowbite-svelte";
  import Results from "./details/Results.svelte";

  export let listque;
  export let sendlen;
  export let user;
  export let username;

  let check = sendlen;
  let qnum = 0;
  let qno = 0;
  let newtimedb, newtime;

  let timedout = 0;
  let totalTime = 0;
  let skipped = 0;
  let correct = 0;
  let incorrect = 0;
  let showConfirmation = false;
  let shownoansconfirm = false;
  let selectedAnswer = null;
  let skipChecked = false;
  let showTimeoutAlert = false;
  let obtainedmarks = 0;
  let giveans = [];
  let noans = [];
  let resultans = [];
  let corrselans = [];
  let skiper = [];
  let totalduration = 0;
  let answered = 0;
  let corans = [];
  let incans = [];
  let skpans = [];

  for (let i = 0; i < sendlen; i++) {
    totalduration += parseInt(listque[i].time);
  }

  $: {
    newtimedb = listque[qno].time;
    newtime = parseFloat(newtimedb);
  }
  $: timer = tweened(newtime);

  $: {
    if ($timer < 0) {
      handleTimerComplete();
    }
    if ($timer === 0) {
      handleTimerComplete();
    }

    if (check === 0) {
      $timer = 100000;
    }
  }
  // decrease timer
  setInterval(() => {
    if ($timer > 0) $timer--;
  }, 1000);

  $: seconds = Math.floor($timer);

  //handle timer
  function resetTimer() {
    let newtimedb = listque[qno].time;
    newtime = parseFloat(newtimedb);
    timer.set(newtime);
    selectedAnswer = null;
  }

  //next
  function handleNext() {
    if (!skipChecked && !selectedAnswer) {
      shownoansconfirm = true;
      return;
    } else {
      if (skipChecked) {
        selectedAnswer = null;
        showConfirmation = true;
      } else {
        answered += 1;
        qnum = qno;
        totalTime += newtime - seconds;
        let newtimedb = listque[qnum].time;
        newtime = parseFloat(newtimedb);
        giveans.push(qnum);
        resultans.push(listque[qno]);

        const sel_ans = document.querySelector('input[name="answer"]:checked');
        // @ts-ignore
        const sel_value = sel_ans.value;
        corrselans.push(sel_value);
        const isCorrect = JSON.parse(listque[qnum].answerss).find(
          (ans) => ans.answer === sel_value
        ).is_correct;
        if (isCorrect === "Y") {
          corans.push(qnum);
          correct += 1;
          addmarks($timer);
        } else {
          incans.push(qnum);
          incorrect += 1;
        }
        if (qno < listque.length - 1) {
          qno++;
          resetTimer();
        }
        check--;
      }
    }
  }

  //handle the timer reaching 0
  function handleTimerComplete() {
    skpans.push(qno);
    corrselans.push("noanswer");
    resultans.push(listque[qno]);
    totalTime += newtime - seconds;
    let newtimedb = listque[qno].time;
    newtime = parseFloat(newtimedb);

    qnum = qno;
    noans.push(qnum);
    showTimeoutAlert = true;
    if (qno < listque.length - 1) {
      qno++;
      resetTimer();
    }
    setTimeout(() => {
      showTimeoutAlert = false;
    }, 3000);
    timedout += 1;
    check--;
  }
  // skip
  function handleConfirmSkip() {
    qnum = qno;
    skpans.push(qnum);
    totalTime += newtime - seconds;
    let newtimedb = listque[qnum].time;
    newtime = parseFloat(newtimedb);
    noans.push(qnum);
    corrselans.push("noanswer");
    resultans.push(listque[qnum]);
    skiper.push(qnum);

    if (qno < listque.length - 1) {
      qno++;
      let newtimedb = listque[qno].time;
      newtime = parseFloat(newtimedb);
      skipped++;
      resetTimer();
    }

    check--;
    closeConfirmation();
  }
  //modal
  function closeConfirmation() {
    skipChecked = !skipChecked;
    showConfirmation = false;
  }
  function closeconfirm() {
    shownoansconfirm = false;
  }

  $: colorClass = getColorClass($timer);

  function getColorClass(timer) {
    let colortimedb = listque[qno].time;
    let colortime = parseFloat(colortimedb);
    let seventyfive = colortime * 0.75;
    let forty = colortime * 0.4;
    let eightthree = colortime * 0.1;

    if (timer >= seventyfive) {
      return "bg-green-500";
    } else if (timer >= forty) {
      return "bg-yellow-200";
    } else if (timer >= eightthree) {
      return "bg-orange-300";
    } else {
      return "bg-red-500";
    }
  }

  //marks add
  function addmarks(timer) {
    let marktime = listque[qno].time;
    let markst = parseFloat(marktime);
    let seventyfive = markst * 0.75;
    let forty = markst * 0.4;
    let eightthree = markst * 0.1;
    if (listque[qnum].difficulty === "easy") {
      if (timer >= seventyfive) {
        obtainedmarks += 10;
      } else if (timer >= forty && timer < seventyfive) {
        obtainedmarks += 7;
      } else if (timer >= eightthree && timer < forty) {
        obtainedmarks += 5;
      } else if (timer > 0 && timer < eightthree) {
        obtainedmarks += 3;
      }
    } else if (listque[qnum].difficulty === "medium") {
      if (timer >= seventyfive) {
        obtainedmarks += 1.5 * 10;
      } else if (timer >= forty && timer < seventyfive) {
        obtainedmarks += 1.5 * 7;
      } else if (timer >= eightthree && timer < forty) {
        obtainedmarks += 1.5 * 5;
      } else if (timer > 0 && timer < eightthree) {
        obtainedmarks += 1.5 * 3;
      }
    } else {
      if (timer >= seventyfive) {
        obtainedmarks += 2 * 10;
      } else if (timer >= forty && timer < seventyfive) {
        obtainedmarks += 2 * 7;
      } else if (timer >= eightthree && timer < forty) {
        obtainedmarks += 2 * 5;
      } else if (timer > 0 && timer < eightthree) {
        obtainedmarks += 2 * 3;
      }
    }
  }
</script>

<div class=" questions-cat md:mx-2">
  {#if listque.length > 0}
    {#if check == 0}
      <Results
        {skpans}
        {corans}
        {incans}
        {totalTime}
        {corrselans}
        {resultans}
        {obtainedmarks}
        {sendlen}
        {correct}
        {incorrect}
        {skipped}
        {timedout}
        {user}
        {username}
      />
    {:else}
      {#if shownoansconfirm}
        <div class="fixed inset-0 flex items-center justify-center z-50">
          <div class="bg-white w-96 p-6 rounded-lg shadow-lg">
            <p>Press any button before changing Question</p>
            <div class="mt-4 flex justify-center">
              <button
                class="bg-red-500 hover:bg-red-600 text-white font-bold py-2 px-4 rounded-full mr-4"
                on:click={closeconfirm}
              >
                OK
              </button>
            </div>
          </div>
        </div>
      {/if}
      <div class="alertcontainer h-16 md:h-14 md:w-1/2 md:mx-20 p-1">
        <div class="mx-1">
          {#if showTimeoutAlert}
            <div class="alert flex items-center justify-center alert-warning">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="stroke-current shrink-0 h-6 w-6"
                fill="none"
                viewBox="0 0 24 24"
                ><path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z"
                /></svg
              >
              <span>Timedout: Previous question timed out!</span>
            </div>
          {/if}
        </div>
      </div>
      <div
        class="grid grid-cols-1 lg:pt-2 lg:grid-cols-[6fr,4fr] gap-4 md:px-5"
      >
        <div class="bg-inherit shadow-xl p-5">
          <div class="ques_container space-y-4">
            <div class="qescont">
              <div
                class="p-4 h-full w-30 bg-white mx-auto rounded-xl hover:shadow-2xl shadow-lg flex items-center space-x-9"
              >
                <div
                  class="text-black font-medium text-xl whitespace-normal overflow-hidden"
                >
                  <u class="font-medium text-sm">Q no.{sendlen - check + 1})</u>
                  {@html listque[qno].question}
                </div>
              </div>
            </div>
            <div>
              <h1 class="text-2xl font-semibold text-gray-800">
                <span class="inline-block relative">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-6 w-6 text-gray-700"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"
                    />
                  </svg>
                  {#if $timer <= 5}
                    <span
                      class="animate-ping absolute top-1 right-0.5 block h-3 w-3 rounded-full ring-2 ring-green-800 bg-green-800"
                    />
                  {/if}
                </span>
                <span class="secs text-yellow-200">{seconds}</span> sec!
              </h1>
              <div
                class="w-full bg-gray-200 rounded-full h-2.5 dark:bg-gray-700"
              >
                <div
                  class="{colorClass} h-2.5 rounded-full"
                  style="width: {100 * ($timer / listque[qno].time)}%"
                />
              </div>
            </div>
            <div class="grid grid-cols-1 gap-5 bsm:grid-cols-2 bsm:gap-10">
              {#each JSON.parse(listque[qno].answerss) as answers}
                <label
                  class="border-4 p-2 w-full max-w-sm mx-auto bg-white rounded-xl shadow-md flex items-center space-x-4 hover:bg-gray-300"
                >
                  <input
                    type="radio"
                    class="form-radio text-indigo-600 h-7 w-7 bg-white"
                    name="answer"
                    value={answers.answer}
                    bind:group={selectedAnswer}
                  />
                  <p class="text-black font-medium">
                    {@html answers.answer}
                  </p>
                </label>
              {/each}
            </div>
          </div>
          <div
            class="button_container flex justify-center space-x-10 items-center my-5"
          >
            <div class="flex items-center mb-4">
              <input type="checkbox" bind:checked={skipChecked} />
              <label
                for="red-checkbox"
                class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300"
                >Skip</label
              >
            </div>
            {#if showConfirmation}
              <div class="fixed inset-0 flex items-center justify-center z-50">
                <div class="bg-white w-96 p-6 rounded-lg shadow-lg">
                  <p>Are you sure you want to skip?</p>
                  <div class="mt-4 flex justify-end">
                    <button
                      class="bg-red-500 hover:bg-red-600 text-white font-bold py-2 px-4 rounded-full mr-4"
                      on:click={handleConfirmSkip}
                    >
                      OK
                    </button>
                    <button
                      class="bg-gray-300 hover:bg-gray-400 text-gray-800 font-bold py-2 px-4 rounded-full"
                      on:click={closeConfirmation}
                    >
                      Cancel
                    </button>
                  </div>
                </div>
              </div>
            {:else if qno < listque.length - 1}
              <button
                on:click={handleNext}
                class="text-white btn bg-blue-600 font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2"
              >
                Next
              </button>
            {:else}
              <button
                on:click={handleNext}
                class="text-white btn btn-warning font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2"
              >
                Finish
              </button>
            {/if}
          </div>
        </div>
        <div class="infodiv">
          {#if qno <= listque.length - 1}
            <div class="containerinfo bg-white p-4 rounded-lg shadow-xl">
              <Info
                {totalTime}
                {timedout}
                {totalduration}
                category={listque[qno].category}
                difficulty={listque[qno].difficulty}
              />
              <hr />

              <div
                class="flex justify-center text-black items-center font-semibold md:text-xl"
              >
                Questions
              </div>
              <br />
              <div class="grid grid-cols-5 md:grid-cols-8 gap-1">
                {#each Array(sendlen) as _, index}
                  <div
                    class="border-2 border-black w-10 h-7 flex items-center justify-center rounded-tr-xl rounded-bl-xl"
                    style={index <= qno && giveans.includes(index)
                      ? "background-color: #68d391"
                      : index <= qno && noans.includes(index)
                      ? "background-color: #fc8181"
                      : "background-color: #c9c8c3"}
                  >
                    <span class="font-medium text-black">{index + 1}</span>
                  </div>
                {/each}
              </div>
              <br />
              <hr />
              <br />
              <div class="grid grid-cols-3 gap-2">
                <button
                  class="bg-red-500 text-white font-bold py-2 rounded cursor-not-allowed"
                >
                  Skips <span class="bg-white text-black px-2 rounded-sm"
                    >{skipped + timedout}</span
                  >
                </button>
                <button
                  class="bg-green-500 text-white font-bold py-2 rounded cursor-not-allowed"
                >
                  Answered <span class="bg-white text-black px-2 rounded-sm"
                    >{answered}</span
                  >
                </button>
                <button
                  class="bg-gray-500 text-white font-bold py-2 rounded cursor-not-allowed"
                >
                  Remains <span class="bg-white text-black px-2 rounded-sm"
                    >{sendlen}</span
                  >
                </button>
              </div>
            </div>
          {/if}
        </div>
      </div>
    {/if}
  {/if}
</div>
