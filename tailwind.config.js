const colors = require('tailwindcss/colors')
module.exports = {
  purge: {
     // Specify the paths to all of the template files in your project
     content: [
      './components/**/*.res',
      './pages/**/*.res',
      './layouts/**/*.res',
    ],
    options: {
      whitelist: ["html", "body"],
    }
  },
  theme: {
    /* Here you can extend default tailwindcss values */
    extend: {
      screens: {
        "omnifood-sm": "481px",
        "omnifood-md": "767px",
      },

      spacing: {
        68: '17rem',
        76: '19rem',
        84: '21rem',
        88: '22rem',
        92: '23rem',
        100: '25rem',
        104: '26rem',
        108: '27rem',
        112: '28rem',
        116: '29rem',
        120: '30rem',
        124: '31rem',
        128: '32rem',
        132: '33rem',
        136: '34rem',
        140: '35rem',
        144: '36rem',
        148: '37rem',
        152: '38rem',
        156: '39rem',
        160: '40rem',
        164: '41rem',
        168: '42rem',
        172: '43rem',
        176: '44rem',
        180: '45rem',
        184: '46rem',
        188: '47rem',
        192: '48rem',
        196: '49rem',
        200: '50rem',
      }

    },
     /* We override the default font-families with our own default prefs  */
     fontFamily: {
      'sans':['-apple-system', 'BlinkMacSystemFont', 'Helvetica Neue', 'Arial', 'sans-serif'],
      'serif': ['Georgia', '-apple-system', 'BlinkMacSystemFont', 'Helvetica Neue', 'Arial', 'sans-serif'], 
      'mono': [ 'Menlo', 'Monaco', 'Consolas', 'Roboto Mono', 'SFMono-Regular', 'Segoe UI', 'Courier', 'monospace']
    },
   /* Most of the time we customize the font-sizes,
     so we added the Tailwind default values here for
     convenience */
     fontSize: {
      xs: ".75rem",
      sm: ".875rem",
      base: "1rem",
      lg: "1.125rem",
      xl: "1.25rem",
      '2xl': "1.5rem",
      '3xl': "1.875rem",
      '4xl': "2.25rem",
      '5xl': "3rem",
      '6xl': "4rem"
    },
    },
  variants: {},
  plugins: [
    require('@tailwindcss/forms'),
    // ...
  ],
}
