open Jest

/* REGION: Before & after #region 
    
   ENDREGION: Before & after #endregion */

let sum = Sum.sum
type callback
let drinkAll = (callback, flavour) => flavour !== "octopus" ? flavour : callback(flavour)

type data = {num: int, name: string}
type person = {
  name: string,
  mutable age: int,
}

type obj = {
  id: string,
  product: string,
  url: string,
}

let globalValue1 = ref(0)

// INFO: afterAll & beforeAll not working

ResJest.describe("Snapshots", () => {
  module H1 = {
    let styles = Css.declaration("float", "left")

    @react.component
    let make = (~children) => <h1 className=styles> children </h1>
  }

  ResJest.test("renders with correct styles", () => {
    let tree =
      ReactTestRenderer.create(<H1> {"hello world"->Utils.str} </H1>)->ReactTestRenderer.toJSON

    ResJest.expect(tree)->toMatchSnapshot()
  })
  ()
})

ResJest.describe("Common Matchers", () => {
  ResJest.test("toBe", () => {
    ResJest.expect(sum(1, 2))->toBe(3)
  })

  ResJest.test("two plus two is four", () => {
    ResJest.expect(2 + 2)->toBe(4)
  })

  ResJest.test("two plus two is not five", () => {
    ResJest.expect(2 + 2)->notToBe(5)
  })

  ResJest.test("object assignment using rescript records", () => {
    let data: data = {num: 1, name: "test"}
    // Immutable updates
    let dataUpdate = {...data, num: data.num + 1}
    /* NOTE: Mutable Update
      Record fields can optionally be mutable. This allows you to efficiently update those fields in-place with the = operator.
 */
    let dataMutable: person = {name: "Baby", age: 5}
    dataMutable.age = dataMutable.age + 1
    ResJest.expect(data)->toEqual({num: 1, name: "test"})
    ResJest.expect(dataUpdate)->toEqual({num: 2, name: "test"})
    ResJest.expect(dataMutable)->toEqual({age: 6, name: "Baby"})
  })

  ResJest.test("null", () => {
    let null = Js.null
    let undefined = Js.undefined
    let _true = true

    ResJest.expect(null)->toBeDefined()
    ResJest.expect(undefined)->notToBeDefined()

    ResJest.expect(null)->toBeNull()
    ResJest.expect(undefined)->notToBeNull()

    ResJest.expect(undefined)->toBeUndefined()
    ResJest.expect(null)->notToBeUndefined()

    ResJest.expect(_true)->toBeTruthy()
    ResJest.expect(null)->notToBeTruthy()

    ResJest.expect(null)->toBeFalsy()
    ResJest.expect(_true)->notToBeFalsy()
  })

  ResJest.test("zero", () => {
    let z = 0
    ResJest.expect(z)->notToBeNull()
    ResJest.expect(z)->toBeDefined()
    ResJest.expect(z)->notToBeUndefined()
    ResJest.expect(z)->notToBeTruthy()
    ResJest.expect(z)->toBeFalsy()
  })

  ResJest.test("two plus two", () => {
    let value = 2 + 2
    ResJest.expect(value)->toBeGreaterThan(3)
    ResJest.expect(value)->toBeGreaterThanOrEqual(3.5)
    ResJest.expect(value)->toBeLessThan(5)
    ResJest.expect(value)->toBeLessThanOrEqual(4.5)

    // toBe and toEqual are equivalent for numbers
    ResJest.expect(value)->toBe(4)
    ResJest.expect(value)->toEqual(4)
  })

  ResJest.test("adding floating point numbers", () => {
    let value = 0.1 +. 0.2
    //expect(value).toBe(0.3)           This won't work because of rounding error
    ResJest.expect(value)->toBeCloseTo(0.3) // This works.
  })

  ResJest.test("the shopping list has beer on it", () => {
    let shoppingList = ["diapers", "kleenex", "trash bags", "paper towels", "beer"]
    ResJest.expect(shoppingList)->toContain("beer")
    ResJest.expect(shoppingList)->notToContain("BEER")

    // TODO: Fix imports from Belt std
    // let shoppingSet = Belt.Set.String.fromArray(shoppingList)
    // expect(. shoppingSet)->toContain("beer")
  })

  ResJest.test("there is no I in team", () => {
    ResJest.expect("team")->notToMatch(%re("/I/"))
  })

  ResJest.test("but there is a 'stop' in Christoph", () => {
    ResJest.expect("Christoph")->toMatch(%re("/stop/"))
  })

  ResJest.test("id should match object", () => {
    let obj = {
      id: "111",
      product: "Test",
      url: "https://jestjs.io/",
    }
    ResJest.expect(obj)->toEqual(
      objectContaining({
        "id": "111",
      }),
    )
    ResJest.expect(obj)->toEqual(
      notObjectContaining({
        "title": "Test",
      }),
    )
  })

  ResJest.test("String containing", () => {
    ResJest.expect("abcdefghijk")->toEqual(stringContaining("abcde"))
    ResJest.expect("abcdefghijk")->notToEqual(stringContaining("abce"))
  })
  ResJest.test("String matching", () => {
    ResJest.expect("abcdefghijk")->toEqual(stringContaining("abcde"))
    ResJest.expect("abcdefghijk")->notToEqual(stringContaining("abce"))
  })
  ()
})

