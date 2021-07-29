// toLocaleDateStringWith
type locale = string
type dateTemplate
//  = {
//   weekday: string,
//   year: string,
//   month: string,
//   day: string,
// }
@send
external toLocaleDateStringWithOptions: (Js.Date.t, locale, 'a) => string = "toLocaleDateString"
