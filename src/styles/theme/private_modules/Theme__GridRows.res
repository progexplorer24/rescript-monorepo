type t = [#1 | #2 | #3 | #4 | #5 | #6]

let rows = num => [#repeat(#num(num), #minmax(#zero, #fr(1.)))]
let toValue = colStart =>
  switch colStart {
  | #1 => rows(1)
  | #2 => rows(2)
  | #3 => rows(3)
  | #4 => rows(4)
  | #5 => rows(5)
  | #6 => rows(6)
  }
