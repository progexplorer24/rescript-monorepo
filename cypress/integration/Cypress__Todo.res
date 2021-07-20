open Cypress

describe("example to-do app", () => {
  beforeEach(() => {
    // Cypress starts out with a blank slate for each test
    // so we must tell it to visit our website with the `cy.visit()` command.
    // Since we want to visit the same URL at the start of all our tests,
    // we include it in our beforeEach function so that it runs before each test
    cyVisit("https://example.cypress.io/todo", ())
  })

  it("displays two todo items by default", () => {
    // We use the `cy.get()` command to get all elements that match the selector.
    // Then, we use `should` to assert that there are two matched items,
    // which are the two default items.
    cyGet(".todo-list li", ())->shouldHaveLength(2)

    // We can go even further and check that the default todos each contain
    // the correct text. We use the `first` and `last` functions
    // to get just the first and last matched elements individually,
    // and then perform an assertion with `should`.
    cyGet(".todo-list li", ())->firstP()->shouldHaveText("Pay electric bill")
    cyGet(".todo-list li", ())->lastP()->shouldHaveText("Walk the dog")
  })

  it("can add new todo items", () => {
    // We"ll store our item text in a variable so we can reuse it
    let newItem = "Feed the cat"

    // Let"s get the input element and use the `type` command to
    // input our new list item. After typing the content of our item,
    // we need to type the enter key as well in order to submit the input.
    // This input has a data-test attribute so we"ll use that to select the
    // element in accordance with best practices:
    // https://on.cypress.io/selecting-elements
    cyGet("[data-test=new-todo]", ())->type_(`${newItem}{enter}`, ())

    // Now that we"ve typed our new item, let"s check that it actually was added to the list.
    // Since it"s the newest item, it should exist as the last element in the list.
    // In addition, with the two default items, we should have a total of 3 elements in the list.
    // Since assertions yield the element that was asserted on,
    // we can chain both of these assertions together into a single statement.
    cyGet(".todo-list li", ())
    ->shouldHaveLengthP(3)
    ->lastP(~options=LastOptions.make(), ())
    ->shouldHaveText(newItem)
  })

  it("can check off an item as completed", () => {
    // In addition to using the `get` command to get an element by selector,
    // we can also use the `contains` command to get an element by its contents.
    // However, this will yield the <label>, which is lowest-level element that contains the text.
    // In order to check the item, we"ll find the <input> element for this <label>
    // by traversing up the dom to the parent element. From there, we can `find`
    // the child checkbox <input> element and use the `check` command to check it.
    cyContainsStringP("Pay electric bill", ())
    ->parentP()
    ->findP("input[type=checkbox]", ())
    ->check()

    // Now that we"ve checked the button, we can go ahead and make sure
    // that the list element is now marked as completed.
    // Again we"ll use `cyContains` to find the <label> element and then use the `parents` command
    // to traverse multiple levels up the dom until we find the corresponding <li> element.
    // Once we get that element, we can assert that it has the completed class.
    cyContainsStringP("Pay electric bill", ())
    ->parentsWithStringP("li", ())
    ->shouldHaveClass("completed")
  })

  context("with a checked task", () => {
    beforeEach(() => {
      // We"ll take the command we used above to check off an element
      // Since we want to perform multiple tests that start with checking
      // one element, we put it in the beforeEach hook
      // so that it runs at the start of every test.
      cyContainsStringP("Pay electric bill", ())
      ->parentP()
      ->findP("input[type=checkbox]", ~options=FindOptions.make(), ())
      ->check()
    })

    it("can filter for uncompleted tasks", () => {
      // We"ll click on the "active" button in order to
      // display only incomplete items
      cyContainsStringP("Active", ())->click()

      // After filtering, we can assert that there is only the one
      // incomplete item in the list.
      cyGet(".todo-list li", ())->shouldHaveLengthP(1)->firstP()->shouldHaveText("Walk the dog")

      // For good measure, let"s also assert that the task we checked off
      // does not exist on the page.
      cyContainsStringP("Pay electric bill", ())->shouldNotExist
    })

    it("can filter for completed tasks", () => {
      // We can perform similar steps as the test above to ensure
      // that only completed tasks are shown
      cyContainsStringP("Completed", ())->click()

      cyGet(".todo-list li", ())
      ->shouldHaveLengthP(1)
      ->firstP(~options=FirstOptions.make(), ())
      ->shouldHaveText("Pay electric bill")

      cyContainsStringP("Walk the dog", ())->shouldNotExist
    })

    it("can delete all completed tasks", () => {
      // First, let"s click the "Clear completed" button
      // `contains` is actually serving two purposes here.
      // First, it"s ensuring that the button exists within the dom.
      // This button only appears when at least one task is checked
      // so this command is implicitly verifying that it does exist.
      // Second, it selects the button so we can click it.
      cyContainsStringP("Clear completed", ())->click()

      // Then we can make sure that there is only one element
      // in the list and our element does not exist
      cyGet(".todo-list li", ())->shouldHaveLengthP(1)->shouldNotHaveText("Pay electric bill")

      // Finally, make sure that the clear button no longer exists.
      cyContainsStringP("Clear completed", ())->shouldNotExist
    })
  })
})
