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
