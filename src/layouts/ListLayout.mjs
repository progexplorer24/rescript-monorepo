// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";
import * as Tag$RescriptMonorepo from "../components/blog/Tag.mjs";
import * as Link$RescriptMonorepo from "../components/blog/Link.mjs";
import * as Utils$RescriptMonorepo from "../utils/Utils.mjs";
import * as Tailwind$RescriptMonorepo from "../styles/tailwind/Tailwind.mjs";
import * as Pagination$RescriptMonorepo from "../components/blog/Pagination.mjs";
import * as Mdx__helpers$RescriptMonorepo from "../server/Mdx__helpers.mjs";
import * as Theme__Colors$RescriptMonorepo from "../styles/theme/private_modules/Theme__Colors.mjs";

var divider = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.divideY(undefined, "gray300", 1)]);

var searchSection = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.pt(6),
      Tailwind$RescriptMonorepo.pb(8),
      Tailwind$RescriptMonorepo.spaceY(2),
      Tailwind$RescriptMonorepo.md([Tailwind$RescriptMonorepo.spaceY(5)])
    ]);

var h1 = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.text("xl3"),
      Tailwind$RescriptMonorepo.fontWeight(800),
      Tailwind$RescriptMonorepo.leading(9),
      Tailwind$RescriptMonorepo.tracking("tight"),
      Tailwind$RescriptMonorepo.textColor(undefined, "gray900"),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.textColor(undefined, "gray100")]),
      Tailwind$RescriptMonorepo.sm([
            Tailwind$RescriptMonorepo.text("xl4"),
            Tailwind$RescriptMonorepo.leading(10)
          ]),
      Tailwind$RescriptMonorepo.md([
            Tailwind$RescriptMonorepo.text("xl6"),
            Tailwind$RescriptMonorepo.leading(14)
          ])
    ]);

var inputWrapper = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.relative,
      Tailwind$RescriptMonorepo.maxW("lg")
    ]);

var input = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.block,
      Tailwind$RescriptMonorepo.w("full"),
      Tailwind$RescriptMonorepo.px(4),
      Tailwind$RescriptMonorepo.py(2),
      Tailwind$RescriptMonorepo.textColor(undefined, "gray900"),
      Tailwind$RescriptMonorepo.bg(undefined, "white"),
      Tailwind$RescriptMonorepo.border(1),
      Tailwind$RescriptMonorepo.borderColor(undefined, "gray300"),
      Tailwind$RescriptMonorepo.rounded("md"),
      Tailwind$RescriptMonorepo.placeholder(undefined, "gray500"),
      Tailwind$RescriptMonorepo.dark([
            Tailwind$RescriptMonorepo.borderColor(undefined, "gray900"),
            Tailwind$RescriptMonorepo.bg(undefined, "gray800"),
            Tailwind$RescriptMonorepo.textColor(undefined, "gray100")
          ]),
      Tailwind$RescriptMonorepo.focus([
            Tailwind$RescriptMonorepo.ring(undefined, undefined, undefined, undefined, Theme__Colors$RescriptMonorepo.toColor(undefined, "blue500")),
            Tailwind$RescriptMonorepo.borderColor(undefined, "blue500")
          ])
    ]);

var searchIcon = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.absolute,
      Tailwind$RescriptMonorepo.w(5),
      Tailwind$RescriptMonorepo.h(5),
      Tailwind$RescriptMonorepo.textColor(undefined, "gray400"),
      Tailwind$RescriptMonorepo.right(3),
      Tailwind$RescriptMonorepo.top(3),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.textColor(undefined, "gray300")])
    ]);

var li = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.py(4)]);

var article = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.spaceY(2),
      Tailwind$RescriptMonorepo.xl([
            Tailwind$RescriptMonorepo.grid,
            Tailwind$RescriptMonorepo.gridCols(4),
            Tailwind$RescriptMonorepo.spaceY(0),
            Tailwind$RescriptMonorepo.itemsBaseline
          ])
    ]);

var dt = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.srOnly]);

var dd = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.text("base"),
      Tailwind$RescriptMonorepo.fontWeight(500),
      Tailwind$RescriptMonorepo.leading(6),
      Tailwind$RescriptMonorepo.textColor(undefined, "gray500"),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.textColor(undefined, "gray400")])
    ]);

var contentSection = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.spaceY(3),
      Tailwind$RescriptMonorepo.xl([Tailwind$RescriptMonorepo.col(3)])
    ]);

var h3Link = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.text("xl2"),
      Tailwind$RescriptMonorepo.fontWeight(700),
      Tailwind$RescriptMonorepo.leading(8),
      Tailwind$RescriptMonorepo.tracking("tight"),
      Tailwind$RescriptMonorepo.textColor(undefined, "gray900"),
      Tailwind$RescriptMonorepo.noUnderline,
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.textColor(undefined, "gray100")])
    ]);

