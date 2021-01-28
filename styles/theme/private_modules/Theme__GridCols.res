type t = [#v1 | #v2 | #v3 | #v4 | #v5 | #v6 | #v7 | #v8 | #v9 | #v10 | #v11 | #v12]

let v1 = 1
let v2 = 2
let v3 = 3
let v4 = 4
let v5 = 5
let v6 = 6
let v7 = 7
let v8 = 8
let v9 = 9
let v10 = 10
let v11 = 11
let v12 = 12
let repeatCols = columns => [#repeat(#num(columns), #minmax(#zero, #fr(1.)))]

let toValue = cols =>
  switch cols {
  | #v1 => repeatCols(v1)
  | #v2 => repeatCols(v2)
  | #v3 => repeatCols(v3)
  | #v4 => repeatCols(v4)
  | #v5 => repeatCols(v5)
  | #v6 => repeatCols(v6)
  | #v7 => repeatCols(v7)
  | #v8 => repeatCols(v8)
  | #v9 => repeatCols(v9)
  | #v10 => repeatCols(v10)
  | #v11 => repeatCols(v11)
  | #v12 => repeatCols(v12)
  }
