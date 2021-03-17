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

describe(."Snapshots", (. ()) => {
  module H1 = {
    let styles = Css.declaration("float", "left")

    @react.component
    let make = (~children) => <h1 className=styles> children </h1>
  }

  test(."renders with correct styles", (. ()) => {
    let tree =
      ReactTestRenderer.create(<H1> {"hello world"->Utils.str} </H1>)->ReactTestRenderer.toJSON

    expect(. tree)->toMatchSnapshot()
  })
  ()
})

// INFO: afterAll & beforeAll not working

describe(."Common Matchers", (. ()) => {
  test(."toBe", (. ()) => {
    expect(. sum(1, 2))->toBe(3)
  })

  test(."two plus two is four", (. ()) => {
    expect(. 2 + 2)->toBe(4)
  })

  test(."two plus two is not five", (. ()) => {
    expect(. 2 + 2)->Jest.notToBe(5)
  })

  test(."object assignment using rescript records", (. ()) => {
    let data: data = {num: 1, name: "test"}
    // Immutable updates
    let dataUpdate = {...data, num: data.num + 1}
    /* NOTE: Mutable Update
      Record fields can optionally be mutable. This allows you to efficiently update those fields in-place with the = operator.
 */
    let dataMutable: person = {name: "Baby", age: 5}
    dataMutable.age = dataMutable.age + 1
    expect(. data)->toEqual({num: 1, name: "test"})
    expect(. dataUpdate)->toEqual({num: 2, name: "test"})
    expect(. dataMutable)->toEqual({age: 6, name: "Baby"})
  })

  test(."null", (. ()) => {
    let null = Js.null
    let undefined = Js.undefined
    let _true = true

    expect(. null)->toBeDefined()
    expect(. undefined)->notToBeDefined()

    expect(. null)->toBeNull()
    expect(. undefined)->notToBeNull()

    expect(. undefined)->toBeUndefined()
    expect(. null)->notToBeUndefined()

    expect(. _true)->toBeTruthy()
    expect(. null)->notToBeTruthy()

    expect(. null)->toBeFalsy()
    expect(. _true)->notToBeFalsy()
  })

  test(."zero", (. ()) => {
    let z = 0
    expect(. z)->notToBeNull()
    expect(. z)->toBeDefined()
    expect(. z)->notToBeUndefined()
    expect(. z)->notToBeTruthy()
    expect(. z)->toBeFalsy()
  })

  test(."two plus two", (. ()) => {
    let value = 2 + 2
    expect(. value)->toBeGreaterThan(3)
    expect(. value)->toBeGreaterThanOrEqual(3.5)
    expect(. value)->toBeLessThan(5)
    expect(. value)->toBeLessThanOrEqual(4.5)

    // toBe and toEqual are equivalent for numbers
    expect(. value)->toBe(4)
    expect(. value)->toEqual(4)
  })

  test(."adding floating point numbers", (. ()) => {
    let value = 0.1 +. 0.2
    //expect(value).toBe(0.3)           This won't work because of rounding error
    expect(. value)->toBeCloseTo(0.3) // This works.
  })

  test(."the shopping list has beer on it", (. ()) => {
    let shoppingList = ["diapers", "kleenex", "trash bags", "paper towels", "beer"]
    expect(. shoppingList)->toContain("beer")
    expect(. shoppingList)->notToContain("BEER")

    // TODO: Fix imports from Belt std
    // let shoppingSet = Belt.Set.String.fromArray(shoppingList)
    // expect(. shoppingSet)->toContain("beer")
  })

  test(."there is no I in team", (. ()) => {
    expect(. "team")->notToMatch(%re("/I/"))
  })

  test(."but there is a 'stop' in Christoph", (. ()) => {
    expect(. "Christoph")->toMatch(%re("/stop/"))
  })

  test(."id should match object", (. ()) => {
    let obj = {
      id: "111",
      product: "Test",
      url: "https://jestjs.io/",
    }
    expect(. obj)->toEqual(
      objectContaining({
        "id": "111",
      }),
    )
    expect(. obj)->toEqual(
      notObjectContaining({
        "title": "Test",
      }),
    )
  })

  test(."String containing", (. ()) => {
    expect(. "abcdefghijk")->toEqual(stringContaining("abcde"))
    expect(. "abcdefghijk")->notToEqual(stringContaining("abce"))
  })
  test(."String matching", (. ()) => {
    expect(. "abcdefghijk")->toEqual(stringContaining("abcde"))
    expect(. "abcdefghijk")->notToEqual(stringContaining("abce"))
  })
  ()
})

describe(."Array Containing", (. ()) => {
  let expected = ["Alice", "Bob"]
  it(."matches even if received contains additional elements", (. ()) => {
    expect(. ["Alice", "Bob", "Eve"])->toEqual(arrayContaining(expected))
  })

  it(."matches even if received contains additional elements", (. ()) => {
    expect(. ["Bob", "Eve"])->toEqual(notArrayContaining(expected))
  })

  it(."does not match if received does not contain expected elements", (. ()) => {
    expect(. ["Bob", "Eve"])->notToEqual(arrayContaining(expected))
  })
  ()
})

describe(."stringMatching in arrayContaining", (. ()) => {
  let expected = [stringMatching(%re("/^Alic/")), stringMatching(%re("/^[BR]ob/"))]
  it(."matches even if received contains additional elements", (. ()) => {
    expect(. ["Alicia", "Roberto", "Evelina"])->toEqual(arrayContaining(expected))
  })
  it(."does not match if received does not contain expected elements", (. ()) => {
    expect(. ["Roberto", "Evelina"])->notToEqual(arrayContaining(expected))
  })
  ()
})

describe(."Mock function", (. ()) => {
  test(."drinks something lemon-flavoured", (. ()) => {
    let mockFn = Mock.fn()
    let _call = mockFn()
    expect(. mockFn)->toHaveBeenCalled()
  })

  ()
})
describe(."Mock function with implementation", (. ()) => {
  test(."drinks something lemon-flavoured", (. ()) => {
    let returnsTrue = Mock.fnWithImplementation(() => true)
    expect(. returnsTrue())->toBe(true)
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

describe(."Lifecycle", (. ()) => {
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

describe(."Skips other tests", (. ()) => {
  let persistentValue = ref(0)

  beforeEach(.(. ()) => persistentValue := persistentValue.contents + 1)

  afterEach(.(. ()) => {persistentValue := persistentValue.contents - 1})

  testSkip(."runs lifecycle the first time", (. ()) => {
    expect(. persistentValue.contents)->toBe(1)
  })

  test(."runs lifecycle each time", (. ()) => {
    expect(. persistentValue.contents)->toBe(1)
  })
  ()
})

describeSkip(."Lifecycle", (. ()) => {
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

describeEach(. [[1, 1, 2], [1, 2, 3], [2, 1, 3]])(.".add(%i, %i)", (. a, b, expected) => {
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
