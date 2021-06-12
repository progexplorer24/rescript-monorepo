// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import Link from "next/link";
import * as Utils$RescriptMonorepo from "../../utils/Utils.mjs";
import * as Tailwind$RescriptMonorepo from "../../styles/tailwind/Tailwind.mjs";
import * as Mdx__helpers$RescriptMonorepo from "../../lib/Mdx__helpers.mjs";

var elementStyles = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.mr("v3"),
      Tailwind$RescriptMonorepo.text("sm"),
      Tailwind$RescriptMonorepo.fontWeight("v500"),
      Tailwind$RescriptMonorepo.uppercase,
      Tailwind$RescriptMonorepo.hover([Tailwind$RescriptMonorepo.textColor(undefined, "blue600")])
    ]);

var Styles = {
  elementStyles: elementStyles
};

function Tag(Props) {
  var textOpt = Props.text;
  var classNameOpt = Props.className;
  var text = textOpt !== undefined ? textOpt : "";
  var className = classNameOpt !== undefined ? classNameOpt : "";
  return React.createElement(Link, {
              href: "/tags/" + Mdx__helpers$RescriptMonorepo.kebabCase(text),
              children: React.createElement("a", {
                    className: Tailwind$RescriptMonorepo.merge([
                          elementStyles,
                          className
                        ])
                  }, Utils$RescriptMonorepo.str(text))
            });
}

var make = Tag;

export {
  Styles ,
  make ,
  
}
/* elementStyles Not a pure module */
