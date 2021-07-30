open Cypress
module Component = {
  @react.component
  let make = (~children="", ~className="") => <div id="id" className> {children->Utils.str} </div>
}

describe("align-content works", () => {
  let valArr = [
    #normal,
    #spaceBetween,
    #spaceAround,
    #spaceEvenly,
    #stretch,
    #start,
    #center,
    #end,
    #flexStart,
    #flexEnd,
    #baseline,
    #safeCenter,
    #unsafeCenter,
  ]

  let _alignTests = Js.Array2.map(valArr, val => {
    it(`align-content: ${Css.AlignContent.toValue(val)} - works`, () => {
      mount(<Component className={Css.alignContent(val)} />)
      cyGet("#id", ())->shouldHaveCss("align-content", Css.AlignContent.toValue(val))
    })
  })
})

describe("align-items works", () => {
  let valArr = [
    #normal,
    #stretch,
    #start,
    #center,
    #end,
    #flexStart,
    #flexEnd,
    #baseline,
    #safeCenter,
    #unsafeCenter,
  ]

  let _alignTests = Js.Array2.map(valArr, val => {
    it(`align-items: ${Css.AlignItems.toValue(val)} - works`, () => {
      mount(<Component className={Css.alignItems(val)} />)
      cyGet("#id", ())->shouldHaveCss("align-items", Css.AlignItems.toValue(val))
    })
  })
})

describe("align-self works", () => {
  let valArr = [
    #normal,
    #stretch,
    #baseline,
    #start,
    #center,
    #end,
    #flexStart,
    #flexEnd,
    #selfStart,
    #selfEnd,
    #safeCenter,
    #unsafeCenter,
  ]

  let _alignTests = Js.Array2.map(valArr, val => {
    it(`align-items: ${Css.AlignSelf.toValue(val)} - works`, () => {
      mount(<Component className={Css.alignSelf(val)} />)
      cyGet("#id", ())->shouldHaveCss("align-items", Css.AlignSelf.toValue(val))
    })
  })
})