var flexWrapper = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.flex,
      Tailwind$RescriptMonorepo.flexWrap,
      Tailwind$RescriptMonorepo.mt(1)
    ]);

var summary = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.textColor(undefined, "gray500"),
      Tailwind$RescriptMonorepo.maxW("none"),
      Tailwind$RescriptMonorepo.leadingFloat(1.75),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.textColor(undefined, "gray400")])
    ]);

var Styles = {
  divider: divider,
  searchSection: searchSection,
  h1: h1,
  inputWrapper: inputWrapper,
  input: input,
  searchIcon: searchIcon,
  li: li,
  article: article,
  dt: dt,
  dd: dd,
  contentSection: contentSection,
  h3Link: h3Link,
  flexWrapper: flexWrapper,
  summary: summary
};

function ListLayout(Props) {
  var posts = Props.posts;
  var title = Props.title;
  var initialDisplayPostsOpt = Props.initialDisplayPosts;
  var pagination = Props.pagination;
  var initialDisplayPosts = initialDisplayPostsOpt !== undefined ? initialDisplayPostsOpt : [];
  var match = React.useState(function () {
        return "";
      });
  var setSearchValue = match[1];
  var searchValue = match[0];
  var filteredBlogPosts = posts.filter(function (frontMatter) {
        var searchContent = frontMatter.title + frontMatter.summary + frontMatter.tags.join(" ");
        return searchContent.toLocaleLowerCase().includes(searchValue.toLocaleLowerCase());
      });
  var onChange = function (e) {
    var value = e.target.value;
    return Curry._1(setSearchValue, (function (param) {
                  return value;
                }));
  };
  var isEmptyList = function (list) {
    if (list.length === 0) {
      return React.createElement("li", undefined, Utils$RescriptMonorepo.str("No posts found."));
    } else {
      return null;
    }
  };
  var displayPosts = initialDisplayPosts.length > 0 && searchValue === "" ? initialDisplayPosts : filteredBlogPosts;
  var renderPosts = displayPosts.map(function (frontmatter) {
        var slug = frontmatter.slug;
        var date = frontmatter.date;
        return React.createElement("li", {
                    key: slug,
                    className: li
                  }, React.createElement("article", {
                        className: article
                      }, React.createElement("dl", undefined, React.createElement("dt", {
                                className: dt
                              }, Utils$RescriptMonorepo.str("Published on")), React.createElement("dd", {
                                className: dd
                              }, React.createElement("time", {
                                    dateTime: date
                                  }, Utils$RescriptMonorepo.str(Mdx__helpers$RescriptMonorepo.formatDateString(date))))), React.createElement("div", {
                            className: contentSection
                          }, React.createElement("div", undefined, React.createElement("h3", undefined, React.createElement(Link$RescriptMonorepo.make, {
                                        children: Utils$RescriptMonorepo.str(frontmatter.title),
                                        href: slug,
                                        className: h3Link
                                      })), React.createElement("div", {
                                    className: flexWrapper
                                  }, frontmatter.tags.map(function (tag) {
                                        return React.createElement(Tag$RescriptMonorepo.make, {
                                                    text: tag,
                                                    key: tag
                                                  });
                                      }))), React.createElement("div", {
                                className: summary
                              }, Utils$RescriptMonorepo.str(frontmatter.summary)))));
      });
  var renderPagination = pagination.totalPages > 1 && searchValue === "" ? React.createElement(Pagination$RescriptMonorepo.make, {
          totalPages: pagination.totalPages,
          currentPage: pagination.currentPage
        }) : null;
  return React.createElement(React.Fragment, undefined, React.createElement("div", {
                  className: divider
                }, React.createElement("div", {
                      className: searchSection
                    }, React.createElement("h1", {
                          className: h1
                        }, Utils$RescriptMonorepo.str(title)), React.createElement("div", {
                          className: inputWrapper
                        }, React.createElement("input", {
                              "aria-label": "Search articles",
                              className: input,
                              placeholder: "Search articles",
                              type: "text",
                              onChange: onChange
                            }), React.createElement("svg", {
                              className: searchIcon,
                              fill: "none",
                              stroke: "currentColor",
                              viewBox: "0 0 24 24",
                              xmlns: "http://www.w3.org/2000/svg"
                            }, React.createElement("path", {
                                  d: "M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z",
                                  strokeLinecap: "round",
                                  strokeLinejoin: "round",
                                  strokeWidth: "2"
                                })))), React.createElement("ul", undefined, isEmptyList(filteredBlogPosts), renderPosts)), renderPagination);
}

var make = ListLayout;

export {
  Styles ,
  make ,
  
}
/* divider Not a pure module */