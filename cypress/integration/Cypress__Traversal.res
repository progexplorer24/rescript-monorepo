open Cypress

context("Traversal", () => {
  beforeEach(() => {
    cyVisit("https://example.cypress.io/commands/traversal", ())
  })

  it(".children() - get child DOM elements", () => {
    // https://on.cypress.io/children
    cyGet(".traversal-breadcrumb", ())->childrenWithStringP(".active", ())->shouldContain("Data")
  })

  it(".closest() - get closest ancestor DOM element", () => {
    // https://on.cypress.io/closest
    cyGet(".traversal-badge", ())->closestP("ul", ())->shouldHaveClass("list-group")
  })

  it(".eq() - get a DOM element at a specific index", () => {
    // https://on.cypress.io/eq
    cyGet(".traversal-list>li", ())->eqP(1, ())->shouldContain("siamese")
  })

  it(".filter() - get DOM elements that match the selector", () => {
    // https://on.cypress.io/filter
    cyGet(".traversal-nav>li", ())->filterP(".active", ())->shouldContain("About")
  })

  it(".find() - get descendant DOM elements of the selector", () => {
    // https://on.cypress.io/find
    cyGet(".traversal-pagination", ())->findP("li", ())->findP("a", ())->shouldHaveLength(7)
  })

  it(".first() - get first DOM element", () => {
    // https://on.cypress.io/first
    cyGet(".traversal-table td", ())->firstP()->shouldContain("1")
  })

  it(".last() - get last DOM element", () => {
    // https://on.cypress.io/last
    cyGet(".traversal-buttons .btn", ())->lastP()->shouldContain("Submit")
  })

  it(".next() - get next sibling DOM element", () => {
    // https://on.cypress.io/next
    cyGet(".traversal-ul", ())->containsStringP("apples", ())->nextP()->shouldContain("oranges")
  })

  it(".next() - get next sibling DOM element", () => {
    // https://on.cypress.io/next
    cyGet(".traversal-ul", ())
    ->containsStringP("apples", ())
    ->nextP(~options=NextOptions.make(), ())
    ->shouldContain("oranges")
  })

  it(".nextAll() - get all next sibling DOM elements", () => {
    // https://on.cypress.io/nextall
    cyGet(".traversal-next-all", ())
    ->containsStringP("oranges", ())
    ->nextAllP()
    ->shouldHaveLength(3)
  })

  it(".nextAll() - get all next sibling DOM elements", () => {
    // https://on.cypress.io/nextall
    cyGet(".traversal-next-all", ())
    ->containsStringP("oranges", ())
    ->nextAllP(~options=NextOptions.make(), ())
    ->shouldHaveLength(3)
  })

  it(".nextUntil() - get next sibling DOM elements until next el", () => {
    // https://on.cypress.io/nextuntil
    cyGet("#veggies", ())->nextUntilStringP("#nuts", ())->shouldHaveLength(3)
  })

  it(".nextUntil() - get next sibling DOM elements until next el", () => {
    // https://on.cypress.io/nextuntil
    cyGet("#veggies", ())->nextUntilStringP("#nuts", ())->shouldHaveLength(3)
  })

  it(".nextUntil() - get next sibling DOM elements until next el", () => {
    // https://on.cypress.io/nextuntil
    cyGet("#veggies", ())->nextUntilStringP("#nuts", ~filter="ul", ())->shouldHaveLength(0)
  })

  it(".not() - remove DOM elements from set of DOM elements", () => {
    // https://on.cypress.io/not
    cyGet(".traversal-disabled .btn", ())
    ->Cypress.notP("[disabled]", ())
    ->shouldNotContain("Disabled")
  })

  it(".parent() - get parent DOM element from DOM elements", () => {
    // https://on.cypress.io/parent
    cyGet(".traversal-mark", ())->parentP()->shouldContain("Morbi leo risus")
  })

  it(".parents() - get parent DOM elements from DOM elements", () => {
    // https://on.cypress.io/parents
    cyGet(".traversal-cite", ())->parentsP()->shouldMatch("blockquote")
  })

  it(".parentsUntil() - get parent DOM elements from DOM elements until el", () => {
    // https://on.cypress.io/parentsuntil
    cyGet(".clothes-nav", ())
    ->findP(".active", ())
    ->parentsUntilStringP(".clothes-nav", ())
    ->shouldHaveLength(2)
  })

  it(".prev() - get previous sibling DOM element", () => {
    // https://on.cypress.io/prev
    cyGet(".birds", ())->findP(".active", ())->prevP()->shouldContain("Lorikeets")
  })

  it(".prevAll() - get all previous sibling DOM elements", () => {
    // https://on.cypress.io/prevall
    cyGet(".fruits-list", ())->findP(".third", ())->prevAllP()->shouldHaveLength(2)
  })

  it(".prevUntil() - get all previous sibling DOM elements until el", () => {
    // https://on.cypress.io/prevuntil
    cyGet(".foods-list", ())
    ->findP("#nuts", ())
    ->prevUntilStringP("#veggies", ())
    ->shouldHaveLength(3)
  })

  it(".siblings() - get all sibling DOM elements", () => {
    // https://on.cypress.io/siblings
    cyGet(".traversal-pills .active", ())->siblingsP()->shouldHaveLength(2)
  })
})
