type t = [#v1 | #v0 | #v4 | #v8]

let default = #px(1)
let _0 = #px(0)
let _2 = #px(2)
let _4 = #px(4)
let _8 = #px(8)

let toWidth = width =>
  switch width {
  | #v0 => _0
  | #v1 => default
  | #v2 => _2
  | #v4 => _4
  | #v8 => _8
  }
