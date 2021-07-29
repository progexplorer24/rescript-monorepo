// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Belt_Array from "rescript/lib/es6/belt_Array.js";
import * as Mdx$RescriptMonorepo from "./components/blog/Mdx.mjs";
import * as Tag$RescriptMonorepo from "./components/blog/Tag.mjs";
import * as Utils$RescriptMonorepo from "./utils/Utils.mjs";
import * as Tailwind$RescriptMonorepo from "./styles/tailwind/Tailwind.mjs";
import * as Mdx__helpers$RescriptMonorepo from "./server/Mdx__helpers.mjs";
import * as SiteMetadata$RescriptMonorepo from "./data/SiteMetadata.mjs";

var wrapper = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.divideY(undefined, "gray200", 1),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.divideY(undefined, "gray700", 1)])
    ]);

var wrapper2 = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.pt(0),
      Tailwind$RescriptMonorepo.pb(8),
      Tailwind$RescriptMonorepo.spaceY(2),
      Tailwind$RescriptMonorepo.md([Tailwind$RescriptMonorepo.spaceY(5)])
    ]);

var h1 = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.text("xl3"),
      Tailwind$RescriptMonorepo.fontWeight(800),
      Tailwind$RescriptMonorepo.leading(9),
      Tailwind$RescriptMonorepo.tracking("tight"),
      Tailwind$RescriptMonorepo.sm([
            Tailwind$RescriptMonorepo.text("xl4"),
            Tailwind$RescriptMonorepo.leading(10)
          ]),
      Tailwind$RescriptMonorepo.md([
            Tailwind$RescriptMonorepo.text("xl6"),
            Tailwind$RescriptMonorepo.leading(14)
          ]),
      Tailwind$RescriptMonorepo.textColor(undefined, "gray900"),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.textColor(undefined, "gray100")])
    ]);

var h2 = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.text("xl2"),
      Tailwind$RescriptMonorepo.fontWeight(700),
      Tailwind$RescriptMonorepo.leading(8),
      Tailwind$RescriptMonorepo.tracking("tight"),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.textColor(undefined, "gray100")])
    ]);

var p = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.text("lg"),
      Tailwind$RescriptMonorepo.leading(7),
      Tailwind$RescriptMonorepo.textColor(undefined, "gray500"),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.textColor(undefined, "gray400")])
    ]);

var ul = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.divideY(undefined, "gray200", 1),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.divideY(undefined, "gray700", 1)])
    ]);

var li = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.py(12)]);

var dt = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.srOnly]);

var dd = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.text("base"),
      Tailwind$RescriptMonorepo.fontWeight(500),
      Tailwind$RescriptMonorepo.leading(6),
      Tailwind$RescriptMonorepo.textColor(undefined, "gray500"),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.textColor(undefined, "gray400")])
    ]);

var headerLink = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.textColor(undefined, "gray900"),
      Tailwind$RescriptMonorepo.fontWeight(700),
      Tailwind$RescriptMonorepo.noUnderline,
      Tailwind$RescriptMonorepo.textColor(undefined, "gray900"),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.textColor(undefined, "gray100")])
    ]);

var summary = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.maxW("none"),
      Tailwind$RescriptMonorepo.textColor(undefined, "gray400"),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.textColor(undefined, "gray500")])
    ]);

var readMoreSection = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.text("base"),
      Tailwind$RescriptMonorepo.fontWeight(500),
      Tailwind$RescriptMonorepo.leading(6)
    ]);

var readMoreLink = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.textColor(undefined, "blue600"),
      Tailwind$RescriptMonorepo.hover([Tailwind$RescriptMonorepo.textColor(undefined, "blue700")]),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.hover([Tailwind$RescriptMonorepo.textColor(undefined, "blue400")])])
    ]);

var allPosts = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.flex,
      Tailwind$RescriptMonorepo.justifyEnd,
      Tailwind$RescriptMonorepo.text("base"),
      Tailwind$RescriptMonorepo.fontWeight(500),
      Tailwind$RescriptMonorepo.leading(6)
    ]);

function $$default(props) {
  var allFrontmatter = props.allFrontmatter;
  var description = props.metadata.description;
  var preparePostListArray = function (displayLimitOpt, postsArray) {
    var displayLimit = displayLimitOpt !== undefined ? displayLimitOpt : 5;
    if (postsArray.length === 0) {
      return [];
    } else {
      return Belt_Array.slice(postsArray, 0, displayLimit);
    }
  };
  var array = preparePostListArray(undefined, allFrontmatter);
  var latestPosts = array.length !== 0 ? React.createElement("ul", {
          className: ul
        }, Belt_Array.map(array, (function (frontmatter) {
                var slug = frontmatter.slug;
                var title = frontmatter.title;
                return React.createElement("li", {
                            key: slug,
                            className: li
                          }, React.createElement("article", undefined, React.createElement("div", undefined, React.createElement("dl", undefined, React.createElement("dt", {
                                            className: dt
                                          }, Utils$RescriptMonorepo.str("Published on")), React.createElement("dd", {
                                            className: dd
                                          }, Utils$RescriptMonorepo.str(frontmatter.date))), React.createElement("div", undefined, React.createElement("div", undefined, React.createElement("div", undefined, React.createElement("h2", {
                                                    className: h2
                                                  }, React.createElement(Mdx$RescriptMonorepo.a, {
                                                        children: Utils$RescriptMonorepo.str(title),
                                                        href: slug,
                                                        className: headerLink
                                                      })), React.createElement("div", undefined, Belt_Array.map(frontmatter.tags, (function (tag) {
                                                          return React.createElement(Tag$RescriptMonorepo.make, {
                                                                      text: tag,
                                                                      key: tag
                                                                    });
                                                        })))), React.createElement("div", {
                                                className: summary
                                              }, Utils$RescriptMonorepo.str(frontmatter.summary))), React.createElement("div", {
                                            className: readMoreSection
                                          }, React.createElement(Mdx$RescriptMonorepo.a, {
                                                children: Utils$RescriptMonorepo.str("Read more " + Utils$RescriptMonorepo.rarr),
                                                href: slug,
                                                className: readMoreLink,
                                                ariaLabel: "Read " + title
                                              }))))));
              }))) : React.createElement(React.Fragment, undefined);
  return React.createElement(React.Fragment, undefined, React.createElement("div", {
                  className: wrapper
                }, React.createElement("div", {
                      className: wrapper2
                    }, React.createElement("h1", {
                          className: h1
                        }, Utils$RescriptMonorepo.str("Latest")), React.createElement("p", {
                          className: p
                        }, Utils$RescriptMonorepo.str(description))), latestPosts), allFrontmatter.length > 5 ? React.createElement("div", {
                    className: allPosts
                  }, React.createElement(Mdx$RescriptMonorepo.a, {
                        children: Utils$RescriptMonorepo.str("All Posts " + Utils$RescriptMonorepo.rarr),
                        href: "/blog",
                        className: readMoreLink,
                        ariaLabel: "all posts"
                      })) : null);
}

function getStaticProps(_ctx) {
  var sortedFrontMatter = Mdx__helpers$RescriptMonorepo.getBlogPostsFromLatest(undefined, undefined, undefined);
  var props = {
    allFrontmatter: sortedFrontMatter,
    metadata: SiteMetadata$RescriptMonorepo.metadata
  };
  return Promise.resolve({
              props: props
            });
}

export {
  $$default ,
  $$default as default,
  getStaticProps ,
  
}
/* wrapper Not a pure module */
