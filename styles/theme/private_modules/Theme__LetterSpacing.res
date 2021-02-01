type t = [#tighter | #tight | #normal | #wide | #wider | #widest]

let toValue = spacing =>
  switch spacing {
  | #tighter => #em(-0.05)
  | #tight => #em(-0.025)
  | #normal => #em(0.)
  | #wide => #em(0.025)
  | #wider => #em(0.05)
  | #widest => #em(0.1)
  }
