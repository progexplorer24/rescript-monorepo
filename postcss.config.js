// postcss.config.js
const purgecss = require("@fullhuman/postcss-purgecss")({
  // Specify the paths to all ReasonML code where you're using this PPX.
  content: ["./src/**/*.res"],

  // Include the extractor from this package
  defaultExtractor: require("@dylanirlbeck/tailwind-ppx").extractor
});

module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
    ...(process.env.NODE_ENV === "production" ? [purgecss] : [])
  }

};
