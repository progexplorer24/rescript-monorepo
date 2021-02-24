type t = [#spin | #ping | #pulse | #bounce]

let spin = CssJs.keyframes(.[
  (0, [CssJs.transform(#rotate(#deg(0.)))]),
  (100, [CssJs.transform(#rotate(#deg(360.)))]),
])

let ping = CssJs.keyframes(.[
  (0, [CssJs.transform(#scale(1., 1.)), CssJs.opacity(1.)]),
  (75, [CssJs.transform(#scale(2., 2.)), CssJs.opacity(0.)]),
  (100, [CssJs.transform(#scale(2., 2.)), CssJs.opacity(0.)]),
])

let pulse = CssJs.keyframes(.[
  (0, [CssJs.opacity(1.)]),
  (50, [CssJs.opacity(0.5)]),
  (100, [CssJs.opacity(1.)]),
])

let bounce = CssJs.keyframes(.[
  (
    0,
    [
      CssJs.transform(#translateY(#percent(-25.))),
      CssJs.animationTimingFunction(#cubicBezier(0.8, 0., 1., 1.)),
    ],
  ),
  (
    50,
    [
      CssJs.transform(#translateY(#percent(0.))),
      CssJs.animationTimingFunction(#cubicBezier(0., 0., 0.2, 1.)),
    ],
  ),
  (
    100,
    [
      CssJs.transform(#translateY(#percent(-25.))),
      CssJs.animationTimingFunction(#cubicBezier(0.8, 0., 1., 1.)),
    ],
  ),
])

let toValue = animation =>
  switch animation {
  | #spin => spin
  | #ping => ping
  | #pulse => pulse
  | #bounce => bounce
  }
