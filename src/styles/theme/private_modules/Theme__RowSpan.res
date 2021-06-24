type t = [#1 | #2 | #3 | #4 | #5 | #6]
let spanStr = value => `span ${Belt.Int.toString(value)} / span ${Belt.Int.toString(value)}`

let toValue = span =>
  switch span {
  | #1 => spanStr(1)
  | #2 => spanStr(2)
  | #3 => spanStr(3)
  | #4 => spanStr(4)
  | #5 => spanStr(5)
  | #6 => spanStr(6)
  }
