open Cypress

type greeter = {greet: string => string}
type greeter2 = {foo: string => unit}
type greeter3<'a, 'b> = {foo: ('a, 'b) => unit}

type obj = {foo: unit => string}

context("Spies, Stubs, and Clock", () => {
  it("cy.spy() - wrap a method in a spy", () => {
    // https://on.cypress.io/spy
    cyVisit("https://example.cypress.io/commands/spies-stubs-clocks", ())

    let obj = {
      foo: () => "hello",
    }

    let spy = cySpyP(obj, "foo")->as_P("anyArgs")

    let myStr = obj.foo()

    expect(myStr)->toEqual("hello")

    expect(spy)->toBeCalled
  })

  it("cy.spy() retries until assertions pass", () => {
    cyVisit("https://example.cypress.io/commands/spies-stubs-clocks", ())

    let obj: greeter2 = {
      /**
       * Prints the argument passed
       * @param x {any}
       */
      foo: x => Js.log2("obj.foo called with", x),
    }

    cySpyP(obj, "foo")->as_("foo")

    let _timeout = Js.Global.setTimeout(() => {
      obj.foo("first")
    }, 500)

    let _timeout2 = Js.Global.setTimeout(() => {
      obj.foo("second")
    }, 2500)

    cyGet("@foo", ())->shouldHaveBeenCalledTwice
  })

  it("cy.stub() - create a stub and/or replace a function with stub", () => {
    // https://on.cypress.io/stub
    cyVisit("https://example.cypress.io/commands/spies-stubs-clocks", ())

    let obj: greeter3<'a, 'b> = {
      /**
       * prints both arguments to the console
       * @param a {string}
       * @param b {string}
       */
      foo: (a, b) => Js.log4("a", a, "b", b),
    }

    let stub = cyStubWithObjectAndStringP(obj, "foo")->as_P("foo")

    obj.foo("foo", "bar")

    expect(stub)->toBeCalled
  })

  it("cy.clock() - control time in the browser", () => {
    // https://on.cypress.io/clock

    // create the date in UTC so its always the same
    // no matter what local timezone the browser is running in
    let now = Js.Date.getTime(
      Js.Date.fromFloat(Js.Date.utcWithYMD(~year=2017., ~month=2., ~date=14., ())),
    )

    cyClock(~now, ())
    cyVisit("https://example.cypress.io/commands/spies-stubs-clocks", ())
    cyGet("#clock-div", ())->clickP()->shouldHaveText("1489449600")
  })

  it("cy.clock() - control time in the browser", () => {
    // https://on.cypress.io/clock

    // create the date in UTC so its always the same
    // no matter what local timezone the browser is running in
    let now = Js.Date.getTime(
      Js.Date.fromFloat(Js.Date.utcWithYMD(~year=2017., ~month=2., ~date=14., ())),
    )

    cyClock(~now, ~options=ClockOptions.make(), ())
    cyVisit("https://example.cypress.io/commands/spies-stubs-clocks", ())
    cyGet("#clock-div", ())->clickP()->shouldHaveText("1489449600")
  })

  it("cy.tick() - move time in the browser", () => {
    // https://on.cypress.io/tick

    // create the date in UTC so its always the same
    // no matter what local timezone the browser is running in
    let now = Js.Date.getTime(
      Js.Date.fromFloat(Js.Date.utcWithYMD(~year=2017., ~month=2., ~date=14., ())),
    )

    cyClock(~now, ())
    cyVisit("https://example.cypress.io/commands/spies-stubs-clocks", ())
    cyGet("#tick-div", ())->clickP()->shouldHaveText("1489449600")

    cyTick(10000, ()) // 10 seconds passed
    cyGet("#tick-div", ())->clickP()->shouldHaveText("1489449610")
  })

  it("cy.stub() matches depending on arguments", () => {
    // see all possible matchers at
    // https://sinonjs.org/releases/latest/matchers/
    let greeter = {
      /**
       * Greets a person
       * @param {string} name
       */
      greet: name => `Hello, ${name}!`,
    }

    //   cy.stub(greeter, 'greet')
    // .callThrough() // if you want non-matched calls to call the real method
    // .withArgs(Cypress.sinon.match.string).returns('Hi')
    // .withArgs(Cypress.sinon.match.number).throws(new Error('Invalid name'))

    // cyStubWithObjectAndStringP(greeter, "greet")
    // ->callThroughP()
    // ->withArgs(Sinon.matchString)
    // ->returns("Hi") // if you want non-matched calls to call the real method
    // ->withArgs(Sinon.matchNumber)
    // ->throws(Js.Exn.raiseError("Tonio nicht gut."))

    // expect(greeter.greet("World"))->toEqual("Hi")
    // // @ts-ignore
    // expect(() => greeter.greet(42)).to.throw("Invalid name")
    // expect(greeter.greet).to.have.been.calledTwice

    // // non-matched calls goes the actual method
    // // @ts-ignore
    // expect(greeter.greet()).to.equal("Hello, undefined!")
  })

  // it("matches call arguments using Sinon matchers", () => {
  //   // see all possible matchers at
  //   // https://sinonjs.org/releases/latest/matchers/
  //   const calculator = {
  //     /**
  //      * returns the sum of two arguments
  //      * @param a {number}
  //      * @param b {number}
  //     */
  //     add (a, b) {
  //       return a + b
  //     },
  //   }

  //   const spy = cy.spy(calculator, "add").as("add")

  //   expect(calculator.add(2, 3)).to.equal(5)

  //   // if we want to assert the exact values used during the call
  //   expect(spy).to.be.calledWith(2, 3)

  //   // let"s confirm "add" method was called with two numbers
  //   expect(spy).to.be.calledWith(Cypress.sinon.match.number, Cypress.sinon.match.number)

  //   // alternatively, provide the value to match
  //   expect(spy).to.be.calledWith(Cypress.sinon.match(2), Cypress.sinon.match(3))

  //   // match any value
  //   expect(spy).to.be.calledWith(Cypress.sinon.match.any, 3)

  //   // match any value from a list
  //   expect(spy).to.be.calledWith(Cypress.sinon.match.in([1, 2, 3]), 3)

  //   /**
  //    * Returns true if the given number is event
  //    * @param {number} x
  //    */
  //   const isEven = (x) => x % 2 === 0

  //   // expect the value to pass a custom predicate function
  //   // the second argument to "sinon.match(predicate, message)" is
  //   // shown if the predicate does not pass and assertion fails
  //   expect(spy).to.be.calledWith(Cypress.sinon.match(isEven, "isEven"), 3)

  //   /**
  //    * Returns a function that checks if a given number is larger than the limit
  //    * @param {number} limit
  //    * @returns {(x: number) => boolean}
  //    */
  //   const isGreaterThan = (limit) => (x) => x > limit

  //   /**
  //    * Returns a function that checks if a given number is less than the limit
  //    * @param {number} limit
  //    * @returns {(x: number) => boolean}
  //    */
  //   const isLessThan = (limit) => (x) => x < limit

  //   // you can combine several matchers using "and", "or"
  //   expect(spy).to.be.calledWith(
  //     Cypress.sinon.match.number,
  //     Cypress.sinon.match(isGreaterThan(2), "> 2").and(Cypress.sinon.match(isLessThan(4), "< 4")),
  //   )

  //   expect(spy).to.be.calledWith(
  //     Cypress.sinon.match.number,
  //     Cypress.sinon.match(isGreaterThan(200), "> 200").or(Cypress.sinon.match(3)),
  //   )

  //   // matchers can be used from BDD assertions
  //   cy.get("@add").should("have.been.calledWith",
  //     Cypress.sinon.match.number, Cypress.sinon.match(3))

  //   // you can alias matchers for shorter test code
  //   const { match: M } = Cypress.sinon

  //   cy.get("@add").should("have.been.calledWith", M.number, M(3))
  // })
})