ResJest.describe("Array Containing", () => {
  let expected = ["Alice", "Bob"]
  ResJest.it("matches even if received contains additional elements", () => {
    ResJest.expect(["Alice", "Bob", "Eve"])->toEqual(arrayContaining(expected))
  })

  ResJest.it("matches even if received contains additional elements", () => {
    ResJest.expect(["Bob", "Eve"])->toEqual(notArrayContaining(expected))
  })

  ResJest.it("does not match if received does not contain expected elements", () => {
    ResJest.expect(["Bob", "Eve"])->notToEqual(arrayContaining(expected))
  })
  ()
})

ResJest.describe("stringMatching in arrayContaining", () => {
  let expected = [stringMatching(%re("/^Alic/")), stringMatching(%re("/^[BR]ob/"))]
  ResJest.it("matches even if received contains additional elements", () => {
    ResJest.expect(["Alicia", "Roberto", "Evelina"])->toEqual(arrayContaining(expected))
  })
  ResJest.it("does not match if received does not contain expected elements", () => {
    ResJest.expect(["Roberto", "Evelina"])->notToEqual(arrayContaining(expected))
  })
  ()
})

ResJest.describe("Mock function", () => {
  ResJest.test("drinks something lemon-flavoured", () => {
    let mockFn = Mock.fn()
    let _call = mockFn()
    ResJest.expect(mockFn)->toHaveBeenCalled()
  })

  ()
})
ResJest.describe("Mock function with implementation", () => {
  ResJest.test("drinks something lemon-flavoured", () => {
    let returnsTrue = Mock.fnWithImplementation(() => true)
    ResJest.expect(returnsTrue())->toBe(true)
  })

  ()
})

//  TODO: Make it work
// describe(."drinkAll", (. ()) => {
//   test(."drinks something lemon-flavoured", (. ()) => {
//     let drink = Mock.fn()
//     drinkAll(drink, "lemon")
//     expect(drink).toHaveBeenCalled()
//   })

//   test("does not drink something octopus-flavoured", () => {
//     let drink = jest.fn()
//     drinkAll(drink, "octopus")
//     expect(drink).not.toHaveBeenCalled()
//   })
//   ()
// })

ResJest.describe("Lifecycle", () => {
  let persistentValue = ref(0)

  ResJest.beforeEach(() => persistentValue := persistentValue.contents + 1)

  ResJest.afterEach(() => {persistentValue := persistentValue.contents - 1})

  ResJest.test("runs lifecycle the first time", () => {
    ResJest.expect(persistentValue.contents)->toBe(1)
  })

  ResJest.test("runs lifecycle each time", () => {
    ResJest.expect(persistentValue.contents)->toBe(1)
  })
  ()
})

