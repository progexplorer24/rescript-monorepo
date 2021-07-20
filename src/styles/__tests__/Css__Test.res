open Cypress
describe("Check have.css functionality", () => {
  module Component = {
    @react.component
    let make = (~children="", ~className="") => <div id="id" className> {children->Utils.str} </div>
  }

  let styles = Tailwind.twStyle([Tailwind.block])

  it("have css", () => {
    mount(<Component className=styles />)
    cyGet("#id", ())->shouldHaveCss("display", "block")
    mount(<Component className={Tailwind.twStyle([Tailwind.inlineBlock])} />)
    cyGet("#id", ())->shouldHaveCss("display", "inline-block")
  })
  ()
})
