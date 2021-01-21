module Styles = {
  open Tailwind
  let wrapper = merge(.[grid, gridCols2, maxW6Xl, mxAuto, mt6])
}

let default = () => {
  <div className=Styles.wrapper>
    <div>
      <h2> {"Bs-TailwindCSS"->Utils.str} </h2>
      <input type_="text" name="" id="" placeholder="Put some text here" />
      <button>
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
          <circle
            className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"
          />
          <path
            className="opacity-75"
            fill="currentColor"
            d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
          />
        </svg>
        {"Button"->Utils.str}
      </button>
      <button>
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
          <circle
            className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"
          />
          <path
            className="opacity-75"
            fill="currentColor"
            d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
          />
        </svg>
        {"Button"->Utils.str}
      </button>
      <button>
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
          <circle
            className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"
          />
          <path
            className="opacity-75"
            fill="currentColor"
            d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
          />
        </svg>
        {"Button"->Utils.str}
      </button>
      <button>
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
          <circle
            className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"
          />
          <path
            className="opacity-75"
            fill="currentColor"
            d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
          />
        </svg>
        {"Button"->Utils.str}
      </button>
      <div />
      <div />
      <p>
        {"Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias optio labore natus rem tempora veritatis. Praesentium quia, modi necessitatibus nulla adipisci, veniam itaque officiis rem voluptatem fugit cumque omnis nam nostrum natus tenetur voluptatibus placeat optio quasi, voluptatum obcaecati. Facere voluptatum veniam fugiat nihil dolorem eos quo nulla corrupti dicta."->Utils.str}
      </p>
    </div>
    // INFO: TailwindCSS section
    <div>
      <h2 className=%tw("text-5xl text-gray-800 text-opacity-80 mb-4 leading-none")>
        {"Normal TailwindCSS"->Utils.str}
      </h2>
      <input
        type_="text"
        name=""
        id=""
        placeholder="Put some text here"
        className=%tw("placeholder-red-400 placeholder-opacity-90 ring-yellow-500 ring-4 mb-4")
      />
      <button className=%tw("block p-3 mb-4 bg-gray-600 text-white")>
        <svg
          className="animate-spin h-5 w-5 text-white inline-block mr-3"
          xmlns="http://www.w3.org/2000/svg"
          fill="none"
          viewBox="0 0 24 24">
          <circle
            className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"
          />
          <path
            className="opacity-75"
            fill="currentColor"
            d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
          />
        </svg>
        {"Button"->Utils.str}
      </button>
      <button className=%tw("block p-3 mb-4 bg-gray-600 text-white")>
        <svg
          className="animate-bounce h-5 w-5 text-white inline-block mr-3"
          xmlns="http://www.w3.org/2000/svg"
          fill="none"
          viewBox="0 0 24 24">
          <circle
            className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"
          />
          <path
            className="opacity-75"
            fill="currentColor"
            d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
          />
        </svg>
        {"Button"->Utils.str}
      </button>
      <button className=%tw("block p-3 mb-4 bg-gray-600 text-white")>
        <svg
          className="animate-ping h-5 w-5 text-white inline-block mr-3"
          xmlns="http://www.w3.org/2000/svg"
          fill="none"
          viewBox="0 0 24 24">
          <circle
            className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"
          />
          <path
            className="opacity-75"
            fill="currentColor"
            d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
          />
        </svg>
        {"Button"->Utils.str}
      </button>
      <button className=%tw("block p-3 mb-4 bg-gray-600 text-white")>
        <svg
          className="animate-pulse h-5 w-5 text-white inline-block mr-3"
          xmlns="http://www.w3.org/2000/svg"
          fill="none"
          viewBox="0 0 24 24">
          <circle
            className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"
          />
          <path
            className="opacity-75"
            fill="currentColor"
            d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
          />
        </svg>
        {"Button"->Utils.str}
      </button>
      <div className="w-20 h-20 bg-indigo-600 mb-4" />
      <div className="w-20 h-20 bg-indigo-600 rounded-r-full mb-4" />
      <p className="text-red-800 text-opacity-85">
        {" Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloribus a, quidem, ducimus, molestiae officiis beatae veritatis voluptates expedita mollitia ad dicta pariatur. Iusto totam delectus modi nulla asperiores esse voluptatem nam doloremque aliquid, laborum id impedit ullam quod eligendi accusantium illum aperiam, ratione est ipsam soluta sed aliquam? Quam, magni."->Utils.str}
      </p>
    </div>
  </div>
}
