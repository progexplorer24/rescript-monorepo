type t = [
  | #v0
  | #v1
  | #v2
  | #v3
  | #v6
  | #v12
  | #v45
  | #v90
  | #v180
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
  | #v0 => #deg(0.)
  | #v1 => #deg(1.)
  | #v2 => #deg(2.)
  | #v3 => #deg(3.)
  | #v6 => #deg(6.)
  | #v12 => #deg(12.)
  | #v45 => #deg(45.)
  | #v90 => #deg(90.)
  | #v180 => #deg(180.)
  | #neg1 => #deg(-1.)
  | #neg2 => #deg(-2.)
  | #neg3 => #deg(-3.)
  | #neg6 => #deg(-6.)
  | #neg12 => #deg(-12.)
  | #neg45 => #deg(-45.)
  | #neg90 => #deg(-90.)
  | #neg180 => #deg(-180.)
  }
