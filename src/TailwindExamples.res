module Styles = {
  open Tailwind
  let wrapper = merge(.[twStyle([gridCols(#v2), maxW(#xl6), mx(#auto), mt(#v6), grid])])
  let hover = twStyle([selector("&:hover", [srOnly, noSrOnly, bg(#blue700, ~opacity=0.5)])])

  let alegreya = twStyle([[CssJs.fontFamily(#custom("Alegreya Sans"))]])
  let crimson = twStyle([[CssJs.fontFamily(#custom("Crimson Pro"))]])
  let jetBrains = twStyle([[CssJs.fontFamily(#custom("JetBrains Mono"))]])

  let shadow = twStyle([shadow(#xl)])
}

// module SvgConverter = {
//   let svgString = "stroke-linecap='round'<svg xmlns='http://www.w3.org/2000/svg' class='ionicon' viewBox='0 0 512 512'><title>Bag Remove</title><path fill='none' stroke='currentColor' stroke-linecap='round' stroke-linejoin='round' stroke-width='32' d='M320 320H192M80 176a16 16 0 00-16 16v216c0 30.24 25.76 56 56 56h272c30.24 0 56-24.51 56-54.75V192a16 16 0 00-16-16zM160 176v-32a96 96 0 0196-96h0a96 96 0 0196 96v32'/></svg> stroke-linecap='round'"

//   let strokeLinecap = Js.String2.replaceByRe(
//     svgString,
//     %re("/stroke-linecap='round'/g"),
//     "strokeLinecap",
//   )
//   let className = Js.String2.replaceByRe(
//     strokeLinecap,
//     %re("/class='ionicon'/g"),
//     "className={merge(.[defaultSize, className])}",
//   )
//   let removeTitle = Js.String2.replaceByRe(
//     className,
//     %re("/(?<=\<title\>)(.*)(?=\<\/title\>)/g"),
//     "",
//   )

//   let removeTitleTag1 = Js.String2.replaceByRe(removeTitle, %re("/\<title\>/g"), "\"")
//   let removeTitleTag2 = Js.String2.replaceByRe(removeTitleTag1, %re("/\<\/title\>/g"), "\"")
//   let apostrophe = Js.String2.replaceByRe(removeTitleTag2, %re("/\'/g"), "\"")
// }

// Js.log(apostrophe)

// Theme.GoogleFonts.st

let default = () => {
  <HeadConfiguration>
    <div className=Styles.wrapper>
      <div>
        <h2 className={Tailwind.merge(.[Styles.hover])}> {"Bs-TailwindCSS"->Utils.str} </h2>
        <h2 className={Tailwind.merge(.[Styles.alegreya])}>
          {"This is a level 2 heading"->Utils.str}
        </h2>
        <h2 className={Tailwind.merge(.[Styles.crimson])}>
          {"This is a level 2 heading"->Utils.str}
        </h2>
        <h2 className={Tailwind.merge(.[Styles.jetBrains])}>
          {"This is a level 2 heading"->Utils.str}
        </h2>
        <input
          type_="text"
          name=""
          id=""
          placeholder="Put some text here"
          className={Tailwind.merge(.[Styles.shadow])}
        />
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
        <IonIcons.Outline.add
          className={Tailwind.merge(.[
            Tailwind.twStyle([Tailwind.textColor(#red400), Tailwind.fillCurrent]),
          ])}
        />
        <div />
        <div />
        <p>
          {"Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias optio labore natus rem tempora veritatis. Praesentium quia, modi necessitatibus nulla adipisci, veniam itaque officiis rem voluptatem fugit cumque omnis nam nostrum natus tenetur voluptatibus placeat optio quasi, voluptatum obcaecati. Facere voluptatum veniam fugiat nihil dolorem eos quo nulla corrupti dicta."->Utils.str}
        </p>
        <div>
          <div> {"1"->Utils.str} </div>
          <div> {"2"->Utils.str} </div>
          <div> {"3"->Utils.str} </div>
          <div> {"4"->Utils.str} </div>
          <div> {"5"->Utils.str} </div>
          <div> {"6"->Utils.str} </div>
          <div> {"7"->Utils.str} </div>
        </div>
      </div>
      // INFO: TailwindCSS section
      <div>
        <h2 className="text-5xl text-gray-800 text-opacity-80 mb-4 leading-none">
          {"Normal TailwindCSS"->Utils.str}
        </h2>
        <input
          type_="text"
          name=""
          id=""
          placeholder="Put some text here"
          className="placeholder-red-400 placeholder-opacity-90 ring-yellow-500 ring-4 mb-4"
        />
        <button className="block p-3 mb-4 bg-gray-600 text-white">
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
        <button className="block p-3 mb-4 bg-gray-600 text-white">
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
        <button className="block p-3 mb-4 bg-gray-600 text-white">
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
        <button className="block p-3 mb-4 bg-gray-600 text-white">
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
        <div className="grid grid-cols-3 gap-4">
          <div className="border border-red-400 border-dashed"> {"1"->Utils.str} </div>
          <div className="border border-red-400 border-dashed"> {"2"->Utils.str} </div>
          <div className="border border-red-400 border-dashed"> {"3"->Utils.str} </div>
          <div className="col-span-2 border border-red-400 border-dashed"> {"4"->Utils.str} </div>
          <div className="border border-red-400 border-dashed"> {"5"->Utils.str} </div>
          <div className="border border-red-400 border-dashed"> {"6"->Utils.str} </div>
          <div className="col-span-3 border border-red-400 border-dashed"> {"7"->Utils.str} </div>
        </div>
      </div>
    </div>
  </HeadConfiguration>
}