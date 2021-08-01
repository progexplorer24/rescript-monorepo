// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Path from "path";
import * as React from "react";
import * as Js_dict from "rescript/lib/es6/js_dict.js";
import * as MdxBundler from "mdx-bundler";

function $$default(props) {
  return React.createElement("div", undefined);
}

function getStaticProps(_ctx) {
  var mdxSource = "\n---\ntitle: Example Post\npublished: 2021-02-13\ndescription: This is some description\n---\n\n# Wahoo\n\n\nHere's a **neat** demo:\n\n<Demo />\n".trim();
  Js_dict.fromArray([[
          "./demo.tsx",
          "\nimport * as React from 'react'\n\nfunction Demo() {\n  return <div>Neat demo!</div>\n}\n\nexport default Demo\n    "
        ]]);
  if (process.platform === "win32") {
    process.env.ESBUILD_BINARY_PATH = Path.join(process.cwd(), "node_modules", "esbuild", "esbuild.exe");
  } else {
    process.env.ESBUILD_BINARY_PATH = Path.join(process.cwd(), "node_modules", "esbuild", "bin", "esbuild");
  }
  var __x = MdxBundler.bundleMDX(mdxSource);
  return __x.then(function (result) {
              var props = {
                result: result
              };
              return Promise.resolve({
                          props: props
                        });
            });
}

export {
  $$default ,
  $$default as default,
  getStaticProps ,
  
}
/* path Not a pure module */
