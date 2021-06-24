type t = [#1 | #2 | #3 | #4 | #5 | #6 | #7 | #8 | #9 | #10 | #11 | #12]

let repeatCols = columns => [#repeat(#num(columns), #minmax(#zero, #fr(1.)))]

let toValue = cols =>
  switch cols {
  | #1 => repeatCols(1)
  | #2 => repeatCols(2)
  | #3 => repeatCols(3)
  | #4 => repeatCols(4)
  | #5 => repeatCols(5)
  | #6 => repeatCols(6)
  | #7 => repeatCols(7)
  | #8 => repeatCols(8)
  | #9 => repeatCols(9)
  | #10 => repeatCols(10)
  | #11 => repeatCols(11)
  | #12 => repeatCols(12)
  }
