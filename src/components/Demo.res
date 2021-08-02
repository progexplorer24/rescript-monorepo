module Styles = {
  open Tailwind
  let elementStyles = twStyle([text(#xl), textColor(#blue700)])
}

@react.component
let make = (~className="") =>
  <div className={Tailwind.merge(. [Styles.elementStyles, className])}>
    {"Hello I'm demo component with some styles"->Utils.str}
  </div>
