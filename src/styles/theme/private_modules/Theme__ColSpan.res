type t = [
  | #1
  | #2
  | #3
  | #4
  | #5
  | #6
  | #7
  | #8
  | #9
  | #10
  | #11
  | #12
  | #full
  | #auto
]

let span = number => `span ${Belt.Int.toString(number)} / span ${Belt.Int.toString(number)}`

let toValue = column =>
  switch column {
  | #1 => span(1)
  | #2 => span(2)
  | #3 => span(3)
  | #4 => span(4)
  | #5 => span(5)
  | #6 => span(6)
  | #7 => span(7)
  | #8 => span(8)
  | #9 => span(9)
  | #10 => span(10)
  | #11 => span(11)
  | #12 => span(12)
  | #full => "1 / -1"
  | #auto => "auto"
  }
