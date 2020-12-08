open Next

let default = () =>
  <div>
    <Head>
      <title> {"Acme Web Design"->ReasonReact.string} </title>
      <link rel="icon" href="/favicon.ico" />
    </Head>
    <main>
      <nav
        className="bg-gray-700 md:flex md:items-center md:justify-between   text-white py-2 px-8 md: px-16  border-red-500 border-b-2">
        <div className="text-xl font-bold text-center">
          <span className="text-red-300"> {"Acme"->React.string} </span>
          {"Web Design"->React.string}
        </div>
        <div className="flex flex-wrap justify-center mt-4 md:mt-0">
          <a href="#" className="uppercase flex items-center h-10 px-2 text-red-300">
            {"Home"->React.string}
          </a>
          <a href="#" className="uppercase h-10 px-2 flex items-center">
            {"About"->React.string}
          </a>
          <a href="#" className="uppercase h-10 px-2 flex items-center">
            {"Services"->React.string}
          </a>
        </div>
      </nav>
    </main>
  </div>
