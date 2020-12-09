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
       <section class="bg-cover px-4 sm:px-8 pt-8 pb-4 md:py-16  text-white" style="background-image: url('./img/showcase.jpg')">
    <h1 class="text-center font-bold text-4xl lg:text-5xl">Affordable Professional Web Design</h1>
    <p class="text-center py-6 lg:text-lg">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolorum ullam et error consectetur quod? Laboriosam.</p>
  </section>
  <section class="bg-gray-700 flex flex-col text-center text-white px-8 md:flex-row md:items-center md:justify-between">
    <h2 class="capitalize text-xl font-bold my-6 ">Subscribe to our newsletter</h2>
    <div class="flex flex-col md:flex-row">
      <input class="py-2 pl-2 text-black focus:text-white focus:outline-none focus:bg-gray-900 focus:placeholder-gray-400 lg:pr-8" placeholder="Enter email..." type="email" name="email" id="email">
    <button class="bg-red-600 mb-4 px-4 py-2 mt-2 focus:outline-none focus:bg-red-700 md:mt-0 md:mb-0" type="submit">Subscribe</button>
    </div>    
  </section>

  <section class="bg-gray-50 py-4 px-6 md:flex">
    <div class="flex flex-col items-center text-center mb-8 md:mr-4">
      <img width="90" height="90"  src="./img/logo_html.png" class="mb-4" alt="HTML logo">
      <h3 class="mb-4 font-bold text-xl">HTML5 Markup</h3>
      <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Est, enim eligendi! Nobis molestias placeat aliquam.</p>
    </div>
    <div class="flex flex-col items-center text-center mb-8 md:mr-4">
      <img class="mb-4" width="90" height="90" src="./img/logo_css.png" alt="HTML logo">
      <h3 class="mb-4 font-bold text-xl">CSS3 Styling</h3>
      <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Est, enim eligendi! Nobis molestias placeat aliquam.</p>
    </div>
  
    <div class="flex flex-col items-center text-center mb-8">
      <img class="mb-4" width="90" height="90" src="./img/logo_brush.png" alt="HTML logo">
      <h3 class="mb-4 font-bold text-xl">Graphic Design</h3>
      <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Est, enim eligendi! Nobis molestias placeat aliquam.</p>
    </div>
  </section>


  <section class="w-full h-64 bg-red-800 sm:bg-pink-700 md:bg-purple-700 lg:bg-gray-700 xl:bg-green-600"></section>
    </main>
  </div>
