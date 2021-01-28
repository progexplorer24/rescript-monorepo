type t = [#v1 | #v2 | #v3 | #v4 | #v5 | #v6 | #v7 | #v8 | #v9 | #v10 | #v11 | #v12 | #v13]

let _1 = 1
let _2 = 2
let _3 = 3
let _4 = 4
let _5 = 5
let _6 = 6
let _7 = 7
let _8 = 8
let _9 = 9
let _10 = 10
let _11 = 11
let _12 = 12
let _13 = 13

let toValue = colStart =>
  switch colStart {
  | #v1 => _1
  | #v2 => _2
  | #v3 => _3
  | #v4 => _4
  | #v5 => _5
  | #v6 => _6
  | #v7 => _7
  | #v8 => _8
  | #v9 => _9
  | #v10 => _10
  | #v11 => _11
  | #v12 => _12
  | #v13 => _13
  }
