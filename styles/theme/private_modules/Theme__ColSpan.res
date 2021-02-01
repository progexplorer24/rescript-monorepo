type t = [
  | #span1
  | #span2
  | #span3
  | #span4
  | #span5
  | #span6
  | #span7
  | #span8
  | #span9
  | #span10
  | #span11
  | #span12
  | #full
  | #auto
]

let span = number => `span ${Belt.Int.toString(number)} / span ${Belt.Int.toString(number)}`

let toValue = column =>
  switch column {
  | #span1 => span(1)
  | #span2 => span(2)
  | #span3 => span(3)
  | #span4 => span(4)
  | #span5 => span(5)
  | #span6 => span(6)
  | #span7 => span(7)
  | #span8 => span(8)
  | #span9 => span(9)
  | #span10 => span(10)
  | #span11 => span(11)
  | #span12 => span(12)
  | #full => "1 / -1"
  | #auto => "auto"
  }
