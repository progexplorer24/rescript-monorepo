open Cypress

context("Location", () => {
  beforeEach(() => {
    cyVisit("https://example.cypress.io/commands/location", ())
  })

  it("cy.hash() - get the current URL hash", () => {
    // https://on.cypress.io/hash
    cyHash()->shouldBeEmpty
  })

  it("cy.location() - get window.location", () => {
    // https://on.cypress.io/location
    cyLocation()->shouldWithLocationObject(locObject => {
      expect(locObject.hash)->toEqual("")
      expect(locObject.href)->toEqual("https://example.cypress.io/commands/location")
      expect(locObject.host)->toEqual("example.cypress.io")
      expect(locObject.hostname)->toEqual("example.cypress.io")
      expect(locObject.origin)->toEqual("https://example.cypress.io")
      expect(locObject.pathname)->toEqual("/commands/location")
      expect(locObject.port)->toEqual("")
      expect(locObject.protocol)->toEqual("https:")
      expect(locObject.search)->toEqual("")
    })
  })

  it("cy.url() - get the current URL", () => {
    // https://on.cypress.io/url
    cyUrl()->shouldEqualString("https://example.cypress.io/commands/location")
  })
})
