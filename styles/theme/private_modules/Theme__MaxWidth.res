type t = [
  | #none
  | #zero
  | #xs
  | #sm
  | #md
  | #lg
  | #xl
  | #xl2
  | #xl3
  | #xl4
  | #xl5
  | #xl6
  | #xl7
  | #full
  | #min
  | #max
  | #prose
]

let none = #none
let _0 = #rem(0.)
let xs = #rem(20.)
let sm = #rem(24.)
let md = #rem(28.)
let lg = #rem(32.)
let xl = #rem(36.)
let _2xl = #rem(42.)
let _3xl = #rem(48.)
let _4xl = #rem(56.)
let _5xl = #rem(64.)
let _6xl = #rem(72.)
let _7xl = #rem(80.)
let full = #percent(100.)
let min = #minContent
let max = #maxContent
let prose = #ch(65)
