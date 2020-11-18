module Styles = {
  open CssJs
  let button = %tw("text-red-500 hover:text-blue-800")
  let button2 = style(.[fontSize(px(44))])
}

@react.component
let make = (~name) =>
  <button className=Styles.button> {(j`Hello ${name} !`)->ReasonReact.string} </button>
