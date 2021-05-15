// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Tailwind$RescriptMonorepo from "../../styles/tailwind/Tailwind.mjs";

var elementStyles = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.mb("v6"),
      Tailwind$RescriptMonorepo.text("lg"),
      Tailwind$RescriptMonorepo.fontWeight("v700")
    ]);

var Styles = {
  elementStyles: elementStyles
};

function H6Mdx(Props) {
  var children = Props.children;
  var classNameOpt = Props.className;
  var className = classNameOpt !== undefined ? classNameOpt : "";
  return React.createElement("h6", {
              className: Tailwind$RescriptMonorepo.merge([
                    elementStyles,
                    className
                  ])
            }, children);
}

var make = H6Mdx;

export {
  Styles ,
  make ,
  
}
/* elementStyles Not a pure module */