describe("all works", () => {
  let valArr = [#unset, #initial, #inherit]

  let _allTests = Js.Array2.map(valArr, val => {
    it(`all: ${Css.All.toValue(val)} - works`, () => {
      mount(
        <Component
          className={Emotion.merge(. [
            Emotion.css(. `
        color: red;
      `),
            Css.all(val),
          ])}>
          {"Hello tester"}
        </Component>,
      )
      cyGet("#id", ())->shouldNotHaveCss("color", "rgb(255, 0, 0)")
    })
  })
})

describe("animation-delay works", () => {
  let valArr = [#ms(250), #ms(12), #s(2.), #s(-2.)]

  let _animationTests = Js.Array2.map(valArr, val => {
    it(`animation-delay: ${Css.AnimationDelay.toValue(val)} - works`, () => {
      mount(<Component className={Css.animationDelay(val)}> {"Hello tester"} </Component>)
      cyGet("#id", ())->shouldHaveCss("animation-delay", Css.AnimationDelay.toValue(val))
    })
  })
})

describe("animation-direction works", () => {
  let valArr = [#normal, #reverse, #alternate, #alternateReverse]

  let _animationTests = Js.Array2.map(valArr, val => {
    it(`animation-direction: ${Css.AnimationDirection.toValue(val)} - works`, () => {
      mount(<Component className={Css.animationDirection(val)}> {"Hello tester"} </Component>)
      cyGet("#id", ())->shouldHaveCss("animation-direction", Css.AnimationDirection.toValue(val))
    })
  })
})

describe("animation-direction for multiple values works", () => {
  let valArr: array<array<Css.AnimationDirection.t>> = [
    [#normal, #reverse],
    [#alternate, #reverse, #normal],
  ]

  let _animationTests = Js.Array2.map(valArr, val => {
    it(
      `animation-direction: ${Css.renderMultipleValues(
          val->Js.Array2.map(item => Css.AnimationDirection.toValue(item)),
        )} - works`,
      () => {
        mount(<Component className={Css.animationDirectionMany(val)}> {"Hello tester"} </Component>)
        cyGet("#id", ())->shouldHaveCss(
          "animation-direction",
          Css.AnimationDirection.toManyValues(val),
        )
      },
    )
  })
})

describe("animation-duration works", () => {
  let valArr = [#ms(250), #ms(12), #s(2.)]

  let _animationTests = Js.Array2.map(valArr, val => {
    it(`animation-duration: ${Css.AnimationDuration.toValue(val)} - works`, () => {
      mount(<Component className={Css.animationDuration(val)}> {"Hello tester"} </Component>)
      cyGet("#id", ())->shouldHaveCss("animation-duration", Css.AnimationDuration.toValue(val))
    })
  })
})

describe("animation-fill-mode works", () => {
  let valArr = [#none, #forwards, #backwards, #both]

  let _animationTests = Js.Array2.map(valArr, val => {
    it(`animation-fill-mode: ${Css.AnimationFillMode.toValue(val)} - works`, () => {
      mount(<Component className={Css.animationFillMode(val)}> {"Hello tester"} </Component>)
      cyGet("#id", ())->shouldHaveCss("animation-fill-mode", Css.AnimationFillMode.toValue(val))
    })
  })
})

describe("animation-fill-mode for multiple values works", () => {
  let valArr: array<array<Css.AnimationFillMode.t>> = [
    [#none, #forwards],
    [#both, #forwards, #none],
  ]

  let _animationTests = Js.Array2.map(valArr, val => {
    it(
      `animation-fill-mode: ${Css.renderMultipleValues(
          val->Js.Array2.map(item => Css.AnimationFillMode.toValue(item)),
        )} - works`,
      () => {
        mount(<Component className={Css.animationFillModeMany(val)}> {"Hello tester"} </Component>)
        cyGet("#id", ())->shouldHaveCss(
          "animation-fill-mode",
          Css.AnimationFillMode.toManyValues(val),
        )
      },
    )
  })
})

describe("animation-iteration-count works", () => {
  let valArr = [#infinite, #abs(3.), #abs(2.4)]

  let _animationTests = Js.Array2.map(valArr, val => {
    it(`animation-fill-mode: ${Css.AnimationIterationCount.toValue(val)} - works`, () => {
      mount(<Component className={Css.animationIterationCount(val)}> {"Hello tester"} </Component>)
      cyGet("#id", ())->shouldHaveCss(
        "animation-iteration-count",
        Css.AnimationIterationCount.toValue(val),
      )
    })
  })
})

describe("animation-iteration-count for multiple values works", () => {
  let valArr: array<array<Css.AnimationIterationCount.t>> = [
    [#abs(2.), #abs(0.), #infinite],
    [#abs(0.5), #abs(3.), #abs(0.4), #abs(0.2)],
  ]

  let _animationTests = Js.Array2.map(valArr, val => {
    it(
      `animation-iteration-count: ${Css.renderMultipleValues(
          val->Js.Array2.map(item => Css.AnimationIterationCount.toValue(item)),
        )} - works`,
      () => {
        mount(
          <Component className={Css.animationIterationCountMany(val)}>
            {"Hello tester"}
          </Component>,
        )
        cyGet("#id", ())->shouldHaveCss(
          "animation-iteration-count",
          Css.AnimationIterationCount.toManyValues(val),
        )
      },
    )
  })
})

describe("animation-name works", () => {
  let valArr = [#none, #str("test_05"), #str("-specific"), #str("sliding-vertically")]

  let _animationTests = Js.Array2.map(valArr, val => {
    it(`animation-name: ${Css.AnimationName.toValue(val)} - works`, () => {
      mount(<Component className={Css.animationName(val)}> {"Hello tester"} </Component>)
      cyGet("#id", ())->shouldHaveCss("animation-name", Css.AnimationName.toValue(val))
    })
  })
})

describe("animation-name for multiple values works", () => {
  let valArr: array<array<Css.AnimationName.t>> = [
    [#str("test1"), #str("animation4"), #none],
    [#none, #str("-moz-specific"), #str("sliding")],
  ]

  let _animationTests = Js.Array2.map(valArr, val => {
    it(
      `animation-name: ${Css.renderMultipleValues(
          val->Js.Array2.map(item => Css.AnimationName.toValue(item)),
        )} - works`,
      () => {
        mount(<Component className={Css.animationNameMany(val)}> {"Hello tester"} </Component>)
        cyGet("#id", ())->shouldHaveCss("animation-name", Css.AnimationName.toManyValues(val))
      },
    )
  })
})

describe("animation-play-state works", () => {
  let valArr = [#running, #paused]

  let _animationTests = Js.Array2.map(valArr, val => {
    it(`animation-play-state: ${Css.AnimationPlayState.toValue(val)} - works`, () => {
      mount(<Component className={Css.animationPlayState(val)}> {"Hello tester"} </Component>)
      cyGet("#id", ())->shouldHaveCss("animation-play-state", Css.AnimationPlayState.toValue(val))
    })
  })
})

describe("animation-play-state for multiple values works", () => {
  let valArr: array<array<Css.AnimationPlayState.t>> = [
    [#paused, #running, #running],
    [#running, #paused, #running],
  ]

  let _animationTests = Js.Array2.map(valArr, val => {
    it(
      `animation-play-state: ${Css.renderMultipleValues(
          val->Js.Array2.map(item => Css.AnimationPlayState.toValue(item)),
        )} - works`,
      () => {
        mount(<Component className={Css.animationPlayStateMany(val)}> {"Hello tester"} </Component>)
        cyGet("#id", ())->shouldHaveCss(
          "animation-play-state",
          Css.AnimationPlayState.toManyValues(val),
        )
      },
    )
  })
})

describe("animation-timing-function works", () => {
  let valArr = [
    #ease,
    #easeIn,
    #easeOut,
    #easeInOut,
    #linear,
    #stepStart,
    #stepEnd,
    #steps(#num(4), #end),
    #steps(#num(4), #jumpStart),
    #steps(#num(10), #jumpEnd),
    #steps(#num(20), #jumpNone),
    #steps(#num(5), #jumpBoth),
    #steps(#num(6), #start),
    #steps(#num(8), #end),
    #cubicBezier(0.9, 0.7, 0.1, 0.3),
    #cubicBezier(0.1, 0.7, 1.0, 0.1),
    #cubicBezier(0.1, 0.87, 0.1, 0.01),
  ]

  let _animationTests = Js.Array2.map(valArr, val => {
    it(`animation-timing-function: ${Css.AnimationTimingFunction.toValue(val)} - works`, () => {
      mount(<Component className={Css.animationTimingFunction(val)}> {"Hello tester"} </Component>)
      cyGet("#id", ())->shouldHaveCss(
        "animation-timing-function",
        Css.AnimationTimingFunction.toValue(val),
      )
    })
  })
})

// TODO: We need to work on that.
describeOnly(":active pseudoselector works", () => {
  module Link = {
    @react.component
    let make = (~children: string, ~className) => <a href="#" className> {children->Utils.str} </a>
  }

  it(`applying :active pseudoclass - works`, () => {
    mount(<Link className={Css.color("000000")}> {"Hello tester"} </Link>)
    cyGet("a", ())->shouldExist
  })
})
