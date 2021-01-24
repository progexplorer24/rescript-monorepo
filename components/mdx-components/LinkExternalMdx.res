module Styles = {
  open Tailwind

  let elementStyles = twStyle([
    borderBlue700(1.),
    borderB,
    cursorPointer,
    textBlue700(1.),
    fontBold,
  ])
}

@react.component
let make = (~children, ~className="", ~href) =>
  <a
    href
    target="_blank"
    rel="noopener noreferrer"
    className={Tailwind.merge(.[Styles.elementStyles, className])}>
    children
  </a>
