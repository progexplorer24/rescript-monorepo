// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Tailwind$RescriptMonorepo from "../../styles/tailwind/Tailwind.mjs";

var elementStyles = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.mb("v4")]);

var bulletStyles = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.w("v3"),
      Tailwind$RescriptMonorepo.borderColor("indigo800"),
      Tailwind$RescriptMonorepo.borderL("v1"),
      Tailwind$RescriptMonorepo.borderR("v1"),
      Tailwind$RescriptMonorepo.rounded("full"),
      Tailwind$RescriptMonorepo.bg(undefined, "indigo50"),
      Tailwind$RescriptMonorepo.itemsCenter,
      Tailwind$RescriptMonorepo.justifyCenter,
      Tailwind$RescriptMonorepo.h("v3"),
      Tailwind$RescriptMonorepo.mr("v4"),
      Tailwind$RescriptMonorepo.inlineFlex
    ]);

var Styles = {
  elementStyles: elementStyles,
  bulletStyles: bulletStyles
};

function LiMdxUnordered(Props) {
  var children = Props.children;
  var classNameOpt = Props.className;
  var className = classNameOpt !== undefined ? classNameOpt : "";
  return React.createElement("li", {
              className: Tailwind$RescriptMonorepo.merge([
                    elementStyles,
                    className
                  ])
            }, React.createElement("span", {
                  className: bulletStyles
                }), children);
}

var make = LiMdxUnordered;

export {
  Styles ,
  make ,
  
}
/* elementStyles Not a pure module */