// describeOnly(."Execute only this block", (. ()) => {
//   let persistentValue = ref(0)

//   beforeEach(.(. ()) => persistentValue := persistentValue.contents + 1)

//   afterEach(.(. ()) => {persistentValue := persistentValue.contents - 1})

//   test(."runs lifecycle the first time", (. ()) => {
//     expect(. persistentValue.contents)->toBe(1)
//   })

//   test(."runs lifecycle each time", (. ()) => {
//     expect(. persistentValue.contents)->toBe(1)
//   })
//   ()
// })

// describe(."Test only each", (. ()) => {
//   testOnlyEach(. [[1, 1, 2], [1, 2, 3], [2, 1, 3]])(.".add(%i, %i)", (. a, b, expected) => {
//     expect(. a + b)->toBe(expected)
//   })
// })

// describeOnlyEach(. [[1, 1, 2], [1, 2, 3], [2, 1, 3]])(.".add(%i, %i)", (. a, b, expected) => {
//   test(.`returns ${Belt.Int.toString(expected)}`, (. ()) => {
//     expect(. a + b)->toBe(expected)
//   })
//   ()
// })

ResJest.describe("Skips other tests", () => {
  let persistentValue = ref(0)

  ResJest.beforeEach(() => persistentValue := persistentValue.contents + 1)

  ResJest.afterEach(() => {persistentValue := persistentValue.contents - 1})

  ResJest.testSkip("runs lifecycle the first time", () => {
    ResJest.expect(persistentValue.contents)->toBe(1)
  })

  ResJest.test("runs lifecycle each time", () => {
    ResJest.expect(persistentValue.contents)->toBe(1)
  })
  ()
})

ResJest.describeSkip("Lifecycle", () => {
  let persistentValue = ref(0)

  beforeEach(.(. ()) => persistentValue := persistentValue.contents + 1)

  afterEach(.(. ()) => {persistentValue := persistentValue.contents - 1})

  test(."runs lifecycle the first time", (. ()) => {
    expect(. persistentValue.contents)->toBe(1)
  })

  test(."runs lifecycle each time", (. ()) => {
    expect(. persistentValue.contents)->toBe(1)
  })
  ()
})

describe(."Test each functionality", (. ()) => {
  testEach(. [[1, 1, 2], [1, 2, 3], [2, 1, 3]])(.".add(%i, %i)", (. a, b, expected) => {
    expect(. a + b)->toBe(expected)
  })
  itEach(. [[1, 1, 2], [1, 2, 3], [2, 1, 3]])(.".add(%i, %i)", (. a, b, expected) => {
    expect(. a + b)->toBe(expected)
  })
  ()
})

describe(."Test skip each", (. ()) => {
  testSkipEach(. [[1, 1, 2], [1, 2, 3], [2, 1, 3]])(.".add(%i, %i)", (. a, b, expected) => {
    expect(. a + b)->toBe(expected)
  })
  ()
})

describe(."Todo works", (. ()) => {
  testTodo(. "Write test 1")
  testTodo(. "Write test 2")
  testTodo(. "Write test 3")
  ()
})

describeEach2(. [[1, 1, 2], [1, 2, 3], [2, 1, 3]])(.".add(%i, %i)", (. a, b, expected) => {
  test(.`returns ${Belt.Int.toString(expected)}`, (. ()) => {
    expect(. a + b)->toBe(expected)
  })

  test(.`returned value not be greater than ${Belt.Int.toString(expected)}`, (. ()) => {
    expect(. a + b)->notToBeGreaterThan(expected)
  })

  test(.`returned value not be less than ${Belt.Int.toString(expected)}`, (. ()) => {
    expect(. a + b)->notToBeLessThan(expected)
  })
  ()
})
