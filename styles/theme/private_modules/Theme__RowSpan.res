type t = [#v1 | #v2 | #v3 | #v4 | #v5 | #v6]
let spanStr = value => `span ${Belt.Int.toString(value)} / span ${Belt.Int.toString(value)}`

let toValue = span =>
  switch span {
  | #v1 => spanStr(1)
  | #v2 => spanStr(2)
  | #v3 => spanStr(3)
  | #v4 => spanStr(4)
  | #v5 => spanStr(5)
  | #v6 => spanStr(6)
  }
