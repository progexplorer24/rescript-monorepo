// NOTE: Sources: https://www.digitalocean.com/community/tutorials/css-inherit-initial-unset
// TODO: Compiler errors on illegal values? Alternatives?
let declaration = (property, value) => `${property}: ${value};`

let breakpointSpecifity = (breakpoint, rules) =>
  `.${breakpoint}& {
    ${rules}
}`

module BreakpointType = {
  type t = [#minWidth | #maxWidth]
  let toValue = type_ =>
    switch type_ {
    | #minWidth => "min-width"
    | #maxWidth => "max-width"
    }
}

let responsiveBreakpoint = (
  ~breakpoint: int,
  ~css: string,
  ~type_: BreakpointType.t=#minWidth,
  (),
) =>
  Emotion.css(.
    `
      @media (${BreakpointType.toValue(type_)}: ${Belt.Int.toString(breakpoint)}px) {
        ${css}
      }
    `,
  )

let minWidth = (breakpoint: int, rules: string) =>
  Emotion.css(.
    `@media (min-width: ${Belt.Int.toString(breakpoint)}px) {
        ${rules}
      }`,
  )

let sm = styles => Emotion.css(. minWidth(640, styles))

// NOTE: Pseudoclasses
let active = rules =>
  Emotion.css(.
    `&:active {
  ${rules}
}`,
  )
let link = rules =>
  Emotion.css(.
    `&:link {
  ${rules}
}`,
  )
let visited = rules =>
  Emotion.css(.
    `&:visited {
  ${rules}
}`,
  )
let hover = rules =>
  Emotion.css(.
    `&:hover {
  ${rules}
}`,
  )

// INFO: The meaning of global values
// inherit: Get the property from the parent element.
// initial: The default value for the property (the browser default).
// unset: Acts as either inherit or initial. It’ll act as inherit if the parent has a value that matches, or else it will act as initial.
type globalValues = [#inherit | #initial | #unset | #revert]

type contentDistribution = [#spaceBetween | #spaceAround | #spaceEvenly | #stretch]

type overflowPosition = [#safeCenter | #unsafeCenter]

type contentPosition = [#center | #start | #end | #flexStart | #flexEnd]

type selfPosition = [#center | #start | #end | #selfStart | #selfEnd | #flexStart | #flexEnd]

// LINK: https://developer.mozilla.org/en-US/docs/Web/CSS/align-content
module AlignContent = {
  /*
    The CSS align-content property sets the distribution of space between and around content items along a flexbox's cross-axis or a grid's block axis.

    This property has no effect on single line flex containers (i.e. ones with flex-wrap: nowrap).

    NOTE: Links
    https://developer.mozilla.org/en-US/docs/Web/CSS/align-content
    https://drafts.csswg.org/css-flexbox-1
    
 */
  // Initial value - normal
  type t = [
    | #normal
    | #baseline
    | contentPosition
    | contentDistribution
    | overflowPosition
  ]

  let toValue = value =>
    switch value {
    | #normal => "normal"
    | #center => "center"
    | #start => "start"
    | #end => "end"
    | #flexStart => "flex-start"
    | #flexEnd => "flex-end"
    | #baseline => "baseline"
    | #spaceBetween => "space-between"
    | #spaceAround => "space-around"
    | #spaceEvenly => "space-evenly"
    | #stretch => "stretch"
    | #initial => "initial"
    | #unset => "unset"
    | #revert => "revert"
    | #inherit => "inherit"
    | #safeCenter => "safe center"
    | #unsafeCenter => "unsafe center"
    }
}

// LINK: https://developer.mozilla.org/en-US/docs/Web/CSS/align-items
module AlignItems = {
  type t = [
    | #normal
    | #stretch
    | #baseline
    | contentPosition
    | overflowPosition
  ]

  let toValue = value =>
    switch value {
    | #normal => "normal"
    | #stretch => "stretch"
    | #center => "center"
    | #start => "start"
    | #end => "end"
    | #flexStart => "flex-start"
    | #flexEnd => "flex-end"
    | #baseline => "baseline"
    | #safeCenter => "safe center"
    | #unsafeCenter => "unsafe center"
    }
}

module AlignSelf = {
  type t = [#normal | #stretch | #baseline | overflowPosition | selfPosition]
  let toValue = value =>
    switch value {
    | #normal => "normal"
    | #baseline => "baseline"
    | #stretch => "stretch"
    | #center => "center"
    | #start => "start"
    | #end => "end"
    | #flexStart => "flex-start"
    | #flexEnd => "flex-end"
    | #selfStart => "self-start"
    | #selfEnd => "self-end"
    | #safeCenter => "safe center"
    | #unsafeCenter => "unsafe center"
    }
}

module All = {
  type t = [globalValues]
  let toValue = val =>
    switch val {
    | #unset => "unset"
    | #inherit => "inherit"
    | #initial => "initial"
    | #revert => "revert"
    }
}

// TODO: Needs more features before testing
module Angle = {
  type t = [#deg(float) | #grad(float) | #rad(float) | #turn(float)]

  let toAngle = angle =>
    switch angle {
    | #deg(val) => `${Belt.Float.toString(val)}deg`
    | #grad(val) => `${Belt.Float.toString(val)}grad`
    | #rad(val) => `${Belt.Float.toString(val)}rad`
    | #turn(val) => `${Belt.Float.toString(val)}turn`
    }
}

module AnimationDelay = {
  type t = [#ms(int) | #s(float)]
  let toValue = val =>
    switch val {
    | #ms(val) => `${Belt.Float.toString(Belt.Int.toFloat(val) /. 1000.)}s`
    | #s(val) => `${Belt.Float.toString(val)}s`
    }
}

let renderMultipleValues = (values: array<string>): string => Js.Array2.joinWith(values, ", ")

module AnimationDirection = {
  type t = [#normal | #reverse | #alternate | #alternateReverse]
  let toValue = val =>
    switch val {
    | #normal => "normal"
    | #reverse => "reverse"
    | #alternate => "alternate"
    | #alternateReverse => "alternate-reverse"
    }

  let toManyValues = values => renderMultipleValues(Js.Array2.map(values, value => toValue(value)))
}

module AnimationDuration = {
  type t = [#s(float) | #ms(int)]

  let toValue = value =>
    switch value {
    | #s(float) => `${Belt.Float.toString(float)}s`
    | #ms(int) => `${Belt.Float.toString(Belt.Int.toFloat(int) /. 1000.)}s`
    }
}

module AnimationFillMode = {
  type t = [#none | #forwards | #backwards | #both]
  let toValue = value =>
    switch value {
    | #none => "none"
    | #forwards => "forwards"
    | #backwards => "backwards"
    | #both => "both"
    }
  let toManyValues = values => renderMultipleValues(Js.Array2.map(values, value => toValue(value)))
}

module AnimationIterationCount = {
  type t = [#abs(float) | #infinite]
  let toValue = value =>
    switch value {
    | #abs(float) => float->Belt.Float.toString
    | #infinite => "infinite"
    }
  let toManyValues = values => renderMultipleValues(Js.Array2.map(values, value => toValue(value)))
}

module AnimationName = {
  type t = [#none | #str(string)]
  let toValue = value =>
    switch value {
    | #none => "none"
    | #str(s) => s
    }
  let toManyValues = values => renderMultipleValues(Js.Array2.map(values, value => toValue(value)))
}

module AnimationPlayState = {
  type t = [#running | #paused]
  let toValue = value =>
    switch value {
    | #running => "running"
    | #paused => "paused"
    }
  let toManyValues = values => renderMultipleValues(Js.Array2.map(values, value => toValue(value)))
}

module AnimationTimingFunction = {
  module Steps = {
    type t = [#jumpStart | #jumpEnd | #jumpNone | #jumpBoth | #start | #end | #num(int)]
    let toValue = val =>
      switch val {
      | #jumpStart => "jump-start"
      | #jumpEnd => "jump-end"
      | #jumpNone => "jump-none"
      | #jumpBoth => "jump-both"
      | #start => "start"
      | #end => "end"
      | #num(int) => Belt.Int.toString(int)
      }
  }
  // TODO: Account for the fact that values inside cubicBezier are from range <0,1>
  type t = [
    | #ease
    | #easeIn
    | #easeOut
    | #easeInOut
    | #linear
    | #stepStart
    | #stepEnd
    | #cubicBezier(float, float, float, float)
    | #steps(Steps.t, Steps.t)
  ]

  let toValue = value =>
    switch value {
    | #ease => "ease"
    | #easeIn => "ease-in"
    | #easeOut => "ease-out"
    | #easeInOut => "ease-in-out"
    | #linear => "linear"
    | #stepStart => "steps(1, start)"
    | #stepEnd => "steps(1)"
    | #cubicBezier(v1, v2, v3, v4) =>
      `cubic-bezier(${Belt.Float.toString(v1)}, ${Belt.Float.toString(v2)}, ${Belt.Float.toString(
          v3,
        )}, ${Belt.Float.toString(v4)})`
    | #steps(v1, v2) =>
      switch v2 {
      | #end | #jumpEnd => `steps(${Steps.toValue(v1)})`
      | _ => `steps(${Steps.toValue(v1)}, ${Steps.toValue(v2)})`
      }
    }
}

// module Time = {
//   type t = [#ms | #s]
//   let toValue = value =>
//     switch value {
//     | #ms => "ms"
//     | #s => "s"
//     }
// }

// module SingleAnimationDirection = {
//   type t = [#normal | #reverse | #alternate | #alternateReverse]
//   let toValue = value =>
//     switch value {
//     | #normal => "normal"
//     | #reverse => "reverse"
//     | #alternate => "alternate"
//     | #alternateReverse => "alternate-reverse"
//     }
// }

// module SingleAnimationFillMode = {
//   type t = [#none | #forwards | #backwards | #both]
//   let toValue = value =>
//     switch value {
//     | #none => "none"
//     | #forwards => "forwards"
//     | #backwards => "backwards"
//     | #both => "both"
//     }
// }

// module SingleAnimationIterationCount = {
//   type t = [#infinite | #abs(float)]
//   let toValue = value => {
//     switch value {
//     | #infinite => "infinite"
//     | #abs(num) => Belt.Float.toString(abs_float(num))
//     }
//   }
// }

module Color = {
  type t = [#hex(string)]
  let toValue = (color: t) =>
    switch color {
    | #hex(string) => `#${string}`
    }
}
module Background = {
  type t = [#hex(string)]
  let toValue = (color: t) =>
    switch color {
    | #hex(string) => `#${string}`
    }
}

type rule = string

let alignContent = (value: AlignContent.t): rule =>
  Emotion.css(. declaration("align-content", AlignContent.toValue(value)))
let alignContentRaw = (value: AlignContent.t): rule =>
  declaration("align-content", AlignContent.toValue(value))

let alignItems = (value: AlignItems.t): rule =>
  Emotion.css(. declaration("align-items", AlignItems.toValue(value)))

let alignSelf = (value: AlignSelf.t): rule =>
  Emotion.css(. declaration("align-items", AlignSelf.toValue(value)))

let all = (value: All.t): rule => Emotion.css(. declaration("all", All.toValue(value)))

let animationDelay = (value: AnimationDelay.t): rule =>
  Emotion.css(. declaration("animation-delay", AnimationDelay.toValue(value)))

let animationDirection = (value: AnimationDirection.t): rule =>
  Emotion.css(. declaration("animation-direction", AnimationDirection.toValue(value)))

let animationDirectionMany = (values: array<AnimationDirection.t>): rule =>
  Emotion.css(. declaration("animation-direction", AnimationDirection.toManyValues(values)))

let animationDuration = (value: AnimationDuration.t): rule =>
  Emotion.css(. declaration("animation-duration", AnimationDuration.toValue(value)))

let animationFillMode = (value: AnimationFillMode.t): rule =>
  Emotion.css(. declaration("animation-fill-mode", AnimationFillMode.toValue(value)))

let animationFillModeMany = (values: array<AnimationFillMode.t>): rule =>
  Emotion.css(. declaration("animation-fill-mode", AnimationFillMode.toManyValues(values)))

let animationIterationCount = (value: AnimationIterationCount.t): rule =>
  Emotion.css(. declaration("animation-iteration-count", AnimationIterationCount.toValue(value)))

let animationIterationCountMany = (values: array<AnimationIterationCount.t>): rule =>
  Emotion.css(.
    declaration("animation-iteration-count", AnimationIterationCount.toManyValues(values)),
  )

let animationName = (value: AnimationName.t): rule =>
  Emotion.css(. declaration("animation-name", AnimationName.toValue(value)))

let animationNameMany = (values: array<AnimationName.t>): rule =>
  Emotion.css(. declaration("animation-name", AnimationName.toManyValues(values)))

let animationPlayState = (value: AnimationPlayState.t): rule =>
  Emotion.css(. declaration("animation-play-state", AnimationPlayState.toValue(value)))

let animationPlayStateMany = (values: array<AnimationPlayState.t>): rule =>
  Emotion.css(. declaration("animation-play-state", AnimationPlayState.toManyValues(values)))

let animationTimingFunction = (value: AnimationTimingFunction.t): rule =>
  Emotion.css(. declaration("animation-timing-function", AnimationTimingFunction.toValue(value)))

let background = hex => Emotion.css(. declaration("background", Color.toValue(#hex(hex))))
let color = hex => Emotion.css(. declaration("color", Color.toValue(#hex(hex))))
let colorRaw = hex => declaration("color", Color.toValue(#hex(hex)))
