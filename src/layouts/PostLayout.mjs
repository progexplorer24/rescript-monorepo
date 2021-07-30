// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Mdx$RescriptMonorepo from "../components/blog/Mdx.mjs";
import * as Utils$RescriptMonorepo from "../utils/Utils.mjs";
import * as Tailwind$RescriptMonorepo from "../styles/tailwind/Tailwind.mjs";
import * as PageTitle$RescriptMonorepo from "../components/blog/PageTitle.mjs";
import * as SiteMetadata$RescriptMonorepo from "../data/SiteMetadata.mjs";
import * as LayoutWrapper$RescriptMonorepo from "../components/blog/LayoutWrapper.mjs";
import * as SectionContainer$RescriptMonorepo from "../components/blog/SectionContainer.mjs";

var header = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.pt(6),
      Tailwind$RescriptMonorepo.xl([Tailwind$RescriptMonorepo.pb(6)])
    ]);

var div1 = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.spaceY(1),
      Tailwind$RescriptMonorepo.textCenter
    ]);

var dl = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.spaceY(10)]);

var dt = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.srOnly]);

var dd = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.text("base"),
      Tailwind$RescriptMonorepo.fontWeight(500),
      Tailwind$RescriptMonorepo.leading(6),
      Tailwind$RescriptMonorepo.textColor(undefined, "gray500")
    ]);

var div2 = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.divideY(undefined, undefined, 1),
      Tailwind$RescriptMonorepo.borderColor(undefined, "gray200"),
      Tailwind$RescriptMonorepo.xl([
            Tailwind$RescriptMonorepo.divideY(undefined, undefined, 0),
            Tailwind$RescriptMonorepo.grid,
            Tailwind$RescriptMonorepo.gridCols(4),
            Tailwind$RescriptMonorepo.gapX(6)
          ])
    ]);

var dlAuthors = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.pt(6),
      Tailwind$RescriptMonorepo.pb(10),
      Tailwind$RescriptMonorepo.xl([
            Tailwind$RescriptMonorepo.pt(11),
            Tailwind$RescriptMonorepo.borderB(1),
            Tailwind$RescriptMonorepo.borderColor(undefined, "gray500")
          ])
    ]);

var dtAuthors = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.srOnly]);

var ul = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.flex,
      Tailwind$RescriptMonorepo.justifyCenter,
      Tailwind$RescriptMonorepo.spaceX(8),
      Tailwind$RescriptMonorepo.sm([Tailwind$RescriptMonorepo.spaceX(12)]),
      Tailwind$RescriptMonorepo.xl([
            Tailwind$RescriptMonorepo.spaceX(0),
            Tailwind$RescriptMonorepo.block,
            Tailwind$RescriptMonorepo.spaceY(8)
          ])
    ]);

var li = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.flex,
      Tailwind$RescriptMonorepo.itemsCenter,
      Tailwind$RescriptMonorepo.spaceX(2)
    ]);

var avatar = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.w(14),
      Tailwind$RescriptMonorepo.h(14),
      Tailwind$RescriptMonorepo.rounded("full")
    ]);

var dlAuthors2 = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.text("sm"),
      Tailwind$RescriptMonorepo.fontWeight(500),
      Tailwind$RescriptMonorepo.leading(5),
      Tailwind$RescriptMonorepo.whitespaceNowrap
    ]);

var ddAuthors = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.textColor(undefined, "gray900")]);

var mdxWrapper = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.divideY(undefined, undefined, 1),
      Tailwind$RescriptMonorepo.borderColor(undefined, "gray200"),
      Tailwind$RescriptMonorepo.xl([
            Tailwind$RescriptMonorepo.pb(0),
            Tailwind$RescriptMonorepo.col(3),
            Tailwind$RescriptMonorepo.row(2)
          ])
    ]);

var Styles = {
  header: header,
  div1: div1,
  dl: dl,
  dt: dt,
  dd: dd,
  div2: div2,
  dlAuthors: dlAuthors,
  dtAuthors: dtAuthors,
  ul: ul,
  li: li,
  avatar: avatar,
  dlAuthors2: dlAuthors2,
  ddAuthors: ddAuthors,
  mdxWrapper: mdxWrapper
};

