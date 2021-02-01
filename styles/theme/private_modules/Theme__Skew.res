type t = [#v0 | #v1 | #v2 | #v3 | #v6 | #v12]

let toValue = degrees =>
  switch degrees {
  | #v0 => #deg(0.)
  | #v1 => #deg(1.)
  | #v2 => #deg(2.)
  | #v3 => #deg(3.)
  | #v6 => #deg(6.)
  | #v12 => #deg(12.)
  }
