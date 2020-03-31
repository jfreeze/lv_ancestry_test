const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      width: {
        '72': '20rem',
        '80': '24rem',
        '88': '28rem'
      },
      spacing: {
        '7': '1.75rem',
        '25vh': '25vh'
      },
      minWidth: {
        xs: '20rem',
        sm: '24rem',
        md: '28rem',
        lg: '32rem',
        xl: '36rem',
        '2xl': '42rem',
        '3xl': '48rem',
        '4xl': '56rem',
        '5xl': '64rem',
        '6xl': '72rem',
        '1/5': '20%',
        4: '1rem',
        '72': '20rem',
        '80': '24rem',
        '88': '28rem'
      },
      maxWidth: {
        '4/5': '80%',
        '1/2': '45%',
        '1/3': '33%'
      },
      maxHeight: {
        '150px': '150px',
      },
      colors: {
        'herobg': 'hsl(209, 61%, 16%, 0.7)',
        "blue-050": "#DCEEFB",
        "blue-100": "#B6E0FE",
        "blue-200": "#84C5F4",
        "blue-300": "#62B0E8",
        "blue-400": "#4098D7",
        "blue-500": "#2680C2",
        "blue-600": "#186FAF",
        "blue-700": "#0F609B",
        "blue-800": "#0A558C",
        "blue-900": "#003E6B",

        "yellow-vivid-050": "#FFFBEA",
        "yellow-vivid-100": "#FFF3C4",
        "yellow-vivid-200": "#FCE588",
        "yellow-vivid-300": "#FADB5F",
        "yellow-vivid-400": "#F7C948",
        "yellow-vivid-500": "#F0B429",
        "yellow-vivid-600": "#DE911D",
        "yellow-vivid-700": "#CB6E17",
        "yellow-vivid-800": "#B44D12",
        "yellow-vivid-900": "#8D2B0B",

        // Neutrals
        "blue-grey-50": "#F0F4F8",
        "blue-grey-100": "#D9E2EC",
        "blue-grey-200": "#BCCCDC",
        "blue-grey-300": "#9FB3C8",
        "blue-grey-400": "#829AB1",
        "blue-grey-500": "#627D98",
        "blue-grey-600": "#486581",
        "blue-grey-700": "#334E68",
        "blue-grey-800": "#243B53",
        "blue-grey-900": "#102A43",

        // Supporting
        "cyan-050": "#E0FCFF",
        "cyan-100": "#BEF8FD",
        "cyan-200": "#87EAF2",
        "cyan-300": "#54D1DB",
        "cyan-400": "#38BEC9",
        "cyan-500": "#2CB1BC",
        "cyan-600": "#14919B",
        "cyan-700": "#0E7C86",
        "cyan-800": "#0A6C74",
        "cyan-900": "#044E54",

        "red-050": "#FFEEEE",
        "red-100": "#FACDCD",
        "red-200": "#F29B9B",
        "red-300": "#E66A6A",
        "red-400": "#D64545",
        "red-500": "#BA2525",
        "red-600": "#A61B1B",
        "red-700": "#911111",
        "red-800": "#780A0A",
        "red-900": "#610404",

        // Palette 19
        "green-vivid-050": "#E3F9E5",
        "green-vivid-100": "#C1F2C7",
        "green-vivid-200": "#91E697",
        "green-vivid-300": "#51CA58",
        "green-vivid-400": "#31B237",
        "green-vivid-500": "#18981D",
        "green-vivid-600": "#0F8613",
        "green-vivid-700": "#0E7817",
        "green-vivid-800": "#07600E",
        "green-vivid-900": "#014807",
      },
      height: {
        '25vh': '25vh',
        '50vh': '50vh',
        '75vh': '75vh',
        '1/3vh': '33vh',
        '72': '18rem',
        '80': '20rem',
        '88': '22rem',
        '96': '24rem'
      },

    }
  },
  variants: {
    textColor: ['responsive', 'hover', 'focus', 'group-hover'],
    backgroundColor: ['responsive', 'hover', 'focus', 'group-hover'],
  },
  plugins: [
    require('@tailwindcss/ui')
  ]
}
