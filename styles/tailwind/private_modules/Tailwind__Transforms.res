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
  style(.[
    CssJs.transforms([
      CssJs.translateX(#percent(twTranslateX)),
      CssJs.translateY(#percent(twTranslateY)),
      CssJs.rotate(twRotate),
      CssJs.skewX(twSkewX),
      CssJs.skewY(twSkewY),
      CssJs.scaleX(twScaleX),
      CssJs.scaleY(twScaleY),
    ]),
  ])

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
  style(.[
    CssJs.transforms([
      CssJs.translate3d(twTranslateX, twTranslateY, #percent(0.)),
      CssJs.rotate(twRotate),
      CssJs.skewX(twSkewX),
      CssJs.skewY(twSkewY),
      CssJs.scaleX(twScaleX),
      CssJs.scaleY(twScaleY),
    ]),
  ])
let transformNone = style(.[CssJs.transform(#none)])

// NOTE: Transform Origin - Utilities for specifying the origin for an element's transformations.
let originCenter = style(.[transformOrigin(#percent(50.), #percent(50.))])
let originRight = style(.[transformOrigin(#percent(50.), #percent(100.))])
let originLeft = style(.[transformOrigin(#percent(50.), #percent(0.))])

let originTop = style(.[transformOrigin(#percent(0.), #percent(50.))])
let originTopLeft = style(.[transformOrigin(#percent(0.), #percent(0.))])
let originTopRight = style(.[transformOrigin(#percent(0.), #percent(100.))])

let originBottom = style(.[transformOrigin(#percent(100.), #percent(50.))])
let originBottomRight = style(.[transformOrigin(#percent(100.), #percent(100.))])
let originBottomLeft = style(.[transformOrigin(#percent(100.), #percent(0.))])
