type undefined = Js.undefined<unit>
type null = Js.null<unit>

type re = Js.Re.t

// #region #REGION: Jest Globals

@val external describe: (. string, (. unit) => unit) => unit = "describe"
@scope("describe") @val
external describeEach2: (. array<array<'a>>, . string, (. 'a, 'a, 'a) => unit) => unit = "each"
@scope("describe") @val external describeOnly: (. string, (. unit) => unit) => unit = "only"
@scope(("describe", "only")) @val
external describeOnlyEach: (. array<array<'a>>, . string, (. 'a, 'a, 'a) => unit) => unit = "each"
@val external describeSkip: (. string, (. unit) => unit) => unit = "describe.skip"

@val external test: (. string, (. unit) => unit) => unit = "test"
@scope("test") @val external testOnly: (. string, (. unit) => unit) => unit = "only"
@scope("test") @val external testSkip: (. string, (. unit) => unit) => unit = "skip"
/* NOTE: Printf formatting
  INFO: https://nodejs.org/api/util.html#util_util_format_format_args
  INFO: https://jestjs.io/docs/api#testeachtablename-fn-timeout
  Generate unique test titles by positionally injecting parameters with printf formatting:
    %p - pretty-format.
    %s- String.
    %d- Number.
    %i - Integer.
    %f - Floating point value.
    %j - JSON.
    %o - Object.
    %# - Index of the test case.
    %% - single percent sign ('%'). This does not consume an argument.
*/
@scope("test") @val
external testEach: (. array<array<'a>>, . string, (. 'a, 'a, 'a) => unit) => unit = "each"

@scope(("test", "only")) @val
external testOnlyEach: (. array<array<'a>>, . string, (. 'a, 'a, 'a) => unit) => unit = "each"

@scope(("test", "skip")) @val
external testSkipEach: (. array<array<'a>>, . string, (. 'a, 'a, 'a) => unit) => unit = "each"

@scope("test") @val
external testTodo: (. string) => unit = "todo"

let it = test
let itOnly = testOnly
let itSkip = testSkip
let itEach = testEach
let itOnlyEach = testOnlyEach
let fitEach = testOnlyEach

@val external afterAll: (unit => unit) => unit = "afterAll"
@val external beforeAll: (unit => unit) => unit = "beforeAll"
@val external afterEach: (. (. unit) => unit) => unit = "afterEach"
@val external beforeEach: (. (. unit) => unit) => unit = "beforeEach"

// #endregion #ENDREGION:

// #region REGION: Expect
/*
  NOTE: Not implemented:
  - expect.anything - pointless when there's `option`, `Js.null` etc.
  - expect.any - pointless when you have types, except against < .. > Js.t, but how to implement this?
  - expect.assertions - Not supported. There should be only one assertion per test.
 */

