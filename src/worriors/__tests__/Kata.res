open Kata_8
open Jest

// INFO: Comment this out if you want to start your kata
describeOnly(."Cancell all tests", (. ()) => {
  expect(. true)->toEqual(true)
})

describe(."Test repeatStr functionality", (. ()) => {
  it(."repeats I six times", (. ()) => {
    expect(. repeatStr(6, "I"))->toEqual("IIIIII")
  })

  it(."repeats Hello five times", (. ()) => {
    expect(. repeatStr(5, "Hello"))->toEqual("HelloHelloHelloHelloHello")
  })

  it(."passes basic tests", (. ()) => {
    expect(. repeatStr(3, "*"))->toEqual("***")
    expect(. repeatStr(5, "#"))->toEqual("#####")
    expect(. repeatStr(2, "ha "))->toEqual("ha ha ")
  })
  ()
})

describe(."Сalculate how many years ago the father was twice as old as his son", (. ()) => {
  it(."Testing for dad's age: 36 and son's age: 7", (. ()) => {
    expect(. twiceAsOld(36, 7))->toEqual(22)
  })
  it(."Testing for dad's age: 55 and son's age: 30", (. ()) => {
    expect(. twiceAsOld(55, 30))->toEqual(5)
  })
  it(."Testing for dad's age: 42 and son's age: 21", (. ()) => {
    expect(. twiceAsOld(42, 21))->toEqual(0)
  })
  it(."Testing for dad's age: 22 and son's age: 1", (. ()) => {
    expect(. twiceAsOld(22, 1))->toEqual(20)
  })
  it(."Testing for dad's age: 29 and son's age: 0", (. ()) => {
    expect(. twiceAsOld(29, 0))->toEqual(29)
  })
  ()
})

describe(."Multiply", (. ()) => {
  it(."fixed tests", (. ()) => {
    expect(. multiply(1, 1))->toEqual(1)
    expect(. multiply(2, 1))->toEqual(2)
    expect(. multiply(2, 2))->toEqual(4)
    expect(. multiply(3, 5))->toEqual(15)
  })
  ()
})

describe(."Opposite", (. ()) => {
  it(."returns opposite value", (. ()) => {
    expect(. opposite(1))->toEqual(-1)
  })
  ()
})

describe(."evenOrOdd", (. ()) => {
  it(."returns string about a number parity", (. ()) => {
    expect(. evenOrOdd(2))->toEqual("Even")
    expect(. evenOrOdd(0))->toEqual("Even")
    expect(. evenOrOdd(7))->toEqual("Odd")
    expect(. evenOrOdd(1))->toEqual("Odd")
  })
  ()
})

describe(."merge Arrays", (. ()) => {
  it(."combines two arrays together", (. ()) => {
    expect(. mergeArrays([1, 2, 3, 4], [5, 6, 7, 8]))->toEqual([1, 2, 3, 4, 5, 6, 7, 8])
    expect(. mergeArrays([1, 3, 5, 7, 9], [10, 8, 6, 4, 2]))->toEqual([
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
    ])

    expect(. mergeArrays([1, 3, 5, 7, 9, 11, 12], [1, 2, 3, 4, 5, 10, 12]))->toEqual([
      1,
      2,
      3,
      4,
      5,
      7,
      9,
      10,
      11,
      12,
    ])
  })
  ()
})
