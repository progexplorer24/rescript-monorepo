let describe = (string, function) => Jest.describe(.string, (. ()) => function())
let describeOnly = (string, function) => Jest.describeOnly(.string, (. ()) => function())
let describeSkip = (string, function) => Jest.describeSkip(.string, (. ()) => function())

let test = (string, function) => Jest.test(.string, (. ()) => function())
let testOnly = (string, function) => Jest.testOnly(.string, (. ()) => function())
let testSkip = (string, function) => Jest.testSkip(.string, (. ()) => function())
let testTodo = string => Jest.testTodo(. string)

let it = test
let itOnly = testOnly
let itSkip = testSkip

let expect = rule => Jest.expect(. rule)

// @val external afterAll: (unit => unit) => unit = "afterAll"
// @val external afterEach: (. (. unit) => unit) => unit = "afterEach"
// @val external beforeAll: (. (. unit) => unit) => unit = "beforeAll"
// @val external beforeEach: (. (. unit) => unit) => unit = "beforeEach"

let beforeEach = function => Jest.beforeEach(.(. ()) => function())
let afterEach = function => Jest.afterEach(.(. ()) => function())

// external describeEach: (. array<array<'a>>, . string, (. 'a, 'a, 'a) => unit) => unit = "each"
// @scope("describe") @val external describeOnly: (. string, (. unit) => unit) => unit = "only"
// @scope(("describe", "only")) @val
// external describeOnlyEach: (. array<array<'a>>, . string, (. 'a, 'a, 'a) => unit) => unit = "each"
// @val external describeSkip: (. string, (. unit) => unit) => unit = "describe.skip"
