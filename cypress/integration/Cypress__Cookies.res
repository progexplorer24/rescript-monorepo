open Cypress

context("Cookies", () => {
  beforeEach(() => {
    cookiesDebug(true)

    cyVisit("https://example.cypress.io/commands/cookies", ())

    // clear cookies again after visiting to remove
    // any 3rd party cookies picked up such as cloudflare
    cyClearCookies()
  })

  it("cy.getCookie() - get a browser cookie", () => {
    // https://on.cypress.io/getcookie
    cyGet("#getCookie .set-a-cookie", ())->click()

    // cy.getCookie() yields a cookie object
    cyGetCookieP("token", ~options=CookieOptions.make(), ())->shouldHaveProperty("value")
    cyGetCookieP("token", ~options=CookieOptions.make(), ())->shouldHavePropertyWithValue(
      "value",
      "123ABC",
    )
  })

  it("cy.getCookies() - get browser cookies", () => {
    // https://on.cypress.io/getcookies
    cyGetCookies()->shouldBeEmpty

    cyGet("#getCookies .set-a-cookie", ())->click()

    // cy.getCookies() yields an array of cookies
    cyGetCookies()
    ->shouldHaveLengthP(1)
    ->shouldWithCallback(cookies => {
      // each cookie has these properties
      expect(cookies[0])->toHavePropertyWithValue("name", "token")
      expect(cookies[0])->toHavePropertyWithValue("value", "123ABC")
      expect(cookies[0])->toHavePropertyWithValue("httpOnly", false)
      expect(cookies[0])->toHavePropertyWithValue("secure", false)
      expect(cookies[0])->toHaveProperty("domain")
      expect(cookies[0])->toHaveProperty("path")
    })
  })

  it("cy.setCookie() - set a browser cookie", () => {
    // https://on.cypress.io/setcookie
    cyGetCookies()->shouldBeEmpty

    cySetCookie("foo", "bar", ())

    cyGetCookieP("foo", ())->then(cookie => {
      Js.log(cookie)
    })

    // cy.getCookie() yields a cookie object
    cyGetCookieP("foo", ())->shouldHavePropertyWithValue("value", "bar")
  })

  // it("renders cookies from documentation 1", () => {
  //   cyGetCookies()->shouldBeEmpty
  //   cySetCookie(
  //     "session_id",
  //     "189jd09sufh33aaiidhf99d09",
  //     ~options=createSetCookieOptionsObject(),
  //     (),
  //   )
  //   cyGetCookieP("session_id", ())->shouldHavePropertyWithValue(
  //     "value",
  //     "189jd09sufh33aaiidhf99d09",
  //   )
  // })

  // it("renders cookies from documentation 2", () => {
  //   let cookieOptions = createSetCookieOptionsObject(~sameSite=#undefined, ())
  //   Js.log(cookieOptions)
  //   cyGetCookies()->shouldBeEmpty
  //   cySetCookie("fakeCookie1", "123ABC", ~options=cookieOptions, ())
  //   cyGetCookieP("fakeCookie1", ())->shouldHavePropertyWithValue("value", "123ABC")
  // })

  it("cy.clearCookie() - clear a browser cookie", () => {
    // https://on.cypress.io/clearcookie
    cyGetCookieP("token", ())->shouldBeNull

    cyGet("#clearCookie .set-a-cookie", ())->click()

    cyGetCookieP("token", ())->shouldHavePropertyWithValue("value", "123ABC")

    // cy.clearCookies() yields null
    cyClearCookie("token", ())

    cyGetCookieP("token", ())->shouldBeNull

    // One more time with options
    cyGet("#clearCookie .set-a-cookie", ())->click()
    cyGetCookieP("token", ())->shouldHavePropertyWithValue("value", "123ABC")
    cyClearCookie("token", ~options=CookieOptions.make(), ())
    cyGetCookieP("token", ())->shouldBeNull
  })

  it("cy.clearCookies() - clear browser cookies", () => {
    // https://on.cypress.io/clearcookies
    cyGetCookies()->shouldBeEmpty

    cyGet("#clearCookies .set-a-cookie", ())->click()

    cyGetCookies()->shouldHaveLength(1)

    // cy.clearCookies() yields null
    cyClearCookies()

    cyGetCookies()->shouldBeEmpty

    cyGet("#clearCookies .set-a-cookie", ())->click()

    cyGetCookies()->shouldHaveLength(1)

    // cy.clearCookies with options - always yields null
    cyClearCookies(~options=CookieOptions.make(), ())

    cyGetCookies()->shouldBeEmpty
  })
})
