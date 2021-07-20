open Cypress

context("Aliasing", () => {
  beforeEach(() => {
    cyVisit("https://example.cypress.io/commands/aliasing", ())
  })

  it(".as() - alias a DOM element for later use", () => {
    // https://on.cypress.io/as

    // Alias a DOM element for use later
    // We don"t have to traverse to the element
    // later in our code, we reference it with @

    cyGet(".as-table", ())
    ->findP("tbody>tr", ())
    ->firstP()
    ->findP("td", ())
    ->firstP(~options=FirstOptions.make(), ())
    ->findP("button", ())
    ->as_("firstBtn")

    // when we reference the alias, we place an
    // @ in front of its name
    cyGet("@firstBtn", ())->click()

    cyGet("@firstBtn", ())->shouldHaveClassP("btn-success")->andContain("Changed")
  })

  it(".as() - alias a route for later use", () => {
    // Alias the route to wait for its response
    cyInterceptWithStringP(~method=#get, "**/comments/*", ())->as_("getComment")

    // we have code that gets a comment when
    // the button is clicked in scripts.js
    cyGet(".network-btn", ())->click()

    // https://on.cypress.io/wait
    cyWaitWithAliasP("@getComment", ())->its("response.statusCode", ())->shouldEqualInt(200)
  })
})
