module Styles = {
  open Tailwind
  let flexWrapper = twStyle([flex, flexCol, justifyBetween, [CssJs.fontFamily(#custom("Inter"))]])
}

@react.component
let make = (~children, ~headerTitle="") => {
  <SectionContainer>
    <Navigation headerTitle />
    <div className={Tailwind.merge(. [Styles.flexWrapper])}> children </div>
  </SectionContainer>
}
