module.exports = {
  purge: ["./src/**/*.{js,jsx,ts,tsx}", "./public/index.html"],
  content: ['./**/*.{html,js}'],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        'bg.white': 'white',
        'primary': '#EE4D2D',
        'hover.primary': '#FC2C03',
        'hover.secondary': '#32CB00'
      },
      spacing: {
        200: '200px',
        3.5: '14px',
        500: '500px'
      },
      borderRadius: {
        'normal': '9px'
      },
      borderWidth: {
        '1' : '1px'
      },
      backgroundImage: {
        "login" : "url('/src/assets/background.login.jpg')"
      },
      textUnderlineOffset: {
        8: '8px',
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};
