module Styles = {
  open Tailwind
  let elementStyles = Tailwind.twStyle([
    bg(#coolGray900),
    border(#4),
    textColor(#white),
    px(#6),
    py(#6),
  ])
}

@react.component
let make = (~name="Hello John", ~className="") =>
  <div className={Tailwind.merge(. [Styles.elementStyles, className])}> {name->Utils.str} </div>
