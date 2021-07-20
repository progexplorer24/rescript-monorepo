open Cypress

context("Local Storage", () => {
  beforeEach(() => {
    cyVisit("https://example.cypress.io/commands/local-storage", ())
  })
  // Although local storage is automatically cleared
  // in between tests to maintain a clean state
  // sometimes we need to clear the local storage manually

  it("cy.clearLocalStorage() - clear all data in local storage", () => {
    // https://on.cypress.io/clearlocalstorage
    cyGet(".ls-btn", ())
    ->clickP()
    ->shouldWithCallbackP(_el => {
      expect(getItem("prop1"))->toEqual("red")
      expect(getItem("prop2"))->toEqual("blue")
      expect(getItem("prop3"))->toEqual("magenta")
    })
    ->then(() => {
      // clearLocalStorage() yields the localStorage object
      cyClearLocalStorageP()->shouldWithCallback(_ => {
        expect(getItem("prop1"))->toEqual(Js.null)
        expect(getItem("prop2"))->toEqual(Js.null)
        expect(getItem("prop3"))->toEqual(Js.null)
      })
    })

    cyGet(".ls-btn", ())
    ->clickP()
    ->shouldWithCallbackP(_el => {
      expect(getItem("prop1"))->toEqual("red")
      expect(getItem("prop2"))->toEqual("blue")
      expect(getItem("prop3"))->toEqual("magenta")
    })
    ->then(() => {
      // clearLocalStorage() yields the localStorage object
      cyClearLocalStorageP(~options=LocalStorageOptions.make(), ())->shouldWithCallback(ls => {
        Js.log(ls)
        expect(getItem("prop1"))->toEqual(Js.null)
        expect(getItem("prop2"))->toEqual(Js.null)
        expect(getItem("prop3"))->toEqual(Js.null)
      })
    })

    cyGet(".ls-btn", ())
    ->clickP()
    ->shouldWithCallbackP(_el => {
      expect(getItem("prop1"))->toEqual("red")
      expect(getItem("prop2"))->toEqual("blue")
      expect(getItem("prop3"))->toEqual("magenta")
    })
    ->then(() => {
      // Clear key matching string in Local Storage
      cyClearLocalStorageWithStringP("prop1", ())->shouldWithCallback(ls => {
        Js.log(ls)
        expect(getItem("prop1"))->toEqual(Js.null)
        expect(getItem("prop2"))->toEqual("blue")
        expect(getItem("prop3"))->toEqual("magenta")
      })
    })

    cyGet(".ls-btn", ())
    ->clickP()
    ->shouldWithCallbackP(_el => {
      expect(getItem("prop1"))->toEqual("red")
      expect(getItem("prop2"))->toEqual("blue")
      expect(getItem("prop3"))->toEqual("magenta")
    })
    ->then(() => {
      cyClearLocalStorageWithStringP(
        "prop1",
        ~options=LocalStorageOptions.make(),
        (),
      )->shouldWithCallback(_ls => {
        expect(getItem("prop1"))->toEqual(Js.null)
        expect(getItem("prop2"))->toEqual("blue")
        expect(getItem("prop3"))->toEqual("magenta")
      })
    })

    cyGet(".ls-btn", ())
    ->clickP()
    ->shouldWithCallbackP(_ => {
      expect(getItem("prop1"))->toEqual("red")
      expect(getItem("prop2"))->toEqual("blue")
      expect(getItem("prop3"))->toEqual("magenta")
    })
    ->then(() => {
      // Clear keys matching regex in Local Storage
      cyClearLocalStorageWithReP(%re("/prop1|2/"), ())->shouldWithCallback(_ls => {
        expect(getItem("prop1"))->toEqual(Js.null)
        expect(getItem("prop2"))->toEqual(Js.null)
        expect(getItem("prop3"))->toEqual("magenta")
      })
    })

    cyGet(".ls-btn", ())
    ->clickP()
    ->shouldWithCallbackP(_ => {
      expect(getItem("prop1"))->toEqual("red")
      expect(getItem("prop2"))->toEqual("blue")
      expect(getItem("prop3"))->toEqual("magenta")
    })
    ->then(() => {
      // Clear keys matching regex in Local Storage with options
      cyClearLocalStorageWithReP(
        %re("/prop1|2/"),
        ~options=LocalStorageOptions.make(),
        (),
      )->shouldWithCallback(_ls => {
        expect(getItem("prop1"))->toEqual(Js.null)
        expect(getItem("prop2"))->toEqual(Js.null)
        expect(getItem("prop3"))->toEqual("magenta")
      })
    })
  })
})
