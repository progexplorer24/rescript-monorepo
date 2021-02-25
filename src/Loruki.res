module Styles = {
  open Tailwind

  let h1 = twStyle([leading(#tight), my(#v2_5), text(#xl2)])

  // TODO: Is width 100% needed or styles reset already did this?
  // let img = twStyle([w(#full)])

  // let p = twStyle([my(#v2_5)])

  // let lorukiBlue = #hex("047AED")

  let navContainer = twStyle([h(#v18)])

  let contentBox = twStyle([maxW(#xl6), mx(#auto), px(#v10), h(#full), textColor(#trueGray100)])

  let navBox = merge(.[contentBox, twStyle([flex, justifyBetween, itemsCenter])])

  let ul = twStyle([flex])
  let a = twStyle([p(#v2_5), mx(#v1)])
  let aHover = twStyle([hover([borderB(#v2), borderColor(#trueGray100)])])

  let showcase = twStyle([bg(#blue900)])

  let twoCols = merge(.[contentBox, twStyle([grid, gridCols(#v2), gap(#v5)])])
}

let default = () => {
  <Layout__Loruki>
    <NavContainer__Loruki className={Tailwind.merge(.[Styles.navContainer])}>
      <div className={Tailwind.merge(.[Styles.navBox])}>
        <h1 className={Tailwind.merge(.[Styles.h1])}> {"Loruki."->Utils.str} </h1>
        <Nav__Loruki>
          <ul className={Tailwind.merge(.[Styles.ul])}>
            <li>
              <Next.Link href="/">
                <a className={Tailwind.merge(.[Styles.a, Styles.aHover])}> {"Home"->Utils.str} </a>
              </Next.Link>
            </li>
            <li>
              <Next.Link href="/">
                <a className={Tailwind.merge(.[Styles.a, Styles.aHover])}>
                  {"Features"->Utils.str}
                </a>
              </Next.Link>
            </li>
            <li>
              <Next.Link href="/">
                <a className={Tailwind.merge(.[Styles.a, Styles.aHover])}> {"Docs"->Utils.str} </a>
              </Next.Link>
            </li>
          </ul>
        </Nav__Loruki>
      </div>
    </NavContainer__Loruki>
    <section className={Tailwind.merge(.[Styles.showcase])}>
      <div className={Tailwind.merge(.[Styles.twoCols])}>
        <div>
          <h2> {"Easier Deployment"->Utils.str} </h2>
          <p>
            {"Deploy web apps of all kinds, from large scale enterprise APIs to static websites for individuals. Fill out the form to try a demo of our platform"->Utils.str}
          </p>
          <Next.Link href="/">
            <a className={Tailwind.merge(.[Styles.a, Styles.aHover])}> {"Read More"->Utils.str} </a>
          </Next.Link>
          <Ion.Outline.add />
        </div>
        <div>
          <h2> {"Request a Demo"->Utils.str} </h2>
          <form>
            <label>
              <input type_="text" name="name" placeholder="Name" id="" required={true} />
            </label>
            <label>
              <input type_="text" name="company" placeholder="Company Name" id="" required={true} />
            </label>
            <label>
              <input type_="email" name="email" placeholder="Email" id="" required={true} />
            </label>
            <button type_="submit"> {"Send"->Utils.str} </button>
          </form>
        </div>
      </div>
    </section>
  </Layout__Loruki>
}
