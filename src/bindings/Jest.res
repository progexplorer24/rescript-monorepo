type undefined = Js.undefined<unit>
type null = Js.null<unit>

type expectResult
type re = Js.Re.t

@val external describe: (. string, (. unit) => unit) => unit = "describe"
@val external test: (. string, (. unit) => unit) => unit = "test"
@val external it: (. string, (. unit) => unit) => unit = "it"
@val external expect: (. 'a) => expectResult = "expect"

@send external toBe: (expectResult, 'a) => unit = "toBe"
@scope("not") @send external notToBe: (expectResult, 'a) => unit = "toBe"

@send external toEqual: (expectResult, 'a) => unit = "toEqual"
@scope("not") @send external notToEqual: (expectResult, 'a) => unit = "toEqual"

@send external toContain: (expectResult, 'a) => unit = "toContain"
@scope("not") @send external notToContain: (expectResult, 'a) => unit = "toContain"

@send external toMatch: (expectResult, re) => unit = "toMatch"
@scope("not") @send external notToMatch: (expectResult, re) => unit = "toMatch"

@val external arrayContaining: array<'a> => expectResult = "expect.arrayContaining"
@val external notArrayContaining: array<'a> => expectResult = "expect.not.arrayContaining"

@val external objectContaining: Js.t<'a> => expectResult = "expect.objectContaining"
@val external notObjectContaining: Js.t<'a> => expectResult = "expect.not.objectContaining"

@val external stringContaining: string => expectResult = "expect.stringContaining"

@val external stringMatching: re => expectResult = "expect.stringMatching"

@send external toBeCalled: (expectResult, unit) => unit = "toBeCalled"
@scope("not") @send external notToBeCalled: (expectResult, unit) => unit = "toBeCalled"

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
// #endregion

@send external toBeGreaterThan: (expectResult, 'a) => unit = "toBeGreaterThan"
@send external toBeGreaterThanOrEqual: (expectResult, 'a) => unit = "toBeGreaterThanOrEqual"
@send external toBeLessThan: (expectResult, 'a) => unit = "toBeLessThan"
@send external toBeLessThanOrEqual: (expectResult, 'a) => unit = "toBeLessThanOrEqual"
@send external toBeCloseTo: (expectResult, 'a) => unit = "toBeCloseTo"
