open Cypress

type wrapper = {foo: string}

context("Misc", () => {
  beforeEach(() => {
    cyVisit("https://example.cypress.io/commands/misc", ())
  })

  it(".end() - end the command chain", () => {
    // https://on.cypress.io/end

    // cy.end is useful when you want to end a chain of commands
    // and force Cypress to re-query from the root element
    cyGet(".misc-table", ())->within(() => {
      // ends the current chain and yields null
      cyContainsStringP("Cheryl", ())->clickP()->end()

      // queries the entire table again
      cyContainsStringP("Charles", ())->click()
    })
  })

  it("cy.exec() - execute a system command", () => {
    // execute a system command.
    // so you can take actions necessary for
    // your test outside the scope of Cypress.
    // https://on.cypress.io/exec

    // we can use Cypress.platform string to
    // select appropriate command
    // https://on.cypress/io/platform
    cyLog(`Platform ${platform} architecture ${arch}`)
    Js.log(browser)
    Js.log(envWithString("circle"))

    // on CircleCI Windows build machines we have a failure to run bash shell
    // https://github.com/cypress-io/cypress/issues/5169
    // so skip some of the tests by passing flag "--env circle=true"

    let envExists = envString =>
      switch Js.Undefined.toOption(envString) {
      | Some(_) => true
      | None => false
      }

    let isCircleOnWindows = platform === "win32" && envExists(envWithString("circle"))

    Js.log(isCircleOnWindows)

    let _msg = if isCircleOnWindows {
      cyLog("Skipping test on CircleCI")
    }

    // cy.exec problem on Shippable CI
    // https://github.com/cypress-io/cypress/issues/6718
    let isShippable = platform === "linux" && envExists(envWithString("shippable"))

    let _shippable = if isShippable {
      cyLog("Skipping test on ShippableCI")
    }

    cyExec("echo Jane Lane", ())->its("stdout", ())->shouldContain("Jane Lane")

    let _win32 = if Cypress.platform === "win32" {
      cyExec("print cypress.json", ())->its("stderr", ~options=ItsOptions.make(), ())->shouldBeEmpty
    } else {
      cyExec("cat cypress.json", ())->its("stderr", ~options=ItsOptions.make(), ())->shouldBeEmpty

      cyExec("pwd", ())->its("code", ())->shouldEqualInt(0)
    }
  })

  it("cy.focused() - get the DOM element that has focus", () => {
    // https://on.cypress.io/focused
    cyGet(".misc-form", ())->findP("#name", ())->click()
    cyFocused(~options=FocusOptions.make(), ())->shouldHaveId("name")

    cyGet(".misc-form", ())->findP("#description", ())->click()
    cyFocused()->shouldHaveId("description")
  })

  context("Cypress.Screenshot", () => {
    it("cy.screenshot() - take a screenshot", () => {
      // https://on.cypress.io/screenshot
      cyScreenshotWithFileName("my-image", ())
    })

    it("Cypress.Screenshot.defaults() - change default config of screenshots", () => {
      let clipObject: Cypress.clipObject = {x: 0, y: 0, width: 200, height: 200}
      let screenshotOptions = ScreenshotDefaults.make(
        ~blackout=[".foo"],
        ~capture="viewport",
        ~clip=Js.Null.return(clipObject),
        ~scale=false,
        ~disableTimersAndAnimations=true,
        (),
      )
      screenshotDefaults(screenshotOptions)
    })
  })

  it("cy.wrap() - wrap an object", () => {
    // https://on.cypress.io/wrap
    cyWrap({foo: "bar"})->shouldHavePropertyP("foo")->andInclude("bar")
  })
})
