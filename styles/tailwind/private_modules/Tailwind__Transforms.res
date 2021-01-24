open CssJs
// NOTE: Transform - Utilities for controlling transform behaviour.
let transform = (
  ~twTranslateX=0.,
  ~twTranslateY=0.,
  ~twRotate=#deg(0.),
  ~twSkewX=#deg(0.),
  ~twSkewY=#deg(0.),
  ~twScaleX=1.,
  ~twScaleY=1.,
  (),
) =>
  [
    CssJs.transforms([
      CssJs.translateX(#percent(twTranslateX)),
      CssJs.translateY(#percent(twTranslateY)),
      CssJs.rotate(twRotate),
      CssJs.skewX(twSkewX),
      CssJs.skewY(twSkewY),
      CssJs.scaleX(twScaleX),
      CssJs.scaleY(twScaleY),
    ]),
  ]

let transformGpu = (
  ~twTranslateX=#percent(0.),
  ~twTranslateY=#percent(0.),
  ~twRotate=#deg(0.),
  ~twSkewX=#deg(0.),
  ~twSkewY=#deg(0.),
  ~twScaleX=1.,
  ~twScaleY=1.,
  (),
) =>
  [
    CssJs.transforms([
      CssJs.translate3d(twTranslateX, twTranslateY, #percent(0.)),
      CssJs.rotate(twRotate),
      CssJs.skewX(twSkewX),
      CssJs.skewY(twSkewY),
      CssJs.scaleX(twScaleX),
      CssJs.scaleY(twScaleY),
    ]),
  ]
let transformNone = [CssJs.transform(#none)]

// NOTE: Transform Origin - Utilities for specifying the origin for an element's transformations.
let originCenter = [transformOrigin(#percent(50.), #percent(50.))]
let originRight = [transformOrigin(#percent(50.), #percent(100.))]
let originLeft = [transformOrigin(#percent(50.), #percent(0.))]

let originTop = [transformOrigin(#percent(0.), #percent(50.))]
let originTopLeft = [transformOrigin(#percent(0.), #percent(0.))]
let originTopRight = [transformOrigin(#percent(0.), #percent(100.))]

let originBottom = [transformOrigin(#percent(100.), #percent(50.))]
let originBottomRight = [transformOrigin(#percent(100.), #percent(100.))]
let originBottomLeft = [transformOrigin(#percent(100.), #percent(0.))]
