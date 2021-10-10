/*
  INFO: This hook is used to prevent animation and transition effects while resizing the window
  Based on: https://css-tricks.com/stop-animations-during-window-resizing/
*/
let useStopAnimationJank = () =>
  React.useEffect0(() => {
    module Styles = {
      open CssJs
      let resizeAnimationStopper = style(. [
        selector(. "*", [important(transition("none")), important(animationPlayState(#paused))]),
      ])
    }

    let window = Webapi.Dom.window
    let document = Webapi.Dom.document

    let onResize = _ => {
      // This return HTMLCollection element
      let bodyCollection = Webapi.Dom.Document.getElementsByTagName("body", document)

      let body = Webapi.Dom.HtmlCollection.item(0, bodyCollection)

      switch body {
      | Some(element) =>
        Webapi.Dom.DomTokenList.add(
          Styles.resizeAnimationStopper,
          Webapi.Dom.Element.classList(element),
        )
      | None => ()
      }

      let _timeout = Js.Global.setTimeout(() => {
        switch body {
        | Some(element) =>
          Webapi.Dom.DomTokenList.remove(
            Styles.resizeAnimationStopper,
            Webapi.Dom.Element.classList(element),
          )

        | None => ()
        }
      }, 400)
    }

    Webapi.Dom.Window.addEventListener("resize", onResize, window)

    // Clean up function
    Some(() => Webapi.Dom.Window.removeEventListener("resize", onResize, window))
  })
