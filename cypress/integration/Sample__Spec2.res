open Cypress

describe("My First Test", () => {
  it("Does not do much!", () => {
    expect(true)->toEqual(true)
  })
  ()
})

describe("My First link visit", () => {
  it("Visits the Kitchen Sink", () => {
    cyVisit("https://example.cypress.io", ())
    // NOTE: Cypress automatically detects things like a page transition event and will automatically halt running commands until the next page has finished loading.

    cyPause()
    cyContainsStringP("type", ())->click()
    cyUrl()->shouldInclude("/commands/actions")
    cyGet(".action-email", ())->typeP("fake@email.com", ())->shouldHaveValue("fake@email.com")
  })
})
