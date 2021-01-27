type t = [#xs | #sm | #base | #lg | #xl | #xl2 | #xl3 | #xl4 | #xl5 | #xl6 | #xl7 | #xl8 | #xl9]

let xs = #rem(0.75)
let sm = #rem(0.875)
let base = #rem(1.)
let lg = #rem(1.125)
let xl = #rem(1.25)
let _2xl = #rem(1.5)
let _3xl = #rem(1.875)
let _4xl = #rem(2.25)
let _5xl = #rem(3.)
let _6xl = #rem(3.75)
let _7xl = #rem(4.5)
let _8xl = #rem(6.)
let _9xl = #rem(8.)

let toValue = fontSize =>
  switch fontSize {
  | #xs => xs
  | #sm => sm
  | #base => base
  | #lg => lg
  | #xl => xl
  | #xl2 => _2xl
  | #xl3 => _3xl
  | #xl4 => _4xl
  | #xl5 => _5xl
  | #xl6 => _6xl
  | #xl7 => _7xl
  | #xl8 => _8xl
  | #xl9 => _9xl
  }
