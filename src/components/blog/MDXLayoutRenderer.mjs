// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Client from "mdx-bundler/client";
import * as Mdx$RescriptMonorepo from "./Mdx.mjs";

function components_p(param) {
  return React.createElement(Mdx$RescriptMonorepo.p, {
              children: param.children
            });
}

function components_h1(param) {
  return React.createElement(Mdx$RescriptMonorepo.h1, {
              children: param.children
            });
}

function components_h2(param) {
  return React.createElement(Mdx$RescriptMonorepo.h2, {
              children: param.children
            });
}

function components_h3(param) {
  return React.createElement(Mdx$RescriptMonorepo.h3, {
              children: param.children
            });
}

function components_h4(param) {
  return React.createElement(Mdx$RescriptMonorepo.h4, {
              children: param.children
            });
}

function components_blockquote(param) {
  return React.createElement(Mdx$RescriptMonorepo.blockquote, {
              children: param.children
            });
}

function components_ol(param) {
  return React.createElement(Mdx$RescriptMonorepo.ol, {
              children: param.children
            });
}

function components_ul(param) {
  return React.createElement(Mdx$RescriptMonorepo.ul, {
              children: param.children
            });
}

function components_li(param) {
  return React.createElement(Mdx$RescriptMonorepo.li, {
              children: param.children
            });
}

function components_wrapper(param) {
  return React.createElement(Mdx$RescriptMonorepo.wrapper, {
              children: param.children
            });
}

function components_pre(param) {
  return React.createElement(Mdx$RescriptMonorepo.pre, {
              children: param.children
            });
}

function components_inlineCode(param) {
  return React.createElement(Mdx$RescriptMonorepo.inlineCode, {
              children: param.children
            });
}

function components_em(param) {
  return React.createElement(Mdx$RescriptMonorepo.em, {
              children: param.children
            });
}

function components_strong(param) {
  return React.createElement(Mdx$RescriptMonorepo.strong, {
              children: param.children
            });
}

function components_hr(param) {
  return React.createElement(Mdx$RescriptMonorepo.hr, {});
}

function components_a(param) {
  return React.createElement(Mdx$RescriptMonorepo.a, {
              children: param.children
            });
}

function components_img(param) {
  return React.createElement(Mdx$RescriptMonorepo.img, {
              src: param.src
            });
}

function components_table(param) {
  return React.createElement(Mdx$RescriptMonorepo.table, {
              children: param.children
            });
}

function components_thead(param) {
  return React.createElement(Mdx$RescriptMonorepo.thead, {
              children: param.children
            });
}

function components_tbody(param) {
  return React.createElement(Mdx$RescriptMonorepo.tbody, {
              children: param.children
            });
}

function components_tr(param) {
  return React.createElement(Mdx$RescriptMonorepo.tr, {
              children: param.children
            });
}

function components_td(param) {
  return React.createElement(Mdx$RescriptMonorepo.td, {
              children: param.children
            });
}

var components = {
  p: components_p,
  h1: components_h1,
  h2: components_h2,
  h3: components_h3,
  h4: components_h4,
  blockquote: components_blockquote,
  ol: components_ol,
  ul: components_ul,
  li: components_li,
  wrapper: components_wrapper,
  pre: components_pre,
  inlineCode: components_inlineCode,
  em: components_em,
  strong: components_strong,
  hr: components_hr,
  a: components_a,
  img: components_img,
  table: components_table,
  thead: components_thead,
  tbody: components_tbody,
  tr: components_tr,
  td: components_td
};

function MDXLayoutRenderer(Props) {
  var mdxSource = Props.mdxSource;
  var layout = Props.layout;
  var MDXLayoutRenderer$1 = function (Props) {
    var mdxSource = Props.mdxSource;
    return React.useMemo((function () {
                  return Client.getMDXComponent(mdxSource, [mdxSource]);
                }), []);
  };
  return React.createElement(MDXLayoutRenderer$1, {
              mdxSource: mdxSource,
              layout: layout,
              components: components
            });
}

var make = MDXLayoutRenderer;

export {
  components ,
  make ,
  
}
/* react Not a pure module */
