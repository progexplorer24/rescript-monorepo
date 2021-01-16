module Styles = {
  open Tailwind
  // font-bold underline cursor-pointer text-blue-700
  let elementStyles = CssJs.merge(.[fontBold, borderB, borderBlue700, cursorPointer, textBlue700])
}

@react.component
let make = (~children, ~className="", ~href) =>
  <a
    href
    target="_blank"
    rel="noopener noreferrer"
    className={CssJs.merge(.[Styles.elementStyles, className])}>
    children
  </a>
