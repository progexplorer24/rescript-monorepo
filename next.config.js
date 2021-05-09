const bsconfig = require('./bsconfig.json');
const fs = require("fs");

// NOTE: https://forum.rescript-lang.org/t/purpose-alternatives-to-next-transpile-modules-in-next-rescript-projects/827/5
const transpileModules = ["bs-platform"].concat(bsconfig["bs-dependencies"]);
const withTM = require("next-transpile-modules")(transpileModules);
const withMDX = require('@next/mdx')({
  extension: /\.mdx?$/,
})

// There is an issue where webpack doesn't detect npm packages within node_modules when
// there is no dedicated package.json "main" entry + index.js file existent.
// This function will make sure that every ReScript dependency folder is conforming
// to webpack's resolve mechanism
//
// This will eventually be removed at some point, so keep an eye out for updates
// on our template repository.
function patchResDeps() {
  ["bs-platform"].concat(bsconfig["bs-dependencies"]).forEach((bsDep) => {
    fs.writeFileSync(`./node_modules/${bsDep}/index.js`, "");
    const json = require(`./node_modules/${bsDep}/package.json`);
    json.main = "index.js";
    fs.writeFileSync(
      `./node_modules/${bsDep}/package.json`,
      JSON.stringify(json, null, 2)
    );
  });
}
patchResDeps(); // update package.json and create empty `index.js` before transpiling

const config = {
  target: "serverless",
  pageExtensions: ["jsx", "js", "bs.js", "mdx"],
  transpileModules: ["bs-platform"].concat(bsconfig["bs-dependencies"]),
  env: {
    ENV: process.env.NODE_ENV,
  },
  webpack: (config, options) => {
    const { isServer } = options;
    if (!isServer) {
      // We shim fs for things like the blog slugs component
      // where we need fs access in the server-side part
      config.resolve.fallback = {
        fs: false,
        path: false,
      };
    }

    config.module.rules.push({
      test: /\.m?js$/,
      use: options.defaultLoaders.babel,
      exclude: /node_modules/,
      type: "javascript/auto",
      resolve: {
        fullySpecified: false,
      }
    });

    return config
  },
  future: {
    webpack5: true
  },
  images: {
    domains: ['vercel.com'],
  },
};

module.exports = withMDX(withTM(config));