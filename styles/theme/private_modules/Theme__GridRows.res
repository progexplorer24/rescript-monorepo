type t = [#v1 | #v2 | #v3 | #v4 | #v5 | #v6]

let _1 = 1
let _2 = 2
let _3 = 3
let _4 = 4
let _5 = 5
let _6 = 6

let rows = num => [#repeat(#num(num), #minmax(#zero, #fr(1.)))]

let toValue = colStart =>
  switch colStart {
  | #v1 => rows(_1)
  | #v2 => rows(_2)
  | #v3 => rows(_3)
  | #v4 => rows(_4)
  | #v5 => rows(_5)
  | #v6 => rows(_6)
  }
