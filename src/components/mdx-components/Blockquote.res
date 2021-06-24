module Styles = {
  open Tailwind
  let elementStyles = twStyle([
    m(#0),
    py(#4),
    pl(#6),
    text(#base),
    breakWords,
    bg(#indigo100),
    borderL(#4),
    borderColor(#indigo800),
    italic,
    shadow(#sm),
    mb(#6),
  ])
}

@react.component
let make = (~children, ~className="") =>
  <blockquote className={Tailwind.merge(. [Styles.elementStyles, className])}>
    children
  </blockquote>
