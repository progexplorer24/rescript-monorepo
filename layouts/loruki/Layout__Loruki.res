module Styles = {
  open Tailwind

  let globalStyles = twStyle([
    fontFamilies([#custom("Lato")]),
    fontWeight(#v300),
    w(#full),
    h(#full),
    bg(#gray50),
    textColor(#coolGray800),
    leading(#relaxed),
  ])
}

@react.component
let make = (~children) =>
  <div className={Tailwind.merge(.[Styles.globalStyles])}>
    <Next.Head>
      <media name="viewport" content="width=device-width, initial-sacle=1.0" />
      <title> {"Loruki"->Utils.str} </title>
      <link rel="preconnect" href="https://fonts.gstatic.com" />
      <link
        href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet"
      />
    </Next.Head>
    <main> children </main>
  </div>
