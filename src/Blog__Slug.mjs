// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Belt_Array from "rescript/lib/es6/belt_Array.js";
import * as Utils$RescriptMonorepo from "./utils/Utils.mjs";
import * as Tailwind$RescriptMonorepo from "./styles/tailwind/Tailwind.mjs";
import * as PageTitle$RescriptMonorepo from "./components/blog/PageTitle.mjs";
import * as PostLayout$RescriptMonorepo from "./layouts/PostLayout.mjs";
import * as Mdx__helpers$RescriptMonorepo from "./server/Mdx__helpers.mjs";
import * as MDXLayoutRenderer$RescriptMonorepo from "./components/blog/MDXLayoutRenderer.mjs";

var underConstruction = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.mt(24),
      Tailwind$RescriptMonorepo.textCenter
    ]);

function $$default(props) {
  var post = props.post;
  var frontmatter = post.frontmatter;
  var layout = frontmatter.layout === "" ? "PostLayout" : frontmatter.layout;
  var renderPost = frontmatter.draft !== true ? React.createElement(PostLayout$RescriptMonorepo.make, {
          children: React.createElement("main", undefined, React.createElement(MDXLayoutRenderer$RescriptMonorepo.make, {
                    mdxSource: post.code,
                    layout: layout,
                    frontmatter: frontmatter
                  })),
          frontmatter: frontmatter,
          authorsArray: props.authorsArray,
          next: props.next,
          prev: props.prev
        }) : React.createElement("main", undefined, React.createElement("div", {
              className: underConstruction
            }, React.createElement(PageTitle$RescriptMonorepo.make, {
                  children: null
                }, Utils$RescriptMonorepo.str("Under\n            Construction"), React.createElement("span", {
                      "aria-label": "roadwork sign",
                      role: "img"
                    }, Utils$RescriptMonorepo.str(" 🚧")))));
  return React.createElement(React.Fragment, undefined, renderPost);
}

function getStaticPaths(param) {
  var nonEmpty = function (s) {
    return s !== "";
  };
  var paths = Belt_Array.map(Mdx__helpers$RescriptMonorepo.getFiles(undefined, "blog"), (function (string) {
          return {
                  params: {
                    slug: string.split("/").filter(nonEmpty)
                  }
                };
        }));
  return Promise.resolve({
              paths: paths,
              fallback: false
            });
}

export {
  $$default ,
  $$default as default,
  getStaticPaths ,
  
}
/* underConstruction Not a pure module */
