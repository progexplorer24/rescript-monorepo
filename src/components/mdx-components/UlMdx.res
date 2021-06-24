module Styles = {
  open Tailwind
  let elementStyles = twStyle([mb(#6)])
}

@react.component
let make = (~children, ~className="") =>
  <ul className={Tailwind.merge(. [Styles.elementStyles, className])}>
    {React.Children.map(children, child => <LiMdxUnordered> child </LiMdxUnordered>)}
  </ul>
