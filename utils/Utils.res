let str = a => ReasonReact.string(a)
let clog = str => Js.log(str)
let copySymbol = `\u00a9`
let mdash = `\u2014`
let lsquo = `\u201C`
let nbsp = `\u00A0`

/**
 
  @param breakpoint number in pixels where set min-width of a break point
  @param styles pass here emotion css prop or tailwind macro styles
 
  Example: breakpoint(300)(tw`bg-purple-400`) - It will add a purple background to the element at 300px breakpoint and higher.
 */
let addMinWidthBreakpoint = (breakpoint, styles) =>
  CssJs.style(.[CssJs.media(`screen and (min-width: ${Belt.Int.toString(breakpoint)}px)`, styles)])

let addMaxWidthBreakpoint = (breakpoint, styles) =>
  CssJs.style(.[CssJs.media(`screen and (max-width: ${Belt.Int.toString(breakpoint)}px)`, styles)])
