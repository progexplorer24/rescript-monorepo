module Styles = {
  open Tailwind
  let elementStyles = twStyle([
    maxW(#xl3),
    px(#4),
    mx(#auto),
    sm([px(#6)]),
    xl([maxW(#xl5), px(#0)]),
  ])

  let bodyWrapper = twStyle([
    w(#full),
    textColor(#gray900),
    bg(#gray100),
    dark([textColor(#gray100), bg(#gray900)]),
  ])
}

@react.component
let make = (~children, ~className="") => {
  <div className=Styles.bodyWrapper>
    <div className={Tailwind.merge(. [Styles.elementStyles, className])}> children </div>
  </div>
}
