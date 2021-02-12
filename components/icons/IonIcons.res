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
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        strokeMiterlimit
        d="M256 176v160M336 256H176"
      />
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M407.72 224c-3.4 0-14.79.1-18 .3l-64.9 1.7a1.83 1.83 0 01-1.69-.9L193.55 67.56a9 9 0 00-6.66-3.56H160l73 161a2.35 2.35 0 01-2.26 3.35l-121.69 1.8a8.06 8.06 0 01-6.6-3.1l-37-45c-3-3.9-8.62-6-13.51-6H33.08c-1.29 0-1.1 1.21-.75 2.43l19.84 71.42a16.3 16.3 0 010 11.9L32.31 333c-.59 1.95-.52 3 1.77 3H52c8.14 0 9.25-1.06 13.41-6.3l37.7-45.7a8.19 8.19 0 016.6-3.1l120.68 2.7a2.7 2.7 0 012.43 3.74L160 448h26.64a9 9 0 006.65-3.55L323.14 287c.39-.6 2-.9 2.69-.9l63.9 1.7c3.3.2 14.59.3 18 .3C452 288.1 480 275.93 480 256s-27.88-32-72.28-32z"
      />
    </svg>

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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        strokeMiterlimit
        d="M416.07 272a160 160 0 10-160 160 160 160 0 00160-160zM142.12 91.21A46.67 46.67 0 00112 80l-2.79.08C83.66 81.62 64 104 64.07 131c0 13.21 4.66 19.37 10.88 27.23a4.55 4.55 0 003.24 1.77h.88a3.23 3.23 0 002.54-1.31L142.38 99a5.38 5.38 0 001.55-4 5.26 5.26 0 00-1.81-3.79zM369.88 91.21A46.67 46.67 0 01400 80l2.79.08C428.34 81.62 448 104 447.93 131c0 13.21-4.66 19.37-10.88 27.23a4.55 4.55 0 01-3.24 1.76h-.88a3.23 3.23 0 01-2.54-1.31L369.62 99a5.38 5.38 0 01-1.55-4 5.26 5.26 0 011.81-3.79z"
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M256.07 160v112h-80M416.07 432l-40-40M96.07 432l40-40"
      />
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
      viewBox="0 0 512 512">
      <rect
        x="64"
        y="176"
        width="384"
        height="256"
        rx="28.87"
        ry="28.87"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        stroke strokeLinecap strokeLinejoin strokeWidth strokeMiterlimit d="M144 80h224M112 128h288"
      />
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M256 80c-8.66 0-16.58 7.36-16 16l8 216a8 8 0 008 8h0a8 8 0 008-8l8-216c.58-8.64-7.34-16-16-16z"
      />
      <circle cx="256" cy="416" r="16" fill stroke strokeLinecap strokeLinejoin strokeWidth />
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
      <path
        fill
        stroke
        strokeMiterlimit
        strokeWidth
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M250.26 166.05L256 288l5.73-121.95a5.74 5.74 0 00-5.79-6h0a5.74 5.74 0 00-5.68 6z"
      />
      <path d="M256 367.91a20 20 0 1120-20 20 20 0 01-20 20z" />
    </svg>

  @react.component
  let americanFootball = (
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
      <ellipse
        cx="256"
        cy="256"
        rx="267.57"
        ry="173.44"
        transform="rotate(-45 256 256.002)"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M334.04 177.96L177.96 334.04M278.3 278.3l-44.6-44.6M322.89 233.7l-44.59-44.59M456.68 211.4L300.6 55.32M211.4 456.68L55.32 300.6M233.7 322.89l-44.59-44.59"
      />
    </svg>

  @react.component
  let analytics = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M344 280l88-88M232 216l64 64M80 320l104-104"
      />
      <circle cx="456" cy="168" r="24" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="320" cy="304" r="24" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="208" cy="192" r="24" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="56" cy="344" r="24" fill stroke strokeLinecap strokeLinejoin strokeWidth />
    </svg>

  @react.component
  let aperture = (
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
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M360 94.59V296M443.13 212.87L296 360M417.41 360H216M299.13 443.13l-144-144M152 416V216M68.87 299.13l144-144M94.59 152H288M212.87 68.87L360 216"
      />
    </svg>

  @react.component
  let apps = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <rect
        x="64"
        y="64"
        width="80"
        height="80"
        rx="40"
        ry="40"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <rect
        x="216"
        y="64"
        width="80"
        height="80"
        rx="40"
        ry="40"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <rect
        x="368"
        y="64"
        width="80"
        height="80"
        rx="40"
        ry="40"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <rect
        x="64"
        y="216"
        width="80"
        height="80"
        rx="40"
        ry="40"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <rect
        x="216"
        y="216"
        width="80"
        height="80"
        rx="40"
        ry="40"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <rect
        x="368"
        y="216"
        width="80"
        height="80"
        rx="40"
        ry="40"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <rect
        x="64"
        y="368"
        width="80"
        height="80"
        rx="40"
        ry="40"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <rect
        x="216"
        y="368"
        width="80"
        height="80"
        rx="40"
        ry="40"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <rect
        x="368"
        y="368"
        width="80"
        height="80"
        rx="40"
        ry="40"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let archive = (
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
      <path
        d="M80 152v256a40.12 40.12 0 0040 40h272a40.12 40.12 0 0040-40V152"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="48" y="64" width="416" height="80" rx="28" ry="28" fill stroke strokeLinejoin strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M320 304l-64 64-64-64M256 345.89V224"
      />
    </svg>

  @react.component
  let arrowBack = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M244 400L100 256l144-144M120 256h292"
      />
    </svg>

  @react.component
  let arrowBackCircle = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M249.38 336L170 256l79.38-80M181.03 256H342"
      />
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let arrowDown = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M112 268l144 144 144-144M256 392V100"
      />
    </svg>

  @react.component
  let arrowDownCircle = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M176 262.62L256 342l80-79.38M256 330.97V170"
      />
      <path
        d="M256 64C150 64 64 150 64 256s86 192 192 192 192-86 192-192S362 64 256 64z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let arrowForward = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="48",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M268 112l144 144-144 144M392 256H100"
      />
    </svg>

  @react.component
  let arrowForwardCircle = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M262.62 336L342 256l-79.38-80M330.97 256H170"
      />
      <path
        d="M256 448c106 0 192-86 192-192S362 64 256 64 64 150 64 256s86 192 192 192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let arrowRedo = (
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
      <path
        d="M448 256L272 88v96C103.57 184 64 304.77 64 424c48.61-62.24 91.6-96 208-96v96z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let arrowRedoCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M266.91 327.74v-37.32c-57.07 0-84.51 13.47-108.58 38.68-5.4 5.65-15 1.32-14.29-6.43 5.45-61.45 34.14-117.09 122.87-117.09v-37.32a8.32 8.32 0 0114-6L365.42 242a8.2 8.2 0 010 11.94L281 333.71a8.32 8.32 0 01-14.09-5.97z"
      />
      <path
        d="M64 256c0 106 86 192 192 192s192-86 192-192S362 64 256 64 64 150 64 256z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let arrowUndo = (
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
      <path
        d="M240 424v-96c116.4 0 159.39 33.76 208 96 0-119.23-39.57-240-208-240V88L64 256z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let arrowUndoCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M245.09 327.74v-37.32c57.07 0 84.51 13.47 108.58 38.68 5.4 5.65 15 1.32 14.29-6.43-5.45-61.45-34.14-117.09-122.87-117.09v-37.32a8.32 8.32 0 00-14.05-6L146.58 242a8.2 8.2 0 000 11.94L231 333.71a8.32 8.32 0 0014.09-5.97z"
      />
      <path
        d="M256 64C150 64 64 150 64 256s86 192 192 192 192-86 192-192S362 64 256 64z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let arrowUp = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="48",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M112 244l144-144 144 144M256 120v292"
      />
    </svg>

  @react.component
  let arrowUpCircle = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M176 249.38L256 170l80 79.38M256 181.03V342"
      />
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let at = (
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
      <path
        d="M320 254.27c-4.5 51-40.12 80-80.55 80s-67.34-35.82-63.45-80 37.12-80 77.55-80 70.33 36 66.45 80z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M319.77 415.77c-28.56 12-47.28 14.5-79.28 14.5-97.2 0-169-78.8-160.49-176s94.31-176 191.51-176C381 78.27 441.19 150 432.73 246c-6.31 71.67-52.11 92.32-76.09 88.07-22.56-4-41.18-24.42-37.74-63.5l8.48-96.25"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let atCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448.08 256.08c0-106-86-192-192-192s-192 86-192 192 86 192 192 192 192-85.97 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M300.81 358.29c-20.83 7.42-34.05 9.59-54.19 9.59-61.17 0-106.39-50.07-101-111.84S205 144.21 266.14 144.21c68.92 0 106.79 45.55 101.47 106.55-4 45.54-32.8 58.66-47.89 56-14.2-2.55-25.92-15.52-23.75-40.35l5.62-44.66c-7.58-9.17-28.11-18-49.93-14.54C231.77 210.3 209 228 206.56 256s14.49 50.84 39.93 50.84 47.86-18.39 50.69-50.84"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let attach = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M216.08 192v143.85a40.08 40.08 0 0080.15 0l.13-188.55a67.94 67.94 0 10-135.87 0v189.82a95.51 95.51 0 10191 0V159.74"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let backspace = (
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
      <path
        d="M135.19 390.14a28.79 28.79 0 0021.68 9.86h246.26A29 29 0 00432 371.13V140.87A29 29 0 00403.13 112H156.87a28.84 28.84 0 00-21.67 9.84v0L46.33 256l88.86 134.11z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M336.67 192.33L206.66 322.34M336.67 322.34L206.66 192.33M336.67 192.33L206.66 322.34M336.67 322.34L206.66 192.33"
      />
    </svg>

  @react.component
  let bag = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M80 176a16 16 0 00-16 16v216c0 30.24 25.76 56 56 56h272c30.24 0 56-24.51 56-54.75V192a16 16 0 00-16-16zM160 176v-32a96 96 0 0196-96h0a96 96 0 0196 96v32"
      />
    </svg>

  @react.component
  let bagAdd = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M256 256v128M320 320H192M80 176a16 16 0 00-16 16v216c0 30.24 25.76 56 56 56h272c30.24 0 56-24.51 56-54.75V192a16 16 0 00-16-16zM160 176v-32a96 96 0 0196-96h0a96 96 0 0196 96v32"
      />
    </svg>

  @react.component
  let bagCheck = (
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
      <path
        fill stroke strokeLinecap strokeLinejoin strokeWidth d="M320 264l-89.6 112-38.4-44.88"
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M80 176a16 16 0 00-16 16v216c0 30.24 25.76 56 56 56h272c30.24 0 56-24.51 56-54.75V192a16 16 0 00-16-16zM160 176v-32a96 96 0 0196-96h0a96 96 0 0196 96v32"
      />
    </svg>

  @react.component
  let bagHandle = (
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
      <path
        d="M80 176a16 16 0 00-16 16v216c0 30.24 25.76 56 56 56h272c30.24 0 56-24.51 56-54.75V192a16 16 0 00-16-16zM160 176v-32a96 96 0 0196-96h0a96 96 0 0196 96v32"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M160 224v16a96 96 0 0096 96h0a96 96 0 0096-96v-16"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let bagRemove = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M320 320H192M80 176a16 16 0 00-16 16v216c0 30.24 25.76 56 56 56h272c30.24 0 56-24.51 56-54.75V192a16 16 0 00-16-16zM160 176v-32a96 96 0 0196-96h0a96 96 0 0196 96v32"
      />
    </svg>

  @react.component
  let baloon = (
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
      <path
        d="M414.11 153.82C429.66 264.4 345.85 357.09 282.54 366s-169.48-57.5-185-167.68a159.82 159.82 0 11316.53-44.49z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M236.06 308.05c-32.83-13-67.08-43.1-82.27-85.46M367.7 495.78c-32.83-13-63.31-40.06-78.5-82.41"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M266.71 368.21l-9.17 49.61 63.31-8.9-22.49-45.16-31.65 4.45z"
      />
    </svg>

  @react.component
  let ban = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle cx="256" cy="256" r="208" fill stroke strokeMiterlimit strokeWidth />
      <path fill stroke strokeMiterlimit strokeWidth d="M108.92 108.92l294.16 294.16" />
    </svg>

  @react.component
  let bandage = (
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
      <rect
        x="-24.43"
        y="167.88"
        width="560.87"
        height="176.25"
        rx="88.12"
        ry="88.12"
        transform="rotate(-45 256 256.002)"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="169.41"
        y="156.59"
        width="176"
        height="196"
        rx="32"
        ry="32"
        transform="rotate(45 257.409 254.582)"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <circle cx="256" cy="208" r="16" />
      <circle cx="304" cy="256" r="16" />
      <circle cx="208" cy="256" r="16" />
      <circle cx="256" cy="304" r="16" />
    </svg>

  @react.component
  let barChart = (
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
      <path
        d="M32 32v432a16 16 0 0016 16h432" fill stroke strokeLinecap strokeLinejoin strokeWidth
      />
      <rect
        x="96"
        y="224"
        width="80"
        height="192"
        rx="20"
        ry="20"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="240"
        y="176"
        width="80"
        height="240"
        rx="20"
        ry="20"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="383.64"
        y="112"
        width="80"
        height="304"
        rx="20"
        ry="20"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let barbell = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M48 256h416" />
      <rect
        x="384"
        y="128"
        width="32"
        height="256"
        rx="16"
        ry="16"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="96"
        y="128"
        width="32"
        height="256"
        rx="16"
        ry="16"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="32"
        y="192"
        width="16"
        height="128"
        rx="8"
        ry="8"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="464"
        y="192"
        width="16"
        height="128"
        rx="8"
        ry="8"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let barcode = (
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
      <path
        d="M384 400.33l35.13-.33A29 29 0 00448 371.13V140.87A29 29 0 00419.13 112l-35.13.33M128 112l-36.8.33c-15.88 0-27.2 13-27.2 28.87v230.27c0 15.87 11.32 28.86 27.2 28.86L128 400M384 192v128M320 160v192M256 176v160M192 160v192M128 192v128"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let baseball = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M294.25 108.6l-60.57 17.59M317.13 156.11l-51.5 36.4M355.89 194.87l-36.4 51.5M403.4 217.75l-17.59 60.57"
      />
      <circle cx="256" cy="256" r="192" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        d="M432.94 255.05a192 192 0 01-176.31-180.7M108.54 294.31l17.59-60.57M156.05 317.19l36.4-51.5M194.81 355.95l51.5-36.4M217.69 403.46l60.57-17.59M255 433.61A192 192 0 0074.29 256.69"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let basket = (
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
      <path
        d="M68.4 192A20.38 20.38 0 0048 212.2a17.87 17.87 0 00.8 5.5L100.5 400a40.46 40.46 0 0039.1 29.5h232.8a40.88 40.88 0 0039.3-29.5l51.7-182.3.6-5.5a20.38 20.38 0 00-20.4-20.2H68.4zm193.32 160.07A42.07 42.07 0 11304 310a42.27 42.27 0 01-42.28 42.07z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path fill stroke strokeLinejoin strokeWidth d="M160 192l96-128 96 128" />
    </svg>

  @react.component
  let basketball = (
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
      <circle cx="256" cy="256" r="192" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        d="M432.94 255.05a192 192 0 01-176.31-180.7M255 433.61A192 192 0 0074.29 256.69M120.24 120.24l271.52 271.52M120.24 391.76l271.52-271.52"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let batteryCharging = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M48 322.3V189.7A29.74 29.74 0 0177.7 160h137.44l24.4-32H77.7A61.77 61.77 0 0016 189.7v132.6A61.77 61.77 0 0077.7 384h96.85a22.57 22.57 0 01.26-7.32l.15-.75.21-.73 6.5-23.2H77.7A29.74 29.74 0 0148 322.3zM386.3 128h-98.64a22.69 22.69 0 01-.27 7.2l-.15.74-.21.73-6.54 23.33H386.3a29.74 29.74 0 0129.7 29.7v132.6a29.74 29.74 0 01-29.7 29.7H247l-24.42 32H386.3a61.77 61.77 0 0061.7-61.7V189.7a61.77 61.77 0 00-61.7-61.7z"
      />
      <path
        d="M162.65 294.16a24.37 24.37 0 01-21.56-13 25 25 0 011.42-25.83l.31-.46.33-.44L197.62 183H89.69a20 20 0 00-20 20v106a20 20 0 0020 20h98.42l9.78-34.86z"
      />
      <path
        d="M276.07 280.89l27.07-35.49a5.2 5.2 0 00.77-1.91 5 5 0 00.08-.66 5 5 0 00-.08-1.29 5.11 5.11 0 00-.68-1.75 4.76 4.76 0 00-.78-.95 3.48 3.48 0 00-.48-.38 4 4 0 00-1.11-.55 4.28 4.28 0 00-1.31-.2h-61.62l12.12-43.21 3.23-11.5 6.21-22.16.51-1.84 7.79-27.76a3.51 3.51 0 00.05-.55v-.16c0-.05 0-.26-.05-.38s0-.09 0-.14a2.2 2.2 0 00-.17-.45 3.77 3.77 0 00-.26-.39l-.09-.1a2.73 2.73 0 00-.25-.23l-.1-.08a3.14 3.14 0 00-.39-.24 2 2 0 00-.41-.14H265.53a2.3 2.3 0 00-.45 0 1.9 1.9 0 00-.42.15l-.13.07-.3.21-.11.1a2.4 2.4 0 00-.36.41l-18 23.63-13.14 17.22-9.85 12.83-63.71 83.55a5.72 5.72 0 00-.44.8 4.78 4.78 0 00-.35 1.09 4.7 4.7 0 00-.08 1.29 4.86 4.86 0 002 3.71 4.74 4.74 0 00.54.31 4.31 4.31 0 001.89.43h61.62L194.42 380.6a3.64 3.64 0 000 .56v.15a2.32 2.32 0 00.06.38.58.58 0 000 .14 2.2 2.2 0 00.17.45 3.62 3.62 0 00.26.38l.09.1.25.24a.39.39 0 01.1.08 2.22 2.22 0 00.39.23 2.83 2.83 0 00.41.14h.13a1.86 1.86 0 00.33 0h.13a2.32 2.32 0 00.45-.06 2.05 2.05 0 00.41-.16l.13-.07.3-.21.11-.09a2.4 2.4 0 00.36-.41L221.82 352l17.53-23z"
      />
      <path
        d="M319.5 256.93l-.46.6L264.51 329h109.8a20 20 0 0020-20V203a20 20 0 00-20-20H274.05l-9.74 34.73h35.24A24.35 24.35 0 01321 230.5a25.21 25.21 0 01-1 25.79zM480 202.67a16 16 0 00-16 16v74.66a16 16 0 0032 0v-74.66a16 16 0 00-16-16z"
      />
    </svg>

  @react.component
  let batteryDead = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="square",
    ~strokeWidth="32",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <rect
        x="31"
        y="144"
        width="400"
        height="224"
        rx="45.7"
        ry="45.7"
        fill
        stroke
        strokeLinecap
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeWidth d="M479 218.67v74.66" />
    </svg>

  @react.component
  let batteryFull = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="square",
    ~strokeWidth="32",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <rect
        x="32"
        y="144"
        width="400"
        height="224"
        rx="45.7"
        ry="45.7"
        fill
        stroke
        strokeLinecap
        strokeWidth
      />
      <rect
        x="85.69"
        y="198.93"
        width="292.63"
        height="114.14"
        rx="4"
        ry="4"
        stroke
        strokeLinecap
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeWidth d="M480 218.67v74.66" />
    </svg>

  @react.component
  let batteryHalf = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="square",
    ~strokeWidth="32",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <rect
        x="32"
        y="144"
        width="400"
        height="224"
        rx="45.7"
        ry="45.7"
        fill
        stroke
        strokeLinecap
        strokeWidth
      />
      <rect
        x="85.69"
        y="198.93"
        width="154.31"
        height="114.13"
        rx="4"
        ry="4"
        stroke
        strokeLinecap
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeWidth d="M480 218.67v74.66" />
    </svg>

  @react.component
  let beaker = (
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
      <path
        d="M445.2 48.05L398 48H128c-54.3 0-64 35.7-64 48 30.3 4.2 48 8 48 40v264a64 64 0 0064 64h192a64 64 0 0064-64V96c0-19 11.5-38.35 12.6-40 1.2-1.9 3.4-4.4 3.4-5.5s-.3-2.45-2.8-2.45zM112 176h320"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let bed = (
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
      <path
        d="M384 240H96V136a40.12 40.12 0 0140-40h240a40.12 40.12 0 0140 40v104zM48 416V304a64.19 64.19 0 0164-64h288a64.19 64.19 0 0164 64v112"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M48 416v-8a24.07 24.07 0 0124-24h368a24.07 24.07 0 0124 24v8M112 240v-16a32.09 32.09 0 0132-32h80a32.09 32.09 0 0132 32v16M256 240v-16a32.09 32.09 0 0132-32h80a32.09 32.09 0 0132 32v16"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let beer = (
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
      <path
        d="M352 200v240a40.12 40.12 0 01-40 40H136a40.12 40.12 0 01-40-40V224"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M352 224h40a56.16 56.16 0 0156 56v80a56.16 56.16 0 01-56 56h-40"
        fill
        stroke
        strokeLinecap
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M224 256v160M288 256v160M160 256v160M320 112a48 48 0 010 96c-13.25 0-29.31-7.31-38-16H160c-8 22-27 32-48 32a48 48 0 010-96 47.91 47.91 0 0126 9"
      />
      <path
        d="M91.86 132.43a40 40 0 1160.46-52S160 91 160 96M145.83 64.71C163.22 44.89 187.57 32 216 32c52.38 0 94 42.84 94 95.21a95 95 0 01-1.67 17.79"
        fill
        stroke
        strokeLinecap
        strokeWidth
      />
    </svg>

  @react.component
  let bicycle = (
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
      <path
        d="M388 288a76 76 0 1076 76 76.24 76.24 0 00-76-76zM124 288a76 76 0 1076 76 76.24 76.24 0 00-76-76z"
        fill
        stroke
        strokeWidth
      />
      <path
        fill stroke strokeLinecap strokeLinejoin strokeWidth d="M256 360v-86l-64-42 80-88 40 72h56"
      />
      <path d="M320 136a31.89 31.89 0 0032-32.1A31.55 31.55 0 00320.2 72a32 32 0 10-.2 64z" />
    </svg>

  @react.component
  let bluetooth = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M144 352l224-192L256 48v416l112-112-224-192"
      />
    </svg>

  @react.component
  let boat = (
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
      <path
        d="M461.93 261.05c-2-4.76-6.71-7.83-11.67-9.49l-187.18-74.48a23.78 23.78 0 00-14.17 0l-187 74.52c-5 1.56-9.83 4.77-11.81 9.53s-2.94 9.37-1 15.08l46.53 119.15a7.46 7.46 0 007.47 4.64c26.69-1.68 50.31-15.23 68.38-32.5a7.66 7.66 0 0110.49 0C201.29 386 227 400 256 400s54.56-14 73.88-32.54a7.67 7.67 0 0110.5 0c18.07 17.28 41.69 30.86 68.38 32.54a7.45 7.45 0 007.46-4.61l46.7-119.16c1.98-4.78.99-10.41-.99-15.18z"
        fill
        stroke
        strokeWidth
      />
      <path
        d="M416 473.14a6.84 6.84 0 00-3.56-6c-27.08-14.55-51.77-36.82-62.63-48a10.05 10.05 0 00-12.72-1.51c-50.33 32.42-111.61 32.44-161.95.05a10.09 10.09 0 00-12.82 1.56c-10.77 11.28-35.19 33.3-62.43 47.75a7.15 7.15 0 00-3.89 5.73 6.73 6.73 0 007.92 7.15c20.85-4.18 41-13.68 60.2-23.83a8.71 8.71 0 018-.06A185.14 185.14 0 00340 456a8.82 8.82 0 018.09.06c19.1 10 39.22 19.59 60 23.8a6.72 6.72 0 007.95-6.71z"
      />
      <path
        d="M320 96V72a24.07 24.07 0 00-24-24h-80a24.07 24.07 0 00-24 24v24M416 233v-89a48.14 48.14 0 00-48-48H144a48.14 48.14 0 00-48 48v92M256 183.6v212.85"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let body = (~className="", ~fill="none", ~stroke="currentColor", ~strokeWidth="32") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle fill stroke strokeWidth cx="256" cy="56" r="40" />
      <path
        fill
        stroke
        strokeWidth
        d="M199.3 295.62h0l-30.4 172.2a24 24 0 0019.5 27.8 23.76 23.76 0 0027.6-19.5l21-119.9v.2s5.2-32.5 17.5-32.5h3.1c12.5 0 17.5 32.5 17.5 32.5v-.1l21 119.9a23.92 23.92 0 1047.1-8.4l-30.4-172.2-4.9-29.7c-2.9-18.1-4.2-47.6.5-59.7 4-10.4 14.13-14.2 23.2-14.2H424a24 24 0 000-48H88a24 24 0 000 48h92.5c9.23 0 19.2 3.8 23.2 14.2 4.7 12.1 3.4 41.6.5 59.7z"
      />
    </svg>

  @react.component
  let bonfire = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M273.38 368.33c-.81-9.23-8.86-16.44-18.55-16.44a18.63 18.63 0 00-18.2 14.11l-18.2 88.38a35.75 35.75 0 00-.93 7.88c0 19.93 16.68 33.78 37.33 33.78s37.34-13.85 37.34-33.78a36.16 36.16 0 00-1.29-9.45zM411.05 407.86a41.78 41.78 0 00-5.95-4.35l-69.53-48.59c-6.77-4.25-14-4.13-19.25 1a13.53 13.53 0 00-2 17.2l52.5 69a36.57 36.57 0 004 4.69c9.1 10.17 29.28 10.73 40.37 0 10.94-10.91 10.81-30.35-.14-38.95zM463.3 335.88h-70.42c-4.55 0-8.88 3.35-8.88 8.16s2.95 7.85 6.92 9.16l66.43 20.55C467 376 480 367.4 480 356.66c0-13.66-7.6-20.78-16.7-20.78zM128.22 344c0-5-4.55-8.16-9.45-8.16H48.35c-8.87 0-16.35 9.58-16.35 20.32S44.62 376 54.3 373.75l67.43-20.55c4.39-1.31 6.49-4.2 6.49-9.2zM176.55 355L107 403.38a32.34 32.34 0 00-6 4.35 26.33 26.33 0 000 38.56 29.39 29.39 0 0040.36 0 30.75 30.75 0 004-4.68L197.9 373c3.5-5.58 2.92-12.49-2-17.06a15 15 0 00-19.35-.94z"
      />
      <path
        d="M368 125.09c0-55.7-49.22-89.16-94.2-93.06a8 8 0 00-8.69 7.71c-3.12 76-109.38 110.69-119.87 178.68-7 45.4 16.65 72.37 34.31 85.78a15.94 15.94 0 0023.93-5.62c22.5-45.86 74.33-63.49 109.72-85.94 42.88-27.2 54.8-56.44 54.8-87.55z"
        fill
        stroke
        strokeLinecap
        strokeWidth
      />
      <path
        d="M240 95.7c-12.82-23-30.51-31-59.16-31.63a3.86 3.86 0 00-4.06 3.51c-.95 34.22-32.78 44.85-32.78 73.15 0 19.37 5.39 29 17.16 39.28M352.45 178.76c8.6 14.31 15.55 30.08 15.55 48 0 52.52-42.47 93.1-94.86 93.1a94.42 94.42 0 01-65.14-26"
        fill
        stroke
        strokeLinecap
        strokeWidth
      />
    </svg>

  @react.component
  let book = (
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
      <path
        d="M256 160c16-63.16 76.43-95.41 208-96a15.94 15.94 0 0116 16v288a16 16 0 01-16 16c-128 0-177.45 25.81-208 64-30.37-38-80-64-208-64-9.88 0-16-8.05-16-17.93V80a15.94 15.94 0 0116-16c131.57.59 192 32.84 208 96zM256 160v288"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let bookmark = (
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
      <path
        d="M352 48H160a48 48 0 00-48 48v368l144-128 144 128V96a48 48 0 00-48-48z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let bookmarks = (
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
      <path
        d="M128 80V64a48.14 48.14 0 0148-48h224a48.14 48.14 0 0148 48v368l-80-64"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M320 96H112a48.14 48.14 0 00-48 48v352l152-128 152 128V144a48.14 48.14 0 00-48-48z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let bowlingBall = (~className="", ~fill="none", ~stroke="currentColor", ~strokeWidth="32") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle cx="256" cy="256" r="208" fill stroke strokeWidth />
      <circle cx="288" cy="200" r="24" />
      <circle cx="296" cy="128" r="24" />
      <circle cx="360" cy="168" r="24" />
    </svg>

  @react.component
  let briefcase = (
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
      <rect
        x="32"
        y="128"
        width="448"
        height="320"
        rx="48"
        ry="48"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M144 128V96a32 32 0 0132-32h160a32 32 0 0132 32v32M480 240H32M320 240v24a8 8 0 01-8 8H200a8 8 0 01-8-8v-24"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let browsers = (
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
      <rect
        x="48"
        y="64"
        width="416"
        height="384"
        rx="48"
        ry="48"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M397.82 64H114.18C77.69 64 48 94.15 48 131.2V176h16c0-16 16-32 32-32h320c16 0 32 16 32 32h16v-44.8c0-37.05-29.69-67.2-66.18-67.2z"
      />
    </svg>

  @react.component
  let brush = (
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
      <path
        d="M452.37 59.63h0a40.49 40.49 0 00-57.26 0L184 294.74c23.08 4.7 46.12 27.29 49.26 49.26l219.11-227.11a40.49 40.49 0 000-57.26zM138 336c-29.88 0-54 24.5-54 54.86 0 23.95-20.88 36.57-36 36.57C64.56 449.74 92.82 464 120 464c39.78 0 72-32.73 72-73.14 0-30.36-24.12-54.86-54-54.86z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let bug = (
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
      <path
        d="M370 378c28.89 23.52 46 46.07 46 86M142 378c-28.89 23.52-46 46.06-46 86M384 208c28.89-23.52 32-56.07 32-96M128 206c-28.89-23.52-32-54.06-32-94M464 288.13h-80M128 288.13H48M256 192v256"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M256 448h0c-70.4 0-128-57.6-128-128v-96.07c0-65.07 57.6-96 128-96h0c70.4 0 128 25.6 128 96V320c0 70.4-57.6 128-128 128z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M179.43 143.52a49.08 49.08 0 01-3.43-15.73A80 80 0 01255.79 48h.42A80 80 0 01336 127.79a41.91 41.91 0 01-3.12 14.3"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let build = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M393.87 190a32.1 32.1 0 01-45.25 0l-26.57-26.57a32.09 32.09 0 010-45.26L382.19 58a1 1 0 00-.3-1.64c-38.82-16.64-89.15-8.16-121.11 23.57-30.58 30.35-32.32 76-21.12 115.84a31.93 31.93 0 01-9.06 32.08L64 380a48.17 48.17 0 1068 68l153.86-167a31.93 31.93 0 0131.6-9.13c39.54 10.59 84.54 8.6 114.72-21.19 32.49-32 39.5-88.56 23.75-120.93a1 1 0 00-1.6-.26z"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="96" cy="416" r="16" />
    </svg>

  @react.component
  let bulb = (
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
      <path
        d="M304 384v-24c0-29 31.54-56.43 52-76 28.84-27.57 44-64.61 44-108 0-80-63.73-144-144-144a143.6 143.6 0 00-144 144c0 41.84 15.81 81.39 44 108 20.35 19.21 52 46.7 52 76v24M224 480h64M208 432h96M256 384V256"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M294 240s-21.51 16-38 16-38-16-38-16"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let bus = (
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
      <rect
        x="80"
        y="112"
        width="352"
        height="192"
        rx="32"
        ry="32"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="80"
        y="304"
        width="352"
        height="128"
        rx="32"
        ry="32"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M400 112H112a32.09 32.09 0 01-32-32h0a32.09 32.09 0 0132-32h288a32.09 32.09 0 0132 32h0a32.09 32.09 0 01-32 32zM144 432v22a10 10 0 01-10 10h-28a10 10 0 01-10-10v-22zM416 432v22a10 10 0 01-10 10h-28a10 10 0 01-10-10v-22z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <circle cx="368" cy="368" r="16" fill stroke strokeLinejoin strokeWidth />
      <circle cx="144" cy="368" r="16" fill stroke strokeLinejoin strokeWidth />
      <path
        fill stroke strokeLinecap strokeLinejoin strokeWidth d="M256 112v192M80 80v288M432 80v288"
      />
    </svg>

  @react.component
  let business = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M176 416v64M80 32h192a32 32 0 0132 32v412a4 4 0 01-4 4H48h0V64a32 32 0 0132-32zM320 192h112a32 32 0 0132 32v256h0-160 0V208a16 16 0 0116-16z"
      />
      <path
        d="M98.08 431.87a16 16 0 1113.79-13.79 16 16 0 01-13.79 13.79zM98.08 351.87a16 16 0 1113.79-13.79 16 16 0 01-13.79 13.79zM98.08 271.87a16 16 0 1113.79-13.79 16 16 0 01-13.79 13.79zM98.08 191.87a16 16 0 1113.79-13.79 16 16 0 01-13.79 13.79zM98.08 111.87a16 16 0 1113.79-13.79 16 16 0 01-13.79 13.79zM178.08 351.87a16 16 0 1113.79-13.79 16 16 0 01-13.79 13.79zM178.08 271.87a16 16 0 1113.79-13.79 16 16 0 01-13.79 13.79zM178.08 191.87a16 16 0 1113.79-13.79 16 16 0 01-13.79 13.79zM178.08 111.87a16 16 0 1113.79-13.79 16 16 0 01-13.79 13.79zM258.08 431.87a16 16 0 1113.79-13.79 16 16 0 01-13.79 13.79zM258.08 351.87a16 16 0 1113.79-13.79 16 16 0 01-13.79 13.79zM258.08 271.87a16 16 0 1113.79-13.79 16 16 0 01-13.79 13.79z"
      />
      <ellipse cx="256" cy="176" rx="15.95" ry="16.03" transform="rotate(-45 255.99 175.996)" />
      <path
        d="M258.08 111.87a16 16 0 1113.79-13.79 16 16 0 01-13.79 13.79zM400 400a16 16 0 1016 16 16 16 0 00-16-16zM400 320a16 16 0 1016 16 16 16 0 00-16-16zM400 240a16 16 0 1016 16 16 16 0 00-16-16zM336 400a16 16 0 1016 16 16 16 0 00-16-16zM336 320a16 16 0 1016 16 16 16 0 00-16-16zM336 240a16 16 0 1016 16 16 16 0 00-16-16z"
      />
    </svg>

  @react.component
  let cafe = (
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
      <path
        d="M368 80h64a16 16 0 0116 16v34a46 46 0 01-46 46h-34M96 80h272v192a80 80 0 01-80 80H176a80 80 0 01-80-80V80h0zM64 416h336"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let calculator = (
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
      <rect
        x="112"
        y="48"
        width="288"
        height="416"
        rx="32"
        ry="32"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M160.01 112H352v64H160.01z" />
      <circle cx="168" cy="248" r="24" />
      <circle cx="256" cy="248" r="24" />
      <circle cx="344" cy="248" r="24" />
      <circle cx="168" cy="328" r="24" />
      <circle cx="256" cy="328" r="24" />
      <circle cx="168" cy="408" r="24" />
      <circle cx="256" cy="408" r="24" />
      <rect x="320" y="304" width="48" height="128" rx="24" ry="24" />
    </svg>

  @react.component
  let calendar = (
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
      <rect fill stroke strokeLinejoin strokeWidth x="48" y="80" width="416" height="384" rx="48" />
      <circle cx="296" cy="232" r="24" />
      <circle cx="376" cy="232" r="24" />
      <circle cx="296" cy="312" r="24" />
      <circle cx="376" cy="312" r="24" />
      <circle cx="136" cy="312" r="24" />
      <circle cx="216" cy="312" r="24" />
      <circle cx="136" cy="392" r="24" />
      <circle cx="216" cy="392" r="24" />
      <circle cx="296" cy="392" r="24" />
      <path fill stroke strokeLinejoin strokeWidth strokeLinecap d="M128 48v32M384 48v32" />
      <path fill stroke strokeLinejoin strokeWidth d="M464 160H48" />
    </svg>

  @react.component
  let calendarClear = (
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
      <rect fill stroke strokeLinejoin strokeWidth x="48" y="80" width="416" height="384" rx="48" />
      <path
        fill stroke strokeLinejoin strokeWidth strokeLinecap d="M128 48v32M384 48v32M464 160H48"
      />
    </svg>

  @react.component
  let calendarNumber = (
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
      <rect x="48" y="80" width="416" height="384" rx="48" fill stroke strokeLinejoin strokeWidth />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M128 48v32M384 48v32M464 160H48M304 260l43.42-32H352v168M191.87 306.63c9.11 0 25.79-4.28 36.72-15.47a37.9 37.9 0 0011.13-27.26c0-26.12-22.59-39.9-47.89-39.9-21.4 0-33.52 11.61-37.85 18.93M149 374.16c4.88 8.27 19.71 25.84 43.88 25.84 28.59 0 52.12-15.94 52.12-43.82 0-12.62-3.66-24-11.58-32.07-12.36-12.64-31.25-17.48-41.55-17.48"
      />
    </svg>

  @react.component
  let call = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M451 374c-15.88-16-54.34-39.35-73-48.76-24.3-12.24-26.3-13.24-45.4.95-12.74 9.47-21.21 17.93-36.12 14.75s-47.31-21.11-75.68-49.39-47.34-61.62-50.53-76.48 5.41-23.23 14.79-36c13.22-18 12.22-21 .92-45.3-8.81-18.9-32.84-57-48.9-72.8C119.9 44 119.9 47 108.83 51.6A160.15 160.15 0 0083 65.37C67 76 58.12 84.83 51.91 98.1s-9 44.38 23.07 102.64 54.57 88.05 101.14 134.49S258.5 406.64 310.85 436c64.76 36.27 89.6 29.2 102.91 23s22.18-15 32.83-31a159.09 159.09 0 0013.8-25.8C465 391.17 468 391.17 451 374z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let camera = (
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
      <path
        d="M350.54 148.68l-26.62-42.06C318.31 100.08 310.62 96 302 96h-92c-8.62 0-16.31 4.08-21.92 10.62l-26.62 42.06C155.85 155.23 148.62 160 140 160H80a32 32 0 00-32 32v192a32 32 0 0032 32h352a32 32 0 0032-32V192a32 32 0 00-32-32h-59c-8.65 0-16.85-4.77-22.46-11.32z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <circle cx="256" cy="272" r="80" fill stroke strokeWidth />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M124 158v-22h-24v22" />
    </svg>

  @react.component
  let cameraReverse = (
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
      <path
        d="M350.54 148.68l-26.62-42.06C318.31 100.08 310.62 96 302 96h-92c-8.62 0-16.31 4.08-21.92 10.62l-26.62 42.06C155.85 155.23 148.62 160 140 160H80a32 32 0 00-32 32v192a32 32 0 0032 32h352a32 32 0 0032-32V192a32 32 0 00-32-32h-59c-8.65 0-16.85-4.77-22.46-11.32z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M124 158v-22h-24v22M335.76 285.22v-13.31a80 80 0 00-131-61.6M176 258.78v13.31a80 80 0 00130.73 61.8"
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M196 272l-20-20-20 20M356 272l-20 20-20-20"
      />
    </svg>

  @react.component
  let car = (
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
      <path
        d="M80 224l37.78-88.15C123.93 121.5 139.6 112 157.11 112h197.78c17.51 0 33.18 9.5 39.33 23.85L432 224M80 224h352v144H80zM112 368v32H80v-32M432 368v32h-32v-32"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <circle cx="144" cy="288" r="16" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="368" cy="288" r="16" fill stroke strokeLinecap strokeLinejoin strokeWidth />
    </svg>

  @react.component
  let carSport = (
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
      <path
        d="M469.71 234.6c-7.33-9.73-34.56-16.43-46.08-33.94s-20.95-55.43-50.27-70S288 112 256 112s-88 4-117.36 18.63-38.75 52.52-50.27 70-38.75 24.24-46.08 33.97S29.8 305.84 32.94 336s9 48 9 48h86c14.08 0 18.66-5.29 47.46-8 31.6-3 62.6-4 80.6-4s50 1 81.58 4c28.8 2.73 33.53 8 47.46 8h85s5.86-17.84 9-48-2.04-91.67-9.33-101.4zM400 384h56v16h-56zM56 384h56v16H56z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M364.47 309.16c-5.91-6.83-25.17-12.53-50.67-16.35S279 288 256.2 288s-33.17 1.64-57.61 4.81-42.79 8.81-50.66 16.35C136.12 320.6 153.42 333.44 167 335c13.16 1.5 39.47.95 89.31.95s76.15.55 89.31-.95c13.56-1.65 29.62-13.6 18.85-25.84zM431.57 243.05a3.23 3.23 0 00-3.1-3c-11.81-.42-23.8.42-45.07 6.69a93.88 93.88 0 00-30.08 15.06c-2.28 1.78-1.47 6.59 1.39 7.1a455.32 455.32 0 0052.82 3.1c10.59 0 21.52-3 23.55-12.44a52.41 52.41 0 00.49-16.51zM80.43 243.05a3.23 3.23 0 013.1-3c11.81-.42 23.8.42 45.07 6.69a93.88 93.88 0 0130.08 15.06c2.28 1.78 1.47 6.59-1.39 7.1a455.32 455.32 0 01-52.82 3.1c-10.59 0-21.52-3-23.55-12.44a52.41 52.41 0 01-.49-16.51z"
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M432 192h16M64 192h16M78 211s46.35-12 178-12 178 12 178 12"
      />
    </svg>

  @react.component
  let card = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="48",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <rect
        x="48"
        y="96"
        width="416"
        height="320"
        rx="56"
        ry="56"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path fill stroke strokeLinejoin strokeWidth d="M48 192h416M128 300h48v20h-48z" />
    </svg>

  @react.component
  let caretBack = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M321.94 98L158.82 237.78a24 24 0 000 36.44L321.94 414c15.57 13.34 39.62 2.28 39.62-18.22v-279.6c0-20.5-24.05-31.56-39.62-18.18z"
      />
    </svg>

  @react.component
  let caretBackCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M273.77 169.57l-89.09 74.13a16 16 0 000 24.6l89.09 74.13A16 16 0 00300 330.14V181.86a16 16 0 00-26.23-12.29z"
      />
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let caretDown = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M98 190.06l139.78 163.12a24 24 0 0036.44 0L414 190.06c13.34-15.57 2.28-39.62-18.22-39.62h-279.6c-20.5 0-31.56 24.05-18.18 39.62z"
      />
    </svg>

  @react.component
  let caretDownCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M342.43 238.23l-74.13 89.09a16 16 0 01-24.6 0l-74.13-89.09A16 16 0 01181.86 212h148.28a16 16 0 0112.29 26.23z"
      />
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let caretForward = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M190.06 414l163.12-139.78a24 24 0 000-36.44L190.06 98c-15.57-13.34-39.62-2.28-39.62 18.22v279.6c0 20.5 24.05 31.56 39.62 18.18z"
      />
    </svg>

  @react.component
  let caretForwardCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M238.23 342.43l89.09-74.13a16 16 0 000-24.6l-89.09-74.13A16 16 0 00212 181.86v148.28a16 16 0 0026.23 12.29z"
      />
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let caretUp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M414 321.94L274.22 158.82a24 24 0 00-36.44 0L98 321.94c-13.34 15.57-2.28 39.62 18.22 39.62h279.6c20.5 0 31.56-24.05 18.18-39.62z"
      />
    </svg>

  @react.component
  let caretUpCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M342.43 273.77l-74.13-89.09a16 16 0 00-24.6 0l-74.13 89.09A16 16 0 00181.86 300h148.28a16 16 0 0012.29-26.23z"
      />
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let cart = (
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
      <circle cx="176" cy="416" r="16" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="400" cy="416" r="16" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M48 80h64l48 272h256" />
      <path
        d="M160 288h249.44a8 8 0 007.85-6.43l28.8-144a8 8 0 00-7.85-9.57H128"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let cash = (
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
      <rect
        x="32"
        y="80"
        width="448"
        height="256"
        rx="16"
        ry="16"
        transform="rotate(180 256 208)"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M64 384h384M96 432h320" />
      <circle cx="256" cy="208" r="80" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        d="M480 160a80 80 0 01-80-80M32 160a80 80 0 0080-80M480 256a80 80 0 00-80 80M32 256a80 80 0 0180 80"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let cellular = (
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
      <rect
        x="416" y="96" width="64" height="320" rx="8" ry="8" fill stroke strokeLinejoin strokeWidth
      />
      <rect
        x="288" y="176" width="64" height="240" rx="8" ry="8" fill stroke strokeLinejoin strokeWidth
      />
      <rect
        x="160" y="240" width="64" height="176" rx="8" ry="8" fill stroke strokeLinejoin strokeWidth
      />
      <rect
        x="32" y="304" width="64" height="112" rx="8" ry="8" fill stroke strokeLinejoin strokeWidth
      />
    </svg>

  @react.component
  let chatbox = (
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
      <path
        d="M408 64H104a56.16 56.16 0 00-56 56v192a56.16 56.16 0 0056 56h40v80l93.72-78.14a8 8 0 015.13-1.86H408a56.16 56.16 0 0056-56V120a56.16 56.16 0 00-56-56z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let chatboxEllipses = (
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
      <path
        d="M408 64H104a56.16 56.16 0 00-56 56v192a56.16 56.16 0 0056 56h40v80l93.72-78.14a8 8 0 015.13-1.86H408a56.16 56.16 0 0056-56V120a56.16 56.16 0 00-56-56z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <circle cx="160" cy="216" r="32" />
      <circle cx="256" cy="216" r="32" />
      <circle cx="352" cy="216" r="32" />
    </svg>

  @react.component
  let chatbubble = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M87.49 380c1.19-4.38-1.44-10.47-3.95-14.86a44.86 44.86 0 00-2.54-3.8 199.81 199.81 0 01-33-110C47.65 139.09 140.73 48 255.83 48 356.21 48 440 117.54 459.58 209.85a199 199 0 014.42 41.64c0 112.41-89.49 204.93-204.59 204.93-18.3 0-43-4.6-56.47-8.37s-26.92-8.77-30.39-10.11a31.09 31.09 0 00-11.12-2.07 30.71 30.71 0 00-12.09 2.43l-67.83 24.48a16 16 0 01-4.67 1.22 9.6 9.6 0 01-9.57-9.74 15.85 15.85 0 01.6-3.29z"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let chatbubbleEllipses = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M87.48 380c1.2-4.38-1.43-10.47-3.94-14.86a42.63 42.63 0 00-2.54-3.8 199.81 199.81 0 01-33-110C47.64 139.09 140.72 48 255.82 48 356.2 48 440 117.54 459.57 209.85a199 199 0 014.43 41.64c0 112.41-89.49 204.93-204.59 204.93-18.31 0-43-4.6-56.47-8.37s-26.92-8.77-30.39-10.11a31.14 31.14 0 00-11.13-2.07 30.7 30.7 0 00-12.08 2.43L81.5 462.78a15.92 15.92 0 01-4.66 1.22 9.61 9.61 0 01-9.58-9.74 15.85 15.85 0 01.6-3.29z"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="160" cy="256" r="32" />
      <circle cx="256" cy="256" r="32" />
      <circle cx="352" cy="256" r="32" />
    </svg>

  @react.component
  let chatbubbles = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M431 320.6c-1-3.6 1.2-8.6 3.3-12.2a33.68 33.68 0 012.1-3.1A162 162 0 00464 215c.3-92.2-77.5-167-173.7-167-83.9 0-153.9 57.1-170.3 132.9a160.7 160.7 0 00-3.7 34.2c0 92.3 74.8 169.1 171 169.1 15.3 0 35.9-4.6 47.2-7.7s22.5-7.2 25.4-8.3a26.44 26.44 0 019.3-1.7 26 26 0 0110.1 2l56.7 20.1a13.52 13.52 0 003.9 1 8 8 0 008-8 12.85 12.85 0 00-.5-2.7z"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M66.46 232a146.23 146.23 0 006.39 152.67c2.31 3.49 3.61 6.19 3.21 8s-11.93 61.87-11.93 61.87a8 8 0 002.71 7.68A8.17 8.17 0 0072 464a7.26 7.26 0 002.91-.6l56.21-22a15.7 15.7 0 0112 .2c18.94 7.38 39.88 12 60.83 12A159.21 159.21 0 00284 432.11"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let checkbox = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M352 176L217.6 336 160 272" />
      <rect
        x="64"
        y="64"
        width="384"
        height="384"
        rx="48"
        ry="48"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let checkmark = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M416 128L192 384l-96-96" />
    </svg>

  @react.component
  let checkmarkCircle = (
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
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M352 176L217.6 336 160 272" />
    </svg>

  @react.component
  let checkmarkDone = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M464 128L240 384l-96-96M144 384l-96-96M368 128L232 284"
      />
    </svg>

  @react.component
  let checkmarkDoneCircle = (
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
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M368 192L256.13 320l-47.95-48M191.95 320L144 272M305.71 192l-51.55 59"
      />
    </svg>

  @react.component
  let chevronBack = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="48",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M328 112L184 256l144 144" />
    </svg>

  @react.component
  let chevronBackCircle = (
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
      <path
        d="M256 64C150 64 64 150 64 256s86 192 192 192 192-86 192-192S362 64 256 64z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M296 352l-96-96 96-96" />
    </svg>

  @react.component
  let chevronDown = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="48",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M112 184l144 144 144-144" />
    </svg>

  @react.component
  let chevronDownCircle = (
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
      <path
        d="M256 64C150 64 64 150 64 256s86 192 192 192 192-86 192-192S362 64 256 64z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M352 216l-96 96-96-96" />
    </svg>

  @react.component
  let chevronForward = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="48",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M184 112l144 144-144 144" />
    </svg>

  @react.component
  let chevronForwardCircle = (
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
      <path
        d="M64 256c0 106 86 192 192 192s192-86 192-192S362 64 256 64 64 150 64 256z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M216 352l96-96-96-96" />
    </svg>

  @react.component
  let chevronUp = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="48",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M112 328l144-144 144 144" />
    </svg>

  @react.component
  let chevronUpCircle = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M352 296l-96-96-96 96" />
      <path
        d="M256 64C150 64 64 150 64 256s86 192 192 192 192-86 192-192S362 64 256 64z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let clipboard = (
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
      <path
        d="M336 64h32a48 48 0 0148 48v320a48 48 0 01-48 48H144a48 48 0 01-48-48V112a48 48 0 0148-48h32"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="176"
        y="32"
        width="160"
        height="64"
        rx="26.13"
        ry="26.13"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let close = (
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
      <path
        fill stroke strokeLinecap strokeLinejoin strokeWidth d="M368 368L144 144M368 144L144 368"
      />
    </svg>

  @react.component
  let closeCircle = (
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
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        fill stroke strokeLinecap strokeLinejoin strokeWidth d="M320 320L192 192M192 320l128-128"
      />
    </svg>

  @react.component
  let cloud = (
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
      <path
        d="M400 240c-8.89-89.54-71-144-144-144-69 0-113.44 48.2-128 96-60 6-112 43.59-112 112 0 66 54 112 120 112h260c55 0 100-27.44 100-88 0-59.82-53-85.76-96-88z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let cloudCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M333.88 240.59a8 8 0 01-6.66-6.66C320.68 192.78 290.82 168 256 168c-32.37 0-53.93 21.22-62.48 43.58a7.92 7.92 0 01-6.16 5c-27.67 4.35-50.82 22.56-51.35 54.3-.52 31.53 25.51 57.11 57 57.11H326c27.5 0 50-13.72 50-44 0-27.22-22-40.41-42.12-43.4z"
      />
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let cloudDone = (
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
      <path
        d="M400 240c-8.89-89.54-71-144-144-144-69 0-113.44 48.2-128 96-60 6-112 43.59-112 112 0 66 54 112 120 112h260c55 0 100-27.44 100-88 0-59.82-53-85.76-96-88z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M317 208L209.2 336 163 284.8" />
    </svg>

  @react.component
  let cloudDownload = (
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
      <path
        d="M320 336h76c55 0 100-21.21 100-75.6s-53-73.47-96-75.6C391.11 99.74 329 48 256 48c-69 0-113.44 45.79-128 91.2-60 5.7-112 35.88-112 98.4S70 336 136 336h56M192 400.1l64 63.9 64-63.9M256 224v224.03"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let cloudOffline = (
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
      <path
        d="M93.72 183.25C49.49 198.05 16 233.1 16 288c0 66 54 112 120 112h184.37M467.82 377.74C485.24 363.3 496 341.61 496 312c0-59.82-53-85.76-96-88-8.89-89.54-71-144-144-144-26.16 0-48.79 6.93-67.6 18.14"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeMiterlimit strokeWidth d="M448 448L64 64" />
    </svg>

  @react.component
  let cloudUpload = (
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
      <path
        d="M320 367.79h76c55 0 100-29.21 100-83.6s-53-81.47-96-83.6c-8.89-85.06-71-136.8-144-136.8-69 0-113.44 45.79-128 91.2-60 5.7-112 43.88-112 106.4s54 106.4 120 106.4h56"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M320 255.79l-64-64-64 64M256 448.21V207.79"
      />
    </svg>

  @react.component
  let cloudy = (
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
      <path
        d="M100.18 241.19a15.93 15.93 0 0013.37-13.25C126.6 145.59 186.34 96 256 96c64.69 0 107.79 42.36 124.92 87a16.11 16.11 0 0012.53 10.18C449.36 202.06 496 239.21 496 304c0 66-54 112-120 112H116c-55 0-100-27.44-100-88 0-54.43 43.89-80.81 84.18-86.81z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let cloudyNight = (
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
      <path
        d="M388.31 272c47.75 0 89.77-27.77 107.69-68.92-14.21 6.18-30.9 8.61-47.38 8.61A116.31 116.31 0 01332.31 95.38c0-16.48 2.43-33.17 8.61-47.38C299.77 65.92 272 107.94 272 155.69a116.31 116.31 0 003.44 28.18"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M90.61 306.85A16.07 16.07 0 00104 293.6C116.09 220.17 169.63 176 232 176c57.93 0 96.62 37.75 112.2 77.74a15.84 15.84 0 0012.2 9.87c50 8.15 91.6 41.54 91.6 99.59 0 59.4-48.6 100.8-108 100.8H106c-49.5 0-90-24.7-90-79.2 0-48.47 38.67-72.22 74.61-77.95z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let code = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M160 368L32 256l128-112M352 368l128-112-128-112"
      />
    </svg>

  @react.component
  let codeDownload = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M160 368L32 256l128-112M352 368l128-112-128-112M192 288.1l64 63.9 64-63.9M256 160v176.03"
      />
    </svg>

  @react.component
  let codeSlash = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M160 368L32 256l128-112M352 368l128-112-128-112M304 96l-96 320"
      />
    </svg>

  @react.component
  let codeWorking = (
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
      <circle cx="256" cy="256" r="26" />
      <circle cx="346" cy="256" r="26" />
      <circle cx="166" cy="256" r="26" />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M160 368L32 256l128-112M352 368l128-112-128-112"
      />
    </svg>

  @react.component
  let cog = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M456.7 242.27l-26.08-4.2a8 8 0 01-6.6-6.82c-.5-3.2-1-6.41-1.7-9.51a8.08 8.08 0 013.9-8.62l23.09-12.82a8.05 8.05 0 003.9-9.92l-4-11a7.94 7.94 0 00-9.4-5l-25.89 5a8 8 0 01-8.59-4.11q-2.25-4.2-4.8-8.41a8.16 8.16 0 01.7-9.52l17.29-19.94a8 8 0 00.3-10.62l-7.49-9a7.88 7.88 0 00-10.5-1.51l-22.69 13.63a8 8 0 01-9.39-.9c-2.4-2.11-4.9-4.21-7.4-6.22a8 8 0 01-2.5-9.11l9.4-24.75A8 8 0 00365 78.77l-10.2-5.91a8 8 0 00-10.39 2.21l-16.64 20.84a7.15 7.15 0 01-8.5 2.5s-5.6-2.3-9.8-3.71A8 8 0 01304 87l.4-26.45a8.07 8.07 0 00-6.6-8.42l-11.59-2a8.07 8.07 0 00-9.1 5.61l-8.6 25.05a8 8 0 01-7.79 5.41h-9.8a8.07 8.07 0 01-7.79-5.41l-8.6-25.05a8.07 8.07 0 00-9.1-5.61l-11.59 2a8.07 8.07 0 00-6.6 8.42l.4 26.45a8 8 0 01-5.49 7.71c-2.3.9-7.3 2.81-9.7 3.71-2.8 1-6.1.2-8.8-2.91l-16.51-20.34A8 8 0 00156.75 73l-10.2 5.91a7.94 7.94 0 00-3.3 10.09l9.4 24.75a8.06 8.06 0 01-2.5 9.11c-2.5 2-5 4.11-7.4 6.22a8 8 0 01-9.39.9L111 116.14a8 8 0 00-10.5 1.51l-7.49 9a8 8 0 00.3 10.62l17.29 19.94a8 8 0 01.7 9.52q-2.55 4-4.8 8.41a8.11 8.11 0 01-8.59 4.11l-25.89-5a8 8 0 00-9.4 5l-4 11a8.05 8.05 0 003.9 9.92L85.58 213a7.94 7.94 0 013.9 8.62c-.6 3.2-1.2 6.31-1.7 9.51a8.08 8.08 0 01-6.6 6.82l-26.08 4.2a8.09 8.09 0 00-7.1 7.92v11.72a7.86 7.86 0 007.1 7.92l26.08 4.2a8 8 0 016.6 6.82c.5 3.2 1 6.41 1.7 9.51a8.08 8.08 0 01-3.9 8.62L62.49 311.7a8.05 8.05 0 00-3.9 9.92l4 11a7.94 7.94 0 009.4 5l25.89-5a8 8 0 018.59 4.11q2.25 4.2 4.8 8.41a8.16 8.16 0 01-.7 9.52l-17.29 19.96a8 8 0 00-.3 10.62l7.49 9a7.88 7.88 0 0010.5 1.51l22.69-13.63a8 8 0 019.39.9c2.4 2.11 4.9 4.21 7.4 6.22a8 8 0 012.5 9.11l-9.4 24.75a8 8 0 003.3 10.12l10.2 5.91a8 8 0 0010.39-2.21l16.79-20.64c2.1-2.6 5.5-3.7 8.2-2.6 3.4 1.4 5.7 2.2 9.9 3.61a8 8 0 015.49 7.71l-.4 26.45a8.07 8.07 0 006.6 8.42l11.59 2a8.07 8.07 0 009.1-5.61l8.6-25a8 8 0 017.79-5.41h9.8a8.07 8.07 0 017.79 5.41l8.6 25a8.07 8.07 0 009.1 5.61l11.59-2a8.07 8.07 0 006.6-8.42l-.4-26.45a8 8 0 015.49-7.71c4.2-1.41 7-2.51 9.6-3.51s5.8-1 8.3 2.1l17 20.94A8 8 0 00355 439l10.2-5.91a7.93 7.93 0 003.3-10.12l-9.4-24.75a8.08 8.08 0 012.5-9.12c2.5-2 5-4.1 7.4-6.21a8 8 0 019.39-.9L401 395.66a8 8 0 0010.5-1.51l7.49-9a8 8 0 00-.3-10.62l-17.29-19.94a8 8 0 01-.7-9.52q2.55-4.05 4.8-8.41a8.11 8.11 0 018.59-4.11l25.89 5a8 8 0 009.4-5l4-11a8.05 8.05 0 00-3.9-9.92l-23.09-12.82a7.94 7.94 0 01-3.9-8.62c.6-3.2 1.2-6.31 1.7-9.51a8.08 8.08 0 016.6-6.82l26.08-4.2a8.09 8.09 0 007.1-7.92V250a8.25 8.25 0 00-7.27-7.73zM256 112a143.82 143.82 0 01139.38 108.12A16 16 0 01379.85 240H274.61a16 16 0 01-13.91-8.09l-52.1-91.71a16 16 0 019.85-23.39A146.94 146.94 0 01256 112zM112 256a144 144 0 0143.65-103.41 16 16 0 0125.17 3.47L233.06 248a16 16 0 010 15.87l-52.67 91.7a16 16 0 01-25.18 3.36A143.94 143.94 0 01112 256zm144 144a146.9 146.9 0 01-38.19-4.95 16 16 0 01-9.76-23.44l52.58-91.55a16 16 0 0113.88-8H379.9a16 16 0 0115.52 19.88A143.84 143.84 0 01256 400z"
      />
    </svg>

  @react.component
  let colorFill = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M419.1 337.45a3.94 3.94 0 00-6.1 0c-10.5 12.4-45 46.55-45 77.66 0 27 21.5 48.89 48 48.89h0c26.5 0 48-22 48-48.89 0-31.11-34.3-65.26-44.9-77.66zM387 287.9L155.61 58.36a36 36 0 00-51 0l-5.15 5.15a36 36 0 000 51l52.89 52.89 57-57L56.33 263.2a28 28 0 00.3 40l131.2 126a28.05 28.05 0 0038.9-.1c37.8-36.6 118.3-114.5 126.7-122.9 5.8-5.8 18.2-7.1 28.7-7.1h.3a6.53 6.53 0 004.57-11.2z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let colorFilter = (
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
      <circle cx="256" cy="184" r="120" fill stroke strokeLinejoin strokeWidth />
      <circle cx="344" cy="328" r="120" fill stroke strokeLinejoin strokeWidth />
      <circle cx="168" cy="328" r="120" fill stroke strokeLinejoin strokeWidth />
    </svg>

  @react.component
  let colorPalette = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M430.11 347.9c-6.6-6.1-16.3-7.6-24.6-9-11.5-1.9-15.9-4-22.6-10-14.3-12.7-14.3-31.1 0-43.8l30.3-26.9c46.4-41 46.4-108.2 0-149.2-34.2-30.1-80.1-45-127.8-45-55.7 0-113.9 20.3-158.8 60.1-83.5 73.8-83.5 194.7 0 268.5 41.5 36.7 97.5 55 152.9 55.4h1.7c55.4 0 110-17.9 148.8-52.4 14.4-12.7 11.99-36.6.1-47.7z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="144" cy="208" r="32" />
      <circle cx="152" cy="311" r="32" />
      <circle cx="224" cy="144" r="32" />
      <circle cx="256" cy="367" r="48" />
      <circle cx="328" cy="144" r="32" />
    </svg>

  @react.component
  let colorWand = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <rect
        fill
        stroke
        strokeMiterlimit
        strokeWidth
        x="280.48"
        y="122.9"
        width="63.03"
        height="378.2"
        rx="31.52"
        transform="rotate(-45 312.002 311.994)"
      />
      <path
        d="M178.38 178.38a31.64 31.64 0 000 44.75L223.25 268 268 223.25l-44.87-44.87a31.64 31.64 0 00-44.75 0z"
      />
      <path
        stroke
        strokeMiterlimit
        strokeWidth
        strokeLinecap
        d="M48 192h48M90.18 90.18l33.94 33.94M192 48v48M293.82 90.18l-33.94 33.94M124.12 259.88l-33.94 33.94"
      />
    </svg>

  @react.component
  let compass = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M350.67 150.93l-117.2 46.88a64 64 0 00-35.66 35.66l-46.88 117.2a8 8 0 0010.4 10.4l117.2-46.88a64 64 0 0035.66-35.66l46.88-117.2a8 8 0 00-10.4-10.4zM256 280a24 24 0 1124-24 24 24 0 01-24 24z"
      />
    </svg>

  @react.component
  let construct = (
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
      <path
        d="M436.67 184.11a27.17 27.17 0 01-38.3 0l-22.48-22.49a27.15 27.15 0 010-38.29l50.89-50.89a.85.85 0 00-.26-1.38C393.68 57 351.09 64.15 324.05 91c-25.88 25.69-27.35 64.27-17.87 98a27 27 0 01-7.67 27.14l-173 160.76a40.76 40.76 0 1057.57 57.54l162.15-173.3a27 27 0 0126.77-7.7c33.46 8.94 71.49 7.26 97.07-17.94 27.49-27.08 33.42-74.94 20.1-102.33a.85.85 0 00-1.36-.22z"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M224 284c-17.48-17-25.49-24.91-31-30.29a18.24 18.24 0 01-3.33-21.35 20.76 20.76 0 013.5-4.62l15.68-15.29a18.66 18.66 0 015.63-3.87 18.11 18.11 0 0120 3.62c5.45 5.29 15.43 15 33.41 32.52M317.07 291.3c40.95 38.1 90.62 83.27 110 99.41a13.46 13.46 0 01.94 19.92L394.63 444a14 14 0 01-20.29-.76c-16.53-19.18-61.09-67.11-99.27-107"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M17.34 193.5l29.41-28.74a4.71 4.71 0 013.41-1.35 4.85 4.85 0 013.41 1.35h0a9.86 9.86 0 008.19 2.77c3.83-.42 7.92-1.6 10.57-4.12 6-5.8-.94-17.23 4.34-24.54a207 207 0 0119.78-22.6c6-5.88 29.84-28.32 69.9-44.45A107.31 107.31 0 01206.67 64c22.59 0 40 10 46.26 15.67a89.54 89.54 0 0110.28 11.64 78.92 78.92 0 00-9.21-2.77 68.82 68.82 0 00-20-1.26c-13.33 1.09-29.41 7.26-38 14-13.9 11-19.87 25.72-20.81 44.71-.68 14.12 2.72 22.1 36.1 55.49a6.6 6.6 0 01-.34 9.16l-18.22 18a6.88 6.88 0 01-9.54.09c-21.94-21.94-36.65-33.09-45-38.16s-15.07-6.5-18.3-6.85a30.85 30.85 0 00-18.27 3.87 11.39 11.39 0 00-2.64 2 14.14 14.14 0 00.42 20.08l1.71 1.6a4.63 4.63 0 010 6.64L71.73 246.6a4.71 4.71 0 01-3.41 1.4 4.86 4.86 0 01-3.41-1.35l-47.57-46.43a4.88 4.88 0 010-6.72z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let contract = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M304 416V304h112M314.2 314.23L432 432M208 96v112H96M197.8 197.77L80 80M416 208H304V96M314.23 197.8L432 80M96 304h112v112M197.77 314.2L80 432"
      />
    </svg>

  @react.component
  let contrast = (
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
      <circle cx="256" cy="256" r="208" fill stroke strokeLinejoin strokeWidth />
      <path d="M256 464c-114.88 0-208-93.12-208-208S141.12 48 256 48z" />
    </svg>

  @react.component
  let copy = (
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
      <rect
        x="128"
        y="128"
        width="336"
        height="336"
        rx="57"
        ry="57"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M383.5 128l.5-24a56.16 56.16 0 00-56-56H112a64.19 64.19 0 00-64 64v216a56.16 56.16 0 0056 56h24"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let create = (
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
      <path
        d="M384 224v184a40 40 0 01-40 40H104a40 40 0 01-40-40V168a40 40 0 0140-40h167.48"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M459.94 53.25a16.06 16.06 0 00-23.22-.56L424.35 65a8 8 0 000 11.31l11.34 11.32a8 8 0 0011.34 0l12.06-12c6.1-6.09 6.67-16.01.85-22.38zM399.34 90L218.82 270.2a9 9 0 00-2.31 3.93L208.16 299a3.91 3.91 0 004.86 4.86l24.85-8.35a9 9 0 003.93-2.31L422 112.66a9 9 0 000-12.66l-9.95-10a9 9 0 00-12.71 0z"
      />
    </svg>

  @react.component
  let crop = (
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
      <path
        d="M144 48v272a48 48 0 0048 48h272" fill stroke strokeLinecap strokeLinejoin strokeWidth
      />
      <path
        d="M368 304V192a48 48 0 00-48-48H208M368 368v96M144 144H48"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let cube = (
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
      <path
        d="M448 341.37V170.61A32 32 0 00432.11 143l-152-88.46a47.94 47.94 0 00-48.24 0L79.89 143A32 32 0 0064 170.61v170.76A32 32 0 0079.89 369l152 88.46a48 48 0 0048.24 0l152-88.46A32 32 0 00448 341.37z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M69 153.99l187 110 187-110M256 463.99v-200"
      />
    </svg>

  @react.component
  let cut = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="square",
    ~strokeLinejoin="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle cx="104" cy="152" r="56" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="104" cy="360" r="56" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        d="M157 175l-11 15 37 15s3.46-6.42 7-10z"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M154.17 334.43L460 162c-2.5-6.7-28-12-64-4-29.12 6.47-121.16 29.05-159.16 56.05C205.85 236.06 227 272 192 298c-25.61 19-44.43 22.82-44.43 22.82zM344.47 278.24L295 306.67c14.23 6.74 65.54 33.27 117 36.33 14.92.89 30 .39 39-6z"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="256" cy="240" r="32" fill stroke strokeMiterlimit strokeWidth />
    </svg>

  @react.component
  let desktop = (
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
      <rect
        x="32"
        y="64"
        width="448"
        height="320"
        rx="32"
        ry="32"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path stroke strokeLinecap strokeLinejoin strokeWidth d="M304 448l-8-64h-80l-8 64h96z" />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M368 448H144" />
      <path
        d="M32 304v48a32.09 32.09 0 0032 32h384a32.09 32.09 0 0032-32v-48zm224 64a16 16 0 1116-16 16 16 0 01-16 16z"
      />
    </svg>

  @react.component
  let diamond = (
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
      <path
        d="M35.42 188.21l207.75 269.46a16.17 16.17 0 0025.66 0l207.75-269.46a16.52 16.52 0 00.95-18.75L407.06 55.71A16.22 16.22 0 00393.27 48H118.73a16.22 16.22 0 00-13.79 7.71L34.47 169.46a16.52 16.52 0 00.95 18.75zM48 176h416"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M400 64l-48 112-96-128M112 64l48 112 96-128M256 448l-96-272M256 448l96-272"
      />
    </svg>

  @react.component
  let dice = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M448 341.37V170.61A32 32 0 00432.11 143l-152-88.46a47.94 47.94 0 00-48.24 0L79.89 143A32 32 0 0064 170.61v170.76A32 32 0 0079.89 369l152 88.46a48 48 0 0048.24 0l152-88.46A32 32 0 00448 341.37z"
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M69 153.99l187 110 187-110M256 463.99v-200"
      />
      <ellipse cx="256" cy="152" rx="24" ry="16" />
      <ellipse cx="208" cy="296" rx="16" ry="24" />
      <ellipse cx="112" cy="328" rx="16" ry="24" />
      <ellipse cx="304" cy="296" rx="16" ry="24" />
      <ellipse cx="400" cy="240" rx="16" ry="24" />
      <ellipse cx="304" cy="384" rx="16" ry="24" />
      <ellipse cx="400" cy="328" rx="16" ry="24" />
    </svg>

  @react.component
  let disc = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle cx="256" cy="256" r="208" fill stroke strokeMiterlimit strokeWidth />
      <circle cx="256" cy="256" r="96" fill stroke strokeMiterlimit strokeWidth />
      <circle cx="256" cy="256" r="32" />
    </svg>

  @react.component
  let document = (
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
      <path
        d="M416 221.25V416a48 48 0 01-48 48H144a48 48 0 01-48-48V96a48 48 0 0148-48h98.75a32 32 0 0122.62 9.37l141.26 141.26a32 32 0 019.37 22.62z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M256 56v120a32 32 0 0032 32h120" fill stroke strokeLinecap strokeLinejoin strokeWidth
      />
    </svg>

  @react.component
  let documentAttach = (
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
      <path
        d="M208 64h66.75a32 32 0 0122.62 9.37l141.26 141.26a32 32 0 019.37 22.62V432a48 48 0 01-48 48H192a48 48 0 01-48-48V304"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M288 72v120a32 32 0 0032 32h120" fill stroke strokeLinecap strokeLinejoin strokeWidth
      />
      <path
        d="M160 80v152a23.69 23.69 0 01-24 24c-12 0-24-9.1-24-24V88c0-30.59 16.57-56 48-56s48 24.8 48 55.38v138.75c0 43-27.82 77.87-72 77.87s-72-34.86-72-77.87V144"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let documentLock = (
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
      <path
        d="M288 304v-18c0-16.63-14.26-30-32-30s-32 13.37-32 30v18"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M304 416h-96a32 32 0 01-32-32v-48a32 32 0 0132-32h96a32 32 0 0132 32v48a32 32 0 01-32 32z"
      />
      <path
        d="M416 221.25V416a48 48 0 01-48 48H144a48 48 0 01-48-48V96a48 48 0 0148-48h98.75a32 32 0 0122.62 9.37l141.26 141.26a32 32 0 019.37 22.62z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M256 50.88V176a32 32 0 0032 32h125.12"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let documentText = (
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
      <path
        d="M416 221.25V416a48 48 0 01-48 48H144a48 48 0 01-48-48V96a48 48 0 0148-48h98.75a32 32 0 0122.62 9.37l141.26 141.26a32 32 0 019.37 22.62z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M256 56v120a32 32 0 0032 32h120M176 288h160M176 368h160"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let documents = (
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
      <path
        d="M336 264.13V436c0 24.3-19.05 44-42.95 44H107c-23.95 0-43-19.7-43-44V172a44.26 44.26 0 0144-44h94.12a24.55 24.55 0 0117.49 7.36l109.15 111a25.4 25.4 0 017.24 17.77z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M200 128v108a28.34 28.34 0 0028 28h108"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M176 128V76a44.26 44.26 0 0144-44h94a24.83 24.83 0 0117.61 7.36l109.15 111A25.09 25.09 0 01448 168v172c0 24.3-19.05 44-42.95 44H344"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M312 32v108a28.34 28.34 0 0028 28h108"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let download = (
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
      <path
        d="M336 176h40a40 40 0 0140 40v208a40 40 0 01-40 40H136a40 40 0 01-40-40V216a40 40 0 0140-40h40"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        fill stroke strokeLinecap strokeLinejoin strokeWidth d="M176 272l80 80 80-80M256 48v288"
      />
    </svg>

  @react.component
  let duplicate = (
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
      <rect
        x="128"
        y="128"
        width="336"
        height="336"
        rx="57"
        ry="57"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M383.5 128l.5-24a56.16 56.16 0 00-56-56H112a64.19 64.19 0 00-64 64v216a56.16 56.16 0 0056 56h24M296 216v160M376 296H216"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let ear = (
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
      <path
        d="M335.72 330.76C381.73 299.5 416 251.34 416 192a160 160 0 00-320 0v206.57c0 44.26 35.74 81.43 80 81.43h0c44.26 0 66.83-25.94 77.29-40 14.77-19.81 41.71-81.56 82.43-109.24z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M160 304V184c0-48.4 43.2-88 96-88h0c52.8 0 96 39.6 96 88"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M160 239c25-18 79.82-15 79.82-15 26 0 41.17 29.42 26 50.6 0 0-36.86 42.4-41.86 61.4"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let earth = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M464 256c0-114.87-93.13-208-208-208S48 141.13 48 256s93.13 208 208 208 208-93.13 208-208z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M445.57 172.14c-16.06.1-14.48 29.73-34.49 15.75-7.43-5.18-12-12.71-21.33-15-8.15-2-16.5.08-24.55 1.47-9.15 1.58-20 2.29-26.94 9.22-6.71 6.67-10.26 15.62-17.4 22.33-13.81 13-19.64 27.19-10.7 45.57 8.6 17.67 26.59 27.26 46 26 19.07-1.27 38.88-12.33 38.33 15.38-.2 9.8 1.85 16.6 4.86 25.71 2.79 8.4 2.6 16.54 3.24 25.21 1.18 16.2 4.16 34.36 12.2 48.67l15-21.16c1.85-2.62 5.72-6.29 6.64-9.38 1.63-5.47-1.58-14.87-1.95-21s-.19-12.34-1.13-18.47c-1.32-8.59-6.4-16.64-7.1-25.13-1.29-15.81 1.6-28.43-10.58-41.65-11.76-12.75-29-15.81-45.47-13.22-8.3 1.3-41.71 6.64-28.3-12.33 2.65-3.73 7.28-6.79 10.26-10.34 2.59-3.09 4.84-8.77 7.88-11.18s17-5.18 21-3.95 8.17 7 11.64 9.56a49.89 49.89 0 0021.81 9.36c13.66 2 42.22-5.94 42-23.46-.04-8.4-7.84-20.1-10.92-27.96zM287.45 316.3c-5.33-22.44-35.82-29.94-52.26-42.11-9.45-7-17.86-17.81-30.27-18.69-5.72-.41-10.51.83-16.18-.64-5.2-1.34-9.28-4.14-14.82-3.41-10.35 1.36-16.88 12.42-28 10.92-10.55-1.42-21.42-13.76-23.82-23.81-3.08-12.92 7.14-17.11 18.09-18.26 4.57-.48 9.7-1 14.09.67 5.78 2.15 8.51 7.81 13.7 10.67 9.73 5.33 11.7-3.19 10.21-11.83-2.23-12.94-4.83-18.22 6.71-27.12 8-6.14 14.84-10.58 13.56-21.61-.76-6.48-4.31-9.41-1-15.86 2.51-4.91 9.4-9.34 13.89-12.27 11.59-7.56 49.65-7 34.1-28.16-4.57-6.21-13-17.31-21-18.83-10-1.89-14.44 9.27-21.41 14.19-7.2 5.09-21.22 10.87-28.43 3-9.7-10.59 6.43-14.07 10-21.46s-8.27-21.36-14.61-24.9l-29.81 33.43a41.52 41.52 0 008.34 31.86c5.93 7.63 15.37 10.08 15.8 20.5.42 10-1.14 15.12-7.68 22.15-2.83 3-4.83 7.26-7.71 10.07-3.53 3.43-2.22 2.38-7.73 3.32-10.36 1.75-19.18 4.45-29.19 7.21C95.34 199.94 93.8 172.69 86.2 162l-25 20.19c-.27 3.31 4.1 9.4 5.29 13 6.83 20.57 20.61 36.48 29.51 56.16 9.37 20.84 34.53 15.06 45.64 33.32 9.86 16.2-.67 36.71 6.71 53.67 5.36 12.31 18 15 26.72 24 8.91 9.09 8.72 21.53 10.08 33.36a305.22 305.22 0 007.45 41.28c1.21 4.69 2.32 10.89 5.53 14.76 2.2 2.66 9.75 4.95 6.7 5.83 4.26.7 11.85 4.68 15.4 1.76 4.68-3.84 3.43-15.66 4.24-21 2.43-15.9 10.39-31.45 21.13-43.35 10.61-11.74 25.15-19.69 34.11-33 8.73-12.98 11.36-30.49 7.74-45.68zm-33.39 26.32c-6 10.71-19.36 17.88-27.95 26.39-2.33 2.31-7.29 10.31-10.21 8.58-2.09-1.24-2.8-11.62-3.57-14a61.17 61.17 0 00-21.71-29.95c-3.13-2.37-10.89-5.45-12.68-8.7-2-3.53-.2-11.86-.13-15.7.11-5.6-2.44-14.91-1.06-20 1.6-5.87-1.48-2.33 3.77-3.49 2.77-.62 14.21 1.39 17.66 2.11 5.48 1.14 8.5 4.55 12.82 8 11.36 9.11 23.87 16.16 36.6 23.14 9.86 5.46 12.76 12.37 6.46 23.62zM184.46 67.09c4.74 4.63 9.2 10.11 16.27 10.57 6.69.45 13-3.17 18.84 1.38 6.48 5 11.15 11.33 19.75 12.89 8.32 1.51 17.13-3.35 19.19-11.86 2-8.11-2.31-16.93-2.57-25.07 0-1.13.61-6.15-.17-7-.58-.64-5.42.08-6.16.1q-8.13.24-16.22 1.12a207.1 207.1 0 00-57.18 14.65c2.43 1.68 5.48 2.35 8.25 3.22zM356.4 123.27c8.49 0 17.11-3.8 14.37-13.62-2.3-8.23-6.22-17.16-15.76-12.72-6.07 2.82-14.67 10-15.38 17.12-.81 8.08 11.11 9.22 16.77 9.22zM349.62 166.24c8.67 5.19 21.53 2.75 28.07-4.66 5.11-5.8 8.12-15.87 17.31-15.86a15.4 15.4 0 0110.82 4.41c3.8 3.93 3.05 7.62 3.86 12.54 1.81 11.05 13.66.63 16.75-3.65 2-2.79 4.71-6.93 3.8-10.56-.84-3.39-4.8-7-6.56-10.11-5.14-9-9.37-19.47-17.07-26.74-7.41-7-16.52-6.19-23.55 1.08-5.76 6-12.45 10.75-16.39 18.05-2.78 5.13-5.91 7.58-11.54 8.91-3.1.73-6.64 1-9.24 3.08-7.24 5.7-3.12 19.39 3.74 23.51z"
      />
    </svg>

  @react.component
  let easel = (
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
      <rect
        x="48"
        y="80"
        width="416"
        height="272"
        rx="32"
        ry="32"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M256 416v-64M256 80V48M400 464l-32-112M112 464l32-112"
      />
    </svg>

  @react.component
  let egg = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 48C192 48 96 171.69 96 286.55S160 464 256 464s160-62.59 160-177.45S320 48 256 48z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let ellipse = (
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
      <circle cx="256" cy="256" r="192" fill stroke strokeLinecap strokeLinejoin strokeWidth />
    </svg>

  @react.component
  let ellipsisHorizontal = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle cx="256" cy="256" r="32" fill stroke strokeMiterlimit strokeWidth />
      <circle cx="416" cy="256" r="32" fill stroke strokeMiterlimit strokeWidth />
      <circle cx="96" cy="256" r="32" fill stroke strokeMiterlimit strokeWidth />
    </svg>

  @react.component
  let ellipsisHorizontalCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle cx="256" cy="256" r="26" />
      <circle cx="346" cy="256" r="26" />
      <circle cx="166" cy="256" r="26" />
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let ellipsisVertical = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle cx="256" cy="256" r="32" fill stroke strokeMiterlimit strokeWidth />
      <circle cx="256" cy="416" r="32" fill stroke strokeMiterlimit strokeWidth />
      <circle cx="256" cy="96" r="32" fill stroke strokeMiterlimit strokeWidth />
    </svg>

  @react.component
  let ellipsisVerticalCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle cx="256" cy="256" r="26" />
      <circle cx="256" cy="346" r="26" />
      <circle cx="256" cy="166" r="26" />
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let enter = (
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
      <path
        d="M176 176v-40a40 40 0 0140-40h208a40 40 0 0140 40v240a40 40 0 01-40 40H216a40 40 0 01-40-40v-40"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        fill stroke strokeLinecap strokeLinejoin strokeWidth d="M272 336l80-80-80-80M48 256h288"
      />
    </svg>

  @react.component
  let exit = (
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
      <path
        d="M320 176v-40a40 40 0 00-40-40H88a40 40 0 00-40 40v240a40 40 0 0040 40h192a40 40 0 0040-40v-40M384 176l80 80-80 80M191 256h273"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let expand = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M432 320v112H320M421.8 421.77L304 304M80 192V80h112M90.2 90.23L208 208M320 80h112v112M421.77 90.2L304 208M192 432H80V320M90.23 421.8L208 304"
      />
    </svg>

  @react.component
  let extensionPuzzle = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M413.66 246.1H386a2 2 0 01-2-2v-77.24A38.86 38.86 0 00345.14 128H267.9a2 2 0 01-2-2V98.34c0-27.14-21.5-49.86-48.64-50.33a49.53 49.53 0 00-50.4 49.51V126a2 2 0 01-2 2H87.62A39.74 39.74 0 0048 167.62V238a2 2 0 002 2h26.91c29.37 0 53.68 25.48 54.09 54.85.42 29.87-23.51 57.15-53.29 57.15H50a2 2 0 00-2 2v70.38A39.74 39.74 0 0087.62 464H158a2 2 0 002-2v-20.93c0-30.28 24.75-56.35 55-57.06 30.1-.7 57 20.31 57 50.28V462a2 2 0 002 2h71.14A38.86 38.86 0 00384 425.14v-78a2 2 0 012-2h28.48c27.63 0 49.52-22.67 49.52-50.4s-23.2-48.64-50.34-48.64z"
      />
    </svg>

  @react.component
  let eye = (
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
      <path
        d="M255.66 112c-77.94 0-157.89 45.11-220.83 135.33a16 16 0 00-.27 17.77C82.92 340.8 161.8 400 255.66 400c92.84 0 173.34-59.38 221.79-135.25a16.14 16.14 0 000-17.47C428.89 172.28 347.8 112 255.66 112z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <circle cx="256" cy="256" r="80" fill stroke strokeMiterlimit strokeWidth />
    </svg>

  @react.component
  let eyeOff = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M432 448a15.92 15.92 0 01-11.31-4.69l-352-352a16 16 0 0122.62-22.62l352 352A16 16 0 01432 448zM255.66 384c-41.49 0-81.5-12.28-118.92-36.5-34.07-22-64.74-53.51-88.7-91v-.08c19.94-28.57 41.78-52.73 65.24-72.21a2 2 0 00.14-2.94L93.5 161.38a2 2 0 00-2.71-.12c-24.92 21-48.05 46.76-69.08 76.92a31.92 31.92 0 00-.64 35.54c26.41 41.33 60.4 76.14 98.28 100.65C162 402 207.9 416 255.66 416a239.13 239.13 0 0075.8-12.58 2 2 0 00.77-3.31l-21.58-21.58a4 4 0 00-3.83-1 204.8 204.8 0 01-51.16 6.47zM490.84 238.6c-26.46-40.92-60.79-75.68-99.27-100.53C349 110.55 302 96 255.66 96a227.34 227.34 0 00-74.89 12.83 2 2 0 00-.75 3.31l21.55 21.55a4 4 0 003.88 1 192.82 192.82 0 0150.21-6.69c40.69 0 80.58 12.43 118.55 37 34.71 22.4 65.74 53.88 89.76 91a.13.13 0 010 .16 310.72 310.72 0 01-64.12 72.73 2 2 0 00-.15 2.95l19.9 19.89a2 2 0 002.7.13 343.49 343.49 0 0068.64-78.48 32.2 32.2 0 00-.1-34.78z"
      />
      <path
        d="M256 160a95.88 95.88 0 00-21.37 2.4 2 2 0 00-1 3.38l112.59 112.56a2 2 0 003.38-1A96 96 0 00256 160zM165.78 233.66a2 2 0 00-3.38 1 96 96 0 00115 115 2 2 0 001-3.38z"
      />
    </svg>

  @react.component
  let eyedrop = (
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
      <path
        d="M262.51 204.22L70 396.69C57.56 409.15 48 464 48 464s54.38-9.09 67.31-22L307.8 249.51"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="211.72"
        y="172.19"
        width="192.15"
        height="64.05"
        rx="32.03"
        ry="32.03"
        transform="rotate(45 307.788 204.2)"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M289.91 141s20.57 8.57 37.22-8.08l54.67-70.63c18.5-19.41 49.26-18.69 67.94 0h0c18.68 18.68 19.34 48.81 0 67.93l-70.68 54.67c-15.65 15.65-8.08 37.22-8.08 37.22M115.31 442s-26.48 17.34-44.56-.73-.75-44.58-.75-44.58"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let fastFood = (
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
      <path
        d="M322 416c0 35.35-20.65 64-56 64H134c-35.35 0-56-28.65-56-64M336 336c17.67 0 32 17.91 32 40h0c0 22.09-14.33 40-32 40H64c-17.67 0-32-17.91-32-40h0c0-22.09 14.33-40 32-40"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M344 336H179.31a8 8 0 00-5.65 2.34l-26.83 26.83a4 4 0 01-5.66 0l-26.83-26.83a8 8 0 00-5.65-2.34H56a24 24 0 01-24-24h0a24 24 0 0124-24h288a24 24 0 0124 24h0a24 24 0 01-24 24zM64 276v-.22c0-55 45-83.78 100-83.78h72c55 0 100 29 100 84v-.22M241 112l7.44 63.97"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M256 480h139.31a32 32 0 0031.91-29.61L463 112"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M368 112l16-64 47-16" />
      <path fill stroke strokeLinecap strokeMiterlimit strokeWidth d="M224 112h256" />
    </svg>

  @react.component
  let female = (
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
      <circle cx="256" cy="184" r="152" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M256 336v144M314 416H198" />
    </svg>

  @react.component
  let fileTray = (
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
      <path
        d="M384 80H128c-26 0-43 14-48 40L48 272v112a48.14 48.14 0 0048 48h320a48.14 48.14 0 0048-48V272l-32-152c-5-27-23-40-48-40z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M48 272h144M320 272h144M192 272a64 64 0 00128 0"
      />
    </svg>

  @react.component
  let fileTrayFull = (
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
      <path
        d="M384 80H128c-26 0-43 14-48 40L48 272v112a48.14 48.14 0 0048 48h320a48.14 48.14 0 0048-48V272l-32-152c-5-27-23-40-48-40z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M48 272h144M320 272h144M192 272a64 64 0 00128 0M144 144h224M128 208h256"
      />
    </svg>

  @react.component
  let fileTrayStacked = (
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
      <path
        d="M48 336v96a48.14 48.14 0 0048 48h320a48.14 48.14 0 0048-48v-96"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M48 336h144M320 336h144M192 336a64 64 0 00128 0"
      />
      <path
        d="M384 32H128c-26 0-43 14-48 40L48 192v96a48.14 48.14 0 0048 48h320a48.14 48.14 0 0048-48v-96L432 72c-5-27-23-40-48-40z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M48 192h144M320 192h144M192 192a64 64 0 00128 0"
      />
    </svg>

  @react.component
  let film = (
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
      <rect
        x="48"
        y="96"
        width="416"
        height="320"
        rx="28"
        ry="28"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="384"
        y="336"
        width="80"
        height="80"
        rx="28"
        ry="28"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="384"
        y="256"
        width="80"
        height="80"
        rx="28"
        ry="28"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="384"
        y="176"
        width="80"
        height="80"
        rx="28"
        ry="28"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="384" y="96" width="80" height="80" rx="28" ry="28" fill stroke strokeLinejoin strokeWidth
      />
      <rect
        x="48" y="336" width="80" height="80" rx="28" ry="28" fill stroke strokeLinejoin strokeWidth
      />
      <rect
        x="48" y="256" width="80" height="80" rx="28" ry="28" fill stroke strokeLinejoin strokeWidth
      />
      <rect
        x="48" y="176" width="80" height="80" rx="28" ry="28" fill stroke strokeLinejoin strokeWidth
      />
      <rect
        x="48" y="96" width="80" height="80" rx="28" ry="28" fill stroke strokeLinejoin strokeWidth
      />
      <rect
        x="128"
        y="96"
        width="256"
        height="160"
        rx="28"
        ry="28"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="128"
        y="256"
        width="256"
        height="160"
        rx="28"
        ry="28"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let filter = (
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
      <path
        fill stroke strokeLinecap strokeLinejoin strokeWidth d="M32 144h448M112 256h288M208 368h96"
      />
    </svg>

  @react.component
  let filterCircle = (
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
      <path
        fill
        stroke
        strokeWidth
        strokeMiterlimit
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
      />
      <path
        fill stroke strokeWidth strokeLinecap strokeLinejoin d="M144 208h224M176 272h160M224 336h64"
      />
    </svg>

  @react.component
  let fingerPrint = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M390.42 75.28a10.45 10.45 0 01-5.32-1.44C340.72 50.08 302.35 40 256.35 40c-45.77 0-89.23 11.28-128.76 33.84C122 77 115.11 74.8 111.87 69a12.4 12.4 0 014.63-16.32A281.81 281.81 0 01256.35 16c49.23 0 92.23 11.28 139.39 36.48a12 12 0 014.85 16.08 11.3 11.3 0 01-10.17 6.72zm-330.79 126a11.73 11.73 0 01-6.7-2.16 12.26 12.26 0 01-2.78-16.8c22.89-33.6 52-60 86.69-78.48 72.58-38.84 165.51-39.12 238.32-.24 34.68 18.48 63.8 44.64 86.69 78a12.29 12.29 0 01-2.78 16.8 11.26 11.26 0 01-16.18-2.88c-20.8-30.24-47.15-54-78.36-70.56-66.34-35.28-151.18-35.28-217.29.24-31.44 16.8-57.79 40.8-78.59 71a10 10 0 01-9.02 5.08zM204.1 491a10.66 10.66 0 01-8.09-3.6C175.9 466.48 165 453 149.55 424c-16-29.52-24.27-65.52-24.27-104.16 0-71.28 58.71-129.36 130.84-129.36S387 248.56 387 319.84a11.56 11.56 0 11-23.11 0c0-58.08-48.32-105.36-107.72-105.36S148.4 261.76 148.4 319.84c0 34.56 7.39 66.48 21.49 92.4 14.8 27.6 25 39.36 42.77 58.08a12.67 12.67 0 010 17 12.44 12.44 0 01-8.56 3.68zm165.75-44.4c-27.51 0-51.78-7.2-71.66-21.36a129.1 129.1 0 01-55-105.36 11.57 11.57 0 1123.12 0 104.28 104.28 0 0044.84 85.44c16.41 11.52 35.6 17 58.72 17a147.41 147.41 0 0024-2.4c6.24-1.2 12.25 3.12 13.4 9.84a11.92 11.92 0 01-9.47 13.92 152.28 152.28 0 01-27.95 2.88zM323.38 496a13 13 0 01-3-.48c-36.76-10.56-60.8-24.72-86-50.4-32.37-33.36-50.16-77.76-50.16-125.28 0-38.88 31.9-70.56 71.19-70.56s71.2 31.68 71.2 70.56c0 25.68 21.5 46.56 48.08 46.56s48.08-20.88 48.08-46.56c0-90.48-75.13-163.92-167.59-163.92-65.65 0-125.75 37.92-152.79 96.72-9 19.44-13.64 42.24-13.64 67.2 0 18.72 1.61 48.24 15.48 86.64 2.32 6.24-.69 13.2-6.7 15.36a11.34 11.34 0 01-14.79-7 276.39 276.39 0 01-16.88-95c0-28.8 5.32-55 15.72-77.76 30.75-67 98.94-110.4 173.6-110.4 105.18 0 190.71 84.24 190.71 187.92 0 38.88-31.9 70.56-71.2 70.56s-71.2-31.68-71.2-70.56c.01-25.68-21.49-46.6-48.07-46.6s-48.08 20.88-48.08 46.56c0 41 15.26 79.44 43.23 108.24 22 22.56 43 35 75.59 44.4 6.24 1.68 9.71 8.4 8.09 14.64a11.39 11.39 0 01-10.87 9.16z"
      />
    </svg>

  @react.component
  let fish = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="20",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        fill
        stroke
        strokeWidth
        strokeLinejoin
        d="M240 152c-50.71 12.21-94.15 52.31-120.3 73.43a261.14 261.14 0 00-23.81-19.58C59.53 179.29 16 176 16 176s11.37 51.53 41.36 79.83C27.37 284.14 16 335.67 16 335.67s43.53-3.29 79.89-29.85a259.18 259.18 0 0023.61-19.41c26.1 21.14 69.74 61.34 120.5 73.59l-16 56c39.43-6.67 78.86-35.51 94.72-48.25C448 362 496 279 496 256c0-22-48-106-176.89-111.73C303.52 131.78 263.76 102.72 224 96z"
      />
      <circle cx="416" cy="239.99" r="16" />
      <path
        fill
        stroke
        strokeWidth
        strokeLinecap
        strokeMiterlimit
        d="M378.37 356a199.22 199.22 0 010-200"
      />
    </svg>

  @react.component
  let fitness = (
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
      <path
        d="M352.92 80C288 80 256 144 256 144s-32-64-96.92-64c-52.76 0-94.54 44.14-95.08 96.81-1.1 109.33 86.73 187.08 183 252.42a16 16 0 0018 0c96.26-65.34 184.09-143.09 183-252.42-.54-52.67-42.32-96.81-95.08-96.81z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M48 256h112l48-96 48 160 48-96 32 64h128"
      />
    </svg>

  @react.component
  let flag = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M80 464V68.14a8 8 0 014-6.9C91.81 56.66 112.92 48 160 48c64 0 145 48 192 48a199.53 199.53 0 0077.23-15.77 2 2 0 012.77 1.85v219.36a4 4 0 01-2.39 3.65C421.37 308.7 392.33 320 352 320c-48 0-128-32-192-32s-80 16-80 16"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let flame = (
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
      <path
        d="M112 320c0-93 124-165 96-272 66 0 192 96 192 272a144 144 0 01-288 0z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M320 368c0 57.71-32 80-64 80s-64-22.29-64-80 40-86 32-128c42 0 96 70.29 96 128z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let flash = (
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
      <path
        d="M315.27 33L96 304h128l-31.51 173.23a2.36 2.36 0 002.33 2.77h0a2.36 2.36 0 001.89-.95L416 208H288l31.66-173.25a2.45 2.45 0 00-2.44-2.75h0a2.42 2.42 0 00-1.95 1z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let flashOff = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M432 448a15.92 15.92 0 01-11.31-4.69l-352-352a16 16 0 0122.62-22.62l352 352A16 16 0 01432 448zM294.34 84.28l-22.08 120.84a16 16 0 006.17 15.71 16.49 16.49 0 009.93 3.17h94.12l-38.37 47.42a4 4 0 00.28 5.34l17.07 17.07a4 4 0 005.94-.31l60.8-75.16a16.37 16.37 0 003.3-14.36 16 16 0 00-15.5-12H307.19L335.4 37.63c.05-.3.1-.59.13-.89A18.45 18.45 0 00302.73 23l-92.58 114.46a4 4 0 00.28 5.35l17.07 17.06a4 4 0 005.94-.31zM217.78 427.57l22-120.71a16 16 0 00-6.19-15.7 16.54 16.54 0 00-9.92-3.16h-94.1l38.36-47.42a4 4 0 00-.28-5.34l-17.07-17.07a4 4 0 00-5.93.31L83.8 293.64A16.37 16.37 0 0080.5 308 16 16 0 0096 320h108.83l-28.09 154.36v.11a18.37 18.37 0 0032.5 14.53l92.61-114.46a4 4 0 00-.28-5.35l-17.07-17.06a4 4 0 00-5.94.31z"
      />
    </svg>

  @react.component
  let flashlight = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M456.64 162.86L349.12 55.36c-13.15-13.14-28.68-7.17-41.82 6l-11.95 12c-26.13 26.13-27.62 58.38-29.42 83.31-.89 12.24-9.78 27.55-18.51 36.28L58.58 381.67c-16.35 16.33-12.69 39.42 3.73 55.84l12.17 12.17c16.36 16.35 39.43 20.16 55.86 3.74l188.83-188.8c8.74-8.74 24-17.55 36.29-18.52 24.87-1.86 58.62-4.85 83.26-29.49l11.94-11.94c13.15-13.14 19.12-28.67 5.98-41.81z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="224.68" cy="287.28" r="20" />
      <path fill stroke strokeLinecap strokeMiterlimit strokeWidth d="M289 81l142 142" />
    </svg>

  @react.component
  let flask = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
        d="M176 48h160M118 304h276M208 48v93.48a64.09 64.09 0 01-9.88 34.18L73.21 373.49C48.4 412.78 76.63 464 123.08 464h265.84c46.45 0 74.68-51.22 49.87-90.51L313.87 175.66a64.09 64.09 0 01-9.87-34.18V48"
      />
    </svg>

  @react.component
  let flower = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M215.08 156.92c-4.89-24-10.77-56.27-10.77-73.23A51.36 51.36 0 01256 32h0c28.55 0 51.69 23.69 51.69 51.69 0 16.5-5.85 48.95-10.77 73.23M215.08 355.08c-4.91 24.06-10.77 56.16-10.77 73.23A51.36 51.36 0 00256 480h0c28.55 0 51.69-23.69 51.69-51.69 0-16.54-5.85-48.93-10.77-73.23M355.08 215.08c24.06-4.91 56.16-10.77 73.23-10.77A51.36 51.36 0 01480 256h0c0 28.55-23.69 51.69-51.69 51.69-16.5 0-48.95-5.85-73.23-10.77M156.92 215.07c-24-4.89-56.25-10.76-73.23-10.76A51.36 51.36 0 0032 256h0c0 28.55 23.69 51.69 51.69 51.69 16.5 0 48.95-5.85 73.23-10.77"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M296.92 156.92c13.55-20.48 32.3-47.25 44.37-59.31a51.35 51.35 0 0173.1 0h0c20.19 20.19 19.8 53.3 0 73.1-11.66 11.67-38.67 30.67-59.31 44.37M156.92 296.92c-20.48 13.55-47.25 32.3-59.31 44.37a51.35 51.35 0 000 73.1h0c20.19 20.19 53.3 19.8 73.1 0 11.67-11.66 30.67-38.67 44.37-59.31M355.08 296.92c20.48 13.55 47.25 32.3 59.31 44.37a51.35 51.35 0 010 73.1h0c-20.19 20.19-53.3 19.8-73.1 0-11.69-11.69-30.66-38.65-44.37-59.31M215.08 156.92c-13.53-20.43-32.38-47.32-44.37-59.31a51.35 51.35 0 00-73.1 0h0c-20.19 20.19-19.8 53.3 0 73.1 11.61 11.61 38.7 30.68 59.31 44.37"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="256" cy="256" r="64" fill stroke strokeLinecap strokeMiterlimit strokeWidth />
    </svg>

  @react.component
  let folder = (
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
      <path
        d="M440 432H72a40 40 0 01-40-40V120a40 40 0 0140-40h75.89a40 40 0 0122.19 6.72l27.84 18.56a40 40 0 0022.19 6.72H440a40 40 0 0140 40v240a40 40 0 01-40 40zM32 192h448"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let folderOpen = (
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
      <path
        d="M64 192v-72a40 40 0 0140-40h75.89a40 40 0 0122.19 6.72l27.84 18.56a40 40 0 0022.19 6.72H408a40 40 0 0140 40v40"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M479.9 226.55L463.68 392a40 40 0 01-39.93 40H88.25a40 40 0 01-39.93-40L32.1 226.55A32 32 0 0164 192h384.1a32 32 0 0131.8 34.55z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let football = (
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
      <circle cx="256" cy="256" r="192" fill stroke strokeLinecap strokeMiterlimit strokeWidth />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M256 175.15l-76.09 63.83L200 320h112l20.09-81.02L256 175.15zM332.09 238.98l52.87-22.4 25.78-73.26M447 269.97l-62.04-53.39M179.91 238.98l-52.87-22.4-25.78-73.26M65 269.97l62.04-53.39M256 175.15v-57.57l64-42.64M192 74.93l64 42.65M312 320l28 48-28 71M410.74 368H342M200 320l-28 48 28.37 71.5M101.63 368H172"
      />
    </svg>

  @react.component
  let footsteps = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M200 246.84c8.81 58.62-7.33 90.67-52.91 97.41-50.65 7.49-71.52-26.44-80.33-85.06-11.85-78.88 16-127.94 55.71-131.1 36.14-2.87 68.71 60.14 77.53 118.75zM223.65 409.53c3.13 33.28-14.86 64.34-42 69.66-27.4 5.36-58.71-16.37-65.09-49.19s17.75-34.56 47.32-40.21 55.99-20.4 59.77 19.74zM312 150.83c-8.81 58.62 7.33 90.67 52.9 97.41 50.66 7.49 71.52-26.44 80.33-85.06 11.86-78.89-16-128.22-55.7-131.1-36.4-2.64-68.71 60.13-77.53 118.75zM288.35 313.53c-3.13 33.27 14.86 64.34 42 69.66 27.4 5.36 58.71-16.37 65.09-49.19s-17.75-34.56-47.32-40.22-55.99-20.4-59.77 19.75z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let funnel = (
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
      <path
        d="M35.4 87.12l168.65 196.44A16.07 16.07 0 01208 294v119.32a7.93 7.93 0 005.39 7.59l80.15 26.67A7.94 7.94 0 00304 440V294a16.07 16.07 0 014-10.44L476.6 87.12A14 14 0 00466 64H46.05A14 14 0 0035.4 87.12z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let gameController = (
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
      <path
        d="M467.51 248.83c-18.4-83.18-45.69-136.24-89.43-149.17A91.5 91.5 0 00352 96c-26.89 0-48.11 16-96 16s-69.15-16-96-16a99.09 99.09 0 00-27.2 3.66C89 112.59 61.94 165.7 43.33 248.83c-19 84.91-15.56 152 21.58 164.88 26 9 49.25-9.61 71.27-37 25-31.2 55.79-40.8 119.82-40.8s93.62 9.6 118.66 40.8c22 27.41 46.11 45.79 71.42 37.16 41.02-14.01 40.44-79.13 21.43-165.04z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="292" cy="224" r="20" />
      <path d="M336 288a20 20 0 1120-19.95A20 20 0 01336 288z" />
      <circle cx="336" cy="180" r="20" />
      <circle cx="380" cy="224" r="20" />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M160 176v96M208 224h-96" />
    </svg>

  @react.component
  let gift = (
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
      <path
        d="M256 104v56h56a56 56 0 10-56-56zM256 104v56h-56a56 56 0 1156-56z"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <rect
        x="64"
        y="160"
        width="384"
        height="112"
        rx="32"
        ry="32"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M416 272v144a48 48 0 01-48 48H144a48 48 0 01-48-48V272M256 160v304"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let gitBranch = (
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
      <circle cx="160" cy="96" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="160" cy="416" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M160 368V144" />
      <circle cx="352" cy="160" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        d="M352 208c0 128-192 48-192 160" fill stroke strokeLinecap strokeLinejoin strokeWidth
      />
    </svg>

  @react.component
  let gitCommit = (
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
      <circle cx="256" cy="256" r="96" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M160 256H48M464 256H352" />
    </svg>

  @react.component
  let gitCompare = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M304 160l-64-64 64-64M207 352l64 64-64 64"
      />
      <circle cx="112" cy="96" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="400" cy="416" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        d="M256 96h84a60 60 0 0160 60v212M255 416h-84a60 60 0 01-60-60V144"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let gitMerge = (
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
      <circle cx="129" cy="96" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="129" cy="416" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M129 144v224" />
      <circle cx="385" cy="288" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        d="M129 144c0 96 112 144 208 144" fill stroke strokeLinecap strokeLinejoin strokeWidth
      />
    </svg>

  @react.component
  let gitNetwork = (
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
      <circle cx="128" cy="96" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="256" cy="416" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M256 256v112" />
      <circle cx="384" cy="96" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        d="M128 144c0 74.67 68.92 112 128 112M384 144c0 74.67-68.92 112-128 112"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let gitPullRequest = (
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
      <circle cx="128" cy="416" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        fill stroke strokeLinecap strokeLinejoin strokeWidth d="M128 144v224M288 160l-64-64 64-64"
      />
      <circle cx="128" cy="96" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="384" cy="416" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        d="M240 96h84a60 60 0 0160 60v212" fill stroke strokeLinecap strokeLinejoin strokeWidth
      />
    </svg>

  @react.component
  let glasses = (
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
      <path
        d="M224 232a32 32 0 0164 0M448 200h16M64 200H48M64 200c0 96 16 128 80 128s80-32 80-128c0 0-16-16-80-16s-80 16-80 16zM448 200c0 96-16 128-80 128s-80-32-80-128c0 0 16-16 80-16s80 16 80 16z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let globe = (
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
      <path
        d="M256 48C141.13 48 48 141.13 48 256s93.13 208 208 208 208-93.13 208-208S370.87 48 256 48z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M256 48c-58.07 0-112.67 93.13-112.67 208S197.93 464 256 464s112.67-93.13 112.67-208S314.07 48 256 48z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M117.33 117.33c38.24 27.15 86.38 43.34 138.67 43.34s100.43-16.19 138.67-43.34M394.67 394.67c-38.24-27.15-86.38-43.34-138.67-43.34s-100.43 16.19-138.67 43.34"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path fill stroke strokeMiterlimit strokeWidth d="M256 48v416M464 256H48" />
    </svg>

  @react.component
  let golf = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M256 400V32l176 80-176 80" />
      <path
        d="M256 336c-87 0-175.3 43.2-191.64 124.74C62.39 470.57 68.57 480 80 480h352c11.44 0 17.62-9.43 15.65-19.26C431.3 379.2 343 336 256 336z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let grid = (
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
      <rect
        x="48"
        y="48"
        width="176"
        height="176"
        rx="20"
        ry="20"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="288"
        y="48"
        width="176"
        height="176"
        rx="20"
        ry="20"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="48"
        y="288"
        width="176"
        height="176"
        rx="20"
        ry="20"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="288"
        y="288"
        width="176"
        height="176"
        rx="20"
        ry="20"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let hammer = (
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
      <path
        d="M277.42 247a24.68 24.68 0 00-4.08-5.47L255 223.44a21.63 21.63 0 00-6.56-4.57 20.93 20.93 0 00-23.28 4.27c-6.36 6.26-18 17.68-39 38.43C146 301.3 71.43 367.89 37.71 396.29a16 16 0 00-1.09 23.54l39 39.43a16.13 16.13 0 0023.67-.89c29.24-34.37 96.3-109 136-148.23 20.39-20.06 31.82-31.58 38.29-37.94a21.76 21.76 0 003.84-25.2zM478.43 201l-34.31-34a5.44 5.44 0 00-4-1.59 5.59 5.59 0 00-4 1.59h0a11.41 11.41 0 01-9.55 3.27c-4.48-.49-9.25-1.88-12.33-4.86-7-6.86 1.09-20.36-5.07-29a242.88 242.88 0 00-23.08-26.72c-7.06-7-34.81-33.47-81.55-52.53a123.79 123.79 0 00-47-9.24c-26.35 0-46.61 11.76-54 18.51-5.88 5.32-12 13.77-12 13.77a91.29 91.29 0 0110.81-3.2 79.53 79.53 0 0123.28-1.49C241.19 76.8 259.94 84.1 270 92c16.21 13 23.18 30.39 24.27 52.83.8 16.69-15.23 37.76-30.44 54.94a7.85 7.85 0 00.4 10.83l21.24 21.23a8 8 0 0011.14.1c13.93-13.51 31.09-28.47 40.82-34.46s17.58-7.68 21.35-8.09a35.71 35.71 0 0121.3 4.62 13.65 13.65 0 013.08 2.38c6.46 6.56 6.07 17.28-.5 23.74l-2 1.89a5.5 5.5 0 000 7.84l34.31 34a5.5 5.5 0 004 1.58 5.65 5.65 0 004-1.58L478.43 209a5.82 5.82 0 000-8z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let handLeft = (
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
      <path
        d="M80 320V144a32 32 0 0132-32h0a32 32 0 0132 32v112M144 256V80a32 32 0 0132-32h0a32 32 0 0132 32v160M272 241V96a32 32 0 0132-32h0a32 32 0 0132 32v224M208 240V48a32 32 0 0132-32h0a32 32 0 0132 32v192"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M80 320c0 117.4 64 176 152 176s123.71-39.6 144-88l52.71-144c6.66-18.05 3.64-34.79-11.87-43.6h0c-15.52-8.82-35.91-4.28-44.31 11.68L336 320"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let handRight = (
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
      <path
        d="M432 320V144a32 32 0 00-32-32h0a32 32 0 00-32 32v112M368 256V80a32 32 0 00-32-32h0a32 32 0 00-32 32v160M240 241V96a32 32 0 00-32-32h0a32 32 0 00-32 32v224M304 240V48a32 32 0 00-32-32h0a32 32 0 00-32 32v192"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M432 320c0 117.4-64 176-152 176s-123.71-39.6-144-88L83.33 264c-6.66-18.05-3.64-34.79 11.87-43.6h0c15.52-8.82 35.91-4.28 44.31 11.68L176 320"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let happy = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle cx="184" cy="232" r="24" />
      <path
        d="M256.05 384c-45.42 0-83.62-29.53-95.71-69.83a8 8 0 017.82-10.17h175.69a8 8 0 017.82 10.17c-11.99 40.3-50.2 69.83-95.62 69.83z"
      />
      <circle cx="328" cy="232" r="24" />
      <circle cx="256" cy="256" r="208" fill stroke strokeMiterlimit strokeWidth />
    </svg>

  @react.component
  let hardwareChip = (
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
      <rect
        x="80"
        y="80"
        width="352"
        height="352"
        rx="48"
        ry="48"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="144"
        y="144"
        width="224"
        height="224"
        rx="16"
        ry="16"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M256 80V48M336 80V48M176 80V48M256 464v-32M336 464v-32M176 464v-32M432 256h32M432 336h32M432 176h32M48 256h32M48 336h32M48 176h32"
      />
    </svg>

  @react.component
  let headset = (
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
      <path
        d="M83 384c-13-33-35-93.37-35-128C48 141.12 149.33 48 256 48s208 93.12 208 208c0 34.63-23 97-35 128"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M108.39 270.13l-13.69 8h0c-30.23 17.7-31.7 72.41-3.38 122.2s75.87 75.81 106.1 58.12h0l13.69-8a16.16 16.16 0 005.78-21.87L130 276a15.74 15.74 0 00-21.61-5.87zM403.61 270.13l13.69 8h0c30.23 17.69 31.74 72.4 3.38 122.19s-75.87 75.81-106.1 58.12h0l-13.69-8a16.16 16.16 0 01-5.78-21.87L382 276a15.74 15.74 0 0121.61-5.87z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let heart = (
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
      <path
        d="M352.92 80C288 80 256 144 256 144s-32-64-96.92-64c-52.76 0-94.54 44.14-95.08 96.81-1.1 109.33 86.73 187.08 183 252.42a16 16 0 0018 0c96.26-65.34 184.09-143.09 183-252.42-.54-52.67-42.32-96.81-95.08-96.81z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let heartCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M256 360a16 16 0 01-9-2.78c-39.3-26.68-56.32-45-65.7-56.41-20-24.37-29.58-49.4-29.3-76.5.31-31.06 25.22-56.33 55.53-56.33 20.4 0 35 10.63 44.1 20.41a6 6 0 008.72 0c9.11-9.78 23.7-20.41 44.1-20.41 30.31 0 55.22 25.27 55.53 56.33.28 27.1-9.31 52.13-29.3 76.5-9.38 11.44-26.4 29.73-65.7 56.41A16 16 0 01256 360z"
      />
    </svg>

  @react.component
  let heartDislike = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M417.84 448a15.94 15.94 0 01-11.35-4.72L40.65 75.26a16 16 0 0122.7-22.56l365.83 368a16 16 0 01-11.34 27.3zM364.92 80c-48.09 0-80 29.55-96.92 51-16.88-21.48-48.83-51-96.92-51a107.37 107.37 0 00-31 4.55L168 112c22.26 0 45.81 9 63.94 26.67a123 123 0 0121.75 28.47 16 16 0 0028.6 0 123 123 0 0121.77-28.51C322.19 121 342.66 112 364.92 112c43.15 0 78.62 36.33 79.07 81 .54 53.69-22.75 99.55-57.38 139.52l22.63 22.77c3-3.44 5.7-6.64 8.14-9.6 40-48.75 59.15-98.8 58.61-153C475.37 130.52 425.54 80 364.92 80zM268 432C180.38 372.51 91 297.6 92 193a83.69 83.69 0 012.24-18.39L69 149.14a115.1 115.1 0 00-9 43.49c-.54 54.22 18.63 104.27 58.61 153 18.77 22.87 52.8 59.45 131.39 112.8a31.84 31.84 0 0036 0c20.35-13.81 37.7-26.5 52.58-38.11l-22.66-22.81C300.25 409.6 284.09 421.05 268 432z"
      />
    </svg>

  @react.component
  let heartDislikeCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M333.2 297.69c18.28-23.39 27.06-47.43 26.79-73.37-.31-31.06-25.22-56.33-55.53-56.33-20.4 0-35 10.64-44.11 20.42a5.93 5.93 0 01-8.7 0c-9.11-9.78-23.71-20.42-44.11-20.42L206 168a4 4 0 00-2.75 6.84l124 123.21a3.92 3.92 0 005.95-.36zM158.84 221a4 4 0 00-6.82 2.72v.64c-.28 27.1 9.31 52.13 29.3 76.5 9.38 11.44 26.4 29.73 65.7 56.41a15.93 15.93 0 0018 0c5.15-3.49 9.9-6.84 14.31-10a4 4 0 00.46-6.07zM336 368a15.92 15.92 0 01-11.31-4.69l-176-176a16 16 0 0122.62-22.62l176 176A16 16 0 01336 368z"
      />
    </svg>

  @react.component
  let heartHalf = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M352.92 64c-48.09 0-80 29.54-96.92 51-16.88-21.49-48.83-51-96.92-51C98.46 64 48.63 114.54 48 176.65c-.54 54.21 18.63 104.27 58.61 153 18.77 22.88 52.8 59.46 131.39 112.81a31.84 31.84 0 0036 0c78.59-53.35 112.62-89.93 131.39-112.81 40-48.74 59.15-98.8 58.61-153C463.37 114.54 413.54 64 352.92 64zM256 416V207.58c0-19.63 5.23-38.76 14.21-56.22a1.19 1.19 0 01.08-.16 123 123 0 0121.77-28.51C310.19 105 330.66 96 352.92 96c43.15 0 78.62 36.32 79.07 81C433 281.61 343.63 356.51 256 416z"
      />
    </svg>

  @react.component
  let help = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="40",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M160 164s1.44-33 33.54-59.46C212.6 88.83 235.49 84.28 256 84c18.73-.23 35.47 2.94 45.48 7.82C318.59 100.2 352 120.6 352 164c0 45.67-29.18 66.37-62.35 89.18S248 298.36 248 324"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="248" cy="399.99" r="32" />
    </svg>

  @react.component
  let helpBuoy = (
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
      <circle cx="256" cy="256" r="208" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="256" cy="256" r="80" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M208 54l8 132M296 186l8-132M208 458l8-132M296 326l8 132M458 208l-132 8M326 296l132 8M54 208l132 8M186 296l-132 8"
      />
    </svg>

  @react.component
  let helpCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="28",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 80a176 176 0 10176 176A176 176 0 00256 80z" fill stroke strokeMiterlimit strokeWidth
      />
      <path
        d="M200 202.29s.84-17.5 19.57-32.57C230.68 160.77 244 158.18 256 158c10.93-.14 20.69 1.67 26.53 4.45 10 4.76 29.47 16.38 29.47 41.09 0 26-17 37.81-36.37 50.8S251 281.43 251 296"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="250" cy="348" r="20" />
    </svg>

  @react.component
  let home = (
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
      <path
        d="M80 212v236a16 16 0 0016 16h96V328a24 24 0 0124-24h80a24 24 0 0124 24v136h96a16 16 0 0016-16V212"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M480 256L266.89 52c-5-5.28-16.69-5.34-21.78 0L32 256M400 179V64h-48v69"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let hourglass = (
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
      <path
        d="M145.61 464h220.78c19.8 0 35.55-16.29 33.42-35.06C386.06 308 304 310 304 256s83.11-51 95.8-172.94c2-18.78-13.61-35.06-33.41-35.06H145.61c-19.8 0-35.37 16.28-33.41 35.06C124.89 205 208 201 208 256s-82.06 52-95.8 172.94c-2.14 18.77 13.61 35.06 33.41 35.06z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M343.3 432H169.13c-15.6 0-20-18-9.06-29.16C186.55 376 240 356.78 240 326V224c0-19.85-38-35-61.51-67.2-3.88-5.31-3.49-12.8 6.37-12.8h142.73c8.41 0 10.23 7.43 6.4 12.75C310.82 189 272 204.05 272 224v102c0 30.53 55.71 47 80.4 76.87 9.95 12.04 6.47 29.13-9.1 29.13z"
      />
    </svg>

  @react.component
  let iceCream = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M352 256l-96 224-62-145" />
      <path
        d="M299.42 223.48C291.74 239.75 275.18 252 256 252c-13.1 0-27-5-33.63-9.76C216.27 237.87 208 240 208 250v62a24.07 24.07 0 01-24 24h0a24.07 24.07 0 01-24-24v-56h-2c-35.35 0-62-28.65-62-64a64 64 0 0164-64h8v-8a88 88 0 01176 0v8h8a64 64 0 010 128c-21.78 0-42-13-52.59-32.51z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let idCard = (
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
      <rect x="96" y="32" width="320" height="448" rx="48" fill stroke strokeLinejoin strokeWidth />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M208 80h96" />
      <path
        d="M333.48 284.51A39.65 39.65 0 00304 272c-11.6 0-22.09 4.41-29.54 12.43s-11.2 19.12-10.34 31C265.83 338.91 283.72 358 304 358s38.14-19.09 39.87-42.55c.88-11.78-2.82-22.77-10.39-30.94zM371.69 448H236.31a12.05 12.05 0 01-9.31-4.17 13 13 0 01-2.76-10.92c3.25-17.56 13.38-32.31 29.3-42.66C267.68 381.06 285.6 376 304 376s36.32 5.06 50.46 14.25c15.92 10.35 26.05 25.1 29.3 42.66a13 13 0 01-2.76 10.92 12.05 12.05 0 01-9.31 4.17z"
      />
    </svg>

  @react.component
  let image = (
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
      <rect
        x="48"
        y="80"
        width="416"
        height="352"
        rx="48"
        ry="48"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <circle cx="336" cy="176" r="32" fill stroke strokeMiterlimit strokeWidth />
      <path
        d="M304 335.79l-90.66-90.49a32 32 0 00-43.87-1.3L48 352M224 432l123.34-123.34a32 32 0 0143.11-2L464 368"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let images = (
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
      <path
        d="M432 112V96a48.14 48.14 0 00-48-48H64a48.14 48.14 0 00-48 48v256a48.14 48.14 0 0048 48h16"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="96"
        y="128"
        width="400"
        height="336"
        rx="45.99"
        ry="45.99"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <ellipse
        cx="372.92" cy="219.64" rx="30.77" ry="30.55" fill stroke strokeMiterlimit strokeWidth
      />
      <path
        d="M342.15 372.17L255 285.78a30.93 30.93 0 00-42.18-1.21L96 387.64M265.23 464l118.59-117.73a31 31 0 0141.46-1.87L496 402.91"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let infinite = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 256s-48-96-126-96c-54.12 0-98 43-98 96s43.88 96 98 96c37.51 0 71-22.41 94-48M256 256s48 96 126 96c54.12 0 98-43 98-96s-43.88-96-98-96c-37.51 0-71 22.41-94 48"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let information = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="40",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M196 220h64v172" />
      <path fill stroke strokeLinecap strokeMiterlimit strokeWidth d="M187 396h138" />
      <path d="M256 160a32 32 0 1132-32 32 32 0 01-32 32z" />
    </svg>

  @react.component
  let informationCircle = (
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
      <path
        d="M248 64C146.39 64 64 146.39 64 248s82.39 184 184 184 184-82.39 184-184S349.61 64 248 64z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M220 220h32v116" />
      <path fill stroke strokeLinecap strokeMiterlimit strokeWidth d="M208 340h88" />
      <path d="M248 130a26 26 0 1026 26 26 26 0 00-26-26z" />
    </svg>

  @react.component
  let invertMode = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle fill stroke strokeMiterlimit strokeWidth cx="256" cy="256" r="208" />
      <path
        d="M256 176v160a80 80 0 010-160zM256 48v128a80 80 0 010 160v128c114.88 0 208-93.12 208-208S370.88 48 256 48z"
      />
    </svg>

  @react.component
  let journal = (
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
      <rect
        x="96"
        y="48"
        width="320"
        height="416"
        rx="48"
        ry="48"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path fill stroke strokeLinejoin strokeWidth d="M320 48v416" />
    </svg>

  @react.component
  let key = (
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
      <path
        d="M218.1 167.17c0 13 0 25.6 4.1 37.4-43.1 50.6-156.9 184.3-167.5 194.5a20.17 20.17 0 00-6.7 15c0 8.5 5.2 16.7 9.6 21.3 6.6 6.9 34.8 33 40 28 15.4-15 18.5-19 24.8-25.2 9.5-9.3-1-28.3 2.3-36s6.8-9.2 12.5-10.4 15.8 2.9 23.7 3c8.3.1 12.8-3.4 19-9.2 5-4.6 8.6-8.9 8.7-15.6.2-9-12.8-20.9-3.1-30.4s23.7 6.2 34 5 22.8-15.5 24.1-21.6-11.7-21.8-9.7-30.7c.7-3 6.8-10 11.4-11s25 6.9 29.6 5.9c5.6-1.2 12.1-7.1 17.4-10.4 15.5 6.7 29.6 9.4 47.7 9.4 68.5 0 124-53.4 124-119.2S408.5 48 340 48s-121.9 53.37-121.9 119.17zM400 144a32 32 0 11-32-32 32 32 0 0132 32z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let keypad = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle cx="256" cy="448" r="32" fill stroke strokeMiterlimit strokeWidth />
      <circle cx="256" cy="320" r="32" fill stroke strokeMiterlimit strokeWidth />
      <path
        d="M288 192a32 32 0 11-32-32 32 32 0 0132 32z" fill stroke strokeMiterlimit strokeWidth
      />
      <circle cx="256" cy="64" r="32" fill stroke strokeMiterlimit strokeWidth />
      <circle cx="384" cy="320" r="32" fill stroke strokeMiterlimit strokeWidth />
      <circle cx="384" cy="192" r="32" fill stroke strokeMiterlimit strokeWidth />
      <circle cx="384" cy="64" r="32" fill stroke strokeMiterlimit strokeWidth />
      <circle cx="128" cy="320" r="32" fill stroke strokeMiterlimit strokeWidth />
      <circle cx="128" cy="192" r="32" fill stroke strokeMiterlimit strokeWidth />
      <circle cx="128" cy="64" r="32" fill stroke strokeMiterlimit strokeWidth />
    </svg>

  @react.component
  let language = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M48 112h288M192 64v48M272 448l96-224 96 224M301.5 384h133M281.3 112S257 206 199 277 80 384 80 384"
      />
      <path
        d="M256 336s-35-27-72-75-56-85-56-85" fill stroke strokeLinecap strokeLinejoin strokeWidth
      />
    </svg>

  @react.component
  let laptop = (
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
      <rect
        x="48"
        y="96"
        width="416"
        height="304"
        rx="32.14"
        ry="32.14"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path stroke strokeLinecap strokeMiterlimit strokeWidth d="M16 416h480" />
    </svg>

  @react.component
  let layers = (
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
      <path
        d="M434.8 137.65l-149.36-68.1c-16.19-7.4-42.69-7.4-58.88 0L77.3 137.65c-17.6 8-17.6 21.09 0 29.09l148 67.5c16.89 7.7 44.69 7.7 61.58 0l148-67.5c17.52-8 17.52-21.1-.08-29.09zM160 308.52l-82.7 37.11c-17.6 8-17.6 21.1 0 29.1l148 67.5c16.89 7.69 44.69 7.69 61.58 0l148-67.5c17.6-8 17.6-21.1 0-29.1l-79.94-38.47"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M160 204.48l-82.8 37.16c-17.6 8-17.6 21.1 0 29.1l148 67.49c16.89 7.7 44.69 7.7 61.58 0l148-67.49c17.7-8 17.7-21.1.1-29.1L352 204.48"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let leaf = (
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
      <path
        d="M321.89 171.42C233 114 141 155.22 56 65.22c-19.8-21-8.3 235.5 98.1 332.7 77.79 71 197.9 63.08 238.4-5.92s18.28-163.17-70.61-220.58zM173 253c86 81 175 129 292 147"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let library = (
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
      <rect
        x="32" y="96" width="64" height="368" rx="16" ry="16" fill stroke strokeLinejoin strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M112 224h128M112 400h128" />
      <rect
        x="112"
        y="160"
        width="128"
        height="304"
        rx="16"
        ry="16"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="256"
        y="48"
        width="96"
        height="416"
        rx="16"
        ry="16"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M422.46 96.11l-40.4 4.25c-11.12 1.17-19.18 11.57-17.93 23.1l34.92 321.59c1.26 11.53 11.37 20 22.49 18.84l40.4-4.25c11.12-1.17 19.18-11.57 17.93-23.1L445 115c-1.31-11.58-11.42-20.06-22.54-18.89z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let link = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="36",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M208 352h-64a96 96 0 010-192h64M304 160h64a96 96 0 010 192h-64M163.29 256h187.42"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let list = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M160 144h288M160 256h288M160 368h288"
      />
      <circle cx="80" cy="144" r="16" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="80" cy="256" r="16" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="80" cy="368" r="16" fill stroke strokeLinecap strokeLinejoin strokeWidth />
    </svg>

  @react.component
  let listCircle = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M224 184h128M224 256h128M224 327h128"
      />
      <path
        d="M448 258c0-106-86-192-192-192S64 152 64 258s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="168" cy="184" r="8" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="168" cy="257" r="8" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="168" cy="328" r="8" fill stroke strokeLinecap strokeLinejoin strokeWidth />
    </svg>

  @react.component
  let locate = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="48",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M256 96V56M256 456v-40" />
      <path
        d="M256 112a144 144 0 10144 144 144 144 0 00-144-144z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M416 256h40M56 256h40" />
    </svg>

  @react.component
  let location = (
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
      <path
        d="M256 48c-79.5 0-144 61.39-144 137 0 87 96 224.87 131.25 272.49a15.77 15.77 0 0025.5 0C304 409.89 400 272.07 400 185c0-75.61-64.5-137-144-137z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <circle cx="256" cy="192" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
    </svg>

  @react.component
  let lockClosed = (
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
      <path
        d="M336 208v-95a80 80 0 00-160 0v95" fill stroke strokeLinecap strokeLinejoin strokeWidth
      />
      <rect
        x="96"
        y="208"
        width="320"
        height="272"
        rx="48"
        ry="48"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let lockOpen = (
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
      <path d="M336 112a80 80 0 00-160 0v96" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <rect
        x="96"
        y="208"
        width="320"
        height="272"
        rx="48"
        ry="48"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let logIn = (
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
      <path
        d="M192 176v-40a40 40 0 0140-40h160a40 40 0 0140 40v240a40 40 0 01-40 40H240c-22.09 0-48-17.91-48-40v-40"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        fill stroke strokeLinecap strokeLinejoin strokeWidth d="M288 336l80-80-80-80M80 256h272"
      />
    </svg>

  @react.component
  let logOut = (
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
      <path
        d="M304 336v40a40 40 0 01-40 40H104a40 40 0 01-40-40V136a40 40 0 0140-40h152c22.09 0 48 17.91 48 40v40M368 336l80-80-80-80M176 256h256"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let magnet = (
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
      <path
        d="M421.83 293.82A144 144 0 00218.18 90.17M353.94 225.94a48 48 0 00-67.88-67.88"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
        d="M192 464v-48M90.18 421.82l33.94-33.94M48 320h48"
      />
      <path
        d="M286.06 158.06L172.92 271.19a32 32 0 01-45.25 0L105 248.57a32 32 0 010-45.26L218.18 90.17M421.83 293.82L308.69 407a32 32 0 01-45.26 0l-22.62-22.63a32 32 0 010-45.26l113.13-113.17M139.6 169.98l67.88 67.89M275.36 305.75l67.89 67.88"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let mail = (
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
      <rect
        x="48"
        y="96"
        width="416"
        height="320"
        rx="40"
        ry="40"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M112 160l144 112 144-112" />
    </svg>

  @react.component
  let mailOpen = (
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
      <path
        d="M441.6 171.61L266.87 85.37a24.57 24.57 0 00-21.74 0L70.4 171.61A40 40 0 0048 207.39V392c0 22.09 18.14 40 40.52 40h335c22.38 0 40.52-17.91 40.52-40V207.39a40 40 0 00-22.44-35.78z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M397.33 368L268.07 267.46a24 24 0 00-29.47 0L109.33 368M309.33 295l136-103M61.33 192l139 105"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let mailUnread = (
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
      <path
        d="M320 96H88a40 40 0 00-40 40v240a40 40 0 0040 40h334.73a40 40 0 0040-40V239"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M112 160l144 112 87-65.67" />
      <circle cx="431.95" cy="128.05" r="47.95" />
      <path
        d="M432 192a63.95 63.95 0 1163.95-63.95A64 64 0 01432 192zm0-95.9a32 32 0 1031.95 32 32 32 0 00-31.95-32z"
      />
    </svg>

  @react.component
  let male = (
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
      <circle cx="216" cy="296" r="152" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        fill stroke strokeLinecap strokeLinejoin strokeWidth d="M448 160V64h-96M324 188L448 64"
      />
    </svg>

  @react.component
  let maleFemale = (
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
      <circle cx="216" cy="200" r="136" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M216 352v128M272 416H160M432 112V32h-80M335.28 128.72L432 32"
      />
    </svg>

  @react.component
  let man = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M208 208v264a23.73 23.73 0 0024 24h0a23.73 23.73 0 0024-24"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M256 336v136a23.73 23.73 0 0024 24h0a23.73 23.73 0 0024-24V208"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M208 192v88a23.72 23.72 0 01-24 24h0a23.72 23.72 0 01-24-24v-88a48 48 0 0148-48h96a48 48 0 0148 48v88a23.72 23.72 0 01-24 24h0a23.72 23.72 0 01-24-24v-88"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="256" cy="56" r="40" fill stroke strokeLinecap strokeMiterlimit strokeWidth />
    </svg>

  @react.component
  let map = (
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
      <path
        d="M313.27 124.64L198.73 51.36a32 32 0 00-29.28.35L56.51 127.49A16 16 0 0048 141.63v295.8a16 16 0 0023.49 14.14l97.82-63.79a32 32 0 0129.5-.24l111.86 73a32 32 0 0029.27-.11l115.43-75.94a16 16 0 008.63-14.2V74.57a16 16 0 00-23.49-14.14l-98 63.86a32 32 0 01-29.24.35zM328 128v336M184 48v336"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let medal = (
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
      <circle cx="256" cy="352" r="112" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="256" cy="352" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        d="M147 323L41.84 159.32a32 32 0 01-1.7-31.61l31-62A32 32 0 0199.78 48h312.44a32 32 0 0128.62 17.69l31 62a32 32 0 01-1.7 31.61L365 323M371 144H37M428.74 52.6L305 250M140.55 144L207 250"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let medical = (
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
      <path
        d="M429.93 174.27l-16.47-28.59a15.49 15.49 0 00-21.15-5.7l-98.39 57a4 4 0 01-6-3.5L288 80a16 16 0 00-16-16h-32a16 16 0 00-16 16l.07 113.57a4 4 0 01-6 3.5l-98.39-57a15.49 15.49 0 00-21.15 5.7l-16.46 28.6a15.42 15.42 0 005.69 21.1l98.49 57.08a4 4 0 010 6.9l-98.49 57.08a15.54 15.54 0 00-5.69 21.1l16.47 28.59a15.49 15.49 0 0021.15 5.7l98.39-57a4 4 0 016 3.5L224 432a16 16 0 0016 16h32a16 16 0 0016-16l-.07-113.67a4 4 0 016-3.5l98.39 57a15.49 15.49 0 0021.15-5.7l16.47-28.59a15.42 15.42 0 00-5.69-21.1l-98.49-57.08a4 4 0 010-6.9l98.49-57.08a15.51 15.51 0 005.68-21.11z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let medkit = (
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
      <rect
        x="32"
        y="112"
        width="448"
        height="352"
        rx="48"
        ry="48"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M144 112V80a32 32 0 0132-32h160a32 32 0 0132 32v32M256 208v160M336 288H176"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let megaphone = (
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
      <path
        d="M407.94 52.22S321.3 160 240 160H80a16 16 0 00-16 16v96a16 16 0 0016 16h160c81.3 0 167.94 108.23 167.94 108.23 6.06 8 24.06 2.52 24.06-9.83V62c0-12.31-17-18.82-24.06-9.78zM64 256s-16-6-16-32 16-32 16-32M448 246s16-4.33 16-22-16-22-16-22M256 160v128M112 160v128"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M144 288v168a8 8 0 008 8h53a16 16 0 0015.29-20.73C211.91 416.39 192 386.08 192 336h16a16 16 0 0016-16v-16a16 16 0 00-16-16h-16"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let menu = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        fill stroke strokeLinecap strokeMiterlimit strokeWidth d="M80 160h352M80 256h352M80 352h352"
      />
    </svg>

  @react.component
  let mic = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M192 448h128M384 208v32c0 70.4-57.6 128-128 128h0c-70.4 0-128-57.6-128-128v-32M256 368v80"
      />
      <path
        d="M256 64a63.68 63.68 0 00-64 64v111c0 35.2 29 65 64 65s64-29 64-65V128c0-36-28-64-64-64z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let micCircle = (
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
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M224 368h64M336 224.3v23.92c0 39.42-40.58 71.48-80 71.48h0c-39.42 0-80-32.06-80-71.48V224.3M256 320v48"
      />
      <rect x="208" y="128" width="96" height="160" rx="48" ry="48" />
    </svg>

  @react.component
  let micOff = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path fill stroke strokeLinecap strokeMiterlimit strokeWidth d="M432 400L96 64" />
      <path
        d="M400 240v-31.55c0-8.61-6.62-16-15.23-16.43A16 16 0 00368 208v32a111.58 111.58 0 01-2.45 23.31 4.05 4.05 0 001.07 3.69l21.82 21.81a2 2 0 003.29-.72A143.27 143.27 0 00400 240zM256 352a112.36 112.36 0 01-112-112v-31.55c0-8.61-6.62-16-15.23-16.43A16 16 0 00112 208v32c0 74 56.1 135.12 128 143.11V432h-47.55c-8.61 0-16 6.62-16.43 15.23A16 16 0 00192 464h127.55c8.61 0 16-6.62 16.43-15.23A16 16 0 00320 432h-48v-48.89a143.08 143.08 0 0052-16.22 4 4 0 00.91-6.35L307 342.63a4 4 0 00-4.51-.78A110.78 110.78 0 01256 352zM256 80a47.18 47.18 0 0148 48v74.72a4 4 0 001.17 2.82L332.59 233a2 2 0 003.41-1.42V128.91C336 85 301 48.6 257.14 48a79.66 79.66 0 00-68.47 36.57 4 4 0 00.54 5l19.54 19.54a2 2 0 003.25-.63A47.44 47.44 0 01256 80z"
      />
      <path
        d="M207.27 242.9L179.41 215a2 2 0 00-3.41 1.42V239a80.89 80.89 0 0023.45 56.9 78.55 78.55 0 0077.8 21.19 2 2 0 00.86-3.35l-24.91-24.91a4.08 4.08 0 00-2.42-1.15c-21.65-2.52-39.48-20.44-42.37-42.43a4 4 0 00-1.14-2.35z"
      />
    </svg>

  @react.component
  let micOffCircle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 464c-114.69 0-208-93.31-208-208S141.31 48 256 48s208 93.31 208 208-93.31 208-208 208zm0-384c-97 0-176 79-176 176s79 176 176 176 176-78.95 176-176S353.05 80 256 80z"
      />
      <path
        d="M352 369a15.93 15.93 0 01-11.84-5.24l-192-210a16 16 0 0123.68-21.52l192 210A16 16 0 01352 369zM352 248.22v-23.8a16.3 16.3 0 00-13.64-16.24c-9.88-1.48-18.36 6.51-18.36 16.12v23.92a43.35 43.35 0 01-3.07 15.91 4 4 0 00.76 4.16l19.19 21.1a2 2 0 003.19-.3A77.12 77.12 0 00352 248.22zM304 240v-64a48.14 48.14 0 00-48-48 48.08 48.08 0 00-41 23.1 4 4 0 00.47 4.77l84.42 92.86a2 2 0 003.46-1A47.84 47.84 0 00304 240zM246.57 285.2l-36.46-40.11a1 1 0 00-1.74.8 48.26 48.26 0 0037.25 41 1 1 0 00.95-1.69z"
      />
      <path
        d="M287.55 352H272v-17.74a100.33 100.33 0 0012.53-3.06 2 2 0 00.89-3.26l-21.07-23.19a3.94 3.94 0 00-3.29-1.29c-1.69.15-3.39.24-5.06.24-36 0-64-29.82-64-55.48V224.4a16.26 16.26 0 00-15.61-16.4A15.91 15.91 0 00160 224v24.22c0 23.36 10.94 45.61 30.79 62.66A103.71 103.71 0 00240 334.26V352h-15.55c-8.61 0-16 6.62-16.43 15.23A16 16 0 00224 384h64a16 16 0 0016-16.77c-.42-8.61-7.84-15.23-16.45-15.23z"
      />
    </svg>

  @react.component
  let moon = (
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
      <path
        d="M160 136c0-30.62 4.51-61.61 16-88C99.57 81.27 48 159.32 48 248c0 119.29 96.71 216 216 216 88.68 0 166.73-51.57 200-128-26.39 11.49-57.38 16-88 16-119.29 0-216-96.71-216-216z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let move = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M176 112l80-80 80 80M255.98 32l.02 448M176 400l80 80 80-80M400 176l80 80-80 80M112 176l-80 80 80 80M32 256h448"
      />
    </svg>

  @react.component
  let musicalNote = (
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
      <path
        d="M240 343.31V424a32.28 32.28 0 01-21.88 30.65l-21.47 7.23c-25.9 8.71-52.65-10.75-52.65-38.32h0A34.29 34.29 0 01167.25 391l50.87-17.12A32.29 32.29 0 00240 343.24V92a16.13 16.13 0 0112.06-15.66L360.49 48.2A6 6 0 01368 54v57.76a16.13 16.13 0 01-12.12 15.67l-91.64 23.13A32.25 32.25 0 00240 181.91v39.39"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let musicalNotes = (
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
      <path
        d="M192 218v-6c0-14.84 10-27 24.24-30.59l174.59-46.68A20 20 0 01416 154v22"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M416 295.94v80c0 13.91-8.93 25.59-22 30l-22 8c-25.9 8.72-52-10.42-52-38h0a33.37 33.37 0 0123-32l51-18.15c13.07-4.4 22-15.94 22-29.85V58a10 10 0 00-12.6-9.61L204 102a16.48 16.48 0 00-12 16v226c0 13.91-8.93 25.6-22 30l-52 18c-13.88 4.68-22 17.22-22 32h0c0 27.58 26.52 46.55 52 38l22-8c13.07-4.4 22-16.08 22-30v-80"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let navigate = (
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
      <path
        d="M448 64L64 240.14h200a8 8 0 018 8V448z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let navigateCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M336.76 161l-186.53 82.35c-10.47 4.8-6.95 20.67 4.57 20.67H244a4 4 0 014 4v89.18c0 11.52 16 15 20.78 4.56L351 175.24A10.73 10.73 0 00336.76 161z"
      />
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let newspaper = (
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
      <path
        d="M368 415.86V72a24.07 24.07 0 00-24-24H72a24.07 24.07 0 00-24 24v352a40.12 40.12 0 0040 40h328"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M416 464h0a48 48 0 01-48-48V128h72a24 24 0 0124 24v264a48 48 0 01-48 48z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M240 128h64M240 192h64M112 256h192M112 320h192M112 384h192"
      />
      <path
        d="M176 208h-64a16 16 0 01-16-16v-64a16 16 0 0116-16h64a16 16 0 0116 16v64a16 16 0 01-16 16z"
      />
    </svg>

  @react.component
  let notifications = (
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
      <path
        d="M427.68 351.43C402 320 383.87 304 383.87 217.35 383.87 138 343.35 109.73 310 96c-4.43-1.82-8.6-6-9.95-10.55C294.2 65.54 277.8 48 256 48s-38.21 17.55-44 37.47c-1.35 4.6-5.52 8.71-9.95 10.53-33.39 13.75-73.87 41.92-73.87 121.35C128.13 304 110 320 84.32 351.43 73.68 364.45 83 384 101.61 384h308.88c18.51 0 27.77-19.61 17.19-32.57zM320 384v16a64 64 0 01-128 0v-16"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let notificationsCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M365.2 313c-16.33-19.34-27.86-27.47-27.86-80.8 0-48.86-25.78-66.23-47-74.67a11.39 11.39 0 01-6.34-6.68C280.29 138.6 269.88 128 256 128s-24.31 10.6-28 22.86a11.35 11.35 0 01-6.33 6.68c-21.24 8.46-47 25.8-47 74.67 0 53.33-11.54 61.46-27.87 80.8-6.77 8-.65 23 11.19 23H354C365.77 336 371.94 321 365.2 313zM220.24 352a4 4 0 00-4 4.42C218.49 375.14 235.11 384 256 384c20.67 0 37.14-9.15 39.66-27.52a4 4 0 00-4-4.48z"
      />
    </svg>

  @react.component
  let notificationsOff = (
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
      <path
        d="M128.51 204.59q-.37 6.15-.37 12.76C128.14 304 110 320 84.33 351.43 73.69 364.45 83 384 101.62 384H320M414.5 335.3c-18.48-23.45-30.62-47.05-30.62-118 0-79.3-40.52-107.57-73.88-121.3-4.43-1.82-8.6-6-9.95-10.55C294.21 65.54 277.82 48 256 48s-38.2 17.55-44 37.47c-1.35 4.6-5.52 8.71-10 10.53a149.57 149.57 0 00-18 8.79M320 384v16a64 64 0 01-128 0v-16"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeMiterlimit strokeWidth d="M448 448L64 64" />
    </svg>

  @react.component
  let notificationsOffCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M220.24 352a4 4 0 00-4 4.42C218.49 375.14 235.11 384 256 384s37.5-8.86 39.73-27.58a4 4 0 00-4-4.42zM352 378a15.93 15.93 0 01-11.84-5.24l-192-212a16 16 0 0123.68-21.52l192 212A16 16 0 01352 378zM174.68 232.21c0 53.33-11.54 61.46-27.87 80.8-6.77 8-.65 23 11.19 23h118.83a4 4 0 002.95-6.7l-98-106.87a4 4 0 00-6.94 2.52c-.1 2.33-.16 4.75-.16 7.25zM365.2 313c-16.33-19.34-27.86-27.47-27.86-80.8 0-48.86-25.78-66.23-47-74.67a11.39 11.39 0 01-6.34-6.68C280.29 138.6 269.88 128 256 128s-24.31 10.6-28 22.86a11.35 11.35 0 01-6.33 6.68c-1.28.51-2.57 1.05-3.88 1.63a4 4 0 00-1.3 6.36L361 323.21a4 4 0 006.94-2.95 12 12 0 00-2.74-7.26z"
      />
    </svg>

  @react.component
  let nuclear = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle cx="256" cy="256" r="192" fill stroke strokeLinecap strokeMiterlimit strokeWidth />
      <circle cx="256" cy="256" r="64" fill stroke strokeMiterlimit strokeWidth />
      <path
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
        d="M224 192L171 85M288 192l53-107M327.55 255.81l119.41.13M299.09 313.13l72.25 95.06M184.45 255.81l-119.41.13M212.91 313.13l-72.25 95.06"
      />
    </svg>

  @react.component
  let nutrition = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M352 128c-32.26-2.89-64 16-96 16s-63.75-19-96-16c-64 6-96 64-96 160 0 80 64 192 111.2 192s51.94-24 80.8-24 33.59 24 80.8 24S448 368 448 288c0-96-29-154-96-160z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M323.92 83.14c-21 21-45.66 27-58.82 28.79a8 8 0 01-9.1-8.73 97.6 97.6 0 0128.61-59.33c22-22 46-26.9 58.72-27.85a8 8 0 018.67 8.92 98 98 0 01-28.08 58.2z"
      />
      <ellipse cx="216" cy="304" rx="24" ry="48" />
      <ellipse cx="296" cy="304" rx="24" ry="48" />
    </svg>

  @react.component
  let openLink = (
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
      <path
        d="M384 224v184a40 40 0 01-40 40H104a40 40 0 01-40-40V168a40 40 0 0140-40h167.48M336 64h112v112M224 288L440 72"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let options = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M368 128h80M64 128h240M368 384h80M64 384h240M208 256h240M64 256h80"
      />
      <circle cx="336" cy="128" r="32" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="176" cy="256" r="32" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="336" cy="384" r="32" fill stroke strokeLinecap strokeLinejoin strokeWidth />
    </svg>

  @react.component
  let paperPlane = (
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
      <path
        d="M53.12 199.94l400-151.39a8 8 0 0110.33 10.33l-151.39 400a8 8 0 01-15-.34l-67.4-166.09a16 16 0 00-10.11-10.11L53.46 215a8 8 0 01-.34-15.06zM460 52L227 285"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let partlySunny = (
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
      <path
        d="M90.61 306.85A16.07 16.07 0 00104 293.6C116.09 220.17 169.63 176 232 176c57.93 0 96.62 37.75 112.2 77.74a15.84 15.84 0 0012.2 9.87c50 8.15 91.6 41.54 91.6 99.59 0 59.4-48.6 100.8-108 100.8H106c-49.5 0-90-24.7-90-79.2 0-48.47 38.67-72.22 74.61-77.95z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M384.8 271.4a80 80 0 10-123.55-92M464 208h32M336 48v32M222.86 94.86l22.63 22.63M449.14 94.86l-22.63 22.63"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let pause = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M176 96h16v320h-16zM320 96h16v320h-16z"
      />
    </svg>

  @react.component
  let pauseCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeMiterlimit strokeWidth d="M208 192v128M304 192v128" />
    </svg>

  @react.component
  let paw = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M457.74 170.1a30.26 30.26 0 00-11.16-2.1h-.4c-20.17.3-42.79 19.19-54.66 47.76-14.23 34.18-7.68 69.15 14.74 78.14a30.21 30.21 0 0011.15 2.1c20.27 0 43.2-19 55.17-47.76 14.13-34.18 7.48-69.15-14.84-78.14zM327.6 303.48C299.8 257.35 287.8 240 256 240s-43.9 17.46-71.7 63.48c-23.8 39.36-71.9 42.64-83.9 76.07a50.91 50.91 0 00-3.6 19.25c0 27.19 20.8 49.2 46.4 49.2 31.8 0 75.1-25.39 112.9-25.39S337 448 368.8 448c25.6 0 46.3-22 46.3-49.2a51 51 0 00-3.7-19.25c-12-33.55-60-36.71-83.8-76.07zM192.51 196a26.53 26.53 0 004-.3c23.21-3.37 37.7-35.53 32.44-71.85C224 89.61 203.22 64 181.49 64a26.53 26.53 0 00-4 .3c-23.21 3.37-37.7 35.53-32.44 71.85C150 170.29 170.78 196 192.51 196zM366.92 136.15c5.26-36.32-9.23-68.48-32.44-71.85a26.53 26.53 0 00-4-.3c-21.73 0-42.47 25.61-47.43 59.85-5.26 36.32 9.23 68.48 32.44 71.85a26.53 26.53 0 004 .3c21.73 0 42.51-25.71 47.43-59.85zM105.77 293.9c22.39-9 28.93-44 14.72-78.14C108.53 187 85.62 168 65.38 168a30.21 30.21 0 00-11.15 2.1c-22.39 9-28.93 44-14.72 78.14C51.47 277 74.38 296 94.62 296a30.21 30.21 0 0011.15-2.1z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let pencil = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M364.13 125.25L87 403l-23 45 44.99-23 277.76-277.13-22.62-22.62zM420.69 68.69l-22.62 22.62 22.62 22.63 22.62-22.63a16 16 0 000-22.62h0a16 16 0 00-22.62 0z"
      />
    </svg>

  @react.component
  let people = (
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
      <path
        d="M402 168c-2.93 40.67-33.1 72-66 72s-63.12-31.32-66-72c-3-42.31 26.37-72 66-72s69 30.46 66 72z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M336 304c-65.17 0-127.84 32.37-143.54 95.41-2.08 8.34 3.15 16.59 11.72 16.59h263.65c8.57 0 13.77-8.25 11.72-16.59C463.85 335.36 401.18 304 336 304z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M200 185.94c-2.34 32.48-26.72 58.06-53 58.06s-50.7-25.57-53-58.06C91.61 152.15 115.34 128 147 128s55.39 24.77 53 57.94z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M206 306c-18.05-8.27-37.93-11.45-59-11.45-52 0-102.1 25.85-114.65 76.2-1.65 6.66 2.53 13.25 9.37 13.25H154"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let peopleCircle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 464c-114.69 0-208-93.31-208-208S141.31 48 256 48s208 93.31 208 208-93.31 208-208 208zm0-384c-97 0-176 79-176 176s79 176 176 176 176-78.95 176-176S353.05 80 256 80z"
      />
      <path
        d="M323.67 292c-17.4 0-34.21-7.72-47.34-21.73a83.76 83.76 0 01-22-51.32c-1.47-20.7 4.88-39.75 17.88-53.62S303.38 144 323.67 144c20.14 0 38.37 7.62 51.33 21.46s19.47 33 18 53.51a84 84 0 01-22 51.3C357.86 284.28 341.06 292 323.67 292zm55.81-74zM163.82 295.36c-29.76 0-55.93-27.51-58.33-61.33-1.23-17.32 4.15-33.33 15.17-45.08s26.22-18 43.15-18 32.12 6.44 43.07 18.14 16.5 27.82 15.25 45c-2.44 33.77-28.6 61.27-58.31 61.27zM420.37 355.28c-1.59-4.7-5.46-9.71-13.22-14.46-23.46-14.33-52.32-21.91-83.48-21.91-30.57 0-60.23 7.9-83.53 22.25-26.25 16.17-43.89 39.75-51 68.18-1.68 6.69-4.13 19.14-1.51 26.11a192.18 192.18 0 00232.75-80.17zM163.63 401.37c7.07-28.21 22.12-51.73 45.47-70.75a8 8 0 00-2.59-13.77c-12-3.83-25.7-5.88-42.69-5.88-23.82 0-49.11 6.45-68.14 18.17-5.4 3.33-10.7 4.61-14.78 5.75a192.84 192.84 0 0077.78 86.64l1.79-.14a102.82 102.82 0 013.16-20.02z"
      />
    </svg>

  @react.component
  let person = (
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
      <path
        d="M344 144c-3.92 52.87-44 96-88 96s-84.15-43.12-88-96c-4-55 35-96 88-96s92 42 88 96z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M256 304c-87 0-175.3 48-191.64 138.6C62.39 453.52 68.57 464 80 464h352c11.44 0 17.62-10.48 15.65-21.4C431.3 352 343 304 256 304z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let personAdd = (
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
      <path
        d="M376 144c-3.92 52.87-44 96-88 96s-84.15-43.12-88-96c-4-55 35-96 88-96s92 42 88 96z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M288 304c-87 0-175.3 48-191.64 138.6-2 10.92 4.21 21.4 15.65 21.4H464c11.44 0 17.62-10.48 15.65-21.4C463.3 352 375 304 288 304z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M88 176v112M144 232H32" />
    </svg>

  @react.component
  let personCircle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M258.9 48C141.92 46.42 46.42 141.92 48 258.9c1.56 112.19 92.91 203.54 205.1 205.1 117 1.6 212.48-93.9 210.88-210.88C462.44 140.91 371.09 49.56 258.9 48zm126.42 327.25a4 4 0 01-6.14-.32 124.27 124.27 0 00-32.35-29.59C321.37 329 289.11 320 256 320s-65.37 9-90.83 25.34a124.24 124.24 0 00-32.35 29.58 4 4 0 01-6.14.32A175.32 175.32 0 0180 259c-1.63-97.31 78.22-178.76 175.57-179S432 158.81 432 256a175.32 175.32 0 01-46.68 119.25z"
      />
      <path
        d="M256 144c-19.72 0-37.55 7.39-50.22 20.82s-19 32-17.57 51.93C191.11 256 221.52 288 256 288s64.83-32 67.79-71.24c1.48-19.74-4.8-38.14-17.68-51.82C293.39 151.44 275.59 144 256 144z"
      />
    </svg>

  @react.component
  let personRemove = (
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
      <path
        d="M376 144c-3.92 52.87-44 96-88 96s-84.15-43.12-88-96c-4-55 35-96 88-96s92 42 88 96z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M288 304c-87 0-175.3 48-191.64 138.6-2 10.92 4.21 21.4 15.65 21.4H464c11.44 0 17.62-10.48 15.65-21.4C463.3 352 375 304 288 304z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M144 232H32" />
    </svg>

  @react.component
  let phoneLandscape = (
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
      <rect
        x="128"
        y="16"
        width="256"
        height="480"
        rx="48"
        ry="48"
        transform="rotate(-90 256 256)"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M16 336v-24a8 8 0 018-8h0a16 16 0 0016-16v-64a16 16 0 00-16-16h0a8 8 0 01-8-8v-24"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let phonePortrait = (
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
      <rect
        x="128"
        y="16"
        width="256"
        height="480"
        rx="48"
        ry="48"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M176 16h24a8 8 0 018 8h0a16 16 0 0016 16h64a16 16 0 0016-16h0a8 8 0 018-8h24"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let pieChart = (
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
      <path
        d="M256.05 80.65Q263.94 80 272 80c106 0 192 86 192 192s-86 192-192 192A192.09 192.09 0 0189.12 330.65"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M256 48C141.12 48 48 141.12 48 256a207.29 207.29 0 0018.09 85L256 256z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let pin = (
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
      <circle cx="256" cy="96" r="64" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        d="M272 164a9 9 0 00-9-9h-14a9 9 0 00-9 9v293.56a32.09 32.09 0 002.49 12.38l10.07 24a3.92 3.92 0 006.88 0l10.07-24a32.09 32.09 0 002.49-12.38z"
      />
      <circle cx="280" cy="72" r="24" />
    </svg>

  @react.component
  let pint = (
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
      <path
        d="M132.43 162c-6.24-34-4.49-45.55-3.07-68.39L132.27 47a16 16 0 0115.94-15h215.57a16 16 0 0115.94 15l2.91 46.61c1.43 22.86 3.19 34.39-3.06 68.45-5.93 32.29-43.71 133.27-43.71 238.32V472a8 8 0 01-8 8H184.12a8 8 0 01-8-8v-71.63c.01-92.47-37.46-204.3-43.69-238.37zM135.21 96h241.58"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let pizza = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M404.76 123.08C358.37 104.18 309.69 96 256 96s-106.1 9-148.9 26.68c-8.08 3.3-15.26 9-10.07 19.5C101.24 150.71 203 375 241.66 455a15.94 15.94 0 0028.72 0l144.05-312.22c3.19-6.9.9-15.4-9.67-19.7z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M436.38 82.68C384.31 62.08 320.17 48 256 48S128.65 60.78 75.48 82.08C70.79 84 62 88.43 64.41 95.88L74.09 120c4 8.2 8.67 8.2 15.06 8.2 1.79 0 4.29-1 7.28-2.18A442.46 442.46 0 01256 96c56.76 0 114.91 12 159.6 30 3.59 1.4 5.59 2.18 7.28 2.18 6.58 0 10.38 2.19 15-8.1L447.65 96c2.01-6-4.99-10.82-11.27-13.32z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="192" cy="192" r="32" />
      <circle cx="320" cy="208" r="32" />
      <circle cx="256" cy="320" r="32" />
    </svg>

  @react.component
  let planet = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M413.48 284.46c58.87 47.24 91.61 89 80.31 108.55-17.85 30.85-138.78-5.48-270.1-81.15S.37 149.84 18.21 119c11.16-19.28 62.58-12.32 131.64 14.09"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="256" cy="256" r="160" fill stroke strokeMiterlimit strokeWidth />
    </svg>

  @react.component
  let play = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M112 111v290c0 17.44 17 28.52 31 20.16l247.9-148.37c12.12-7.25 12.12-26.33 0-33.58L143 90.84c-14-8.36-31 2.72-31 20.16z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let playBack = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M480 145.52v221c0 13.28-13 21.72-23.63 15.35L267.5 268.8c-9.24-5.53-9.24-20.07 0-25.6l188.87-113C467 123.8 480 132.24 480 145.52zM251.43 145.52v221c0 13.28-13 21.72-23.63 15.35L38.93 268.8c-9.24-5.53-9.24-20.07 0-25.6l188.87-113c10.64-6.4 23.63 2.04 23.63 15.32z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let playBackCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 448c106 0 192-86 192-192S362 64 256 64 64 150 64 256s86 192 192 192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M117.23 246.7l114.45-69.14a10.78 10.78 0 0116.32 9.31v53.32l103.68-62.63a10.78 10.78 0 0116.32 9.31v138.26a10.78 10.78 0 01-16.32 9.31L248 271.81v53.32a10.78 10.78 0 01-16.32 9.31L117.23 265.3a10.89 10.89 0 010-18.6z"
      />
    </svg>

  @react.component
  let playCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M216.32 334.44l114.45-69.14a10.89 10.89 0 000-18.6l-114.45-69.14a10.78 10.78 0 00-16.32 9.31v138.26a10.78 10.78 0 0016.32 9.31z"
      />
    </svg>

  @react.component
  let playForward = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M32 145.52v221c0 13.28 13 21.72 23.63 15.35l188.87-113c9.24-5.53 9.24-20.07 0-25.6l-188.87-113C45 123.8 32 132.24 32 145.52zM260.57 145.52v221c0 13.28 13 21.72 23.63 15.35l188.87-113c9.24-5.53 9.24-20.07 0-25.6l-188.87-113c-10.64-6.47-23.63 1.97-23.63 15.25z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let playForwardCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M394.77 246.7l-114.45-69.14a10.78 10.78 0 00-16.32 9.31v53.32l-103.68-62.63a10.78 10.78 0 00-16.32 9.31v138.26a10.78 10.78 0 0016.32 9.31L264 271.81v53.32a10.78 10.78 0 0016.32 9.31l114.45-69.14a10.89 10.89 0 000-18.6z"
      />
    </svg>

  @react.component
  let playSkipBack = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M400 111v290c0 17.44-17 28.52-31 20.16L121.09 272.79c-12.12-7.25-12.12-26.33 0-33.58L369 90.84c14-8.36 31 2.72 31 20.16z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeMiterlimit strokeWidth d="M112 80v352" />
    </svg>

  @react.component
  let playSkipBackCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 448c106 0 192-86 192-192S362 64 256 64 64 150 64 256s86 192 192 192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M192 176a16 16 0 0116 16v53l111.68-67.46a10.78 10.78 0 0116.32 9.33v138.26a10.78 10.78 0 01-16.32 9.31L208 267v53a16 16 0 01-32 0V192a16 16 0 0116-16z"
      />
    </svg>

  @react.component
  let playSkipForward = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M112 111v290c0 17.44 17 28.52 31 20.16l247.9-148.37c12.12-7.25 12.12-26.33 0-33.58L143 90.84c-14-8.36-31 2.72-31 20.16z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeMiterlimit strokeWidth d="M400 80v352" />
    </svg>

  @react.component
  let playSkipForwardCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M320 176a16 16 0 00-16 16v53l-111.68-67.44a10.78 10.78 0 00-16.32 9.31v138.26a10.78 10.78 0 0016.32 9.31L304 267v53a16 16 0 0032 0V192a16 16 0 00-16-16z"
      />
    </svg>

  @react.component
  let podium = (
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
      <path
        d="M32 160v296a8 8 0 008 8h136V160a16 16 0 00-16-16H48a16 16 0 00-16 16zM320 48H192a16 16 0 00-16 16v400h160V64a16 16 0 00-16-16zM464 208H352a16 16 0 00-16 16v240h136a8 8 0 008-8V224a16 16 0 00-16-16z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let power = (
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
      <path
        d="M378 108a191.41 191.41 0 0170 148c0 106-86 192-192 192S64 362 64 256a192 192 0 0169-148M256 64v192"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let pricetag = (
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
      <path
        d="M435.25 48h-122.9a14.46 14.46 0 00-10.2 4.2L56.45 297.9a28.85 28.85 0 000 40.7l117 117a28.85 28.85 0 0040.7 0L459.75 210a14.46 14.46 0 004.2-10.2v-123a28.66 28.66 0 00-28.7-28.8z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path d="M384 160a32 32 0 1132-32 32 32 0 01-32 32z" />
    </svg>

  @react.component
  let pricetags = (
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
      <path
        d="M403.29 32H280.36a14.46 14.46 0 00-10.2 4.2L24.4 281.9a28.85 28.85 0 000 40.7l117 117a28.86 28.86 0 0040.71 0L427.8 194a14.46 14.46 0 004.2-10.2v-123A28.66 28.66 0 00403.29 32z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path d="M352 144a32 32 0 1132-32 32 32 0 01-32 32z" />
      <path
        d="M230 480l262-262a13.81 13.81 0 004-10V80"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let print = (
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
      <path
        d="M384 368h24a40.12 40.12 0 0040-40V168a40.12 40.12 0 00-40-40H104a40.12 40.12 0 00-40 40v160a40.12 40.12 0 0040 40h24"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="128"
        y="240"
        width="256"
        height="208"
        rx="24.32"
        ry="24.32"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M384 128v-24a40.12 40.12 0 00-40-40H168a40.12 40.12 0 00-40 40v24"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <circle cx="392" cy="184" r="24" />
    </svg>

  @react.component
  let prism = (
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
      <path
        d="M229.73 45.88L37.53 327.79a31.79 31.79 0 0011.31 46L241 476.26a31.77 31.77 0 0029.92 0l192.2-102.51a31.79 31.79 0 0011.31-46L282.27 45.88a31.8 31.8 0 00-52.54 0zM256 32v448"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let pulse = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M48 320h64l64-256 64 384 64-224 32 96h64"
      />
      <circle cx="432" cy="320" r="32" fill stroke strokeLinecap strokeLinejoin strokeWidth />
    </svg>

  @react.component
  let push = (
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
      <path
        d="M336 336h40a40 40 0 0040-40V88a40 40 0 00-40-40H136a40 40 0 00-40 40v208a40 40 0 0040 40h40"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        fill stroke strokeLinecap strokeLinejoin strokeWidth d="M176 240l80-80 80 80M256 464V176"
      />
    </svg>

  @react.component
  let qrCode = (
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
      <rect x="336" y="336" width="80" height="80" rx="8" ry="8" />
      <rect x="272" y="272" width="64" height="64" rx="8" ry="8" />
      <rect x="416" y="416" width="64" height="64" rx="8" ry="8" />
      <rect x="432" y="272" width="48" height="48" rx="8" ry="8" />
      <rect x="272" y="432" width="48" height="48" rx="8" ry="8" />
      <rect x="336" y="96" width="80" height="80" rx="8" ry="8" />
      <rect
        x="288"
        y="48"
        width="176"
        height="176"
        rx="16"
        ry="16"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect x="96" y="96" width="80" height="80" rx="8" ry="8" />
      <rect
        x="48"
        y="48"
        width="176"
        height="176"
        rx="16"
        ry="16"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect x="96" y="336" width="80" height="80" rx="8" ry="8" />
      <rect
        x="48"
        y="288"
        width="176"
        height="176"
        rx="16"
        ry="16"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let radio = (
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
      <circle cx="256" cy="256.02" r="32" />
      <path
        d="M184.25 192.25a96 96 0 000 127.52M327.77 319.77a96 96 0 000-127.52M133.28 141.28a168 168 0 000 229.44M378.72 370.72a168 168 0 000-229.44M435 416a240.34 240.34 0 000-320M77 96a240.34 240.34 0 000 320"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let radioButtonOff = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let radioButtonOn = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="256" cy="256" r="144" />
    </svg>

  @react.component
  let rainy = (
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
      <path
        d="M114.61 162.85A16.07 16.07 0 00128 149.6C140.09 76.17 193.63 32 256 32c57.93 0 96.62 37.75 112.2 77.74a15.84 15.84 0 0012.2 9.87c50 8.15 91.6 41.54 91.6 99.59 0 59.4-48.6 100.8-108 100.8H130c-49.5 0-90-24.7-90-79.2 0-48.47 38.67-72.22 74.61-77.95z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M144 384l-32 48M224 384l-64 96M304 384l-32 48M384 384l-64 96"
      />
    </svg>

  @react.component
  let reader = (
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
      <rect
        x="96"
        y="48"
        width="320"
        height="416"
        rx="48"
        ry="48"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        fill stroke strokeLinecap strokeLinejoin strokeWidth d="M176 128h160M176 208h160M176 288h80"
      />
    </svg>

  @react.component
  let receipt = (
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
      <path
        fill
        stroke
        strokeLinejoin
        strokeWidth
        d="M160 336V48l32 16 32-16 31.94 16 32.37-16L320 64l31.79-16 31.93 16L416 48l32.01 16L480 48v224"
      />
      <path
        d="M480 272v112a80 80 0 01-80 80h0a80 80 0 01-80-80v-48H48a15.86 15.86 0 00-16 16c0 64 6.74 112 80 112h288"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M224 144h192M288 224h128" />
    </svg>

  @react.component
  let recording = (
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
      <circle cx="128" cy="256" r="96" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="384" cy="256" r="96" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M128 352h256" />
    </svg>

  @react.component
  let refresh = (
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
      <path
        d="M320 146s24.36-12-64-12a160 160 0 10160 160"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M256 58l80 80-80 80" />
    </svg>

  @react.component
  let refreshCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="28",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M288 193s12.18-6-32-6a80 80 0 1080 80"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M256 149l40 40-40 40" />
      <path
        d="M256 64C150 64 64 150 64 256s86 192 192 192 192-86 192-192S362 64 256 64z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let reload = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M400 148l-21.12-24.57A191.43 191.43 0 00240 64C134 64 48 150 48 256s86 192 192 192a192.09 192.09 0 00181.07-128"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M464 97.42V208a16 16 0 01-16 16H337.42c-14.26 0-21.4-17.23-11.32-27.31L436.69 86.1C446.77 76 464 83.16 464 97.42z"
      />
    </svg>

  @react.component
  let reloadCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M341.54 197.85l-11.37-13.23a103.37 103.37 0 1022.71 105.84"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M367.32 162a8.44 8.44 0 00-6 2.54l-59.54 59.54a8.61 8.61 0 006.09 14.71h59.54a8.62 8.62 0 008.62-8.62v-59.56a8.61 8.61 0 00-8.68-8.63z"
      />
    </svg>

  @react.component
  let remove = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M400 256H112" />
    </svg>

  @react.component
  let removeCircle = (
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
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M336 256H176" />
    </svg>

  @react.component
  let reorderFour = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M96 304h320M96 208h320M96 112h320M96 400h320"
      />
    </svg>

  @react.component
  let reorderThree = (
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
      <path
        fill stroke strokeLinecap strokeLinejoin strokeWidth d="M96 256h320M96 176h320M96 336h320"
      />
    </svg>

  @react.component
  let reorderTwo = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M112 304h288M112 208h288" />
    </svg>

  @react.component
  let repeat = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M320 120l48 48-48 48" />
      <path
        d="M352 168H144a80.24 80.24 0 00-80 80v16M192 392l-48-48 48-48"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M160 344h208a80.24 80.24 0 0080-80v-16"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let resize = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M304 96h112v112M405.77 106.2L111.98 400.02M208 416H96V304"
      />
    </svg>

  @react.component
  let restaurant = (
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
      <path
        d="M57.49 47.74l368.43 368.43a37.28 37.28 0 010 52.72h0a37.29 37.29 0 01-52.72 0l-90-91.55a32 32 0 01-9.2-22.43v-5.53a32 32 0 00-9.52-22.78l-11.62-10.73a32 32 0 00-29.8-7.44h0a48.53 48.53 0 01-46.56-12.63l-85.43-85.44C40.39 159.68 21.74 83.15 57.49 47.74z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M400 32l-77.25 77.25A64 64 0 00304 154.51v14.86a16 16 0 01-4.69 11.32L288 192M320 224l11.31-11.31a16 16 0 0111.32-4.69h14.86a64 64 0 0045.26-18.75L480 112M440 72l-80 80M200 368l-99.72 100.28a40 40 0 01-56.56 0h0a40 40 0 010-56.56L128 328"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let returnDownBack = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M112 352l-64-64 64-64" />
      <path
        d="M64 288h294c58.76 0 106-49.33 106-108v-20"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let returnDownForward = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M400 352l64-64-64-64" />
      <path
        d="M448 288H154c-58.76 0-106-49.33-106-108v-20"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let returnUpBack = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M112 160l-64 64 64 64" />
      <path
        d="M64 224h294c58.76 0 106 49.33 106 108v20"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let returnUpForward = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M400 160l64 64-64 64" />
      <path
        d="M448 224H154c-58.76 0-106 49.33-106 108v20"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let ribbon = (
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
      <circle cx="256" cy="160" r="128" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        d="M143.65 227.82L48 400l86.86-.42a16 16 0 0113.82 7.8L192 480l88.33-194.32"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M366.54 224L464 400l-86.86-.42a16 16 0 00-13.82 7.8L320 480l-64-140.8"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <circle cx="256" cy="160" r="64" fill stroke strokeLinecap strokeLinejoin strokeWidth />
    </svg>

  @react.component
  let rocket = (
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
      <path
        d="M461.81 53.81a4.4 4.4 0 00-3.3-3.39c-54.38-13.3-180 34.09-248.13 102.17a294.9 294.9 0 00-33.09 39.08c-21-1.9-42-.3-59.88 7.5-50.49 22.2-65.18 80.18-69.28 105.07a9 9 0 009.8 10.4l81.07-8.9a180.29 180.29 0 001.1 18.3 18.15 18.15 0 005.3 11.09l31.39 31.39a18.15 18.15 0 0011.1 5.3 179.91 179.91 0 0018.19 1.1l-8.89 81a9 9 0 0010.39 9.79c24.9-4 83-18.69 105.07-69.17 7.8-17.9 9.4-38.79 7.6-59.69a293.91 293.91 0 0039.19-33.09c68.38-68 115.47-190.86 102.37-247.95zM298.66 213.67a42.7 42.7 0 1160.38 0 42.65 42.65 0 01-60.38 0z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M109.64 352a45.06 45.06 0 00-26.35 12.84C65.67 382.52 64 448 64 448s65.52-1.67 83.15-19.31A44.73 44.73 0 00160 402.32"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let rose = (
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
      <path
        d="M416 128c-18.9 4.25-36.8 8.94-53.7 13.95-40.5 12-75.5 27.15-105.4 41.65-19.3 9.37-26.2 13.51-51.5 28.23-58.4 33.69-93.4 77.4-93.4 142.81C112 428.55 167.6 480 256 480s144-55.81 144-129.72S339 225.24 416 128z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M264 180.19c-19.69-27-38.2-38.69-52.7-46.59C162.6 107.1 96 96 96 96c41.5 43.7 37.2 90.1 32 128 0 0-3.87 32.88 1.91 58.41"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M372 139.15C356.55 102.6 336 64 336 64s-63.32 0-135.69 64M253.48 87.57C221.25 45.81 176 32 176 32c-15.3 20.8-28.79 51.58-34.87 74.17"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let sad = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle cx="184" cy="232" r="24" />
      <path
        d="M256 288c45.42 0 83.62 29.53 95.71 69.83a8 8 0 01-7.87 10.17H168.15a8 8 0 01-7.82-10.17C172.32 317.53 210.53 288 256 288z"
      />
      <circle cx="328" cy="232" r="24" />
      <circle cx="256" cy="256" r="208" fill stroke strokeMiterlimit strokeWidth />
    </svg>

  @react.component
  let save = (
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
      <path
        d="M380.93 57.37A32 32 0 00358.3 48H94.22A46.21 46.21 0 0048 94.22v323.56A46.21 46.21 0 0094.22 464h323.56A46.36 46.36 0 00464 417.78V153.7a32 32 0 00-9.37-22.63zM256 416a64 64 0 1164-64 63.92 63.92 0 01-64 64zm48-224H112a16 16 0 01-16-16v-64a16 16 0 0116-16h192a16 16 0 0116 16v64a16 16 0 01-16 16z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let scale = (
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
      <rect x="48" y="48" width="416" height="416" rx="96" fill stroke strokeLinejoin strokeWidth />
      <path
        d="M388.94 151.56c-24.46-22.28-68.72-51.4-132.94-51.4s-108.48 29.12-132.94 51.4a34.66 34.66 0 00-3.06 48.08l33.32 39.21a26.07 26.07 0 0033.6 5.21c15.92-9.83 40.91-21.64 69.1-21.64s53.18 11.81 69.1 21.64a26.07 26.07 0 0033.6-5.21L392 199.64a34.66 34.66 0 00-3.06-48.08z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let scan = (
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
      <path
        d="M336 448h56a56 56 0 0056-56v-56M448 176v-56a56 56 0 00-56-56h-56M176 448h-56a56 56 0 01-56-56v-56M64 176v-56a56 56 0 0156-56h56"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let scanCircle = (
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
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M296 352h28a28 28 0 0028-28v-28M352 216v-28a28 28 0 00-28-28h-28M216 352h-28a28 28 0 01-28-28v-28M160 216v-28a28 28 0 0128-28h28"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let school = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M32 192L256 64l224 128-224 128L32 192z"
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M112 240v128l144 80 144-80V240M480 368V192M256 320v128"
      />
    </svg>

  @react.component
  let search = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeMiterlimit strokeWidth d="M338.29 338.29L448 448" />
    </svg>

  @react.component
  let searchCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 80a176 176 0 10176 176A176 176 0 00256 80z" fill stroke strokeMiterlimit strokeWidth
      />
      <path
        d="M232 160a72 72 0 1072 72 72 72 0 00-72-72z" fill stroke strokeMiterlimit strokeWidth
      />
      <path fill stroke strokeLinecap strokeMiterlimit strokeWidth d="M283.64 283.64L336 336" />
    </svg>

  @react.component
  let send = (
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
      <path
        d="M470.3 271.15L43.16 447.31a7.83 7.83 0 01-11.16-7V327a8 8 0 016.51-7.86l247.62-47c17.36-3.29 17.36-28.15 0-31.44l-247.63-47a8 8 0 01-6.5-7.85V72.59c0-5.74 5.88-10.26 11.16-8L470.3 241.76a16 16 0 010 29.39z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let server = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <ellipse
        cx="256" cy="128" rx="192" ry="80" fill stroke strokeLinecap strokeMiterlimit strokeWidth
      />
      <path
        d="M448 214c0 44.18-86 80-192 80S64 258.18 64 214M448 300c0 44.18-86 80-192 80S64 344.18 64 300"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M64 127.24v257.52C64 428.52 150 464 256 464s192-35.48 192-79.24V127.24"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let settings = (
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
      <path
        d="M262.29 192.31a64 64 0 1057.4 57.4 64.13 64.13 0 00-57.4-57.4zM416.39 256a154.34 154.34 0 01-1.53 20.79l45.21 35.46a10.81 10.81 0 012.45 13.75l-42.77 74a10.81 10.81 0 01-13.14 4.59l-44.9-18.08a16.11 16.11 0 00-15.17 1.75A164.48 164.48 0 01325 400.8a15.94 15.94 0 00-8.82 12.14l-6.73 47.89a11.08 11.08 0 01-10.68 9.17h-85.54a11.11 11.11 0 01-10.69-8.87l-6.72-47.82a16.07 16.07 0 00-9-12.22 155.3 155.3 0 01-21.46-12.57 16 16 0 00-15.11-1.71l-44.89 18.07a10.81 10.81 0 01-13.14-4.58l-42.77-74a10.8 10.8 0 012.45-13.75l38.21-30a16.05 16.05 0 006-14.08c-.36-4.17-.58-8.33-.58-12.5s.21-8.27.58-12.35a16 16 0 00-6.07-13.94l-38.19-30A10.81 10.81 0 0149.48 186l42.77-74a10.81 10.81 0 0113.14-4.59l44.9 18.08a16.11 16.11 0 0015.17-1.75A164.48 164.48 0 01187 111.2a15.94 15.94 0 008.82-12.14l6.73-47.89A11.08 11.08 0 01213.23 42h85.54a11.11 11.11 0 0110.69 8.87l6.72 47.82a16.07 16.07 0 009 12.22 155.3 155.3 0 0121.46 12.57 16 16 0 0015.11 1.71l44.89-18.07a10.81 10.81 0 0113.14 4.58l42.77 74a10.8 10.8 0 01-2.45 13.75l-38.21 30a16.05 16.05 0 00-6.05 14.08c.33 4.14.55 8.3.55 12.47z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let shapes = (
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
      <path
        fill
        stroke
        strokeLinejoin
        strokeWidth
        d="M336 320H32L184 48l152 272zM265.32 194.51A144 144 0 11192 320"
      />
    </svg>

  @react.component
  let share = (
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
      <path
        d="M336 192h40a40 40 0 0140 40v192a40 40 0 01-40 40H136a40 40 0 01-40-40V232a40 40 0 0140-40h40M336 128l-80-80-80 80M256 321V48"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let shareSocial = (
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
      <circle cx="128" cy="256" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="384" cy="112" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <circle cx="384" cy="400" r="48" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M169.83 279.53l172.34 96.94M342.17 135.53l-172.34 96.94"
      />
    </svg>

  @react.component
  let shield = (
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
      <path
        d="M463.1 112.37C373.68 96.33 336.71 84.45 256 48c-80.71 36.45-117.68 48.33-207.1 64.37C32.7 369.13 240.58 457.79 256 464c15.42-6.21 223.3-94.87 207.1-351.63z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let shieldCheckmark = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M336 176L225.2 304 176 255.8" />
      <path
        d="M463.1 112.37C373.68 96.33 336.71 84.45 256 48c-80.71 36.45-117.68 48.33-207.1 64.37C32.7 369.13 240.58 457.79 256 464c15.42-6.21 223.3-94.87 207.1-351.63z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let shieldHalf = (
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
      <path
        d="M463.1 112.37C373.68 96.33 336.71 84.45 256 48c-80.71 36.45-117.68 48.33-207.1 64.37C32.7 369.13 240.58 457.79 256 464c15.42-6.21 223.3-94.87 207.1-351.63z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path d="M256 48c-80.71 36.45-117.68 48.33-207.1 64.37C32.7 369.13 240.58 457.79 256 464z" />
    </svg>

  @react.component
  let shirt = (
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
      <path
        d="M314.56 48s-22.78 8-58.56 8-58.56-8-58.56-8a31.94 31.94 0 00-10.57 1.8L32 104l16.63 88 48.88 5.52a24 24 0 0121.29 24.58L112 464h288l-6.8-241.9a24 24 0 0121.29-24.58l48.88-5.52L480 104 325.13 49.8a31.94 31.94 0 00-10.57-1.8zM333.31 52.66a80 80 0 01-154.62 0"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let shuffle = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M400 304l48 48-48 48M400 112l48 48-48 48M64 352h85.19a80 80 0 0066.56-35.62L256 256"
      />
      <path
        d="M64 160h85.19a80 80 0 0166.56 35.62l80.5 120.76A80 80 0 00362.81 352H416M416 160h-53.19a80 80 0 00-66.56 35.62L288 208"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let skull = (
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
      <path
        d="M448 225.64v99a64 64 0 01-40.23 59.42l-23.68 9.47A32 32 0 00364.6 417l-10 50.14A16 16 0 01338.88 480H173.12a16 16 0 01-15.69-12.86L147.4 417a32 32 0 00-19.49-23.44l-23.68-9.47A64 64 0 0164 324.67V224c0-105.92 85.77-191.81 191.65-192S448 119.85 448 225.64z"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="168" cy="280" r="40" fill stroke strokeLinecap strokeMiterlimit strokeWidth />
      <circle cx="344" cy="280" r="40" fill stroke strokeLinecap strokeMiterlimit strokeWidth />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M256 336l-16 48h32l-16-48zM256 448v32M208 448v32M304 448v32"
      />
    </svg>

  @react.component
  let snow = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M256 32v448M313.72 80A111.47 111.47 0 01256 96a111.47 111.47 0 01-57.72-16M198.28 432a112.11 112.11 0 01115.44 0M449.99 144L62.01 368M437.27 218a112.09 112.09 0 01-57.71-100M74.73 294a112.09 112.09 0 0157.71 100M62.01 144l387.98 224M74.73 218a112.09 112.09 0 0057.71-100M437.27 294a112.09 112.09 0 00-57.71 100"
      />
    </svg>

  @react.component
  let sparkles = (
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
      <path
        d="M259.92 262.91L216.4 149.77a9 9 0 00-16.8 0l-43.52 113.14a9 9 0 01-5.17 5.17L37.77 311.6a9 9 0 000 16.8l113.14 43.52a9 9 0 015.17 5.17l43.52 113.14a9 9 0 0016.8 0l43.52-113.14a9 9 0 015.17-5.17l113.14-43.52a9 9 0 000-16.8l-113.14-43.52a9 9 0 01-5.17-5.17zM108 68L88 16 68 68 16 88l52 20 20 52 20-52 52-20-52-20zM426.67 117.33L400 48l-26.67 69.33L304 144l69.33 26.67L400 240l26.67-69.33L496 144l-69.33-26.67z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let speedometer = (
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
      <path
        d="M326.1 231.9l-47.5 75.5a31 31 0 01-7 7 30.11 30.11 0 01-35-49l75.5-47.5a10.23 10.23 0 0111.7 0 10.06 10.06 0 012.3 14z"
      />
      <path
        d="M256 64C132.3 64 32 164.2 32 287.9a223.18 223.18 0 0056.3 148.5c1.1 1.2 2.1 2.4 3.2 3.5a25.19 25.19 0 0037.1-.1 173.13 173.13 0 01254.8 0 25.19 25.19 0 0037.1.1l3.2-3.5A223.18 223.18 0 00480 287.9C480 164.2 379.7 64 256 64z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
        d="M256 128v32M416 288h-32M128 288H96M165.49 197.49l-22.63-22.63M346.51 197.49l22.63-22.63"
      />
    </svg>

  @react.component
  let square = (
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
      <path
        d="M416 448H96a32.09 32.09 0 01-32-32V96a32.09 32.09 0 0132-32h320a32.09 32.09 0 0132 32v320a32.09 32.09 0 01-32 32z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let star = (
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
      <path
        d="M480 208H308L256 48l-52 160H32l140 96-54 160 138-100 138 100-54-160z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let starHalf = (
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
      <path
        d="M480 208H308L256 48l-52 160H32l140 96-54 160 138-100 138 100-54-160z"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path d="M256 48v316L118 464l54-160-140-96h172l52-160z" />
    </svg>

  @react.component
  let statsChart = (
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
      <rect
        x="64"
        y="320"
        width="48"
        height="160"
        rx="8"
        ry="8"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="288"
        y="224"
        width="48"
        height="256"
        rx="8"
        ry="8"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="400"
        y="112"
        width="48"
        height="368"
        rx="8"
        ry="8"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="176"
        y="32"
        width="48"
        height="448"
        rx="8"
        ry="8"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let stop = (
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
      <rect
        x="96"
        y="96"
        width="320"
        height="320"
        rx="24"
        ry="24"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let stopCircle = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M310.4 336H201.6a25.62 25.62 0 01-25.6-25.6V201.6a25.62 25.62 0 0125.6-25.6h108.8a25.62 25.62 0 0125.6 25.6v108.8a25.62 25.62 0 01-25.6 25.6z"
      />
    </svg>

  @react.component
  let stopwatch = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="48",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M256 232v-80" />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M256 88V72M132 132l-12-12" />
      <circle cx="256" cy="272" r="32" fill stroke strokeMiterlimit strokeWidth />
      <path
        d="M256 96a176 176 0 10176 176A176 176 0 00256 96z" fill stroke strokeMiterlimit strokeWidth
      />
    </svg>

  @react.component
  let storefront = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M448 448V240M64 240v208M382.47 48H129.53c-21.79 0-41.47 12-49.93 30.46L36.3 173c-14.58 31.81 9.63 67.85 47.19 69h2c31.4 0 56.85-25.18 56.85-52.23 0 27 25.46 52.23 56.86 52.23s56.8-23.38 56.8-52.23c0 27 25.45 52.23 56.85 52.23s56.86-23.38 56.86-52.23c0 28.85 25.45 52.23 56.85 52.23h1.95c37.56-1.17 61.77-37.21 47.19-69l-43.3-94.54C423.94 60 404.26 48 382.47 48zM32 464h448M136 288h80a24 24 0 0124 24v88h0-128 0v-88a24 24 0 0124-24zM288 464V312a24 24 0 0124-24h64a24 24 0 0124 24v152"
      />
    </svg>

  @react.component
  let subway = (
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
      <rect
        x="112"
        y="32"
        width="288"
        height="352"
        rx="48"
        ry="48"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M208 80h96" />
      <rect
        x="112"
        y="128"
        width="288"
        height="96"
        rx="32"
        ry="32"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <circle cx="176" cy="320" r="16" fill stroke strokeLinejoin strokeWidth />
      <circle cx="336" cy="320" r="16" fill stroke strokeLinejoin strokeWidth />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M144 464h224M336 432l48 48M176 432l-48 48"
      />
    </svg>

  @react.component
  let sunny = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
        d="M256 48v48M256 416v48M403.08 108.92l-33.94 33.94M142.86 369.14l-33.94 33.94M464 256h-48M96 256H48M403.08 403.08l-33.94-33.94M142.86 142.86l-33.94-33.94"
      />
      <circle cx="256" cy="256" r="80" fill stroke strokeLinecap strokeMiterlimit strokeWidth />
    </svg>

  @react.component
  let swapHorizontal = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M304 48l112 112-112 112M398.87 160H96M208 464L96 352l112-112M114 352h302"
      />
    </svg>

  @react.component
  let swapVertical = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M464 208L352 96 240 208M352 113.13V416M48 304l112 112 112-112M160 398V96"
      />
    </svg>

  @react.component
  let sync = (
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
      <path
        d="M434.67 285.59v-29.8c0-98.73-80.24-178.79-179.2-178.79a179 179 0 00-140.14 67.36m-38.53 82v29.8C76.8 355 157 435 256 435a180.45 180.45 0 00140-66.92"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M32 256l44-44 46 44M480 256l-44 44-46-44"
      />
    </svg>

  @react.component
  let syncCircle = (
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
      <path
        d="M448 256c0-106-86-192-192-192S64 150 64 256s86 192 192 192 192-86 192-192z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M351.82 271.87v-16A96.15 96.15 0 00184.09 192m-24.2 48.17v16A96.22 96.22 0 00327.81 320"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M135.87 256l23.59-23.6 24.67 23.6M376.13 256l-23.59 23.6-24.67-23.6"
      />
    </svg>

  @react.component
  let tabletLandscape = (
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
      <rect
        x="80"
        y="16"
        width="352"
        height="480"
        rx="48"
        ry="48"
        transform="rotate(-90 256 256)"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let tabletPortrait = (
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
      <rect
        x="80"
        y="16"
        width="352"
        height="480"
        rx="48"
        ry="48"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let telescope = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M39.93 327.56l-4.71-8.13A24 24 0 0144 286.64l86.87-50.07a16 16 0 0121.89 5.86l12.71 22a16 16 0 01-5.86 21.85l-86.85 50.07a24.06 24.06 0 01-32.83-8.79z"
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M170.68 273.72L147.12 233a24 24 0 018.8-32.78l124.46-71.75a16 16 0 0121.89 5.86l31.57 54.59a16 16 0 01-5.84 21.84L203.51 282.5a24 24 0 01-32.83-8.78zM341.85 202.21l-46.51-80.43a24 24 0 018.8-32.78l93.29-53.78A24.07 24.07 0 01430.27 44l46.51 80.43a24 24 0 01-8.8 32.79L374.69 211a24.06 24.06 0 01-32.84-8.79zM127.59 480l96.14-207.99M271.8 256.02L368.55 448"
      />
    </svg>

  @react.component
  let tennisball = (
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
      <circle cx="256" cy="256" r="208" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        d="M461.43 271.44c-5.09.37-8.24.56-13.43.56-114.88 0-208-93.12-208-208 0-5.37.2-8.69.6-14M49.65 240.56S58.84 240 64 240c114.88 0 208 93.12 208 208 0 5.38-.61 14-.61 14"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let terminal = (
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
      <rect
        x="32"
        y="48"
        width="448"
        height="416"
        rx="48"
        ry="48"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        fill stroke strokeLinecap strokeLinejoin strokeWidth d="M96 112l80 64-80 64M192 240h64"
      />
    </svg>

  @react.component
  let text = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M32 415.5l120-320 120 320M230 303.5H74M326 239.5c12.19-28.69 41-48 74-48h0c46 0 80 32 80 80v144"
      />
      <path
        d="M320 358.5c0 36 26.86 58 60 58 54 0 100-27 100-106v-15c-20 0-58 1-92 5-32.77 3.86-68 19-68 58z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let thermometer = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M307.72 302.27a8 8 0 01-3.72-6.75V80a48 48 0 00-48-48h0a48 48 0 00-48 48v215.52a8 8 0 01-3.71 6.74 97.51 97.51 0 00-44.19 86.07A96 96 0 00352 384a97.49 97.49 0 00-44.28-81.73zM256 112v272"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="256" cy="384" r="48" />
    </svg>

  @react.component
  let thumbsDown = (
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
      <path
        d="M192 53.84S208 48 256 48s74 16 96 32h64a64 64 0 0164 64v48a64 64 0 01-64 64h-30a32.34 32.34 0 00-27.37 15.4S350 290.19 324 335.22 248 448 240 464c-29 0-43-22-34-47.71 10.28-29.39 23.71-54.38 27.46-87.09.54-4.78-3.14-12-8-12L96 307"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M96 241l80 2c20 1.84 32 12.4 32 30h0c0 17.6-14 28.84-32 30l-80 4c-17.6 0-32-16.4-32-34v-.17A32 32 0 0196 241zM64 176l112 2c18 .84 32 12.41 32 30h0c0 17.61-14 28.86-32 30l-112 2a32.1 32.1 0 01-32-32h0a32.1 32.1 0 0132-32zM112 48l64 3c21 1.84 32 11.4 32 29h0c0 17.6-14.4 30-32 30l-64 2a32.09 32.09 0 01-32-32h0a32.09 32.09 0 0132-32zM80 112l96 2c19 .84 32 12.4 32 30h0c0 17.6-13 28.84-32 30l-96 2a32.09 32.09 0 01-32-32h0a32.09 32.09 0 0132-32z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let thumbsUp = (
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
      <path
        d="M192 53.84S208 48 256 48s74 16 96 32h64a64 64 0 0164 64v48a64 64 0 01-64 64h-30a32.34 32.34 0 00-27.37 15.4S350 290.19 324 335.22 248 448 240 464c-29 0-43-22-34-47.71 10.28-29.39 23.71-54.38 27.46-87.09.54-4.78-3.14-12-8-12L96 307"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M96 241l80 2c20 1.84 32 12.4 32 30h0c0 17.6-14 28.84-32 30l-80 4c-17.6 0-32-16.4-32-34v-.17A32 32 0 0196 241zM64 176l112 2c18 .84 32 12.41 32 30h0c0 17.61-14 28.86-32 30l-112 2a32.1 32.1 0 01-32-32h0a32.1 32.1 0 0132-32zM112 48l64 3c21 1.84 32 11.4 32 29h0c0 17.6-14.4 30-32 30l-64 2a32.09 32.09 0 01-32-32h0a32.09 32.09 0 0132-32zM80 112l96 2c19 .84 32 12.4 32 30h0c0 17.6-13 28.84-32 30l-96 2a32.09 32.09 0 01-32-32h0a32.09 32.09 0 0132-32z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let thunderstorm = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M120 352l-24 48M136 432l-16 32M400 352l-24 48M416 432l-16 32M208 304l-16 96h48v80l80-112h-48l16-64M404.33 152.89H392.2C384.71 84.85 326.14 32 256 32a136.39 136.39 0 00-128.63 90.67h-4.57c-49.94 0-90.8 40.8-90.8 90.66h0C32 263.2 72.86 304 122.8 304h281.53C446 304 480 270 480 228.44h0c0-41.55-34-75.55-75.67-75.55z"
      />
    </svg>

  @react.component
  let ticket = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        fill
        stroke
        strokeMiterlimit
        strokeWidth
        d="M366.05 146a46.7 46.7 0 01-2.42-63.42 3.87 3.87 0 00-.22-5.26l-44.13-44.18a3.89 3.89 0 00-5.5 0l-70.34 70.34a23.62 23.62 0 00-5.71 9.24h0a23.66 23.66 0 01-14.95 15h0a23.7 23.7 0 00-9.25 5.71L33.14 313.78a3.89 3.89 0 000 5.5l44.13 44.13a3.87 3.87 0 005.26.22 46.69 46.69 0 0165.84 65.84 3.87 3.87 0 00.22 5.26l44.13 44.13a3.89 3.89 0 005.5 0l180.4-180.39a23.7 23.7 0 005.71-9.25h0a23.66 23.66 0 0114.95-15h0a23.62 23.62 0 009.24-5.71l70.34-70.34a3.89 3.89 0 000-5.5l-44.13-44.13a3.87 3.87 0 00-5.26-.22 46.7 46.7 0 01-63.42-2.32z"
      />
      <path
        fill
        stroke
        strokeMiterlimit
        strokeWidth
        strokeLinecap
        d="M250.5 140.44l-16.51-16.51M294.52 184.46l-11.01-11M338.54 228.49l-11-11.01M388.07 278.01l-16.51-16.51"
      />
    </svg>

  @react.component
  let time = (
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
      <path
        d="M256 64C150 64 64 150 64 256s86 192 192 192 192-86 192-192S362 64 256 64z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M256 128v144h96" />
    </svg>

  @react.component
  let timer = (
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
      <path
        d="M256 64C150 64 64 150 64 256s86 192 192 192 192-86 192-192S362 64 256 64z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M256 128v144h96" />
    </svg>

  @react.component
  let today = (
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
      <rect fill stroke strokeLinejoin strokeWidth x="48" y="80" width="416" height="384" rx="48" />
      <path fill stroke strokeLinejoin strokeWidth strokeLinecap d="M128 48v32M384 48v32" />
      <rect
        fill
        stroke
        strokeLinejoin
        strokeWidth
        strokeLinecap
        x="112"
        y="224"
        width="96"
        height="96"
        rx="13"
      />
      <path fill stroke strokeLinejoin strokeWidth strokeLinecap d="M464 160H48" />
    </svg>

  @react.component
  let toggle = (
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
      <circle cx="368" cy="256" r="128" fill stroke strokeLinejoin strokeWidth />
      <rect
        x="16"
        y="128"
        width="480"
        height="256"
        rx="128"
        ry="128"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let trailSign = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M256 400v64M256 208v64M256 48v32M416 208H102.63a16 16 0 01-11.32-4.69L32 144l59.31-59.31A16 16 0 01102.63 80H416a16 16 0 0116 16v96a16 16 0 01-16 16zM96 400h313.37a16 16 0 0011.32-4.69L480 336l-59.31-59.31a16 16 0 00-11.32-4.69H96a16 16 0 00-16 16v96a16 16 0 0016 16z"
      />
    </svg>

  @react.component
  let train = (
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
      <path
        d="M344 48h-24a16 16 0 00-16-16h-96a16 16 0 00-16 16h-24a56.16 56.16 0 00-56 56v247c0 35.3 144 65 144 65s144-29.7 144-65V104a56 56 0 00-56-56zm-88 304a48 48 0 1148-48 48 48 0 01-48 48zm96-160a16 16 0 01-16 16H176a16 16 0 01-16-16v-64a16 16 0 0116-16h160a16 16 0 0116 16zM144 464h224M336 432l48 48M176 432l-48 48"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let transgender = (
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
      <circle cx="256" cy="256" r="128" fill stroke strokeLinecap strokeLinejoin strokeWidth />
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M448 352l-96 96M176 80l-95.98 95.98M464 128V48h-80M48 128V48h80M464 48L346.5 165.5M48 48l117.49 117.49M464 464L346.65 346.37"
      />
    </svg>

  @react.component
  let trash = (
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
      <path
        d="M112 112l20 320c.95 18.49 14.4 32 32 32h184c17.67 0 30.87-13.51 32-32l20-320"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path stroke strokeLinecap strokeMiterlimit strokeWidth d="M80 112h352" />
      <path
        d="M192 112V72h0a23.93 23.93 0 0124-24h80a23.93 23.93 0 0124 24h0v40M256 176v224M184 176l8 224M328 176l-8 224"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let trashBin = (
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
      <path
        d="M432 144l-28.67 275.74A32 32 0 01371.55 448H140.46a32 32 0 01-31.78-28.26L80 144"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <rect
        x="32"
        y="64"
        width="448"
        height="80"
        rx="16"
        ry="16"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        fill stroke strokeLinecap strokeLinejoin strokeWidth d="M312 240L200 352M312 352L200 240"
      />
    </svg>

  @react.component
  let trendingDown = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M352 368h112V256" />
      <path
        d="M48 144l121.37 121.37a32 32 0 0045.26 0l50.74-50.74a32 32 0 0145.26 0L448 352"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let trendingUp = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M352 144h112v112" />
      <path
        d="M48 368l121.37-121.37a32 32 0 0145.26 0l50.74 50.74a32 32 0 0045.26 0L448 160"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let triangle = (
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
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M48 448L256 64l208 384H48z" />
    </svg>

  @react.component
  let trophy = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M176 464h160M256 464V336M384 224c0-50.64-.08-134.63-.12-160a16 16 0 00-16-16l-223.79.26a16 16 0 00-16 15.95c0 30.58-.13 129.17-.13 159.79 0 64.28 83 112 128 112S384 288.28 384 224z"
      />
      <path
        d="M128 96H48v16c0 55.22 33.55 112 80 112M384 96h80v16c0 55.22-33.55 112-80 112"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let tv = (
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
      <rect
        x="32"
        y="96"
        width="448"
        height="272"
        rx="32.14"
        ry="32.14"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path stroke strokeLinecap strokeMiterlimit strokeWidth d="M128 416h256" />
    </svg>

  @react.component
  let umbrella = (
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
      <path
        d="M256 272v160a32 32 0 01-32 32h0a32 32 0 01-32-32M464 272c0-114.88-93.12-208-208-208S48 157.12 48 272h0a67.88 67.88 0 0196 0h0a78.28 78.28 0 01102.31-7.27L256 272l9.69-7.27A78.28 78.28 0 01368 272h0a67.88 67.88 0 0196 0zM256 64V48"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let unlink = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeLinejoin="round",
    ~strokeWidth="36",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M208 352h-64a96 96 0 010-192h64M304 160h64a96 96 0 010 192h-64"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let videocam = (
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
      <path
        d="M374.79 308.78L457.5 367a16 16 0 0022.5-14.62V159.62A16 16 0 00457.5 145l-82.71 58.22A16 16 0 00368 216.3v79.4a16 16 0 006.79 13.08z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M268 384H84a52.15 52.15 0 01-52-52V180a52.15 52.15 0 0152-52h184.48A51.68 51.68 0 01320 179.52V332a52.15 52.15 0 01-52 52z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let videocamOff = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeWidth
        strokeLinejoin
        d="M374.79 308.78L457.5 367a16 16 0 0022.5-14.62V159.62A16 16 0 00457.5 145l-82.71 58.22A16 16 0 00368 216.3v79.4a16 16 0 006.79 13.08z"
      />
      <path
        fill
        stroke
        strokeLinecap
        strokeWidth
        strokeMiterlimit
        d="M50.19 140.57A51.94 51.94 0 0032 180v152a52.15 52.15 0 0052 52h184a51.6 51.6 0 0022-4.9M208 128h60.48A51.68 51.68 0 01320 179.52V248M416 416L80 80"
      />
    </svg>

  @react.component
  let volumeHigh = (
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
      <path
        d="M126 192H56a8 8 0 00-8 8v112a8 8 0 008 8h69.65a15.93 15.93 0 0110.14 3.54l91.47 74.89A8 8 0 00240 392V120a8 8 0 00-12.74-6.43l-91.47 74.89A15 15 0 01126 192zM320 320c9.74-19.38 16-40.84 16-64 0-23.48-6-44.42-16-64M368 368c19.48-33.92 32-64.06 32-112s-12-77.74-32-112M416 416c30-46 48-91.43 48-160s-18-113-48-160"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let volumeLow = (
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
      <path
        d="M189.65 192H120a8 8 0 00-8 8v112a8 8 0 008 8h69.65a16 16 0 0110.14 3.63l91.47 75a8 8 0 0012.74-6.46V119.83a8 8 0 00-12.74-6.44l-91.47 75a16 16 0 01-10.14 3.61zM384 320c9.74-19.41 16-40.81 16-64 0-23.51-6-44.4-16-64"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let volumeMedium = (
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
      <path
        d="M157.65 192H88a8 8 0 00-8 8v112a8 8 0 008 8h69.65a16 16 0 0110.14 3.63l91.47 75a8 8 0 0012.74-6.46V119.83a8 8 0 00-12.74-6.44l-91.47 75a16 16 0 01-10.14 3.61zM352 320c9.74-19.41 16-40.81 16-64 0-23.51-6-44.4-16-64M400 368c19.48-34 32-64 32-112s-12-77.7-32-112"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let volumeMute = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="round",
    ~strokeWidth="32",
    ~strokeMiterlimit="10",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path fill stroke strokeLinecap strokeMiterlimit strokeWidth d="M416 432L64 80" />
      <path
        d="M224 136.92v33.8a4 4 0 001.17 2.82l24 24a4 4 0 006.83-2.82v-74.15a24.53 24.53 0 00-12.67-21.72 23.91 23.91 0 00-25.55 1.83 8.27 8.27 0 00-.66.51l-31.94 26.15a4 4 0 00-.29 5.92l17.05 17.06a4 4 0 005.37.26zM224 375.08l-78.07-63.92a32 32 0 00-20.28-7.16H64v-96h50.72a4 4 0 002.82-6.83l-24-24a4 4 0 00-2.82-1.17H56a24 24 0 00-24 24v112a24 24 0 0024 24h69.76l91.36 74.8a8.27 8.27 0 00.66.51 23.93 23.93 0 0025.85 1.69A24.49 24.49 0 00256 391.45v-50.17a4 4 0 00-1.17-2.82l-24-24a4 4 0 00-6.83 2.82zM125.82 336zM352 256c0-24.56-5.81-47.88-17.75-71.27a16 16 0 00-28.5 14.54C315.34 218.06 320 236.62 320 256q0 4-.31 8.13a8 8 0 002.32 6.25l19.66 19.67a4 4 0 006.75-2A146.89 146.89 0 00352 256zM416 256c0-51.19-13.08-83.89-34.18-120.06a16 16 0 00-27.64 16.12C373.07 184.44 384 211.83 384 256c0 23.83-3.29 42.88-9.37 60.65a8 8 0 001.9 8.26l16.77 16.76a4 4 0 006.52-1.27C410.09 315.88 416 289.91 416 256z"
      />
      <path
        d="M480 256c0-74.26-20.19-121.11-50.51-168.61a16 16 0 10-27 17.22C429.82 147.38 448 189.5 448 256c0 47.45-8.9 82.12-23.59 113a4 4 0 00.77 4.55L443 391.39a4 4 0 006.4-1C470.88 348.22 480 307 480 256z"
      />
    </svg>

  @react.component
  let volumeOff = (
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
      <path
        d="M237.65 192H168a8 8 0 00-8 8v112a8 8 0 008 8h69.65a16 16 0 0110.14 3.63l91.47 75a8 8 0 0012.74-6.46V119.83a8 8 0 00-12.74-6.44l-91.47 75a16 16 0 01-10.14 3.61z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let walk = (
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
      <path
        d="M314.21 482.32l-56.77-114.74-44.89-57.39a72.82 72.82 0 01-10.13-37.05V144h15.67a40.22 40.22 0 0140.23 40.22v183.36M127.9 293.05v-74.52S165.16 144 202.42 144M370.1 274.42L304 231M170.53 478.36L224 400"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <circle
        cx="258.32" cy="69.48" r="37.26" fill stroke strokeLinecap strokeLinejoin strokeWidth
      />
    </svg>

  @react.component
  let wallet = (
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
      <rect
        x="48"
        y="144"
        width="416"
        height="288"
        rx="48"
        ry="48"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M411.36 144v-30A50 50 0 00352 64.9L88.64 109.85A50 50 0 0048 159v49"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path d="M368 320a32 32 0 1132-32 32 32 0 01-32 32z" />
    </svg>

  @react.component
  let warning = (
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
      <path
        d="M85.57 446.25h340.86a32 32 0 0028.17-47.17L284.18 82.58c-12.09-22.44-44.27-22.44-56.36 0L57.4 399.08a32 32 0 0028.17 47.17z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M250.26 195.39l5.74 122 5.73-121.95a5.74 5.74 0 00-5.79-6h0a5.74 5.74 0 00-5.68 5.95z"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path d="M256 397.25a20 20 0 1120-20 20 20 0 01-20 20z" />
    </svg>

  @react.component
  let watch = (
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
      <rect
        x="112"
        y="112"
        width="288"
        height="288"
        rx="64"
        ry="64"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path
        d="M176 112V40a8 8 0 018-8h144a8 8 0 018 8v72M336 400v72a8 8 0 01-8 8H184a8 8 0 01-8-8v-72"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
    </svg>

  @react.component
  let water = (
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
      <path
        d="M400 320c0 88.37-55.63 144-144 144s-144-55.63-144-144c0-94.83 103.23-222.85 134.89-259.88a12 12 0 0118.23 0C296.77 97.15 400 225.17 400 320z"
        fill
        stroke
        strokeMiterlimit
        strokeWidth
      />
      <path d="M344 328a72 72 0 01-72 72" fill stroke strokeLinecap strokeLinejoin strokeWidth />
    </svg>

  @react.component
  let wifi = (
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
      <path
        d="M332.41 310.59a115 115 0 00-152.8 0M393.46 249.54a201.26 201.26 0 00-274.92 0M447.72 182.11a288 288 0 00-383.44 0"
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
      />
      <path d="M256 416a32 32 0 1132-32 32 32 0 01-32 32z" />
    </svg>

  @react.component
  let wine = (
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
      <path
        d="M398.57 80H113.43v16S87.51 272 256 272 398.57 96 398.57 96zM256 272v160"
        fill
        stroke
        strokeLinejoin
        strokeWidth
      />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M352 432H160" />
      <path fill stroke strokeLinejoin strokeWidth d="M112 160h288" />
    </svg>

  @react.component
  let woman = (
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
      <path
        d="M208 368v104a23.73 23.73 0 0024 24h0a23.73 23.73 0 0024-24"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <path
        d="M256 368v104a23.73 23.73 0 0024 24h0a23.73 23.73 0 0024-24V368M183 274a23.73 23.73 0 01-29.84 16.18h0a23.72 23.72 0 01-16.17-29.84l25-84.28A44.85 44.85 0 01205 144h102a44.85 44.85 0 0143 32.08l25 84.28a23.72 23.72 0 01-16.17 29.84h0a23.73 23.73 0 01-29.78-16.2"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
      <circle cx="256" cy="56" r="40" fill stroke strokeLinecap strokeMiterlimit strokeWidth />
      <path fill stroke strokeLinecap strokeLinejoin strokeWidth d="M208 192l-48 160h192l-48-160" />
    </svg>
}

module Filled = {
  let defaultSize = twStyle([w(#v10), h(#v10)])

  @react.component
  let accessibility = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path d="M256 112a56 56 0 1156-56 56.06 56.06 0 01-56 56z" />
      <path
        d="M432 112.8l-.45.12-.42.13c-1 .28-2 .58-3 .89-18.61 5.46-108.93 30.92-172.56 30.92-59.13 0-141.28-22-167.56-29.47a73.79 73.79 0 00-8-2.58c-19-5-32 14.3-32 31.94 0 17.47 15.7 25.79 31.55 31.76v.28l95.22 29.74c9.73 3.73 12.33 7.54 13.6 10.84 4.13 10.59.83 31.56-.34 38.88l-5.8 45-32.19 176.19q-.15.72-.27 1.47l-.23 1.27c-2.32 16.15 9.54 31.82 32 31.82 19.6 0 28.25-13.53 32-31.94s28-157.57 42-157.57 42.84 157.57 42.84 157.57c3.75 18.41 12.4 31.94 32 31.94 22.52 0 34.38-15.74 32-31.94a57.17 57.17 0 00-.76-4.06L329 301.27l-5.79-45c-4.19-26.21-.82-34.87.32-36.9a1.09 1.09 0 00.08-.15c1.08-2 6-6.48 17.48-10.79l89.28-31.21a16.9 16.9 0 001.62-.52c16-6 32-14.3 32-31.93S451 107.81 432 112.8z"
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
  let addCircle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 48C141.31 48 48 141.31 48 256s93.31 208 208 208 208-93.31 208-208S370.69 48 256 48zm80 224h-64v64a16 16 0 01-32 0v-64h-64a16 16 0 010-32h64v-64a16 16 0 0132 0v64h64a16 16 0 010 32z"
      />
    </svg>
  @react.component
  let airplane = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M186.62 464H160a16 16 0 01-14.57-22.6l64.46-142.25L113.1 297l-35.3 42.77C71.07 348.23 65.7 352 52 352H34.08a17.66 17.66 0 01-14.7-7.06c-2.38-3.21-4.72-8.65-2.44-16.41l19.82-71c.15-.53.33-1.06.53-1.58a.38.38 0 000-.15 14.82 14.82 0 01-.53-1.59l-19.84-71.45c-2.15-7.61.2-12.93 2.56-16.06a16.83 16.83 0 0113.6-6.7H52c10.23 0 20.16 4.59 26 12l34.57 42.05 97.32-1.44-64.44-142A16 16 0 01160 48h26.91a25 25 0 0119.35 9.8l125.05 152 57.77-1.52c4.23-.23 15.95-.31 18.66-.31C463 208 496 225.94 496 256c0 9.46-3.78 27-29.07 38.16-14.93 6.6-34.85 9.94-59.21 9.94-2.68 0-14.37-.08-18.66-.31l-57.76-1.54-125.36 152a25 25 0 01-19.32 9.75z"
      />
    </svg>

  @react.component
  let alarm = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M153.59 110.46A21.41 21.41 0 00152.48 79 62.67 62.67 0 00112 64l-3.27.09h-.48C74.4 66.15 48 95.55 48.07 131c0 19 8 29.06 14.32 37.11a20.61 20.61 0 0014.7 7.8c.26 0 .7.05 2 .05a19.06 19.06 0 0013.75-5.89zM403.79 64.11l-3.27-.1H400a62.67 62.67 0 00-40.52 15 21.41 21.41 0 00-1.11 31.44l60.77 59.65a19.06 19.06 0 0013.79 5.9c1.28 0 1.72 0 2-.05a20.61 20.61 0 0014.69-7.8c6.36-8.05 14.28-18.08 14.32-37.11.06-35.49-26.34-64.89-60.15-66.93z"
      />
      <path
        d="M256.07 96c-97 0-176 78.95-176 176a175.23 175.23 0 0040.81 112.56l-36.12 36.13a16 16 0 1022.63 22.62l36.12-36.12a175.63 175.63 0 00225.12 0l36.13 36.12a16 16 0 1022.63-22.62l-36.13-36.13A175.17 175.17 0 00432.07 272c0-97-78.95-176-176-176zm16 176a16 16 0 01-16 16h-80a16 16 0 010-32h64v-96a16 16 0 0132 0z"
      />
    </svg>
}
module Sharp = {
  let defaultSize = twStyle([w(#v10), h(#v10)])

  @react.component
  let accessibility = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448 112c-66.82 17.92-119.55 32-192 32s-125.18-14.08-192-32l-16 51c48 20.53 96.71 35.16 147.2 53.2L144 496l56.4 16L246 336h20l45.6 176 56.4-16-51.2-279.8C367.26 199.93 416 183.53 464 164zM256 112a56 56 0 1156-56 56.06 56.06 0 01-56 56z"
      />
    </svg>

  @react.component
  let add = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="square",
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
  let addCircle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 48C141.31 48 48 141.31 48 256s93.31 208 208 208 208-93.31 208-208S370.69 48 256 48zm96 224h-80v80h-32v-80h-80v-32h80v-80h32v80h80z"
      />
    </svg>

  @react.component
  let airPlane = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M407.72 208c-2.72 0-14.44.08-18.67.31l-57.77 1.52L198.06 48h-62.81l74.59 164.61-97.31 1.44L68.25 160H16.14l20.61 94.18c.15.54.33 1.07.53 1.59a.26.26 0 010 .15 15.42 15.42 0 00-.53 1.58L15.86 352h51.78l45.45-55 96.77 2.17L135.24 464h63l133-161.75 57.77 1.54c4.29.23 16 .31 18.66.31 24.35 0 44.27-3.34 59.21-9.94C492.22 283 496 265.46 496 256c0-30.06-33-48-88.28-48zm-71.29 87.9z"
      />
    </svg>

  @react.component
  let alarm = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M403.79 64.11l-3.27-.1H400c-14.73 0-28.55 5.91-40.52 15S344 96 344 96l88 86s11.25-5.71 17.61-13.85 14.28-18.08 14.32-37.11c.07-35.49-26.33-64.89-60.14-66.93zM108.21 64.11l3.27-.1h.52c14.73 0 28.55 5.91 40.52 15S168 96 168 96l-88 86s-11.25-5.71-17.61-13.85S48.11 150.07 48.07 131C48 95.55 74.4 66.15 108.21 64.11z"
      />
      <path
        d="M391.3 384.6a.06.06 0 010-.08C425 344 441 288.24 427 229.23c-13.64-57.52-72.67-115.69-130.34-128.66C182 74.79 80.07 161.71 80.07 272a175.15 175.15 0 0040.78 112.52.06.06 0 010 .08L73 432a.06.06 0 000 .08l23 22.51a.06.06 0 00.08 0l47.43-47.37a.06.06 0 01.08 0 175.64 175.64 0 00225.05 0h.07L416 454.59a.06.06 0 00.08 0L440 432zM272.07 288h-112-.07v-31.9l.05-.05h80V144h32z"
      />
    </svg>

  @react.component
  let albums = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path d="M128 64h256v32H128zM96 112h320v32H96zM464 448H48V160h416z" />
    </svg>

  @react.component
  let alert = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="square",
    ~strokeMiterlimit="10",
    ~strokeWidth="32",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
        d="M240 80l8 240h16l8-240h-32zM240 400h32v32h-32z"
      />
    </svg>

  @react.component
  let alertCircle = (~className="", ~fill="none") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path fill d="M240 304h32l6-160h-44l6 160z" />
      <path
        d="M256 48C141.31 48 48 141.31 48 256s93.31 208 208 208 208-93.31 208-208S370.69 48 256 48zm20 319.91h-40v-40h40zM272 304h-32l-6-160h44z"
      />
    </svg>

  @react.component
  let americanFootball = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M120.9 120.51c-44.75 44.56-67.29 101.05-78.64 145.9l202.31 201.44c45.05-11.3 101.78-33.74 146.53-78.3s67.29-101.05 78.64-145.91L267.43 42.21C222.38 53.51 165.65 76 120.9 120.51zm259 257.83zm-45-224.2l22.52 22.42-33.78 33.63 22.52 22.42L323.55 255 301 232.61 278.52 255 301 277.45l-22.51 22.42L256 277.45l-22.52 22.42L256 322.29l-22.52 22.42L211 322.29l-33.78 33.63-22.55-22.42 33.78-33.63-22.52-22.42L188.45 255 211 277.45 233.48 255 211 232.61l22.51-22.42L256 232.61l22.52-22.42L256 187.77l22.52-22.42L301 187.77zM478.48 198.41C485.85 143.65 464 48.05 464 48.05s-96.14-21.88-151.14-14.54c-2.54.33-5.21.72-8 1.14l172.47 171.71c.43-2.76.81-5.42 1.15-7.95zM33.52 311.65C26.15 366.41 48.05 464 48.05 464s60 16 99.86 16a391.92 391.92 0 0051.23-3.45c2.54-.33 5.21-.72 8-1.15L34.67 303.7c-.43 2.76-.81 5.42-1.15 7.95z"
      />
    </svg>

  @react.component
  let analyticsSharp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M450 128a46 46 0 00-44.11 59l-71.37 71.36a45.88 45.88 0 00-29 0l-52.91-52.91a46 46 0 10-89.12 0L75 293.88A46.08 46.08 0 10106.11 325l87.37-87.36a45.85 45.85 0 0029 0l52.92 52.92a46 46 0 1089.12 0L437 218.12A46 46 0 10450 128z"
      />
    </svg>

  @react.component
  let apetureSharp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M216 48l129.49 128.18V48H216zM181.47 58.38L80 134h176l-74.53-75.62zM336 344h128V216L336 344zM454 182L378 80v176l76-74zM48 166v128l128-128H48zM330 454l102-76H256l74 76zM58 330l76 102V256l-76 74zM345.49 222.12l-55.55-55.46h-67.88l-55.55 55.46v67.76l55.62 55.52c.44 0 .88-.06 1.33-.06h66.48l55.55-55.46zM165.98 336.09L166 464h128L165.98 336.09z"
      />
    </svg>

  @react.component
  let appsSharp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <rect x="48" y="48" width="112" height="112" rx="8" ry="8" />
      <rect x="200" y="48" width="112" height="112" rx="8" ry="8" />
      <rect x="352" y="48" width="112" height="112" rx="8" ry="8" />
      <rect x="48" y="200" width="112" height="112" rx="8" ry="8" />
      <rect x="200" y="200" width="112" height="112" rx="8" ry="8" />
      <rect x="352" y="200" width="112" height="112" rx="8" ry="8" />
      <rect x="48" y="352" width="112" height="112" rx="8" ry="8" />
      <rect x="200" y="352" width="112" height="112" rx="8" ry="8" />
      <rect x="352" y="352" width="112" height="112" rx="8" ry="8" />
    </svg>
  @react.component
  let archiveSharp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <rect x="32" y="48" width="448" height="80" rx="12" ry="12" />
      <path
        d="M64 160v280a24 24 0 0024 24h336a24 24 0 0024-24V160zm192 230.63L169.32 304 192 281.32l48 48.05V208h32v121.37l48.07-48.07 22.61 22.64z"
      />
    </svg>

  @react.component
  let arrowBackSharp = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="square",
    ~strokeMiterlimit="10",
    ~strokeWidth="48",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
        d="M244 400L100 256l144-144M120 256h292"
      />
    </svg>

  @react.component
  let arrowBackCircleSharp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M48 256c0 114.87 93.13 208 208 208s208-93.13 208-208S370.87 48 256 48 48 141.13 48 256zm224-80.09L208.42 240H358v32H208.42L272 336.09l-22.7 22.54L147.46 256 249.3 153.37z"
      />
    </svg>

  @react.component
  let arrowDownSharp = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="square",
    ~strokeMiterlimit="10",
    ~strokeWidth="48",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
        d="M112 268l144 144 144-144M256 392V100"
      />
    </svg>

  @react.component
  let arrowDownCircleSharp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 464c114.87 0 208-93.13 208-208S370.87 48 256 48 48 141.13 48 256s93.13 208 208 208zm-80.09-224L240 303.58V154h32v149.58L336.09 240l22.54 22.71L256 364.54 153.37 262.7z"
      />
    </svg>

  @react.component
  let arrowForwardSharp = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="square",
    ~strokeMiterlimit="10",
    ~strokeWidth="48",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
        d="M268 112l144 144-144 144M392 256H100"
      />
    </svg>

  @react.component
  let arrowForwardCircleSharp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M464 256c0-114.87-93.13-208-208-208S48 141.13 48 256s93.13 208 208 208 208-93.13 208-208zm-224 80.09L303.58 272H154v-32h149.58L240 175.91l22.71-22.54L364.54 256 262.7 358.63z"
      />
    </svg>

  @react.component
  let arrowRedoSharp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M48 399.26C48 335.19 62.44 284 90.91 247c34.38-44.67 88.68-68.77 161.56-71.75V72L464 252 252.47 432V329.35c-44.25 1.19-77.66 7.58-104.27 19.84-28.75 13.25-49.6 33.05-72.08 58.7L48 440z"
      />
    </svg>

  @react.component
  let arrowRedoCircleSharp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M48 256c0 114.87 93.13 208 208 208s208-93.13 208-208S370.87 48 256 48 48 141.13 48 256zm98 88c0-68.13 22.67-137.14 119.17-137.14V152L366 248l-100.83 96v-54.86c-66.69 0-91.32 19.29-119.17 54.86z"
      />
    </svg>

  @react.component
  let arrowUndoSharp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M464 440l-28.12-32.11c-22.48-25.65-43.33-45.45-72.08-58.7-26.61-12.26-60-18.65-104.27-19.84V432L48 252 259.53 72v103.21c72.88 3 127.18 27.08 161.56 71.75C449.56 284 464 335.19 464 399.26z"
      />
    </svg>

  @react.component
  let arrowUndoCircleSharp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 48C141.13 48 48 141.13 48 256s93.13 208 208 208 208-93.13 208-208S370.87 48 256 48zm-9.17 241.14V344L146 248l100.83-96v54.86c96.5 0 119.17 69 119.17 137.14-27.85-35.57-52.48-54.86-119.17-54.86z"
      />
    </svg>

  @react.component
  let arrowUpSharp = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="square",
    ~strokeMiterlimit="10",
    ~strokeWidth="48",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
        d="M112 244l144-144 144 144M256 120v292"
      />
    </svg>

  @react.component
  let arrowUpCircleSharp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 48C141.13 48 48 141.13 48 256s93.13 208 208 208 208-93.13 208-208S370.87 48 256 48zm80.09 224L272 208.42V358h-32V208.42L175.91 272l-22.54-22.7L256 147.46 358.63 249.3z"
      />
    </svg>

  @react.component
  let atSharp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M407.6 115.78c-32.07-35-79.47-53.51-137.09-53.51-51 0-100.69 19.8-139.82 55.76s-63.13 83.84-67.63 134.83c-4.55 51.67 11.41 100.29 44.94 136.9 33.37 36.44 80.07 56.51 131.49 56.51 32.52 0 53.61-2.36 85.48-15.75l14.75-6.2-12.4-29.5-14.75 6.18c-27.15 11.4-43.78 13.25-73.08 13.25-42.34 0-80.65-16.38-107.89-46.12-27.4-29.92-40.42-69.86-36.66-112.48 7.84-89 86.6-161.4 175.57-161.4 48.4 0 87.65 14.91 113.49 43.13 24.61 26.87 35.6 63.92 31.79 107.15-3.29 37.35-17.76 55.74-29.32 64.6-11 8.44-22 10.18-28 9.11-17.68-3.13-26.87-20.46-24.59-46.29l9.93-109.12L311.9 160l-2 22.29a79.69 79.69 0 00-57.32-24c-23.8 0-46.54 10.07-64 28.37-16.77 17.53-27.23 41.05-29.45 66.22-2.45 27.87 5.75 54.34 22.51 72.64a76.14 76.14 0 0056.88 24.77A93 93 0 00310 318a60 60 0 0042.88 31.81c16.89 3 36.73-2.69 53.08-15.21 30.19-23.13 39.36-60.19 41.74-87.2 4.52-51.7-9.7-98.4-40.1-131.62zm-126.34 186a62.19 62.19 0 01-42.81 16.53 43.94 43.94 0 01-33.28-14.38c-10.71-11.7-15.9-29.27-14.23-48.22 3.23-36.68 30.29-65.4 61.61-65.4a48.16 48.16 0 0135.88 15.82c10.87 11.87 16.2 28.87 14.63 46.73-1.78 20.28-9.33 37.14-21.8 48.88z"
      />
    </svg>

  @react.component
  let atCircleSharp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256.41 48.74c-114.85 0-208 93.11-208 208s93.12 208 208 208 208-93.12 208-208-93.16-208-208-208zM381.22 252c-2.85 32.63-16.78 49.7-28 58.26s-24.69 12.34-36.33 10.26a41.63 41.63 0 01-27-17.52 60.84 60.84 0 01-43.72 17.9 51.65 51.65 0 01-38.55-16.83c-11.39-12.42-17-30.36-15.33-49.23 3.05-35 30.92-57.39 56.87-61.48 27.21-4.29 52.24 6.54 62.91 19.46l3.84 4.66-6.34 50.38c-1.19 14.34 3.29 23.48 12.29 25.1 2.39.42 8.11-.13 14.38-4.93 6.72-5.15 15.14-16 17.1-38.47 2.32-26.55-4.35-49.19-19.28-65.49-15.5-16.9-39.1-25.84-68.24-25.84-54 0-101.81 44.43-106.57 99-2.29 26.2 5.66 50.68 22.39 68.93C198 344 221 353.88 246.29 353.88c19 0 30.61-2.05 49.49-8.78l13.22-4.69 9.39 26.37-13.19 4.7c-21.82 7.77-36.68 10.4-58.88 10.4-33.28 0-63.57-13.06-85.3-36.77-22.09-24.11-32.62-56.17-29.65-90.29 2.91-33.33 18.46-64.63 43.77-88.12s57.57-36.49 90.7-36.49c37.2 0 67.94 12.08 88.88 34.93 20.05 21.91 29.48 52.75 26.5 86.86z"
      />
      <path
        d="M253.51 221c-14.83 2.33-31.55 15.84-33.34 36.26-1 11.06 2 21.22 8.08 27.87a23.63 23.63 0 0017.91 7.75c19.7 0 33.8-14.79 36.8-38.59l1.75-13.89h.09l1.65-13.11a49.63 49.63 0 00-32.94-6.3z"
      />
    </svg>

  @react.component
  let attachSharp = (
    ~className="",
    ~fill="none",
    ~stroke="currentColor",
    ~strokeLinecap="square",
    ~strokeMiterlimit="10",
    ~strokeWidth="32",
  ) =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M216.08 192v143.55a40.08 40.08 0 0080.15 0l.13-188.55a67.94 67.94 0 10-135.87 0v189.82a95.51 95.51 0 00191 0V159.44"
        fill
        stroke
        strokeLinecap
        strokeMiterlimit
        strokeWidth
      />
    </svg>

  @react.component
  let backspaceSharp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M144 96L32 256l112 160h304V96zm215.3 226.34L336.67 345l-65-65-65 65L184 322.34l65-65-65-65 22.63-22.63 65 65 65-65 22.63 22.63-65 65z"
      />
    </svg>
}

module Logos = {
  let defaultSize = twStyle([w(#v10), h(#v10)])

  @react.component
  let alipay = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M102.41 32C62.38 32 32 64.12 32 103.78v304.45C32 447.86 64.38 480 104.41 480h303.2c40 0 72.39-32.14 72.39-71.77v-3.11c-1.35-.56-115.47-48.57-174.5-76.7-39.82 48.57-91.18 78-144.5 78-90.18 0-120.8-78.22-78.1-129.72 9.31-11.22 25.15-21.94 49.73-28 38.45-9.36 99.64 5.85 157 24.61a309.41 309.41 0 0025.46-61.67H138.34V194h91.13v-31.83H119.09v-17.75h110.38V99s0-7.65 7.82-7.65h44.55v53H391v17.75H281.84V194h89.08a359.41 359.41 0 01-37.72 94.43c27 9.69 49.31 18.88 67.39 24.89 60.32 20 77.23 22.45 79.41 22.7V103.78C480 64.12 447.6 32 407.61 32h-305.2zM152 274.73q-5.81.06-11.67.63c-11.3 1.13-32.5 6.07-44.09 16.23-34.74 30-13.94 84.93 56.37 84.93 40.87 0 81.71-25.9 113.79-67.37-41.36-20-77-34.85-114.4-34.42z"
      />
    </svg>
}
