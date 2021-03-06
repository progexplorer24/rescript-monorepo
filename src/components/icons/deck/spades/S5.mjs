// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Tailwind$RescriptMonorepo from "../../../../styles/tailwind/Tailwind.mjs";
import * as CardDefaults$RescriptMonorepo from "../CardDefaults.mjs";

var elementStyles = Tailwind$RescriptMonorepo.twStyle([Tailwind$RescriptMonorepo.w(20)]);

var Styles = {
  elementStyles: elementStyles
};

function S5(Props) {
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
                  d: "M78.0781 97.0312L81.3594 68.125H113.234V77.5391H90.6172L89.2109 89.7656C91.8932 88.3333 94.7448 87.6172 97.7656 87.6172C103.182 87.6172 107.427 89.2969 110.5 92.6562C113.573 96.0156 115.109 100.716 115.109 106.758C115.109 110.43 114.328 113.724 112.766 116.641C111.229 119.531 109.016 121.784 106.125 123.398C103.234 124.987 99.8229 125.781 95.8906 125.781C92.4531 125.781 89.263 125.091 86.3203 123.711C83.3776 122.305 81.0469 120.339 79.3281 117.812C77.6354 115.286 76.737 112.409 76.6328 109.18H87.8047C88.0391 111.549 88.8594 113.398 90.2656 114.727C91.6979 116.029 93.5599 116.68 95.8516 116.68C98.4036 116.68 100.37 115.768 101.75 113.945C103.13 112.096 103.82 109.492 103.82 106.133C103.82 102.904 103.026 100.43 101.438 98.7109C99.849 96.9922 97.5964 96.1328 94.6797 96.1328C91.9974 96.1328 89.8229 96.8359 88.1562 98.2422L87.0625 99.2578L78.0781 97.0312Z",
                  fill: cardTextColor
                }), React.createElement("path", {
                  clipRule: "evenodd",
                  d: "M109.244 200.985C119.532 201.117 125.862 193.546 122.38 185.577C118.899 177.608 115.428 175.815 109.963 170.037C104.495 164.26 96.5444 154.265 96.582 151.907C96.6222 154.265 88.999 164.26 83.5312 170.037C78.0661 175.815 74.598 177.608 71.1139 185.577C67.6324 193.546 73.9646 201.117 84.2506 200.985C91.3128 200.893 94.491 196.234 95.7874 193.32L95.7874 197.133C95.7874 197.133 93.5327 210.886 77.6205 212.392L75.0839 212.392L75.0839 214.535L118.413 214.535L118.413 212.392L115.874 212.392C99.9641 210.886 97.7067 197.133 97.7067 197.133L97.7067 193.821C99.234 196.737 102.573 200.898 109.244 200.985Z",
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

var make = S5;

export {
  Styles ,
  make ,
  
}
/* elementStyles Not a pure module */
