module Styles = {
  open Tailwind
  let elementStyles = twStyle([p(#1), fontWeight(#500), textColor(#gray900), sm([p(#4)])])
}

@react.component
let make = (~children, ~className="", ~href) =>
  <Mdx.a href className={Tailwind.merge(. [Styles.elementStyles, className])}> children </Mdx.a>
