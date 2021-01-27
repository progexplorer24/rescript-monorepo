type t = [
  | #v3
  | #v4
  | #v5
  | #v6
  | #v7
  | #v8
  | #v9
  | #v10
  | #none
  | #tight
  | #snug
  | #normal
  | #relaxed
  | #loose
]
let _3 = #rem(0.75)
let _4 = #rem(1.)
let _5 = #rem(1.25)
let _6 = #rem(1.5)
let _7 = #rem(1.75)
let _8 = #rem(2.)
let _9 = #rem(2.25)
let _10 = #rem(2.5)
let none = #abs(1.)
let tight = #abs(1.25)
let snug = #abs(1.375)
let normal = #abs(1.5)
let relaxed = #abs(1.625)
let loose = #abs(2.)

let toValue = lineHeight =>
  switch lineHeight {
  | #v3 => _3
  | #v4 => _4
  | #v5 => _5
  | #v6 => _6
  | #v7 => _7
  | #v8 => _8
  | #v9 => _9
  | #v10 => _10
  | #none => none
  | #tight => tight
  | #snug => snug
  | #normal => normal
  | #relaxed => relaxed
  | #loose => loose
  }
