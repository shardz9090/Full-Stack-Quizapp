<script>
  export let totalTime;
  export let category;
  export let difficulty;
  export let timedout;
  export let totalduration;

  let minutes = 0,
    seconds = 0,
    hours = 0;

  function secstohr(secs) {
    seconds = secs % 60;
    minutes = Math.floor((secs % 3600) / 60);
    hours = Math.floor(secs / 3600);
    return hours + "h " + minutes + "m " + seconds + "s";
  }

  $: difficulty =
    difficulty.charAt(0).toUpperCase() + difficulty.slice(1).toLowerCase();
</script>

<div class="mb-4">
  <span class="text-gray-500 whitespace-nowrap dark:text-gray-400">
    <span class="font-bold"
      >Total Estimated duration = {secstohr(totalduration)}
    </span> <br />

    <span class="font-bold">Total Time:</span>
    <span class="text-green-400 font-medium">{secstohr(totalTime)}</span> |
    <span class="font-bold">TimedOut:</span>
    <span class="text-green-400 font-medium">{timedout}</span> | <br />
  </span>
</div>

<div class="mt-4">
  <p class="text-gray-500 font-normal">
    <span class="font-medium">Category:</span>
    <span class="font-bold text-black font-serif">{category}</span>
  </p>
  <p class="text-gray-500 font-normal">
    <span class="font-medium">Difficulty:</span>
    <span
      class="{difficulty === 'Easy'
        ? 'text-green-400'
        : difficulty === 'Medium'
        ? 'text-orange-400'
        : 'text-red-400'} font-bold">{difficulty}</span
    >
  </p>
</div>
