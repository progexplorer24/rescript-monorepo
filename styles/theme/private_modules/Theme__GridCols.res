type t = [#v1 | #v2 | #v3 | #v4 | #v5 | #v6 | #v7 | #v8 | #v9 | #v10 | #v11 | #v12]

let repeatCols = columns => [#repeat(#num(columns), #minmax(#zero, #fr(1.)))]

let toValue = cols =>
  switch cols {
  | #v1 => repeatCols(1)
  | #v2 => repeatCols(2)
  | #v3 => repeatCols(3)
  | #v4 => repeatCols(4)
  | #v5 => repeatCols(5)
  | #v6 => repeatCols(6)
  | #v7 => repeatCols(7)
  | #v8 => repeatCols(8)
  | #v9 => repeatCols(9)
  | #v10 => repeatCols(10)
  | #v11 => repeatCols(11)
  | #v12 => repeatCols(12)
  }
