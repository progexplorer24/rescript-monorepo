open CssJs

// NOTE: Transition Property - Utilities for controlling which CSS properties transition.
let transitionNone = style(.[transitionProperty("none")])
let transitionAll = style(.[
  transition("all", ~duration=Theme.Duration._150, ~timingFunction=Theme.TimingFunction.easeInOut),
])
let transition = style(.[
  transition(
    "background-color, border-color, color, fill, stroke, opacity, box-shadow, transform",
    ~duration=Theme.Duration._150,
    ~timingFunction=Theme.TimingFunction.easeInOut,
  ),
])
let transitionColors = style(.[
  CssJs.transition(
    "background-color, border-color, color, fill, stroke, opacity, box-shadow, transform",
    ~duration=Theme.Duration._150,
    ~timingFunction=Theme.TimingFunction.easeInOut,
  ),
])
let transitionOpacity = style(.[
  CssJs.transition(
    "opacity",
    ~duration=Theme.Duration._150,
    ~timingFunction=Theme.TimingFunction.easeInOut,
  ),
])
let transitionShadow = style(.[
  CssJs.transition(
    "box-shadow",
    ~duration=Theme.Duration._150,
    ~timingFunction=Theme.TimingFunction.easeInOut,
  ),
])

let transitionTransform = style(.[
  CssJs.transition(
    "transform",
    ~duration=Theme.Duration._150,
    ~timingFunction=Theme.TimingFunction.easeInOut,
  ),
])

// NOTE: Transition Duration - Utilities for controlling the duration of CSS transitions.
let duration75 = style(.[transitionDuration(Theme.Duration._75)])
let duration100 = style(.[transitionDuration(Theme.Duration._100)])
let duration150 = style(.[transitionDuration(Theme.Duration._150)])
let duration200 = style(.[transitionDuration(Theme.Duration._200)])
let duration300 = style(.[transitionDuration(Theme.Duration._300)])
let duration500 = style(.[transitionDuration(Theme.Duration._500)])
let duration700 = style(.[transitionDuration(Theme.Duration._700)])
let duration1000 = style(.[transitionDuration(Theme.Duration._1000)])

// NOTE: Transition Timing Function - Utilities for controlling the easing of CSS transitions.
let easeLinear = style(.[transitionTimingFunction(Theme.TimingFunction.linear)])
let easeIn = style(.[transitionTimingFunction(Theme.TimingFunction.easeIn)])
let easeOut = style(.[transitionTimingFunction(Theme.TimingFunction.easeOut)])
let easeInOut = style(.[transitionTimingFunction(Theme.TimingFunction.easeInOut)])

// NOTE: Transition Delay - Utilities for controlling the delay of CSS transitions.
let delay75 = style(.[transitionDelay(Theme.Duration._75)])
let delay100 = style(.[transitionDelay(Theme.Duration._100)])
let delay150 = style(.[transitionDelay(Theme.Duration._150)])
let delay200 = style(.[transitionDelay(Theme.Duration._200)])
let delay300 = style(.[transitionDelay(Theme.Duration._300)])
let delay500 = style(.[transitionDelay(Theme.Duration._500)])
let delay700 = style(.[transitionDelay(Theme.Duration._700)])
let delay1000 = style(.[transitionDelay(Theme.Duration._1000)])

// NOTE: Animation - Utilities for animating elements with CSS animations.
let animateNone = style(.[animationValue(#value("none"))])
let animateSpin = style(.[
  animation(
    Theme.KeyFrames.spin,
    ~duration=1000,
    ~delay=0,
    ~timingFunction=#linear,
    ~iterationCount=#infinite,
  ),
])

let animatePing = style(.[
  animation(
    Theme.KeyFrames.ping,
    ~duration=1000,
    ~timingFunction=#cubicBezier(0., 0., 0.2, 1.),
    ~delay=0,
    ~iterationCount=#infinite,
  ),
])

let animatePulse = style(.[
  animation(
    Theme.KeyFrames.pulse,
    ~duration=2000,
    ~timingFunction=#cubicBezier(0.4, 0., 0.6, 1.),
    ~delay=0,
    ~iterationCount=#infinite,
  ),
])

let animateBounce = style(.[
  animation(Theme.KeyFrames.bounce, ~duration=1000, ~delay=0, ~iterationCount=#infinite),
])
