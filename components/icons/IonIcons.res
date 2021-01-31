open Tailwind

module Outline = {
  let defaultSize = twStyle([w(#v10), h(#v10)])

  @react.component
  let accessibility = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinejoin="round",
    ~strokeWidth="32",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle fill stroke strokeLinejoin strokeWidth cx="256" cy="56" r="40" />
      <path
        fill
        stroke
        strokeLinejoin
        strokeWidth
        d="M204.23 274.44c2.9-18.06 4.2-35.52-.5-47.59-4-10.38-12.7-16.19-23.2-20.15L88 176.76c-12-4-23.21-10.7-24-23.94-1-17 14-28 29-24 0 0 88 31.14 163 31.14s162-31 162-31c18-5 30 9 30 23.79 0 14.21-11 19.21-24 23.94l-88 31.91c-8 3-21 9-26 18.18-6 10.75-5 29.53-2.1 47.59l5.9 29.63 37.41 163.9c2.8 13.15-6.3 25.44-19.4 27.74S308 489 304.12 476.28l-37.56-115.93q-2.71-8.34-4.8-16.87L256 320l-5.3 21.65q-2.52 10.35-5.8 20.48L208 476.18c-4 12.85-14.5 21.75-27.6 19.46s-22.4-15.59-19.46-27.74l37.39-163.83z"
      />
    </svg>

  @react.component
  let add = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="32",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M256 112v288M400 256H112" />
    </svg>

  @react.component
  let addCircle = ( 
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) => 
  <svg xmlns="http://www.w3.org/2000/svg" 
    className={merge(.[defaultSize, className])}
    viewBox="0 0 512 512">
    <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"/><path fill stroke strokeLinecap strokeLinejoin strokeWidth strokeMiterlimit d="M256 176v160M336 256H176"/>
  </svg>

  @react.component
  let airplane = ( 
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="32",
  ) => 
  <svg 
  xmlns="http://www.w3.org/2000/svg" 
  className={merge(.[defaultSize, className])}
  viewBox="0 0 512 512">
  <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M407.72 224c-3.4 0-14.79.1-18 .3l-64.9 1.7a1.83 1.83 0 01-1.69-.9L193.55 67.56a9 9 0 00-6.66-3.56H160l73 161a2.35 2.35 0 01-2.26 3.35l-121.69 1.8a8.06 8.06 0 01-6.6-3.1l-37-45c-3-3.9-8.62-6-13.51-6H33.08c-1.29 0-1.1 1.21-.75 2.43l19.84 71.42a16.3 16.3 0 010 11.9L32.31 333c-.59 1.95-.52 3 1.77 3H52c8.14 0 9.25-1.06 13.41-6.3l37.7-45.7a8.19 8.19 0 016.6-3.1l120.68 2.7a2.7 2.7 0 012.43 3.74L160 448h26.64a9 9 0 006.65-3.55L323.14 287c.39-.6 2-.9 2.69-.9l63.9 1.7c3.3.2 14.59.3 18 .3C452 288.1 480 275.93 480 256s-27.88-32-72.28-32z"/></svg>

  @react.component
  let alarm = ( 
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) => 
  <svg 
  xmlns="http://www.w3.org/2000/svg" 
  className={merge(.[defaultSize, className])}
  viewBox="0 0 512 512">
  <path fill stroke strokeLinecap strokeLinejoin strokeWidth strokeMiterlimit d="M416.07 272a160 160 0 10-160 160 160 160 0 00160-160zM142.12 91.21A46.67 46.67 0 00112 80l-2.79.08C83.66 81.62 64 104 64.07 131c0 13.21 4.66 19.37 10.88 27.23a4.55 4.55 0 003.24 1.77h.88a3.23 3.23 0 002.54-1.31L142.38 99a5.38 5.38 0 001.55-4 5.26 5.26 0 00-1.81-3.79zM369.88 91.21A46.67 46.67 0 01400 80l2.79.08C428.34 81.62 448 104 447.93 131c0 13.21-4.66 19.37-10.88 27.23a4.55 4.55 0 01-3.24 1.76h-.88a3.23 3.23 0 01-2.54-1.31L369.62 99a5.38 5.38 0 01-1.55-4 5.26 5.26 0 011.81-3.79z"/><path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M256.07 160v112h-80M416.07 432l-40-40M96.07 432l40-40"/>
  </svg>

  @react.component
  let album = ( 
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
  <svg 
  xmlns="http://www.w3.org/2000/svg" 
  className={merge(.[defaultSize, className])}
  viewBox="0 0 512 512"><rect x="64" y="176" width="384" height="256" rx="28.87" ry="28.87" fill stroke strokeLinecap strokeLinejoin strokeWidth/><path stroke strokeLinecap strokeLinejoin strokeWidth strokeMiterlimit d="M144 80h224M112 128h288"/>
  </svg>

  @react.component
  let alert = ( 
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="32",
  ) =>
  <svg 
  xmlns="http://www.w3.org/2000/svg" 
  className={merge(.[defaultSize, className])} 
  viewBox="0 0 512 512">
  <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M256 80c-8.66 0-16.58 7.36-16 16l8 216a8 8 0 008 8h0a8 8 0 008-8l8-216c.58-8.64-7.34-16-16-16z"/>
  <circle cx="256" cy="416" r="16" fill stroke strokeLinecap strokeLinejoin strokeWidth/>
  </svg>

  @react.component
  let alertCircle = ( 
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
  <svg 
  xmlns="http://www.w3.org/2000/svg" 
  className={merge(.[defaultSize, className])} 
  viewBox="0 0 512 512">
  <path fill stroke strokeMiterlimit strokeWidth d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"/>
  <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M250.26 166.05L256 288l5.73-121.95a5.74 5.74 0 00-5.79-6h0a5.74 5.74 0 00-5.68 6z"/>
  <path d="M256 367.91a20 20 0 1120-20 20 20 0 01-20 20z"/>
  </svg>
}
