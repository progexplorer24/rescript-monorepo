// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Tailwind$RescriptMonorepo from "../../styles/tailwind/Tailwind.mjs";

var elementStyles = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.rounded("default"),
      Tailwind$RescriptMonorepo.p(1),
      Tailwind$RescriptMonorepo.bg(undefined, "indigo50"),
      Tailwind$RescriptMonorepo.textColor(undefined, "indigo800"),
      Tailwind$RescriptMonorepo.fontMono,
      Tailwind$RescriptMonorepo.fontWeight(700)
    ]);

var Styles = {
  elementStyles: elementStyles
};

function InlineCodeMdx(Props) {
  var children = Props.children;
  var classNameOpt = Props.className;
  var className = classNameOpt !== undefined ? classNameOpt : "";
  return React.createElement("code", {
              className: Tailwind$RescriptMonorepo.merge([
                    elementStyles,
                    className
                  ])
            }, children);
}

var make = InlineCodeMdx;

export {
  Styles ,
  make ,
  
}
/* elementStyles Not a pure module */
