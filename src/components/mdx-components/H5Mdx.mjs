// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Tailwind$RescriptMonorepo from "../../styles/tailwind/Tailwind.mjs";

var elementStyles = Tailwind$RescriptMonorepo.twStyle([
      Tailwind$RescriptMonorepo.mb(6),
      Tailwind$RescriptMonorepo.text("lg"),
      Tailwind$RescriptMonorepo.fontWeight(900),
      Tailwind$RescriptMonorepo.tracking("wide")
    ]);

var Styles = {
  elementStyles: elementStyles
};

function H5Mdx(Props) {
  var children = Props.children;
  var classNameOpt = Props.className;
  var className = classNameOpt !== undefined ? classNameOpt : "";
  return React.createElement("h5", {
              className: Tailwind$RescriptMonorepo.merge([
                    elementStyles,
                    className
                  ])
            }, children);
}

var make = H5Mdx;

export {
  Styles ,
  make ,
  
}
/* elementStyles Not a pure module */
