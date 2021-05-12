// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Tailwind$RescriptMonorepo from "../../styles/tailwind/Tailwind.mjs";

var elementStyles = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.w("full"),
      Tailwind$RescriptMonorepo.mt("v6"),
      Tailwind$RescriptMonorepo.textLeft,
      Tailwind$RescriptMonorepo.borderCollapse
    ]);

var Styles = {
  elementStyles: elementStyles
};

function Table(Props) {
  var children = Props.children;
  var classNameOpt = Props.className;
  var className = classNameOpt !== undefined ? classNameOpt : "";
  return React.createElement("table", {
              className: Tailwind$RescriptMonorepo.merge([
                    elementStyles,
                    className
                  ])
            }, children);
}

var make = Table;

export {
  Styles ,
  make ,
  
}
/* elementStyles Not a pure module */
