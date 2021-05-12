// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Tailwind$RescriptMonorepo from "../../../../styles/tailwind/Tailwind.mjs";
import * as CardDefaults$RescriptMonorepo from "../CardDefaults.mjs";

var elementStyles = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.w("v20")]);

var Styles = {
  elementStyles: elementStyles
};

function CT(Props) {
  var backgroundFillOpt = Props.backgroundFill;
  var cardBorderOpt = Props.cardBorder;
  var strokeWidthOpt = Props.strokeWidth;
  var cardTextColorOpt = Props.cardTextColor;
  var suitColorOpt = Props.suitColor;
  var backgroundFill = backgroundFillOpt !== undefined ? backgroundFillOpt : CardDefaults$RescriptMonorepo.backgroundFill;
  var cardBorder = cardBorderOpt !== undefined ? cardBorderOpt : CardDefaults$RescriptMonorepo.cardBorder;
  var strokeWidth = strokeWidthOpt !== undefined ? strokeWidthOpt : CardDefaults$RescriptMonorepo.strokeWidth;
  var cardTextColor = cardTextColorOpt !== undefined ? cardTextColorOpt : CardDefaults$RescriptMonorepo.darkSuitColor;
  var suitColor = suitColorOpt !== undefined ? suitColorOpt : CardDefaults$RescriptMonorepo.darkSuitColor;
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
                  d: "M80.8516 125H69.5625V81.4844L56.0859 85.6641V76.4844L79.6406 68.0469H80.8516V125ZM137.648 101.484C137.648 109.349 136.021 115.365 132.766 119.531C129.51 123.698 124.745 125.781 118.469 125.781C112.271 125.781 107.531 123.737 104.25 119.648C100.969 115.56 99.2891 109.701 99.2109 102.07V91.6016C99.2109 83.6589 100.852 77.6302 104.133 73.5156C107.44 69.401 112.193 67.3437 118.391 67.3437C124.589 67.3437 129.328 69.388 132.609 73.4766C135.891 77.5391 137.57 83.3854 137.648 91.0156V101.484ZM126.359 90C126.359 85.2865 125.708 81.862 124.406 79.7266C123.13 77.5651 121.125 76.4844 118.391 76.4844C115.734 76.4844 113.768 77.513 112.492 79.5703C111.242 81.6016 110.578 84.7917 110.5 89.1406V102.969C110.5 107.604 111.125 111.055 112.375 113.32C113.651 115.56 115.682 116.68 118.469 116.68C121.229 116.68 123.221 115.599 124.445 113.437C125.669 111.276 126.307 107.969 126.359 103.516V90Z",
                  fill: cardTextColor
                }), React.createElement("path", {
                  clipRule: "evenodd",
                  d: "M110.755 176.288C109.056 176.288 107.437 176.659 105.961 177.328C107.347 175.139 108.161 172.487 108.161 169.627C108.161 162.122 102.571 156.037 95.6759 156.037C88.7809 156.037 83.1913 162.122 83.1913 169.627C83.1913 172.35 83.93 174.884 85.197 177.01C83.9372 176.545 82.5883 176.288 81.1841 176.288C74.2888 176.288 68.6995 182.373 68.6995 189.878C68.6995 197.383 74.2888 203.467 81.1841 203.467C82.7413 203.467 84.2308 203.154 85.6056 202.587C85.6053 202.59 91.4158 200.882 95.2354 193.315V197.871C95.2354 197.871 93.277 212.234 79.4706 213.806H77.2672V216.044H114.868V213.806H112.665C98.8584 212.234 96.8999 197.871 96.8999 197.871V193.622C97.6113 195.327 101.545 203.665 110.384 203.458C110.508 203.461 110.631 203.467 110.755 203.467C117.651 203.467 123.24 197.383 123.24 189.878C123.24 182.373 117.651 176.288 110.755 176.288Z",
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

var make = CT;

export {
  Styles ,
  make ,
  
}
/* elementStyles Not a pure module */
