// NOTE: Sources: https://www.digitalocean.com/community/tutorials/css-inherit-initial-unset

let declaration = (property, value) => `${property}: ${value};`

// INFO: The meaning of global values
// inherit: Get the property from the parent element.
// initial: The default value for the property (the browser default).
// unset: Acts as either inherit or initial. It’ll act as inherit if the parent has a value that matches, or else it will act as initial.
type globalValues = [#inherit | #initial | #unset]

let toGlobalValues = globalValues =>
  switch globalValues {
  | #inherit => "inherit"
  | #initial => "initial"
  | #unset => "unset"
  }

type baselinePosition = [#baseline | #firstBaseline | #lastBaseline]

let toBaselinePosition = baselinePosition =>
  switch baselinePosition {
  | #baseline => "baseline"
  | #firstBaseline => "first baseline"
  | #lastBaseline => "last baseline"
  }

type contentDistribution = [#spaceBetween | #spaceAround | #spaceEvenly | #stretch]

let toContentDistribution = contentDistribution =>
  switch contentDistribution {
  | #spaceBetween => "space-between"
  | #spaceAround => "space-around"
  | #spaceEvenly => "space-evenly"
  | #stretch => "stretch"
  }

type overflowPosition = [#safe | #unsafe]

type contentPosition = [#center | #start | #end | #flexStart | #flexEnd]

let toContentPosition = contentPosition =>
  switch contentPosition {
  | #center => "center"
  | #start => "start"
  | #end => "end"
  | #flexStart => "flex-start"
  | #flexEnd => "flex-end"
  }

type selfPosition = [#center | #start | #end | #selfStart | #selfEnd | #flexStart | #flexEnd]

let toSelfPosition = selfPosition =>
  switch selfPosition {
  | #center => "center"
  | #start => "start"
  | #end => "end"
  | #flexStart => "flex-start"
  | #flexEnd => "flex-end"
  | #selfStart => "self-start"
  | #selfEnd => "self-end"
  }

// https://developer.mozilla.org/en-US/docs/Web/CSS/align-content

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
    | contentPosition
    | baselinePosition
    | contentDistribution
    | overflowPosition
    | globalValues
  ]

  let toValue = value =>
    switch value {
    | #center => "center"
    | #start => "start"
    | #end => "end"
    | #flexStart => "flex-start"
    | #flexEnd => "flex-end"
    | #normal => "normal"
    | #baseline => "baseline"
    | #firstBaseline => "first baseline"
    | #lastBaseline => "last baseline"
    | #spaceBetween => "space-between"
    | #spaceAround => "space-around"
    | #spaceEvenly => "space-evenly"
    | #stretch => "stretch"
    | #safe => "safe"
    | #unsafe => "unsafe"
    | #inherit => "inherit"
    | #initial => "initial"
    | #unset => "unset"
    }
}

// TODO: Safe & unsafe center
// | #safeCenter
// | #unsafeCenter

module AlignItems = {
  type t = [
    | #normal
    | #stretch
    | selfPosition
    | baselinePosition
    | overflowPosition
    | globalValues
  ]

  let toValue = value =>
    switch value {
    | #center => "center"
    | #start => "start"
    | #end => "end"
    | #flexStart => "flex-start"
    | #flexEnd => "flex-end"
    | #normal => "normal"
    | #baseline => "baseline"
    | #firstBaseline => "first baseline"
    | #lastBaseline => "last baseline"
    | #stretch => "stretch"
    | #selfStart => "self-start"
    | #selfEnd => "self-end"
    | #safe => "safe"
    | #unsafe => "unsafe"
    | #inherit => "inherit"
    | #initial => "initial"
    | #unset => "unset"
    }
}

module AlignSelf = {
  type t = [#auto | #normal | #stretch | baselinePosition | overflowPosition | selfPosition]
}

module All = {
  type t = [globalValues | #revert]
}

module Angle = {
  type t = [#deg | #grad | #rad | #turn]

  let toAngle = angle =>
    switch angle {
    | #deg => "deg"
    | #grad => "grad"
    | #rad => "rad"
    | #turn => "turn"
    }
}

module Time = {
  type t = [#ms | #s]
  let toValue = value =>
    switch value {
    | #ms => "ms"
    | #s => "s"
    }
}

module SingleAnimationDirection = {
  type t = [#normal | #reverse | #alternate | #alternateReverse]
  let toValue = value =>
    switch value {
    | #normal => "normal"
    | #reverse => "reverse"
    | #alternate => "alternate"
    | #alternateReverse => "alternate-reverse"
    }
}

module AnimationPlayState = {
  type t = [#running | #paused]
  let toValue = value =>
    switch value {
    | #running => "running"
    | #paused => "paused"
    }
}

module SingleAnimationFillMode = {
  type t = [#none | #forwards | #backwards | #both]
  let toValue = value =>
    switch value {
    | #none => "none"
    | #forwards => "forwards"
    | #backwards => "backwards"
    | #both => "both"
    }
}

module SingleAnimationIterationCount = {
  type t = [#infinite | #abs(float)]
  let toValue = value => {
    switch value {
    | #infinite => "infinite"
    | #abs(num) => Belt.Float.toString(abs_float(num))
    }
  }
}

module AnimationTimingFunction = {
  type t = [#ease | #easeIn | #easeOut | #easeInOut | #linear | #cubicBezier]
}

module AnimationName = {
  type t = [#none | #str(string)]
  let toValue = value =>
    switch value {
    | #none => "none"
    | #str(s) => s
    }
}

type rule = string
let alignContent = (value: AlignContent.t): rule =>
  declaration("align-content", AlignContent.toValue(value))
let alignItems = (value): rule => declaration("align-items", AlignContent.toValue(value))
let animationDelay = (time: Time.t) => declaration("animation-delay", Time.toValue(time))
// let animation = () => 
