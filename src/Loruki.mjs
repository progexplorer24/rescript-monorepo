// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import Link from "next/link";
import * as Ion$RescriptMonorepo from "./components/icons/Ion.mjs";
import * as Utils$RescriptMonorepo from "./utils/Utils.mjs";
import * as Tailwind$RescriptMonorepo from "./styles/tailwind/Tailwind.mjs";
import * as Nav__Loruki$RescriptMonorepo from "./components/loruki/Nav__Loruki.mjs";
import * as Layout__Loruki$RescriptMonorepo from "./layouts/loruki/Layout__Loruki.mjs";
import * as NavContainer__Loruki$RescriptMonorepo from "./components/loruki/NavContainer__Loruki.mjs";

var h1 = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.leading("tight"),
      Tailwind$RescriptMonorepo.my("v2_5"),
      Tailwind$RescriptMonorepo.text("xl2")
    ]);

var navContainer = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.h("v18")]);

var contentBox = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.maxW("xl6"),
      Tailwind$RescriptMonorepo.mx("auto"),
      Tailwind$RescriptMonorepo.px("v10"),
      Tailwind$RescriptMonorepo.h("full"),
      Tailwind$RescriptMonorepo.textColor(undefined, "trueGray100")
    ]);

var navBox = Tailwind$RescriptMonorepo.merge([
      contentBox,
      Tailwind$RescriptMonorepo.twStyle([
            Tailwind$RescriptMonorepo.flex,
            Tailwind$RescriptMonorepo.justifyBetween,
            Tailwind$RescriptMonorepo.itemsCenter
          ])
    ]);

var ul = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.flex]);

var a = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.p("v2_5"),
      Tailwind$RescriptMonorepo.mx("v1")
    ]);

var aHover = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.hover([
            Tailwind$RescriptMonorepo.borderB("v2"),
            Tailwind$RescriptMonorepo.borderColor("trueGray100")
          ])]);

var showcase = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.bg(undefined, "blue900")]);

var twoCols = Tailwind$RescriptMonorepo.merge([
      contentBox,
      Tailwind$RescriptMonorepo.twStyle([
            Tailwind$RescriptMonorepo.grid,
            Tailwind$RescriptMonorepo.gridCols("v2"),
            Tailwind$RescriptMonorepo.gap("v5")
          ])
    ]);

function $$default(param) {
  return React.createElement(Layout__Loruki$RescriptMonorepo.make, {
              children: null
            }, React.createElement(NavContainer__Loruki$RescriptMonorepo.make, {
                  children: React.createElement("div", {
                        className: Tailwind$RescriptMonorepo.merge([navBox])
                      }, React.createElement("h1", {
                            className: Tailwind$RescriptMonorepo.merge([h1])
                          }, Utils$RescriptMonorepo.str("Loruki.")), React.createElement(Nav__Loruki$RescriptMonorepo.make, {
                            children: React.createElement("ul", {
                                  className: Tailwind$RescriptMonorepo.merge([ul])
                                }, React.createElement("li", undefined, React.createElement(Link, {
                                          href: "/",
                                          children: React.createElement("a", {
                                                className: Tailwind$RescriptMonorepo.merge([
                                                      a,
                                                      aHover
                                                    ])
                                              }, Utils$RescriptMonorepo.str("Home"))
                                        })), React.createElement("li", undefined, React.createElement(Link, {
                                          href: "/",
                                          children: React.createElement("a", {
                                                className: Tailwind$RescriptMonorepo.merge([
                                                      a,
                                                      aHover
                                                    ])
                                              }, Utils$RescriptMonorepo.str("Features"))
                                        })), React.createElement("li", undefined, React.createElement(Link, {
                                          href: "/",
                                          children: React.createElement("a", {
                                                className: Tailwind$RescriptMonorepo.merge([
                                                      a,
                                                      aHover
                                                    ])
                                              }, Utils$RescriptMonorepo.str("Docs"))
                                        })))
                          })),
                  className: Tailwind$RescriptMonorepo.merge([navContainer])
                }), React.createElement("section", {
                  className: Tailwind$RescriptMonorepo.merge([showcase])
                }, React.createElement("div", {
                      className: Tailwind$RescriptMonorepo.merge([twoCols])
                    }, React.createElement("div", undefined, React.createElement("h2", undefined, Utils$RescriptMonorepo.str("Easier Deployment")), React.createElement("p", undefined, Utils$RescriptMonorepo.str("Deploy web apps of all kinds, from large scale enterprise APIs to static websites for individuals. Fill out the form to try a demo of our platform")), React.createElement(Link, {
                              href: "/",
                              children: React.createElement("a", {
                                    className: Tailwind$RescriptMonorepo.merge([
                                          a,
                                          aHover
                                        ])
                                  }, Utils$RescriptMonorepo.str("Read More"))
                            }), React.createElement(Ion$RescriptMonorepo.Outline.add, {})), React.createElement("div", undefined, React.createElement("h2", undefined, Utils$RescriptMonorepo.str("Request a Demo")), React.createElement("form", undefined, React.createElement("label", undefined, React.createElement("input", {
                                      id: "",
                                      name: "name",
                                      placeholder: "Name",
                                      required: true,
                                      type: "text"
                                    })), React.createElement("label", undefined, React.createElement("input", {
                                      id: "",
                                      name: "company",
                                      placeholder: "Company Name",
                                      required: true,
                                      type: "text"
                                    })), React.createElement("label", undefined, React.createElement("input", {
                                      id: "",
                                      name: "email",
                                      placeholder: "Email",
                                      required: true,
                                      type: "email"
                                    })), React.createElement("button", {
                                  type: "submit"
                                }, Utils$RescriptMonorepo.str("Send")))))));
}

export {
  $$default ,
  $$default as default,
  
}
/* h1 Not a pure module */
