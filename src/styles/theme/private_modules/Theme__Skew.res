type t = [#0 | #1 | #2 | #3 | #6 | #12]

let toValue = degrees =>
  switch degrees {
  | #0 => #deg(0.)
  | #1 => #deg(1.)
  | #2 => #deg(2.)
  | #3 => #deg(3.)
  | #6 => #deg(6.)
  | #12 => #deg(12.)
  }
