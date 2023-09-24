/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./src/**/*.{html,js,svelte,ts}",
    "./node_modules/flowbite-svelte/**/*.{html,js,svelte,ts}",
  ],
  daisyui: {
    themes: ["light", "dark", "cupcake"],
  },
  theme: {
    screens: {
      'sm': '640px',
      'bsm': '700px',

      'md': '1000px',

      'lg': '1200px',

      'xl': '1280px',

      '2xl': '1536px',
    },
    extend: {
    },
  },
  plugins: [
    require('flowbite/plugin'),
    require("daisyui")
  ],
}

