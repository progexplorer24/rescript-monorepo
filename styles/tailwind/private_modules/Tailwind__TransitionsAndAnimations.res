open CssJs

// NOTE: Transition Property - Utilities for controlling which CSS properties transition.
let transitionNone = [transitionProperty("none")]
let transitionAll = [
  transition("all", ~duration=Theme.Duration._150, ~timingFunction=Theme.TimingFunction.easeInOut),
]
let transition = [
  transition(
    "background-color, border-color, color, fill, stroke, opacity, box-shadow, transform",
    ~duration=Theme.Duration._150,
    ~timingFunction=Theme.TimingFunction.easeInOut,
  ),
]
let transitionColors = [
  CssJs.transition(
    "background-color, border-color, color, fill, stroke, opacity, box-shadow, transform",
    ~duration=Theme.Duration._150,
    ~timingFunction=Theme.TimingFunction.easeInOut,
  ),
]
let transitionOpacity = [
  CssJs.transition(
    "opacity",
    ~duration=Theme.Duration._150,
    ~timingFunction=Theme.TimingFunction.easeInOut,
  ),
]
let transitionShadow = [
  CssJs.transition(
    "box-shadow",
    ~duration=Theme.Duration._150,
    ~timingFunction=Theme.TimingFunction.easeInOut,
  ),
]

let transitionTransform = [
  CssJs.transition(
    "transform",
    ~duration=Theme.Duration._150,
    ~timingFunction=Theme.TimingFunction.easeInOut,
  ),
]

// NOTE: Transition Duration - Utilities for controlling the duration of CSS transitions.
let duration75 = [transitionDuration(Theme.Duration._75)]
let duration100 = [transitionDuration(Theme.Duration._100)]
let duration150 = [transitionDuration(Theme.Duration._150)]
let duration200 = [transitionDuration(Theme.Duration._200)]
let duration300 = [transitionDuration(Theme.Duration._300)]
let duration500 = [transitionDuration(Theme.Duration._500)]
let duration700 = [transitionDuration(Theme.Duration._700)]
let duration1000 = [transitionDuration(Theme.Duration._1000)]

// NOTE: Transition Timing Function - Utilities for controlling the easing of CSS transitions.
let easeLinear = [transitionTimingFunction(Theme.TimingFunction.linear)]
let easeIn = [transitionTimingFunction(Theme.TimingFunction.easeIn)]
let easeOut = [transitionTimingFunction(Theme.TimingFunction.easeOut)]
let easeInOut = [transitionTimingFunction(Theme.TimingFunction.easeInOut)]

// NOTE: Transition Delay - Utilities for controlling the delay of CSS transitions.
let delay75 = [transitionDelay(Theme.Duration._75)]
let delay100 = [transitionDelay(Theme.Duration._100)]
let delay150 = [transitionDelay(Theme.Duration._150)]
let delay200 = [transitionDelay(Theme.Duration._200)]
let delay300 = [transitionDelay(Theme.Duration._300)]
let delay500 = [transitionDelay(Theme.Duration._500)]
let delay700 = [transitionDelay(Theme.Duration._700)]
let delay1000 = [transitionDelay(Theme.Duration._1000)]

// NOTE: Animation - Utilities for animating elements with CSS animations.
let animateNone = [animationValue(#value("none"))]
let animateSpin = [
  animation(
    Theme.KeyFrames.spin,
    ~duration=1000,
    ~delay=0,
    ~timingFunction=#linear,
    ~iterationCount=#infinite,
  ),
]

let animatePing = [
  animation(
    Theme.KeyFrames.ping,
    ~duration=1000,
    ~timingFunction=#cubicBezier(0., 0., 0.2, 1.),
    ~delay=0,
    ~iterationCount=#infinite,
  ),
]

let animatePulse = [
  animation(
    Theme.KeyFrames.pulse,
    ~duration=2000,
    ~timingFunction=#cubicBezier(0.4, 0., 0.6, 1.),
    ~delay=0,
    ~iterationCount=#infinite,
  ),
]

let animateBounce = [
  animation(Theme.KeyFrames.bounce, ~duration=1000, ~delay=0, ~iterationCount=#infinite),
]
