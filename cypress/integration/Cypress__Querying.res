open Cypress

context("Querying", () => {
  beforeEach(() => {
    cyVisit("https://example.cypress.io/commands/querying", ())
  })

  // The most commonly used query is "cy.get()", you can
  // think of this like the "$" in jQuery

  it("cy.get() - query DOM elements", () => {
    // https://on.cypress.io/get

    cyGet("#query-btn", ())->shouldContain("Button")

    cyGet(".query-btn", ())->shouldContain("Button")

    cyGet("#querying .well>button:first", ())->shouldContain("Button")
    //              ↲
    // Use CSS selectors just like jQuery

    cyGet("[data-test-id=\"test-example\"]", ())->shouldHaveClass("example")

    // "cyGet()" yields jQuery object, you can get its attribute
    // by invoking `.attr()` method
    cyGet("[data-test-id=\"test-example\"]", ())
    ->invokeP("attr", ~args=["data-test-id"])
    ->shouldEqualString("test-example")

    // or you can get element"s CSS property
    cyGet("[data-test-id=\"test-example\"]", ())
    ->invokeP("css", ~args=["position"])
    ->shouldEqualString("static")

    // or use assertions directly during "cyGet()"
    // https://on.cypress.io/assertions
    cyGet("[data-test-id=\"test-example\"]", ())
    ->shouldHaveAttrWithValueP("data-test-id", "test-example")
    ->andHaveCss("position", "static")
  })

  it("cy.contains() - query DOM elements with matching content", () => {
    // https://on.cypress.io/contains
    cyGet(".query-list", ())->containsStringP("bananas", ())->andHaveClass("third")

    // we can pass a regexp to `.contains()`
    cyGet(".query-list", ())->containsReP(%re("/^b\w+/"), ())->shouldHaveClass("third")

    cyGet(".query-list", ())->containsStringP("apples", ())->shouldHaveClass("first")

    // passing a selector to contains will
    // yield the selector containing the text
    cyGet("#querying", ())
    ->containsStringP(~selector="ul", "oranges", ())
    ->shouldHaveClass("query-list")

    cyGet(".query-button", ())->containsStringP("Save Form", ())->shouldHaveClass("btn")
  })

  it(".within() - query DOM elements within a specific element", () => {
    // https://on.cypress.io/within
    cyGet(".query-form", ())->within(() => {
      cyGet("input:first", ())->shouldHaveAttrWithValue("placeholder", "Email")
      cyGet("input:last", ())->shouldHaveAttrWithValue("placeholder", "Password")
    })
  })

  it("cy.root() - query the root DOM element", () => {
    // https://on.cypress.io/root

    // By default, root is the document
    cyRoot()->shouldMatch("html")

    cyGet(".query-ul", ())->within(() => {
      // In this within, the root is now the ul DOM element
      cyRoot()->shouldHaveClass("query-ul")
    })
  })

  it("best practices - selecting elements", () => {
    // https://on.cypress.io/best-practices#Selecting-Elements
    cyGet("[data-cy=best-practices-selecting-elements]", ())->within(() => {
      // Worst - too generic, no context
      cyGet("button", ())->click()

      // Bad. Coupled to styling. Highly subject to change.
      cyGet(".btn.btn-large", ())->click()

      // Average. Coupled to the `name` attribute which has HTML semantics.
      cyGet("[name=submission]", ())->click()

      // Better. But still coupled to styling or JS event listeners.
      cyGet("#main", ())->click()

      // Slightly better. Uses an ID but also ensures the element
      // has an ARIA role attribute
      cyGet("#main[role=button]", ())->click()

      // Much better. But still coupled to text content that may change.
      cyContainsStringP("Submit", ())->click()

      // Best. Insulated from all changes.
      cyGet("[data-cy=submit]", ())->click()
    })
  })
})