type expectResult
@val external expect: (. 'a) => expectResult = "expect"

@scope("expect") @val external arrayContaining: array<'a> => expectResult = "arrayContaining"
@scope(("expect", "not")) @val
external notArrayContaining: array<'a> => expectResult = "arrayContaining"

@scope("expect") @val external objectContaining: Js.t<'a> => expectResult = "objectContaining"
@scope(("expect", "not")) @val
external notObjectContaining: Js.t<'a> => expectResult = "objectContaining"

@scope("expect") @val external stringContaining: string => expectResult = "stringContaining"
@scope(("expect", "not")) @val
external notStringContaining: string => expectResult = "stringContaining"

@scope("expect") @val external stringMatching: re => expectResult = "stringMatching"
@scope(("expect", "not")) @val external notStringMatching: re => expectResult = "stringMatching"

type serializer
@module("@emotion/jest") external createSerializer: unit => serializer = "createSerializer"

@scope("expect") @val external addSnapshotSerializer: serializer => unit = "addSnapshotSerializer"

// TODO: Add resolves and rejects
@send external toBe: (expectResult, 'a) => unit = "toBe"
@scope("not") @send external notToBe: (expectResult, 'a) => unit = "toBe"

@send external toBeCalled: (expectResult, unit) => unit = "toBeCalled"
@scope("not") @send external notToBeCalled: (expectResult, unit) => unit = "toBeCalled"

let toHaveBeenCalled = toBeCalled
let notToHaveBeenCalled = notToBeCalled

// TODO: toHaveBeenCalled
// TODO: toHaveBeenCalledTimes
// TODO: toHaveBeenCalledWith
// TODO: toHaveReturned
// TODO: toHaveReturnedTimes
// TODO: toHaveReturnedWith
// TODO: toHaveNthReturnedWith
// TODO: toHaveLenght
// TODO: toHaveProperty

@send external toBeCloseTo: (expectResult, 'a) => unit = "toBeCloseTo"
@scope("not") @send external notToBeCloseTo: (expectResult, 'a) => unit = "toBeCloseTo"

@send external toBeGreaterThan: (expectResult, 'a) => unit = "toBeGreaterThan"
@scope("not") @send external notToBeGreaterThan: (expectResult, 'a) => unit = "toBeGreaterThan"

@send external toBeGreaterThanOrEqual: (expectResult, 'a) => unit = "toBeGreaterThanOrEqual"
@scope("not") @send
external notToBeGreaterThanOrEqual: (expectResult, 'a) => unit = "toBeGreaterThanOrEqual"

@send external toBeLessThan: (expectResult, 'a) => unit = "toBeLessThan"
@scope("not") @send external notToBeLessThan: (expectResult, 'a) => unit = "toBeLessThan"

@send external toBeLessThanOrEqual: (expectResult, 'a) => unit = "toBeLessThanOrEqual"
@scope("not") @send
external notToBeLessThanOrEqual: (expectResult, 'a) => unit = "toBeLessThanOrEqual"

@send external toContain: (expectResult, 'a) => unit = "toContain"
@scope("not") @send external notToContain: (expectResult, 'a) => unit = "toContain"

// TODO: toContainEqual

@send external toEqual: (expectResult, 'a) => unit = "toEqual"
@scope("not") @send external notToEqual: (expectResult, 'a) => unit = "toEqual"

@send external toMatch: (expectResult, re) => unit = "toMatch"
@scope("not") @send external notToMatch: (expectResult, re) => unit = "toMatch"

// TODO: toMatchObject
// TODO: toMatchSnapshot
@send external toMatchSnapshot: (expectResult, unit) => unit = "toMatchSnapshot"
// TODO: toMatchInlineSnapshot
// TODO: toStrictEqual
// TODO: toThrow
// TODO: toThrowErrorMatchingSnapshot
// TODO: toThrowErrorMatchingInlineSnapshot

// #endregion ENDREGION: Expect

type mock<'a>
module Mock = {
  type t<'a> = mock<'a>
  type mockReturnType<'a> = 'a => 'a
  @scope("jest") @val external fn: unit => mockReturnType<'a> = "fn"
  @scope("jest") @val external fnWithImplementation: 'a => 'a = "fn"
  @scope("jest") @val external mockModule: string => unit = "mock"
}

// #region NOTE: Javascript Specific
@send external toBeNull: (expectResult, unit) => unit = "toBeNull"
@scope("not") @send external notToBeNull: (expectResult, unit) => unit = "toBeNull"

@send external toBeDefined: (expectResult, unit) => unit = "toBeDefined"
@scope("not") @send external notToBeDefined: (expectResult, unit) => unit = "toBeDefined"

@send external toBeUndefined: (expectResult, unit) => unit = "toBeUndefined"
@scope("not") @send external notToBeUndefined: (expectResult, unit) => unit = "toBeUndefined"

@send external toBeTruthy: (expectResult, unit) => unit = "toBeTruthy"
@scope("not") @send external notToBeTruthy: (expectResult, unit) => unit = "toBeTruthy"

@send external toBeFalsy: (expectResult, unit) => unit = "toBeFalsy"
@scope("not") @send external notToBeFalsy: (expectResult, unit) => unit = "toBeFalsy"
// #endregion ENDREGION: Javascript Specific
