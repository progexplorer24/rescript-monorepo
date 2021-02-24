module Styles = {
  open Tailwind
  let elementStyles = twStyle([
    m(#v0),
    py(#v4),
    pl(#v6),
    text(#base),
    breakWords,
    bg(#indigo100),
    borderL(#v4),
    borderColor(#indigo800),
    italic,
    shadow(#sm),
    mb(#v6),
  ])
}

@react.component
let make = (~children, ~className="") =>
  <blockquote className={Tailwind.merge(.[Styles.elementStyles, className])}> children </blockquote>
