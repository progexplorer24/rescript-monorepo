// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Tailwind$RescriptMonorepo from "../../../../styles/tailwind/Tailwind.mjs";
import * as CardDefaults$RescriptMonorepo from "../CardDefaults.mjs";

var elementStyles = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.w("v20")]);

var Styles = {
  elementStyles: elementStyles
};

function C5(Props) {
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
                  d: "M78.0781 97.0312L81.3594 68.125H113.234V77.5391H90.6172L89.2109 89.7656C91.8932 88.3333 94.7448 87.6172 97.7656 87.6172C103.182 87.6172 107.427 89.2969 110.5 92.6562C113.573 96.0156 115.109 100.716 115.109 106.758C115.109 110.43 114.328 113.724 112.766 116.641C111.229 119.531 109.016 121.784 106.125 123.398C103.234 124.987 99.8229 125.781 95.8906 125.781C92.4531 125.781 89.263 125.091 86.3203 123.711C83.3776 122.305 81.0469 120.339 79.3281 117.812C77.6354 115.286 76.737 112.409 76.6328 109.18H87.8047C88.0391 111.549 88.8594 113.398 90.2656 114.727C91.6979 116.029 93.5599 116.68 95.8516 116.68C98.4036 116.68 100.37 115.768 101.75 113.945C103.13 112.096 103.82 109.492 103.82 106.133C103.82 102.904 103.026 100.43 101.437 98.7109C99.849 96.9922 97.5964 96.1328 94.6797 96.1328C91.9974 96.1328 89.8229 96.8359 88.1562 98.2422L87.0625 99.2578L78.0781 97.0312Z",
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

var make = C5;

export {
  Styles ,
  make ,
  
}
/* elementStyles Not a pure module */