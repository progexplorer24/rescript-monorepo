open Cypress

context("Connectors", () => {
  beforeEach(() => {
    cyVisit("https://example.cypress.io/commands/connectors", ())
  })

  it(".each() - iterate over an array of elements", () => {
    // https://on.cypress.io/each
    cyGet(".connectors-each-ul>li", ())->each((el, _, _) => {
      Js.log(el)
    })
  })

  it(".each() - iterate over an array of elements", () => {
    // https://on.cypress.io/each
    cyGet(".connectors-each-ul>li", ())->each((el, index, collection) => {
      Js.log3(el, index, collection)
    })
  })

  it(".its() - get properties on the current subject", () => {
    // https://on.cypress.io/its
    cyGet(".connectors-its-ul>li", ())->its("length", ())->shouldBeGtInt(2)
    // calls the "length" property yielding that value
  })

  it(".invoke() - invoke a function on the current subject", () => {
    // our div is hidden in our script.js
    // $(".connectors-div").hide()

    // https://on.cypress.io/invoke
    cyGet(".connectors-div", ())
    ->shouldBeHiddenP
    ->invokeWithOptionsP(~options=InvokeOptions.make(), "show", ~args=[])
    ->shouldBeVisible
    // call the jquery method "show" on the "div.container"
  })

  describe(".then()", () => {
    it("invokes a callback function with the current subject", () => {
      // https://on.cypress.io/then
      cyGet(".connectors-list > li", ())->then(lisRaw => {
        let el1 = JQuery.getWithIndex(lisRaw, 0)
        let el2 = JQuery.getWithIndex(lisRaw, 1)
        let el3 = JQuery.getWithIndex(lisRaw, 2)
        expectWithDescription(lisRaw, "3 items")->toHaveLength(3)
        expectWithDescription(el1, "first item")->toHaveText("Walk the dog")
        expectWithDescription(el2, "second item")->toHaveText("Feed the cat")
        expectWithDescription(el3, "third item")->toHaveText("Write JavaScript")
      })
    })
  })

  it("yields the returned value to the next command", () => {
    cyWrap(1)
    ->thenP(num => {
      expect(num)->toEqual(1)

      2
    })
    ->then(num => {
      expect(num)->toEqual(2)
    })
  })

  it("yields the original subject without return", () => {
    cyWrap(1)
    ->thenP(num => {
      expect(num)->toEqual(1)
      // note that nothing is returned from this callback
    })
    ->then(num => {
      // this callback receives the original unchanged value 1
      expect(num)->toEqual(1)
    })
  })

  it("yields the value yielded by the last Cypress command inside", () => {
    cyWrap(1)
    ->thenP(num => {
      expect(num)->toEqual(1)
      // note how we run a Cypress command
      // the result yielded by this Cypress command
      // will be passed to the second ".then"
      cyWrap(2)
    })
    ->then(num => {
      // this callback receives the value yielded by "cy.wrap(2)"
      expect(num)->toEqual(2)
    })
  })
})
