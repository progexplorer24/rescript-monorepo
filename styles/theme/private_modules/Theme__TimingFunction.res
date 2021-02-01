type t = [#linear | #easeIn | #easeOut | #easeInOut]

let toValue = timing =>
  switch timing {
  | #linear => #linear
  | #easeIn => #cubicBezier(0.4, 0., 1., 1.)
  | #easeOut => #cubicBezier(0., 0., 0.2, 1.)
  | #easeInOut => #cubicBezier(0.4, 0., 0.2, 1.)
  }
