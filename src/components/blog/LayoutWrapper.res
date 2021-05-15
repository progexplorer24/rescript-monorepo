module Styles = {
  open Tailwind
  let flexWrapper = twStyle([flex, flexCol, justifyBetween, h(#screen)])
  let header = twStyle([flex, itemsCenter, justifyBetween, py(#v10)])
  let linkWrapper = twStyle([flex, itemsCenter, justifyBetween])
  let linkDiv = twStyle([mr(#v3)])
}

@react.component
let make = (~children) =>
  <SectionContainer>
    <div className={Tailwind.merge(. [Styles.flexWrapper])}>
      <header>
        <div>
          <Mdx.a href="/" ariaLabel="isensei blog">
            <div className=Styles.linkWrapper>
              <div className={Tailwind.merge(. [Styles.linkDiv])} />
            </div>
          </Mdx.a>
        </div>
      </header>
      children
    </div>
  </SectionContainer>
