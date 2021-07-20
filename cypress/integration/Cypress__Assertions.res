open Cypress

type sampleObject = {foo: string}

type sampleObject2 = {a: int}

type deepObject = {x: sampleObject2}

type sampleObject3 = {a: int, b: int}
type sampleObject4 = {a: int, b: int, c: int}

context("Assertions", () => {
  beforeEach(() => {
    cyVisit("https://example.cypress.io/commands/assertions", ())
  })

  describe("Implicit Assertions", () => {
    it(".should() - make an assertion about the current subject", () => {
      // https://on.cypress.io/should
      cyGet(".assertion-table", ())
      ->findP("tbody tr:last", ~options=FindOptions.make(), ())
      ->shouldHaveClassP("success")
      ->findP("td", ())
      ->firstP()
      ->shouldHaveTextP("Column content")
      ->shouldContainP("Column content")
      ->shouldHaveHtmlP(
        // checking the text of the <td> element in various ways
        "Column content",
      )
      ->shouldMatchP("td")
      ->invokeP("text", ~args=[])
      ->shouldMatchRe(%re("/column content/i"))
      // chai-jquery uses "is()" to check if element matches selector
      // to match text content against a regular expression
      // first need to invoke jQuery method text()
      // and then match using regular expression

      // a better way to check element"s text content against a regular expression
      // is to use "cy.contains"
      // https://on.cypress.io/contains
      cyGet(".assertion-table", ())
      ->findP("tbody tr:last", ())
      ->containsReP(
        // finds first <td> element with text content matching regular expression
        ~selector="td",
        %re("/column content/i"),
        (),
      )
      ->shouldBeVisible

      // for more information about asserting element"s text
      // see https://on.cypress.io/using-cypress-faq#How-do-I-get-an-element’s-text-contents
    })

    it(".and() - chain multiple assertions together", () => {
      // https://on.cypress.io/and
      cyGet(".assertions-link", ())
      ->shouldHaveClassP("active")
      ->andHaveAttrP("href")
      ->andInclude("cypress.io")
    })
  })

  describe("Explicit Assertions", () => {
    // https://on.cypress.io/assertions
    it("expect - make an assertion about a specified subject", () => {
      // We can use Chai"s BDD style assertions
      expect(true)->toEqual(true)
      expect(false)->notToEqual(true)
      let o = {foo: "bar"}
      expect(o)->toEqual(o)
      expect(o)->toDeepEqual({foo: "bar"})
      // // matching text using regular expression
      expect("FooBar")->toMatchRe(%re("/bar$/i"))
    })

    it("pass your own callback function to should()", () => {
      // Pass a function to should that can have any number
      // of explicit assertions within it.
      // The ".should(cb)" function will be retried
      // automatically until it passes all your explicit assertions or times out.
      cyGet(".assertions-p", ())
      ->findP("p", ())
      ->shouldWithCallback(p => {
        // https://on.cypress.io/$
        // return an array of texts from all of the p"s
        let paragraphsRaw = p->JQuery.get()
        let paragraphs =
          paragraphsRaw->Js.Array2.map(element => Webapi.Dom.Element.textContent(element))
        // array should have length of 3
        expectWithDescription(p, "has 3 paragraphs")->toHaveLength(3)

        // use second argument to expect(...) to provide clear
        // message with each assertion
        expectWithDescription(paragraphs, "has expected text in each paragraph")->toDeepEqual([
          "Some text from first p",
          "More text from second p",
          "And even more text from third p",
        ])
      })
    })

    it("finds element by class name regex", () => {
      cyGet(".docs-header", ())
      ->findP("div", ())
      // .should(cb) callback function will be retried
      ->shouldWithCallbackP(divRaw => {
        let div = divRaw->JQuery.get()
        expect(div)->toHaveLength(1)

        let className = Webapi.Dom.Element.className(div[0])

        expect(className)->toMatchRe(%re("/heading-/"))
      })
      ->then(div => {
        // .then(cb) callback is not retried,
        // it either passes or fails
        expectWithDescription(div, "text content")->toHaveText("Introduction")
      })
    })

    it("matches unknown text between two elements", () => {
      /**
       * Text from the first element.
       * @type {string}
       */
      let text = ref("")

      /**
       * Normalizes passed text,
       * useful before comparing text with spaces and different capitalization.
       * @param {string} s Text to normalize
       */
      let normalizeText = s => s->Js.String2.replaceByRe(%re("/\s/g"), "")->Js.String2.toLowerCase

      cyGet(".two-elements", ())
      ->findP(".first", ())
      ->then(firstRaw => {
        let first = firstRaw->JQuery.get()
        // save text from the first element
        Js.log(first)
        text := normalizeText(Webapi.Dom.Element.textContent(first[0]))
      })

      cyGet(".two-elements", ())
      ->findP(".second", ())
      ->shouldWithCallback(divRaw => {
        let div = divRaw->JQuery.get()
        // we can massage text before comparing
        let secondText = normalizeText(Webapi.Dom.Element.textContent(div[0]))

        expectWithDescription(secondText, "second text")->toEqual(text.contents)
      })
    })

    it("includes all chai examples", () => {
      //INFO: Deep
      // Target object deeply (but not strictly) equals `{a: 1}`
      expect({a: 1})->toDeepEqual({a: 1})
      expect({a: 1})->notToEqual({a: 1})

      // Target array deeply (but not strictly) includes `{a: 1}`
      expect([{a: 1}])->toDeepInclude({a: 1})
      expect([{a: 1}])->notToInclude({a: 1})

      // Target object deeply (but not strictly) includes `x: {a: 1}`
      expect({x: {a: 1}})->toDeepInclude({x: {a: 1}})
      expect({x: {a: 1}})->notToInclude({x: {a: 1}})

      // Target array deeply (but not strictly) has member `{a: 1}`
      expect([{a: 1}])->toHaveDeepMembers([{a: 1}])
      expect([{a: 1}])->notToHaveMembers([{a: 1}])

      expect([1, 2, 3])->toInclude(2)
      expect("foobar")->toInclude("foo")
      expect({a: 1, b: 2, c: 3})->toInclude({a: 1, b: 2})
      expect([])->toDeepEqual([])
    })

    it("retries the should callback until assertions pass", () => {
      cyGet("#random-number", ())->shouldWithCallback(divRaw => {
        let div = divRaw->JQuery.get()

        let n = Belt.Int.fromString(Webapi.Dom.Element.textContent(div[0]))

        expect(n)->toBeGteIntP(1)->toBeLteInt(10)
      })
    })
  })
})
