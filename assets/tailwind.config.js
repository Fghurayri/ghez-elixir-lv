module.exports = {
  purge: [
    "../lib/**/*.ex",
    "../lib/**/*.leex",
    "../lib/**/*.eex",
    "./js/**/*.js",
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    fontFamily: {
      hero: ["SigmarOne"],
      sans: ["OpenSans"],
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};
