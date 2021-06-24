type t = [
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
  | #13
  | #14
  | #none
  | #tight
  | #snug
  | #normal
  | #relaxed
  | #loose
]

let toValue = lineHeight =>
  switch lineHeight {
  | #3 => #rem(0.75)
  | #4 => #rem(1.)
  | #5 => #rem(1.25)
  | #6 => #rem(1.5)
  | #7 => #rem(1.75)
  | #8 => #rem(2.)
  | #9 => #rem(2.25)
  | #10 => #rem(2.5)
  | #11 => #rem(2.75)
  | #12 => #rem(3.)
  | #13 => #rem(3.25)
  | #14 => #rem(3.5)
  | #none => #abs(1.)
  | #tight => #abs(1.25)
  | #snug => #abs(1.375)
  | #normal => #abs(1.5)
  | #relaxed => #abs(1.625)
  | #loose => #abs(2.)
  }
