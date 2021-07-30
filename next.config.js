const bsconfig = require('./bsconfig.json');

// NOTE: https://forum.rescript-lang.org/t/purpose-alternatives-to-next-transpile-modules-in-next-rescript-projects/827/5
const transpileModules = ["rescript"].concat(bsconfig["bs-dependencies"]);
const withTM = require("next-transpile-modules")(transpileModules);

const config = {
  target: "serverless",
  pageExtensions: ["jsx", "js", "mdx"],
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

        // config.resolve = {
        //   ...config.resolve,
        //   fallback: {
        //     ...config.resolve.fallback,
        //     child_process: false,
        //     fs: false,
        //     path: false,
        //     'builtin-modules': false,
        //     worker_threads: false,
        //   },
        // }

    
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
  images: {
    domains: ['vercel.com'],
  },
};

module.exports = withTM(config);