open Cypress

context("Navigation", () => {
  beforeEach(() => {
    cyVisit("https://example.cypress.io", ())
    cyGet(".navbar-nav", ())->containsStringP("Commands", ())->click()
    cyGet(".dropdown-menu", ())->containsStringP("Navigation", ())->click()
  })

  it("cy.go() - go back or forward in the browser\"s history", () => {
    // https://on.cypress.io/go

    cyLocationWithString("pathname", ())->shouldInclude("navigation")

    cyGo(#back, ())
    cyLocationWithString("pathname", ~options=LocationOptions.make(), ())->shouldNotInclude(
      "navigation",
    )

    cyGo(#forward, ~options=GoOptions.make(), ())
    cyLocationWithString("pathname", ())->shouldInclude("navigation")

    // clicking back
    cyGo(#back, ())
    cyLocationWithString("pathname", ())->shouldNotInclude("navigation")

    // clicking forward
    cyGo(#forward, ())
    cyLocationWithString("pathname", ())->shouldInclude("navigation")

    cyLocation()->then(locObj => {
      Js.log(locObj)
    })
  })

  it("cy.reload() - reload the page", () => {
    // https://on.cypress.io/reload
    cyReload()

    // reload the page without using the cache
    cyReloadWithBool(true, ())
  })

  it("cy.visit() - visit a remote url", () => {
    // https://on.cypress.io/visit

    // Visit any sub-domain of your current domain

    let beforeLoad = contentWindow => {
      // contentWindow is the remote page"s window object
      Js.log(contentWindow)
    }

    let onLoad = contentWindow => {
      // contentWindow is the remote page"s window object
      // expect(typeof contentWindow === "object").to.be.true
      Js.log(contentWindow)
    }

    let visitOptions = VisitOptions.make(~timeout=5000, ~onBeforeLoad=beforeLoad, ~onLoad, ())

    // Pass options to the visit
    cyVisit("https://example.cypress.io/commands/navigation", ~options=visitOptions, ())
  })
})
