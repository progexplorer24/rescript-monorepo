open Next
open Utils

let default = () =>
  <div>
    <Head> <title> {"Acme Web Design"->str} </title> <link rel="icon" href="/favicon.ico" /> </Head>
    <main>
      <NavAcme>
        <div className="text-xl font-bold text-center">
          <span className="text-red-300"> {"Acme"->str} </span> {"Web Design"->str}
        </div>
        <div className="flex flex-wrap justify-center mt-4 md:mt-0">
          <a href="#" className="uppercase flex items-center h-10 px-2 text-red-300">
            {"Home"->str}
          </a>
          <a href="#" className="uppercase h-10 px-2 flex items-center"> {"About"->str} </a>
          <a href="#" className="uppercase h-10 px-2 flex items-center"> {"Services"->str} </a>
        </div>
      </NavAcme>
      <section
        className="bg-cover px-4 sm:px-8 pt-8 pb-4 md:py-32  text-white"
        style={ReactDOM.Style.make(~backgroundImage="url('/acme/showcase.jpg')", ())}>
        <h1 className="text-center font-bold text-4xl lg:text-5xl">
          {"Affordable Professional Web Design"->str}
        </h1>
        <p className="text-center py-6 lg:text-lg">
          {"Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolorum ullam et error consectetur quod? Laboriosam."->str}
        </p>
      </section>
      <section
        className="bg-gray-700 flex flex-col text-center text-white px-8 md:flex-row md:items-center md:justify-between">
        <h2 className="capitalize text-xl font-bold my-6 ">
          {"Subscribe to our newsletter"->str}
        </h2>
        <div className="flex flex-col md:flex-row">
          <input
            className="py-2 pl-2 text-black focus:text-white focus:outline-none focus:bg-gray-900 focus:placeholder-gray-400 lg:pr-8"
            placeholder="Enter email..."
            type_="email"
            name="email"
            id="email"
          />
          <button
            className="bg-red-600 mb-4 px-4 py-2 mt-2 focus:outline-none focus:bg-red-700 md:mt-0 md:mb-0"
            type_="submit">
            {"Subscribe"->str}
          </button>
        </div>
      </section>
      <section className="bg-gray-50 py-4 px-6 md:flex">
        <div className="flex flex-col items-center text-center mb-8 md:mr-4">
          <img width="90" height="90" src="/acme/logo_html.png" className="mb-4" alt="HTML logo" />
          <h3 className="mb-4 font-bold text-xl"> {"HTML5 Markup"->str} </h3>
          <p>
            {"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Est, enim eligendi! Nobis molestias placeat aliquam."->str}
          </p>
        </div>
        <div className="flex flex-col items-center text-center mb-8 md:mr-4">
          <img className="mb-4" width="90" height="90" src="/acme/logo_css.png" alt="HTML logo" />
          <h3 className="mb-4 font-bold text-xl"> {"CSS3 Styling"->str} </h3>
          <p>
            {"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Est, enim eligendi! Nobis molestias placeat aliquam."->str}
          </p>
        </div>
        <div className="flex flex-col items-center text-center mb-8">
          <img className="mb-4" width="90" height="90" src="/acme/logo_brush.png" alt="HTML logo" />
          <h3 className="mb-4 font-bold text-xl"> {"Graphic Design"->str} </h3>
          <p>
            {"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Est, enim eligendi! Nobis molestias placeat aliquam."->str}
          </p>
        </div>
      </section>
      <footer
        className="bg-red-600 text-white h-24 text-center font-bold flex items-center justify-center">
        <div> {(`Acme Web Design, Copyright ${copySymbol} 2020`)->str} </div>
      </footer>
    </main>
  </div>
