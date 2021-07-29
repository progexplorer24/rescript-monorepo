// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Link$RescriptMonorepo from "./Link.mjs";
import * as Image$RescriptMonorepo from "./Image.mjs";
import * as Utils$RescriptMonorepo from "../../utils/Utils.mjs";
import * as Tailwind$RescriptMonorepo from "../../styles/tailwind/Tailwind.mjs";

var mainWrapper = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.p(4),
      Tailwind$RescriptMonorepo.maxWPx(544),
      Tailwind$RescriptMonorepo.md([Tailwind$RescriptMonorepo.w("v1By2")])
    ]);

var card = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.h("full"),
      Tailwind$RescriptMonorepo.overflowHidden,
      Tailwind$RescriptMonorepo.border(2),
      Tailwind$RescriptMonorepo.borderColor(0.6, "gray200"),
      Tailwind$RescriptMonorepo.rounded("md"),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.borderColor(undefined, "gray700")])
    ]);

var image = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.objectCover,
      Tailwind$RescriptMonorepo.objectCenter,
      Tailwind$RescriptMonorepo.lg([Tailwind$RescriptMonorepo.h(48)]),
      Tailwind$RescriptMonorepo.md([Tailwind$RescriptMonorepo.h(36)])
    ]);

var descriptionSection = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.p(6)]);

var h2 = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.mb(3)]);

var p = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.mb(3),
      Tailwind$RescriptMonorepo.textColor(undefined, "gray500"),
      Tailwind$RescriptMonorepo.maxW("none"),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.textColor(undefined, "gray400")])
    ]);

var bottomLink = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.text("base"),
      Tailwind$RescriptMonorepo.fontWeight(500),
      Tailwind$RescriptMonorepo.leading(6),
      Tailwind$RescriptMonorepo.textColor(undefined, "blue500"),
      Tailwind$RescriptMonorepo.hover([Tailwind$RescriptMonorepo.textColor(undefined, "blue600")]),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.hover([Tailwind$RescriptMonorepo.textColor(undefined, "blue400")])])
    ]);

var linkStyles = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.noUnderline,
      Tailwind$RescriptMonorepo.text("xl2"),
      Tailwind$RescriptMonorepo.fontWeight(700),
      Tailwind$RescriptMonorepo.leading(8),
      Tailwind$RescriptMonorepo.tracking("tight"),
      Tailwind$RescriptMonorepo.dark([Tailwind$RescriptMonorepo.textColor(undefined, "gray100")])
    ]);

var Styles = {
  mainWrapper: mainWrapper,
  card: card,
  image: image,
  descriptionSection: descriptionSection,
  h2: h2,
  p: p,
  bottomLink: bottomLink,
  linkStyles: linkStyles
};

function Card(Props) {
  var title = Props.title;
  var description = Props.description;
  var imgSrc = Props.imgSrc;
  var href = Props.href;
  var renderCard = href !== undefined ? React.createElement(Link$RescriptMonorepo.make, {
          children: React.createElement(Image$RescriptMonorepo.make, {
                src: imgSrc,
                alt: title,
                width: 544,
                height: 306,
                className: image
              }),
          href: href,
          ariaLabel: "Link to " + title
        }) : React.createElement(Image$RescriptMonorepo.make, {
          src: imgSrc,
          alt: title,
          width: 544,
          height: 306,
          className: image
        });
  var renderTitle = href !== undefined ? React.createElement("h2", {
          className: h2
        }, React.createElement(Link$RescriptMonorepo.make, {
              children: Utils$RescriptMonorepo.str(title),
              href: href,
              className: linkStyles,
              ariaLabel: "Link to " + title
            })) : React.createElement("h2", {
          className: Tailwind$RescriptMonorepo.merge([
                h2,
                linkStyles
              ])
        }, Utils$RescriptMonorepo.str(title));
  var renderLink = href !== undefined ? React.createElement(Link$RescriptMonorepo.make, {
          children: Utils$RescriptMonorepo.str("Learn more " + Utils$RescriptMonorepo.rarr),
          href: href,
          className: bottomLink,
          ariaLabel: "Link to " + title
        }) : null;
  return React.createElement("div", {
              className: mainWrapper
            }, React.createElement("div", {
                  className: card
                }, renderCard, React.createElement("div", {
                      className: descriptionSection
                    }, renderTitle, React.createElement("p", {
                          className: p
                        }, Utils$RescriptMonorepo.str(description)), renderLink)));
}

var make = Card;

export {
  Styles ,
  make ,
  
}
/* mainWrapper Not a pure module */