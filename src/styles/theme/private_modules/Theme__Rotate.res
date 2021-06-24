type t = [
  | #0
  | #1
  | #2
  | #3
  | #6
  | #12
  | #45
  | #90
  | #180
  | #neg1
  | #neg1
  | #neg2
  | #neg6
  | #neg12
  | #neg45
  | #neg90
  | #neg180
]

let toValue = rotate =>
  switch rotate {
  | #0 => #deg(0.)
  | #1 => #deg(1.)
  | #2 => #deg(2.)
  | #3 => #deg(3.)
  | #6 => #deg(6.)
  | #12 => #deg(12.)
  | #45 => #deg(45.)
  | #90 => #deg(90.)
  | #180 => #deg(180.)
  | #neg1 => #deg(-1.)
  | #neg2 => #deg(-2.)
  | #neg3 => #deg(-3.)
  | #neg6 => #deg(-6.)
  | #neg12 => #deg(-12.)
  | #neg45 => #deg(-45.)
  | #neg90 => #deg(-90.)
  | #neg180 => #deg(-180.)
  }
