<script>
  import { onMount, afterUpdate } from "svelte";
  import axios from "axios";

  let isLoading = 0;
  let leaderdata = [];
  let usercurrent = [];
  export let username;

  onMount(async () => {
    try {
      const response = await axios.get(
        "http://localhost/quizapp/api/Apihome/getleaders"
      );
      leaderdata = response.data.results;
      usercurrent = leaderdata.find((user) => user.uname === username);
      isLoading = 1;
    } catch (error) {
      console.error("Error fetching leaderboard data:", error);
    }
  });
</script>

{#if isLoading === 1}
  <div class="grid justify-items-center">
    <span class="text-2xl font-bold text-black"> Leaderboard</span>
  </div>
  <div
    class="md:w-5/6 w-full mt-2 h-full md:mx-auto rounded-lg shadow-2xl overflow-x-auto bsm:overflow-x-hidden bsm:overflow-y-hidden"
  >
    <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
      <thead
        class="text-xs text-gray-700 bg-gray-200 dark:bg-gray-700 dark:text-gray-400"
      >
        <tr>
          <th scope="col" class="md:px-6 md:py-3 px-2 py-4 w-3"> Rank</th>
          <th scope="col" class="md:px-4 md:py-3 px-2 py-4 text-center">
            Username
          </th>
          <th scope="col" class="md:px-6 md:py-3 px-2 py-4 text-center">
            Daily
          </th>
          <th scope="col" class="md:px-6 md:py-3 px-2 py-4 text-center">
            Weekly
          </th>
          <th scope="col" class="md:px-6 md:py-3 px-2 py-4 text-center">
            Monthly
          </th>
          <th
            scope="col"
            class="md:px-6 md:py-3 px-2 py-4 text-center bg-gray-700 text-white"
          >
            Total
          </th>
        </tr>
        <hr />
        <tr>
          <th
            scope="col"
            class="md:px-6 md:py-3 px-2 py-4 w-3 text-red-600 text-xs bsm:text-xl"
          >
            N/A</th
          >
          <th
            scope="col"
            class="md:px-4 md:py-3 px-2 py-4 text-center text-red-600 text-xs bsm:text-xl"
          >
            {username}
            <span class="bg-yellow-400 text-xs p-1 text-white rounded-md"
              >You</span
            >
          </th>
          <th
            scope="col"
            class="md:px-6 md:py-3 px-2 py-4 text-center text-red-600 text-xs bsm:text-xl"
          >
            {usercurrent.onetotal_marks}
          </th>
          <th
            scope="col"
            class="md:px-6 md:py-3 px-2 py-4 text-center text-red-600 text-xs bsm:text-xl"
          >
            {usercurrent.weektotal_marks}
          </th>
          <th
            scope="col"
            class="md:px-6 md:py-3 px-2 py-4 text-center text-red-600 text-xs bsm:text-xl"
          >
            {usercurrent.monthtotal_marks}
          </th>
          <th
            scope="col"
            class="md:px-6 md:py-3 px-2 py-4 text-center bg-gray-700 text-white"
          >
            {usercurrent.alltotal}
          </th>
        </tr>
      </thead>
      <hr class="bg-red-500" />

      <tbody>
        {#each leaderdata as leader, index}
          <tr
            class="{index === 0
              ? 'bg-yellow-200 text-black'
              : index === 1
              ? 'bg-gray-400 text-black'
              : index === 2
              ? 'bg-amber-600 text-black'
              : 'bg-white hover:bg-green-200 dark:hover:bg-gray-600'} border-b dark:bg-gray-800 dark:border-gray-700"
          >
            <th
              scope="row"
              class="md:px-6 md:py-4 pl-4 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white"
              >{#if index === 0 || index === 1 || index === 2}
                <span class="bg-black">
                  <svg
                    fill="#000000"
                    height="15px"
                    width="15px"
                    version="1.1"
                    id="Layer_1"
                    xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    viewBox="0 0 512 512"
                    xml:space="preserve"
                    ><g id="SVGRepo_bgCarrier" stroke-width="0" /><g
                      id="SVGRepo_tracerCarrier"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                    /><g id="SVGRepo_iconCarrier">
                      <g>
                        <g>
                          <g>
                            <path
                              d="M368.757,255.406c30.472-5.416,58.07-19.807,80.124-41.852c28.54-28.54,44.259-66.191,44.259-106.495 c0-30.311-24.743-54.708-55.157-54.708h-58.453c0-1.047,0-1.877,0-2.526V9.566c0-5.783-5.202-9.566-10.983-9.566H143.435 c-5.782,0-9.957,3.783-9.957,9.566v41.881c0,0.129-0.498-0.142-0.494,0.905H73.992c-30.401,0-55.133,24.388-55.133,54.698 c0,40.226,15.726,77.966,44.283,106.524c21.807,21.795,50.146,36.46,80.351,41.837c9.052,20.653,23.513,38.302,42.126,51.346 c10.426,7.306,22.196,12.842,33.714,16.576v63.023h-4.865c-23.292,0-42.252,18.426-42.252,41.718v10.12 c-23.035,0.195-41.881,19.061-41.881,42.232v20.581c0,5.783,4.698,10.994,10.481,10.994h230.348 c5.782,0,10.46-5.211,10.46-10.994v-20.581c0-23.171-18.847-42.037-41.881-42.232v-10.12c0-23.292-18.939-41.718-42.231-41.718 h-4.885v-62.974C326.131,313.015,353.777,288.661,368.757,255.406z M379.53,115.174h50.54 c-2.835,30.364-22.27,58.376-50.54,71.562V115.174z M379.163,209.424c42.885-15.496,72.201-56.357,72.201-102.349 c0-7.217-6.003-12.843-13.381-12.843h-58.453v-20.94h58.452c18.869,0,34.218,15.004,34.218,33.767 c0,34.71-13.54,67.234-38.123,91.817c-16.244,16.235-35.974,27.586-57.758,33.471 C377.992,224.817,378.942,217.135,379.163,209.424z M77.948,198.653c-24.6-24.601-38.149-56.961-38.149-91.594 c0-18.763,15.339-33.767,34.193-33.767h59.485v20.941H74.002c-7.337,0-13.083,5.487-13.083,12.826 c0,24.3,7.814,47.135,22.597,66.286c12.701,16.453,30.134,29.018,49.689,36.066c0.005,0.192,0.216,12.659,2.723,22.863 C114.169,226.347,94.005,214.702,77.948,198.653z M133.477,115.174v71.538c-28.27-13.141-48.422-41.174-51.263-71.538H133.477z M154.417,20.941h204.172v20.941H154.417V20.941z M339.394,459.648c11.745,0,21.289,9.032,21.289,20.777v10.634H151.276v-10.634 c0-11.746,9.566-20.777,21.311-20.777H339.394z M297.512,407.297c11.745,0,21.289,9.032,21.289,20.777v10.634H193.158v-10.634 c0-11.746,9.566-20.777,21.311-20.777H297.512z M240.274,386.356V327.89c5.235,0.668,10.487,1.025,15.813,1.025 c5.27,0,10.362-0.352,15.598-1.002v58.442H240.274z M256.176,307.975c-41.994,0-80.371-26.35-95.378-65.57 c-0.076-0.199,0-0.396-0.088-0.589c-2.621-6.945-6.294-24.425-6.294-35.927V62.822h204.172v143.067 c0,11.082-2.356,23.029-6.875,36.515C335.825,282.247,298.313,307.975,256.176,307.975z"
                            />
                            <path
                              d="M311.134,159.456c-2.296-1.922-5.155-4.316-5.977-5.737c-0.926-1.6-1.594-5.264-2.183-8.498 c-1.453-7.97-3.26-17.889-12.219-23.071c-8.745-5.06-18.103-1.763-25.624,0.888c-3.215,1.134-6.861,2.419-8.946,2.419 s-5.73-1.285-8.946-2.419c-7.517-2.649-16.875-5.95-25.623-0.888c-8.961,5.184-10.768,15.102-12.22,23.074 c-0.589,3.233-1.258,6.897-2.182,8.496c-0.823,1.422-3.681,3.815-5.978,5.738c-5.974,5.003-14.157,11.853-14.157,22.539 s8.182,17.538,14.157,22.539c2.296,1.923,5.155,4.317,5.977,5.737c0.926,1.6,1.594,5.264,2.183,8.498 c1.453,7.97,3.26,17.889,12.22,23.072c8.744,5.059,18.103,1.762,25.623-0.889c3.215-1.134,6.861-2.419,8.946-2.419 s5.73,1.285,8.946,2.418c4.656,1.641,10.016,3.531,15.5,3.531c3.373,0,6.792-0.715,10.123-2.642 c8.961-5.184,10.768-15.102,12.221-23.073c0.589-3.233,1.256-6.898,2.181-8.497c0.823-1.422,3.681-3.814,5.978-5.737 c5.974-5.003,14.157-11.854,14.157-22.54S317.11,164.459,311.134,159.456z M297.689,188.48 c-3.926,3.288-7.987,6.686-10.66,11.306c-2.747,4.75-3.762,10.318-4.657,15.229c-0.481,2.64-1.255,6.893-2.134,8.521 c-1.816-0.101-5.718-1.475-8.146-2.332c-4.8-1.692-10.239-3.609-15.907-3.609s-11.107,1.917-15.907,3.609 c-2.428,0.855-6.329,2.23-8.146,2.332c-0.878-1.629-1.653-5.881-2.134-8.521c-0.895-4.912-1.91-10.479-4.658-15.229 c-2.672-4.618-6.732-8.018-10.659-11.306c-2.226-1.864-5.882-4.926-6.603-6.484c0.72-1.558,4.377-4.621,6.603-6.484 c3.926-3.288,7.987-6.686,10.66-11.306c2.747-4.75,3.762-10.318,4.657-15.228c0.481-2.64,1.255-6.893,2.134-8.521 c1.816,0.101,5.718,1.476,8.146,2.332c4.8,1.692,10.24,3.609,15.907,3.609s11.107-1.917,15.907-3.609 c2.428-0.855,6.329-2.231,8.146-2.332c0.877,1.629,1.653,5.881,2.134,8.521c0.895,4.912,1.91,10.479,4.658,15.229 c2.672,4.618,6.732,8.018,10.659,11.305c2.226,1.864,5.882,4.926,6.603,6.484C303.572,183.554,299.915,186.616,297.689,188.48z"
                            />
                          </g>
                        </g>
                      </g>
                    </g></svg
                  >
                </span>
              {:else}
                {index + 1}
              {/if}
            </th>

            <th
              scope="row"
              class="md:px-4 md:py-4 px-2 text-center py-4 font-medium text-gray-950 whitespace-nowrap dark:text-white"
            >
              {leader.uname}</th
            >

            <td
              class="md:px-6 md:py-4 px-2 py-4 text-center text-gray-950 text-base font-medium"
            >
              {leader.onetotal_marks}
            </td>
            <td
              class="md:px-6 md:py-4 px-2 py-4 text-center text-base font-medium"
              >{leader.weektotal_marks}
            </td>
            <td
              class="md:px-6 md:py-4 px-2 py-4 text-center text-base font-medium"
            >
              {leader.monthtotal_marks}
            </td>
            <td
              class="md:px-6 md:py-4 px-2 py-4 bg-gray-700 text-center text-white text-base font-medium"
            >
              {leader.alltotal}
            </td>
          </tr>
        {/each}
      </tbody>
    </table>
  </div>
{:else}
  <div class="flex justify-center items-center">
    <span class="loading loading-spinner loading-lg" />
    <span class="text-black dark:text-white text-2xl font-bold"
      >LOADING LEADERBOARD</span
    >
  </div>
{/if}

<style>
  @media screen and (min-width: 700px) {
    tbody td {
      transition: all 0.2s linear;
      transition-delay: 0.3s, 0s;
      opacity: 0.6;
    }
    tbody tr:hover td {
      transition-delay: 0s, 0s;
      opacity: 1;
      font-size: 1.5em;
    }

    td {
      transform-origin: center right;
      transition-property: transform;
      transition-duration: 0.4s;
      transition-timing-function: ease-in-out;
    }
    tr:hover td {
      transform: scale(1.1);
    }
  }
</style>