var postDateTemplate = {
  weekday: "long",
  year: "numeric",
  month: "long",
  day: "numeric"
};

function editUrl(fileName) {
  return SiteMetadata$RescriptMonorepo.metadata.siteRepo + "/blob/master/data/blog/" + fileName;
}

function discussUrl(slug) {
  return "https://mobile.twitter.com/search?q=" + encodeURIComponent(SiteMetadata$RescriptMonorepo.metadata.siteUrl + "/blog/" + slug);
}

function PostLayout(Props) {
  var children = Props.children;
  var frontmatter = Props.frontmatter;
  var slug = frontmatter.slug;
  var date = frontmatter.date;
  return React.createElement(SectionContainer$RescriptMonorepo.make, {
              children: null
            }, React.createElement(LayoutWrapper$RescriptMonorepo.Navigation.make, {}), React.createElement("article", undefined, React.createElement("div", undefined, React.createElement("header", {
                          className: header
                        }, React.createElement("div", {
                              className: div1
                            }, React.createElement("dl", {
                                  className: dl
                                }, React.createElement("div", undefined, React.createElement("dt", {
                                          className: dt
                                        }, Utils$RescriptMonorepo.str("Published on")), React.createElement("dd", {
                                          className: dd
                                        }, React.createElement("time", {
                                              dateTime: date
                                            }, Utils$RescriptMonorepo.str(new Date(date).toLocaleDateString(SiteMetadata$RescriptMonorepo.metadata.locale, postDateTemplate)))))), React.createElement("div", undefined, React.createElement(PageTitle$RescriptMonorepo.make, {
                                      children: Utils$RescriptMonorepo.str(frontmatter.title)
                                    })))), React.createElement("div", {
                          className: div2
                        }, React.createElement("dl", {
                              className: dlAuthors
                            }, React.createElement("dt", {
                                  className: dtAuthors
                                }, Utils$RescriptMonorepo.str("Authors")), React.createElement("dd", undefined, React.createElement("ul", {
                                      className: ul
                                    }, React.createElement("li", {
                                          className: li
                                        }, React.createElement("img", {
                                              className: avatar,
                                              alt: "avatar",
                                              src: SiteMetadata$RescriptMonorepo.metadata.image
                                            }), React.createElement("dl", {
                                              className: dlAuthors2
                                            }, React.createElement("dt", {
                                                  className: dtAuthors
                                                }, Utils$RescriptMonorepo.str("Name")), React.createElement("dd", {
                                                  className: ddAuthors
                                                }, Utils$RescriptMonorepo.str(SiteMetadata$RescriptMonorepo.metadata.author)), React.createElement("dt", {
                                                  className: dtAuthors
                                                }, Utils$RescriptMonorepo.str("Twitter")), React.createElement("dd", undefined, React.createElement(Mdx$RescriptMonorepo.a, {
                                                      children: Utils$RescriptMonorepo.str(SiteMetadata$RescriptMonorepo.metadata.twitter.replace("https://twitter.com/", "@")),
                                                      href: SiteMetadata$RescriptMonorepo.metadata.twitter
                                                    }))))))), React.createElement("div", {
                              className: mdxWrapper
                            }, React.createElement("div", undefined, children), React.createElement("div", {
                                  className: "pt-6 pb-6 text-sm text-gray-700 dark:text-gray-300"
                                }, React.createElement(Mdx$RescriptMonorepo.a, {
                                      children: Utils$RescriptMonorepo.str("Discuss on Twitter"),
                                      href: discussUrl(slug)
                                    }), Utils$RescriptMonorepo.str(" • "), React.createElement(Mdx$RescriptMonorepo.a, {
                                      children: Utils$RescriptMonorepo.str("View on GitHub"),
                                      href: editUrl(slug + ".mdx")
                                    })))))));
}

var make = PostLayout;

export {
  Styles ,
  postDateTemplate ,
  editUrl ,
  discussUrl ,
  make ,
  
}
/* header Not a pure module */
