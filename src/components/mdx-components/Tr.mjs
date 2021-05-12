// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Tailwind$RescriptMonorepo from "../../styles/tailwind/Tailwind.mjs";

var elementStyles = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.borderT("v1"),
      Tailwind$RescriptMonorepo.borderB("v1"),
      Tailwind$RescriptMonorepo.borderColor("gray400")
    ]);

var Styles = {
  elementStyles: elementStyles
};

function Tr(Props) {
  var children = Props.children;
  var classNameOpt = Props.className;
  var className = classNameOpt !== undefined ? classNameOpt : "";
  return React.createElement("tr", {
              className: Tailwind$RescriptMonorepo.merge([
                    elementStyles,
                    className
                  ])
            }, children);
}

var make = Tr;

export {
  Styles ,
  make ,
  
}
/* elementStyles Not a pure module */
