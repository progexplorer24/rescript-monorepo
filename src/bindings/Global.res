// toLocaleDateStringWith
type locale = string
type dateTemplate = {
  weekday: string,
  year: string,
  month: string,
  day: string,
}
@send
external toLocaleDateStringWith: (Js.Date.t, locale, dateTemplate) => string = "toLocaleDateString"
