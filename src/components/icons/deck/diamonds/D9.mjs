// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Tailwind$RescriptMonorepo from "../../../../styles/tailwind/Tailwind.mjs";
import * as CardDefaults$RescriptMonorepo from "../CardDefaults.mjs";

var elementStyles = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.w(20)]);

var Styles = {
  elementStyles: elementStyles
};

function D9(Props) {
  var backgroundFillOpt = Props.backgroundFill;
  var cardBorderOpt = Props.cardBorder;
  var strokeWidthOpt = Props.strokeWidth;
  var cardTextColorOpt = Props.cardTextColor;
  var suitColorOpt = Props.suitColor;
  var backgroundFill = backgroundFillOpt !== undefined ? backgroundFillOpt : CardDefaults$RescriptMonorepo.backgroundFill;
  var cardBorder = cardBorderOpt !== undefined ? cardBorderOpt : CardDefaults$RescriptMonorepo.cardBorder;
  var strokeWidth = strokeWidthOpt !== undefined ? strokeWidthOpt : CardDefaults$RescriptMonorepo.strokeWidth;
  var cardTextColor = cardTextColorOpt !== undefined ? cardTextColorOpt : CardDefaults$RescriptMonorepo.redTextColor;
  var suitColor = suitColorOpt !== undefined ? suitColorOpt : CardDefaults$RescriptMonorepo.redTextColor;
  return React.createElement("svg", {
              className: elementStyles,
              fill: "none",
              viewBox: "0 0 348 462",
              xmlns: "http://www.w3.org/2000/svg"
            }, React.createElement("g", {
                  filter: "url(#filter0_d)"
                }, React.createElement("rect", {
                      height: "394",
                      width: "280",
                      fill: backgroundFill,
                      rx: "20",
                      x: "34",
                      y: "29"
                    }), React.createElement("rect", {
                      height: "393",
                      width: "279",
                      rx: "19.5",
                      stroke: cardBorder,
                      strokeWidth: String(strokeWidth),
                      x: "34.5",
                      y: "29.5"
                    })), React.createElement("path", {
                  d: "M102.805 102.266C99.862 105.156 96.4245 106.602 92.4922 106.602C87.4661 106.602 83.4427 104.883 80.4219 101.445C77.401 97.9818 75.8906 93.3203 75.8906 87.4609C75.8906 83.737 76.6979 80.3255 78.3125 77.2266C79.9531 74.1016 82.2318 71.6797 85.1484 69.9609C88.0651 68.2161 91.3464 67.3437 94.9922 67.3437C98.7422 67.3437 102.076 68.2812 104.992 70.1562C107.909 72.0312 110.174 74.7266 111.789 78.2422C113.404 81.7578 114.224 85.7812 114.25 90.3125V94.4922C114.25 103.971 111.893 111.419 107.18 116.836C102.466 122.253 95.7865 125.143 87.1406 125.508L84.3672 125.547V116.133L86.8672 116.094C96.6849 115.651 101.997 111.042 102.805 102.266ZM95.2656 97.9687C97.0885 97.9687 98.651 97.5 99.9531 96.5625C101.281 95.625 102.284 94.4922 102.961 93.1641V88.5156C102.961 84.6875 102.232 81.7187 100.773 79.6094C99.3151 77.5 97.362 76.4453 94.9141 76.4453C92.6484 76.4453 90.7865 77.487 89.3281 79.5703C87.8698 81.6276 87.1406 84.2187 87.1406 87.3437C87.1406 90.4427 87.8437 92.9948 89.25 95C90.6823 96.9792 92.6875 97.9687 95.2656 97.9687Z",
                  fill: cardTextColor
                }), React.createElement("path", {
                  clipRule: "evenodd",
                  d: "M67.2307 185.628L96.5044 215.831L125.778 185.628L96.5044 155.425L67.2307 185.628Z",
                  fill: suitColor,
                  fillRule: "evenodd"
                }), React.createElement("defs", undefined, React.createElement("filter", {
                      id: "filter0_d",
                      height: "462",
                      width: "348",
                      colorInterpolationFilters: "sRGB",
                      filterUnits: "userSpaceOnUse",
                      x: "0",
                      y: "0"
                    }, React.createElement("feFlood", {
                          floodOpacity: "0",
                          result: "BackgroundImageFix"
                        }), React.createElement("feColorMatrix", {
                          type: "matrix",
                          in: "SourceAlpha",
                          values: "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"
                        }), React.createElement("feOffset", {
                          dy: "5"
                        }), React.createElement("feGaussianBlur", {
                          stdDeviation: "17"
                        }), React.createElement("feColorMatrix", {
                          type: "matrix",
                          values: "0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.1 0"
                        }), React.createElement("feBlend", {
                          in2: "BackgroundImageFix",
                          mode: "normal",
                          result: "effect1_dropShadow"
                        }), React.createElement("feBlend", {
                          in: "SourceGraphic",
                          in2: "effect1_dropShadow",
                          mode: "normal",
                          result: "shape"
                        }))));
}

var make = D9;

export {
  Styles ,
  make ,
  
}
/* elementStyles Not a pure module */
