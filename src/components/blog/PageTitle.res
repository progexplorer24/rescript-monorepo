module Styles = {
  open Tailwind
  let elementStyles = twStyle([
    text(#xl3),
    fontWeight(#800),
    tracking(#tight),
    leading(#9),
    sm([text(#xl4), leading(#10)]),
    md([text(#xl5), leading(#14)]),
    textColor(#gray900),
    dark([textColor(#gray100)]),
  ])
}

@react.component
let make = (~children, ~className="") => {
  <h1 className={Tailwind.merge(. [Styles.elementStyles, className])}> children </h1>
}
