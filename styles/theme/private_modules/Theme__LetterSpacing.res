type t = [#tighter | #tight | #normal | #wide | #wider | #widest]
let tighter = #em(-0.05)
let tight = #em(-0.025)
let normal = #em(0.)
let wide = #em(0.025)
let wider = #em(0.05)
let widest = #em(0.1)

let toValue = spacing =>
  switch spacing {
  | #tighter => tighter
  | #tight => tight
  | #normal => normal
  | #wide => wide
  | #wider => wider
  | #widest => widest
  }
