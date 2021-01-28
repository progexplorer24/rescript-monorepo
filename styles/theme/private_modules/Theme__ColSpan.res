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

let span1 = "span 1 / span 1"
let span2 = "span 2 / span 2"
let span3 = "span 3 / span 3"
let span4 = "span 4 / span 4"
let span5 = "span 5 / span 5"
let span6 = "span 6 / span 6"
let span7 = "span 7 / span 7"
let span8 = "span 8 / span 8"
let span9 = "span 9 / span 9"
let span10 = "span 10 / span 10"
let span11 = "span 11 / span 11"
let span12 = "span 12 / span 12"
let full = "1 / -1"
let auto = "auto"

let toValue = column =>
  switch column {
  | #span1 => span1
  | #span2 => span2
  | #span3 => span3
  | #span4 => span4
  | #span5 => span5
  | #span6 => span6
  | #span7 => span7
  | #span8 => span8
  | #span9 => span9
  | #span10 => span10
  | #span11 => span11
  | #span12 => span12
  | #full => full
  | #auto => auto
  }
