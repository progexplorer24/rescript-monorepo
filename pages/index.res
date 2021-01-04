open Next

let default = () =>
  <div>
    <Head>
      <title> {"Create Next App"->ReasonReact.string} </title>
      <link rel="icon" href="/favicon.ico" />
    </Head>
    <main>
      <h1> {"Hello World"->ReasonReact.string} </h1>
      <p>
        {"Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis enim dicta expedita esse repellat quam, quasi ratione ad. Incidunt ducimus quos aperiam quidem natus? Sed recusandae quis error deleniti consectetur quod, alias aperiam atque quam vel rem repellat vitae ad et ipsum perferendis nesciunt! Eveniet possimus voluptate iste deleniti et!"->ReasonReact.string}
      </p>
    </main>
  </div>
