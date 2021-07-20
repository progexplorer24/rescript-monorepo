open Cypress

context("Actions", () => {
  beforeEach(() => {
    cyVisit("https://example.cypress.io/commands/actions", ())
  })

  // https://on.cypress.io/interacting-with-elements

  it(".type() - type into a DOM element", () => {
    let optionsObject1 = TypeOptions.make(~delay=100, ())
    let optionsObject2 = TypeOptions.make(~force=true, ())

    // https://on.cypress.io/type
    cyGet(".action-email", ())
    ->typeP("fake@email.com", ())
    ->shouldHaveValueP("fake@email.com")
    // .type() with special character sequences
    ->typeP("{leftarrow}{rightarrow}{uparrow}{downarrow}", ())
    ->typeP("{del}{selectall}{backspace}", ())

    // .type() with key modifiers
    ->typeP("{alt}{option}", ()) //these are equivalent
    ->typeP("{ctrl}{control}", ()) //these are equivalent
    ->typeP("{meta}{command}{cmd}", ()) //these are equivalent
    ->typeP("{shift}", ())

    // Delay each keypress by 0.1 sec
    ->typeP("slow.typing@email.com", ~options=optionsObject1, ())
    ->shouldHaveValue("slow.typing@email.com")

    cyGet(".action-disabled", ())
    ->// Ignore error checking prior to type
    // like whether the input is visible or disabled
    typeP("disabled error checking", ~options=optionsObject2, ())
    ->shouldHaveValue("disabled error checking")
  })

  it(".focus() - focus on a DOM element", () => {
    // https://on.cypress.io/focus
    cyGet(".action-focus", ())
    ->focusP()
    ->shouldP(#haveClass, ["focus"])
    ->prevP()
    ->shouldP(#haveAttr, ["style", "color: orange;"])
    ->should(#notHaveAttr, ["style", "color: black;"])
  })

  it(".blur() - blur off a DOM element", () => {
    // https://on.cypress.io/blur
    cyGet(".action-blur", ())
    ->typeP("About to blur", ())
    ->blurP()
    ->shouldP(#haveClass, ["error"])
    ->prevP()
    ->shouldHaveAttrWithValue("style", "color: red;")

    // https://on.cypress.io/blur
    cyGet(".action-blur", ())
    ->typeP("About to blur", ())
    ->blurP(~options=BlurOptions.make(), ())
    ->shouldHaveClassP("error")
    ->prevP()
    ->shouldHaveAttrWithValue("style", "color: red;")
  })

  it(".clear() - clears an input or textarea element", () => {
    // https://on.cypress.io/clear
    cyGet(".action-clear", ())
    ->typeP("Clear this text", ())
    ->shouldHaveValueP("Clear this text")
    ->clearP()
    ->should(#haveValue, [""])

    // clear with options
    cyGet(".action-clear", ())
    ->typeP("Clear this text", ())
    ->shouldP(#haveValue, ["Clear this text"])
    ->clearP(~options=ClearOptions.make(), ())
    ->shouldHaveValue("")

    // https://on.cypress.io/clear
    cyGet(".action-clear", ())
    ->typeP("Clear this text", ())
    ->shouldP(#haveValue, ["Clear this text"])
    ->clear()

    // clear with options
    cyGet(".action-clear", ())
    ->typeP("Clear this text", ())
    ->shouldHaveValueP("Clear this text")
    ->clear(~options=ClearOptions.make(), ())
  })

  it(".submit() - submit a form", () => {
    // https://on.cypress.io/submit
    cyGet(".action-form", ())->findP("[type=\"text\"]", ())->type_("HALFOFF", ())

    cyGet(".action-form", ())->submitP()->nextP()->shouldContain("Your form has been submitted!")
  })

  it(".click() - click on a DOM element", () => {
    let clickOptions = ClickOptions.make(~multiple=true, ())
    let clickOptions2 = ClickOptions.make(~force=true, ())
    // https://on.cypress.io/click
    cyGet(".action-btn", ())->click()

    // You can click on 9 specific positions of an element:
    //  -----------------------------------
    // | topLeft        top       topRight |
    // |                                   |
    // |                                   |
    // |                                   |
    // | left          center        right |
    // |                                   |
    // |                                   |
    // |                                   |
    // | bottomLeft   bottom   bottomRight |
    //  -----------------------------------

    // clicking in the center of the element is the default
    cyGet("#action-canvas", ())->click()

    cyGet("#action-canvas", ())->clickWithPosition(#topLeft, ())
    cyGet("#action-canvas", ())->clickWithPosition(#top, ())
    cyGet("#action-canvas", ())->clickWithPosition(#topRight, ())
    cyGet("#action-canvas", ())->clickWithPosition(#left, ())
    cyGet("#action-canvas", ())->clickWithPosition(#left, ~options=ClickOptions.make(), ())
    cyGet("#action-canvas", ())->clickWithPosition(#right, ())
    cyGet("#action-canvas", ())->clickWithPosition(#bottomLeft, ())
    cyGet("#action-canvas", ())->clickWithPosition(#bottom, ())
    cyGet("#action-canvas", ())->clickWithPosition(#bottom, ~options=ClickOptions.make(), ())
    cyGet("#action-canvas", ())->clickWithPosition(#bottomRight, ())

    // .click() accepts an x and y coordinate
    // that controls where the click occurs :)

    cyGet("#action-canvas", ())
    ->clickWithXYP(~x=80, ~y=75, ())
    ->clickWithXYP(~x=170, ~y=75, ~options=ClickOptions.make(), ())
    ->clickWithXYP(~x=80, ~y=165, ())
    ->clickWithXYP(~x=100, ~y=185, ~options=ClickOptions.make(), ())
    ->clickWithXYP(
      ~x=// click 80px on x coord and 75px on y coord
      125,
      ~y=190,
      (),
    )
    ->clickWithXYP(~x=150, ~y=185, ())
    ->clickWithXY(~x=170, ~y=165, ())

    // click multiple elements by passing multiple: true
    cyGet(".action-labels>.label", ())->click(~options=clickOptions, ())

    // Ignore error checking prior to clicking
    cyGet(".action-opacity>.btn", ())->click(~options=clickOptions2, ())
  })

  it("can use `children` function", () => {
    cyGet("#navbar", ())
    ->childrenP()
    ->then(value => {
      let elements = JQuery.get(value, ())
      Js.log(elements)
    })
    cyGet("#navbar", ())->children(~options=ChildrenOptions.make(), ())
    cyGet("#navbar", ())->childrenWithString("ul", ())
    cyGet("#navbar", ())->childrenWithString("ul", ~options=ChildrenOptions.make(), ())
  })

  it(".dblclick() - double click on a DOM element", () => {
    // https://on.cypress.io/dblclick

    // Our app has a listener on "dblclick" event in our "scripts.js"
    // that hides the div and shows an input on double click
    cyGet(".action-div", ())->dblclickP()->shouldNotBeVisible
    cyGet(".action-input-hidden", ())->shouldBeVisible
  })

  it(".rightclick() - right click on a DOM element", () => {
    // https://on.cypress.io/rightclick

    // Our app has a listener on "contextmenu" event in our "scripts.js"
    // that hides the div and shows an input on right click
    cyGet(".rightclick-action-div", ())->rightClickP()->shouldNotBeVisible
    cyGet(".rightclick-action-input-hidden", ())->shouldBeVisible
  })

  it(".check() - check a checkbox or radio element", () => {
    // https://on.cypress.io/check
    let checkOptions = CheckOptions.make(~force=true, ())

    // By default, .check() will check all
    // matching checkbox or radio elements in succession, one after another
    cyGet(".action-checkboxes [type=\"checkbox\"]", ())
    ->Cypress.notP("[disabled]", ())
    ->checkP(~options=CheckOptions.make(), ())
    ->shouldBeChecked

    cyGet(".action-radios [type=\"radio\"]", ())
    ->Cypress.notP("[disabled]", ~options=NotOptions.make(), ())
    ->checkP()
    ->shouldBeChecked
    cyGet(".action-radios [type=\"radio\"]", ())
    ->Cypress.notP("[disabled]", ())
    ->checkP(~options=CheckOptions.make(), ())
    ->shouldBeChecked

    // .check() accepts a value argument
    cyGet(".action-radios [type=\"radio\"]", ())->checkWithStringP("radio1", ())->shouldBeChecked

    // .check() accepts a value argument with options
    cyGet(".action-radios [type=\"radio\"]", ())
    ->checkWithStringP("radio1", ~options=CheckOptions.make(), ())
    ->shouldBeChecked

    // .check() accepts an array of values
    cyGet(".action-multiple-checkboxes [type=\"checkbox\"]", ())
    ->checkWithArrayP(["checkbox1", "checkbox2"], ())
    ->shouldBeChecked

    // .check() accepts an array of values with options
    cyGet(".action-multiple-checkboxes [type=\"checkbox\"]", ())
    ->checkWithArrayP(["checkbox1", "checkbox2"], ~options=CheckOptions.make(), ())
    ->shouldBeChecked

    // Ignore error checking prior to checking
    cyGet(".action-checkboxes [disabled]", ())->checkP(~options=checkOptions, ())->shouldBeChecked

    cyGet(".action-radios [type=\"radio\"]", ())
    ->checkWithStringP("radio3", ~options=checkOptions, ())
    ->shouldBeChecked
  })

  it(".uncheck() - uncheck a checkbox element", () => {
    let checkOptions = CheckOptions.make(~force=true, ())
    // https://on.cypress.io/uncheck

    // By default, .uncheck() will uncheck all matching
    // checkbox elements in succession, one after another
    cyGet(".action-check [type=\"checkbox\"]", ())
    ->Cypress.notP("[disabled]", ())
    ->uncheckP()
    ->shouldNotBeChecked

    // .uncheck() accepts a value argument
    cyGet(".action-check [type=\"checkbox\"]", ())
    ->checkWithStringP("checkbox1", ())
    ->uncheckWithStringP("checkbox1", ())
    ->shouldNotBeChecked

    // .uncheck() accepts an array of values
    cyGet(".action-check [type=\"checkbox\"]", ())
    ->checkWithArrayP(["checkbox1", "checkbox3"], ())
    ->uncheckWithArrayP(["checkbox1", "checkbox3"], ())
    ->shouldNotBeChecked

    // Ignore error checking prior to unchecking
    cyGet(".action-check [disabled]", ())->uncheckP(~options=checkOptions, ())->shouldNotBeChecked
  })

  it(".select() - select an option in a <select> element", () => {
    // https://on.cypress.io/select

    // at first, no option should be selected
    cyGet(".action-select", ())->shouldHaveValue("--Select a fruit--")

    // Select option(s) with matching text content
    cyGet(".action-select", ())->select("apples", ())
    // confirm the apples were selected
    // note that each value starts with "fr-" in our HTML
    cyGet(".action-select", ())->shouldHaveValue("fr-apples")

    cyGet(".action-select-multiple", ())
    ->selectWithArrayP(["apples", "oranges", "bananas"], ())
    ->invokeP("val", ~args=[])
    ->shouldDeepEqual(// when getting multiple values, invoke "val" method first
    ["fr-apples", "fr-oranges", "fr-bananas"])

    // Select option(s) with matching value
    cyGet(".action-select", ())
    ->selectP(~options=SelectOptions.make(), "fr-bananas", ())
    ->shouldHaveValue("fr-bananas")
    // can attach an assertion right away to the element

    cyGet(".action-select-multiple", ())
    ->selectWithArrayP(["fr-apples", "fr-oranges", "fr-bananas"], ())
    ->invokeP("val", ~args=[])
    ->shouldDeepEqual(["fr-apples", "fr-oranges", "fr-bananas"])

    // assert the selected values include oranges
    cyGet(".action-select-multiple", ())->invokeP("val", ~args=[])->shouldInclude("fr-oranges")
  })

  it(".scrollIntoView() - scroll an element into view", () => {
    // https://on.cypress.io/scrollintoview

    // normally all of these buttons are hidden,
    // because they"re not within
    // the viewable area of their parent
    // (we need to scroll to see them)
    cyGet("#scroll-horizontal button", ())->shouldNotBeVisible

    // scroll the button into view, as if the user had scrolled
    cyGet("#scroll-horizontal button", ())->scrollIntoViewP()->shouldBeVisible

    cyGet("#scroll-vertical button", ())->shouldNotBeVisible

    // Cypress handles the scroll direction needed
    cyGet("#scroll-vertical button", ())->scrollIntoViewP()->shouldBeVisible

    cyGet("#scroll-both button", ())->shouldNotBeVisible

    // Cypress knows to scroll to the right and down
    cyGet("#scroll-both button", ())->scrollIntoViewP()->shouldBeVisible
  })

  it(".trigger() - trigger an event on a DOM element", () => {
    // https://on.cypress.io/trigger

    // To interact with a range input (slider)
    // we need to set its value & trigger the
    // event to signal it changed

    // Here, we invoke jQuery"s val() method to set
    // the value and trigger the "change" event
    cyGet(".trigger-input-range", ())
    ->invokeP("val", ~args=[25])
    ->triggerP("change", ())
    ->get("input[type=range]", ())
    ->siblingsWithStringP("p", ())
    ->shouldHaveText("25")
  })

  it("cy.scrollTo() - scroll the window or element to a position", () => {
    // https://on.cypress.io/scrollto
    let scrollOptions1 = ScrollToOptions.make(~easing="linear", ())
    let scrollOptions2 = ScrollToOptions.make(~duration=2000, ())
    // You can scroll to 9 specific positions of an element:
    //  -----------------------------------
    // | topLeft        top       topRight |
    // |                                   |
    // |                                   |
    // |                                   |
    // | left          center        right |
    // |                                   |
    // |                                   |
    // |                                   |
    // | bottomLeft   bottom   bottomRight |
    //  -----------------------------------

    // if you chain .scrollTo() off of cy, we will
    // scroll the entire window
    cyScrollTo(#bottom, ())

    cyGet("#scrollable-horizontal", ())->scrollTo(#right, ())

    // or you can scroll to a specific coordinate:
    // (x axis, y axis) in pixels
    cyGet("#scrollable-vertical", ())->scrollToWithCoord(~x=250, ~y=250, ())

    // or you can scroll to a specific percentage
    // of the (width, height) of the element
    cyGet("#scrollable-both", ())->scrollToWithPercentages(~width="75%", ~height="25%", ())

    // control the easing of the scroll (default is "swing")
    cyGet("#scrollable-vertical", ())->scrollTo(#center, ~options=scrollOptions1, ())

    // control the duration of the scroll (in ms)
    cyGet("#scrollable-both", ())->scrollTo(#center, ~options=scrollOptions2, ())
  })
})
