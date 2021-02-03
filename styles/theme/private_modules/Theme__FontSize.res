type t = [#xs | #sm | #base | #lg | #xl | #xl2 | #xl3 | #xl4 | #xl5 | #xl6 | #xl7 | #xl8 | #xl9]

let toValue = fontSize =>
  switch fontSize {
  | #xs => #rem(0.75)
  | #sm => #rem(0.875)
  | #base => #rem(1.)
  | #lg => #rem(1.125)
  | #xl => #rem(1.25)
  | #xl2 => #rem(1.5)
  | #xl3 => #rem(1.875)
  | #xl4 => #rem(2.25)
  | #xl5 => #rem(3.)
  | #xl6 => #rem(3.75)
  | #xl7 => #rem(4.5)
  | #xl8 => #rem(6.)
  | #xl9 => #rem(8.)
  }
