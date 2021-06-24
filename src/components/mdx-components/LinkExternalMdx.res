module Styles = {
  open Tailwind

  let elementStyles = twStyle([
    borderColor(#blue700),
    borderB(#1),
    cursorPointer,
    textColor(#blue700),
    fontWeight(#v700),
  ])
}

@react.component
let make = (~children, ~className="", ~href) =>
  <a
    href
    target="_blank"
    rel="noopener noreferrer"
    className={Tailwind.merge(. [Styles.elementStyles, className])}>
    children
  </a>
