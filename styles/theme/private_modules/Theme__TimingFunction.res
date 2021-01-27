type t = [#linear | #easeIn | #easeOut | #easeInOut]

let linear = #linear
let easeIn = #cubicBezier(0.4, 0., 1., 1.)
let easeOut = #cubicBezier(0., 0., 0.2, 1.)
let easeInOut = #cubicBezier(0.4, 0., 0.2, 1.)

let toValue = timing =>
  switch timing {
  | #linear => linear
  | #easeIn => easeIn
  | #easeOut => easeOut
  | #easeInOut => easeInOut
  }
