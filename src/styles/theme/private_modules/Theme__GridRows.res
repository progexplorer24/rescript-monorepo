type t = [#v1 | #v2 | #v3 | #v4 | #v5 | #v6]

let rows = num => [#repeat(#num(num), #minmax(#zero, #fr(1.)))]
let toValue = colStart =>
  switch colStart {
  | #v1 => rows(1)
  | #v2 => rows(2)
  | #v3 => rows(3)
  | #v4 => rows(4)
  | #v5 => rows(5)
  | #v6 => rows(6)
  }
