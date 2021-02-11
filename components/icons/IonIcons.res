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
  let analytics = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M450 128a46 46 0 00-44.11 59l-71.37 71.36a45.88 45.88 0 00-29 0l-52.91-52.91a46 46 0 10-89.12 0L75 293.88A46.08 46.08 0 10106.11 325l87.37-87.36a45.85 45.85 0 0029 0l52.92 52.92a46 46 0 1089.12 0L437 218.12A46 46 0 10450 128z"
      />
    </svg>

  @react.component
  let apeture = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M216 48l129.49 128.18V48H216zM181.47 58.38L80 134h176l-74.53-75.62zM336 344h128V216L336 344zM454 182L378 80v176l76-74zM48 166v128l128-128H48zM330 454l102-76H256l74 76zM58 330l76 102V256l-76 74zM345.49 222.12l-55.55-55.46h-67.88l-55.55 55.46v67.76l55.62 55.52c.44 0 .88-.06 1.33-.06h66.48l55.55-55.46zM165.98 336.09L166 464h128L165.98 336.09z"
      />
    </svg>

  @react.component
  let apps = (~className="") =>
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
  let archive = (~className="") =>
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
  let arrowBack = (
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
  let arrowBackCircle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M48 256c0 114.87 93.13 208 208 208s208-93.13 208-208S370.87 48 256 48 48 141.13 48 256zm224-80.09L208.42 240H358v32H208.42L272 336.09l-22.7 22.54L147.46 256 249.3 153.37z"
      />
    </svg>

  @react.component
  let arrowDown = (
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
  let arrowDownCircle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 464c114.87 0 208-93.13 208-208S370.87 48 256 48 48 141.13 48 256s93.13 208 208 208zm-80.09-224L240 303.58V154h32v149.58L336.09 240l22.54 22.71L256 364.54 153.37 262.7z"
      />
    </svg>

  @react.component
  let arrowForward = (
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
  let arrowForwardCircle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M464 256c0-114.87-93.13-208-208-208S48 141.13 48 256s93.13 208 208 208 208-93.13 208-208zm-224 80.09L303.58 272H154v-32h149.58L240 175.91l22.71-22.54L364.54 256 262.7 358.63z"
      />
    </svg>

  @react.component
  let arrowRedo = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M48 399.26C48 335.19 62.44 284 90.91 247c34.38-44.67 88.68-68.77 161.56-71.75V72L464 252 252.47 432V329.35c-44.25 1.19-77.66 7.58-104.27 19.84-28.75 13.25-49.6 33.05-72.08 58.7L48 440z"
      />
    </svg>

  @react.component
  let arrowRedoCircle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M48 256c0 114.87 93.13 208 208 208s208-93.13 208-208S370.87 48 256 48 48 141.13 48 256zm98 88c0-68.13 22.67-137.14 119.17-137.14V152L366 248l-100.83 96v-54.86c-66.69 0-91.32 19.29-119.17 54.86z"
      />
    </svg>

  @react.component
  let arrowUndo = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M464 440l-28.12-32.11c-22.48-25.65-43.33-45.45-72.08-58.7-26.61-12.26-60-18.65-104.27-19.84V432L48 252 259.53 72v103.21c72.88 3 127.18 27.08 161.56 71.75C449.56 284 464 335.19 464 399.26z"
      />
    </svg>

  @react.component
  let arrowUndoCircle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 48C141.13 48 48 141.13 48 256s93.13 208 208 208 208-93.13 208-208S370.87 48 256 48zm-9.17 241.14V344L146 248l100.83-96v54.86c96.5 0 119.17 69 119.17 137.14-27.85-35.57-52.48-54.86-119.17-54.86z"
      />
    </svg>

  @react.component
  let arrowUp = (
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
  let arrowUpCircle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 48C141.13 48 48 141.13 48 256s93.13 208 208 208 208-93.13 208-208S370.87 48 256 48zm80.09 224L272 208.42V358h-32V208.42L175.91 272l-22.54-22.7L256 147.46 358.63 249.3z"
      />
    </svg>

  @react.component
  let at = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M407.6 115.78c-32.07-35-79.47-53.51-137.09-53.51-51 0-100.69 19.8-139.82 55.76s-63.13 83.84-67.63 134.83c-4.55 51.67 11.41 100.29 44.94 136.9 33.37 36.44 80.07 56.51 131.49 56.51 32.52 0 53.61-2.36 85.48-15.75l14.75-6.2-12.4-29.5-14.75 6.18c-27.15 11.4-43.78 13.25-73.08 13.25-42.34 0-80.65-16.38-107.89-46.12-27.4-29.92-40.42-69.86-36.66-112.48 7.84-89 86.6-161.4 175.57-161.4 48.4 0 87.65 14.91 113.49 43.13 24.61 26.87 35.6 63.92 31.79 107.15-3.29 37.35-17.76 55.74-29.32 64.6-11 8.44-22 10.18-28 9.11-17.68-3.13-26.87-20.46-24.59-46.29l9.93-109.12L311.9 160l-2 22.29a79.69 79.69 0 00-57.32-24c-23.8 0-46.54 10.07-64 28.37-16.77 17.53-27.23 41.05-29.45 66.22-2.45 27.87 5.75 54.34 22.51 72.64a76.14 76.14 0 0056.88 24.77A93 93 0 00310 318a60 60 0 0042.88 31.81c16.89 3 36.73-2.69 53.08-15.21 30.19-23.13 39.36-60.19 41.74-87.2 4.52-51.7-9.7-98.4-40.1-131.62zm-126.34 186a62.19 62.19 0 01-42.81 16.53 43.94 43.94 0 01-33.28-14.38c-10.71-11.7-15.9-29.27-14.23-48.22 3.23-36.68 30.29-65.4 61.61-65.4a48.16 48.16 0 0135.88 15.82c10.87 11.87 16.2 28.87 14.63 46.73-1.78 20.28-9.33 37.14-21.8 48.88z"
      />
    </svg>

  @react.component
  let atCircle = (~className="") =>
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
  let attach = (
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
  let backspace = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M144 96L32 256l112 160h304V96zm215.3 226.34L336.67 345l-65-65-65 65L184 322.34l65-65-65-65 22.63-22.63 65 65 65-65 22.63 22.63-65 65z"
      />
    </svg>

  @react.component
  let bag = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M372 160v-12A116.13 116.13 0 00258.89 32h-5.78A116.13 116.13 0 00140 148v12H52a4 4 0 00-4 4v300a16 16 0 0016 16h384a16 16 0 0016-16V164a4 4 0 00-4-4zm-40 0H180v-11c0-41.84 33.41-76.56 75.25-77A76.08 76.08 0 01332 148z"
      />
    </svg>

  @react.component
  let bagAdd = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M460 160h-88v-12A116.13 116.13 0 00258.89 32h-5.78A116.13 116.13 0 00140 148v12H52a4 4 0 00-4 4v300a16 16 0 0016 16h384a16 16 0 0016-16V164a4 4 0 00-4-4zm-280-11c0-41.84 33.41-76.56 75.25-77A76.08 76.08 0 01332 148v12H180zm156 187h-64v64h-32v-64h-64v-32h64v-64h32v64h64z"
      />
    </svg>

  @react.component
  let bagCheck = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M460 160h-88v-12A116.13 116.13 0 00258.89 32h-5.78A116.13 116.13 0 00140 148v12H52a4 4 0 00-4 4v300a16 16 0 0016 16h384a16 16 0 0016-16V164a4 4 0 00-4-4zm-280-11c0-41.84 33.41-76.56 75.25-77A76.08 76.08 0 01332 148v12H180zm50.81 252.12l-61.37-71.72 24.31-20.81L230 350.91l87.51-109.4 25 20z"
      />
    </svg>

  @react.component
  let bagHandle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M460 160h-88v-12A116.13 116.13 0 00258.89 32h-5.78A116.13 116.13 0 00140 148v12H52a4 4 0 00-4 4v300a16 16 0 0016 16h384a16 16 0 0016-16V164a4 4 0 00-4-4zm-280-11c0-41.84 33.41-76.56 75.25-77A76.08 76.08 0 01332 148v12H180zm188 91a112 112 0 01-224 0v-32h32v32a80 80 0 00160 0v-32h32z"
      />
    </svg>

  @react.component
  let bagRemove = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M460 160h-88v-12A116.13 116.13 0 00258.89 32h-5.78A116.13 116.13 0 00140 148v12H52a4 4 0 00-4 4v300a16 16 0 0016 16h384a16 16 0 0016-16V164a4 4 0 00-4-4zm-280-11c0-41.84 33.41-76.56 75.25-77A76.08 76.08 0 01332 148v12H180zm156 187H176v-32h160z"
      />
    </svg>

  @react.component
  let balloon = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M391 307.27c32.75-46.35 46.59-101.63 39-155.68C416.47 55.59 327.38-11.54 231.38 2S68.24 104.53 81.73 200.53c7.57 53.89 36.12 103.16 80.37 138.74 26.91 21.64 57.59 36.1 86.05 41.33l-8.36 45.23a8 8 0 009 9.38L279 431c15.9 35.87 41.65 60.48 78.41 75l14.88 5.88 11.77-29.75-14.88-5.89c-26.35-10.42-44.48-26.16-57-49.92l21.84-3.07a8 8 0 006.05-11.49l-20.49-41.16c25.98-12.87 51.49-35.18 71.42-63.33zm-160.82 15.66c-41.26-16.32-76.3-52.7-91.45-94.94l-5.4-15.06 30.12-10.8 5.4 15.06c14.5 40.44 47.27 65.77 73.1 76l14.88 5.88-11.77 29.76z"
      />
    </svg>

  @react.component
  let ban = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M414.39 97.61A224 224 0 1097.61 414.39 224 224 0 10414.39 97.61zM432 256a175.09 175.09 0 01-35.8 106.26L149.74 115.8A175.09 175.09 0 01256 80c97.05 0 176 79 176 176zm-352 0a175.09 175.09 0 0135.8-106.26L362.26 396.2A175.09 175.09 0 01256 432c-97 0-176-78.95-176-176z"
      />
    </svg>

  @react.component
  let bandage = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M27.71 337.1a40 40 0 000 56.54l90.65 90.65a40 40 0 0056.54 0l75.1-75.1L102.81 262zM496 147.1a39.87 39.87 0 00-11.75-28.38l-91-91a40.14 40.14 0 00-56.75 0L264 100.28 411.72 248l72.53-72.53A39.85 39.85 0 00496 147.1zM273.06 386.19l116-116L241.77 123l-116 116zm19.63-141.5a16 16 0 110 22.62 16 16 0 010-22.62zm-48-48a16 16 0 110 22.62 16 16 0 010-22.62zm0 96a16 16 0 110 22.62 16 16 0 010-22.62zm-25.38-48a16 16 0 11-22.62 0 16 16 0 0122.62 0z"
      />
    </svg>

  @react.component
  let barChart = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path d="M496 496H16V16h32v448h448v32z" />
      <path d="M192 432H80V208h112zM336 432H224V160h112zM479.64 432h-112V96h112z" />
    </svg>

  @react.component
  let barbell = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path d="M496 176h-58v-64h-76v122H150V112H74v64H16v160h58v64h76V278h212v122h76v-64h58V176z" />
    </svg>

  @react.component
  let barcode = (
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
      <path
        fill
        stroke
        strokeLinecap
        strokeLinejoin
        strokeWidth
        d="M400 400.33l48-.33V112l-48 .33M112 112l-48 .33v288l48-.33M384 192v128M320 160v192M256 176v160M192 160v192M128 192v128"
      />
    </svg>

  @react.component
  let baseballe = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M302.16 56.2a13.88 13.88 0 01-3.42 8.91l-.11 5.13-27.71-.57c0 1.3.09 2.61.16 3.91a177.33 177.33 0 003.45 26.31l24.72-7.18 7.81 26.88-24.71 7.18a177.21 177.21 0 0013.34 27.69l21.27-15 16.16 22.86-21.29 15.05q5.25 6.33 11.11 12.19c3.91 3.91 8 7.6 12.2 11.1l15.71-22.22 22.86 16.16L358 216.75a178.78 178.78 0 0027.68 13.32l7.49-25.8 26.89 7.81-7.5 25.83a177.8 177.8 0 0031 3.67l-.41-24.67 17.41-.29A208 208 0 00301.82 52.93a13.65 13.65 0 01.34 3.27zM214 441.64l27.91.49a177.46 177.46 0 00-3.62-29.95l-24.14 7-7.81-26.88 24.11-7a177.92 177.92 0 00-13.33-27.68L196.79 372l-16.16-22.86L201 334.73c-3.49-4.22-7.19-8.3-11.09-12.2s-8-7.62-12.19-11.12l-13.91 19.68L141 314.93l13.9-19.66a177.26 177.26 0 00-27.7-13.33l-6.37 21.94-26.89-7.81 6.38-22a177.32 177.32 0 00-26.32-3.4c-1.59-.09-3.18-.16-4.78-.2l.4 22.34-17.71.32a207.88 207.88 0 00161.81 166.48z"
      />
      <path
        d="M444.65 302.67l-.55-33.06a206 206 0 01-39.33-4.74L397 291.8l-26.94-7.8 7.83-27a206.91 206.91 0 01-36.06-17.35l-16.36 23.15-22.86-16.16 16.33-23.11a204.21 204.21 0 01-30-30l-22.19 15.67-16.16-22.87 22.17-15.67a206 206 0 01-17.38-36.06l-25.75 7.48-7.81-26.89 25.73-7.47q-2-9.21-3.18-18.64h-.47l-.78-14-.33-6-17.94-.32a13.38 13.38 0 01-1.79-.16l-6.35-.13.06-2.47a14 14 0 01-5.66-11.49 13.27 13.27 0 01.13-1.67A208 208 0 0052.16 217.43l16.1-.28.45 25.18 6.83.38 14 .77v.48q9.42 1.17 18.64 3.18l6.68-23L141.7 232l-6.7 23a205.3 205.3 0 0136.06 17.38l14.53-20.56L208.47 268 194 288.5a203.5 203.5 0 0130 30l21.3-15 16.16 22.86-21.36 15.05a206.86 206.86 0 0117.34 36.06l25.27-7.33 7.81 26.86-25.24 7.33a205.9 205.9 0 014.72 38.3l29.42.53-.29 16.48a207.94 207.94 0 00160-157.21z"
      />
    </svg>

  @react.component
  let basket = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path d="M339.2 217.6L256 106.67 172.8 217.6l-25.6-19.2 96-128a16 16 0 0125.6 0l96 128z" />
      <path
        d="M441.59 192H70.41a12 12 0 00-11.68 14.77L112.59 434h286.82l53.86-227.23A12 12 0 00441.59 192zM256 351.66A37.71 37.71 0 11293.89 314 37.88 37.88 0 01256 351.66z"
      />
    </svg>

  @react.component
  let basketball = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 233.37l34.45-34.45a207.08 207.08 0 01-50.12-135.25c0-5 .19-10.05.54-15A207.09 207.09 0 00120.67 98zM313.14 176.23L391.33 98A207.07 207.07 0 00273 48.8c-.41 4.9-.64 9.86-.64 14.87a175.25 175.25 0 0040.78 112.56zM335.77 198.86a175.25 175.25 0 00112.56 40.81c5 0 10-.23 14.87-.64A207.07 207.07 0 00414 120.67zM176.23 313.14a175.23 175.23 0 00-112.56-40.81q-7.52 0-14.87.64A207.07 207.07 0 0098 391.33zM256 278.63l-34.45 34.45a207.08 207.08 0 0150.12 135.25c0 5-.19 10.05-.54 15A207.06 207.06 0 00391.33 414zM448.33 271.67a207.08 207.08 0 01-135.25-50.12L278.63 256 414 391.33a207.09 207.09 0 0049.39-120.2c-5.01.35-10.02.54-15.06.54zM233.37 256L98 120.67a207.06 207.06 0 00-49.39 120.2c5-.35 10-.54 15-.54a207.08 207.08 0 01135.25 50.12zM120.67 414A207.07 207.07 0 00239 463.2q.63-7.35.64-14.87a175.23 175.23 0 00-40.81-112.56z"
      />
    </svg>

  @react.component
  let batteryCharging = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M306.68 237.62h-66.5l15.33-54.7 6.43-22.92 3.94-14 4.29-15.33a3.56 3.56 0 00.06-.44v-.19a1.85 1.85 0 000-.23 2 2 0 000-.24v-.14c0-.1-.07-.19-.11-.29v-.05a2.33 2.33 0 00-2-1.35h-.1a2.25 2.25 0 00-1.8 1l-12.5 17.15-18.82 25.55-8.36 11.48-35.41 48.6L160 274.26h66.44l-30 107a3.93 3.93 0 00-.06.48v.1a1.94 1.94 0 000 .34.29.29 0 000 .09 3 3 0 00.07.32v.06a1.83 1.83 0 00.14.32 2.38 2.38 0 001.52 1.16H198.68a2.1 2.1 0 001.31-.5l.06-.05a2.6 2.6 0 00.42-.45L223.3 352l13-17.82z"
      />
      <path
        d="M289.78 134.55l-.14.74-.21.73-6.72 24H417V352H248.05l-23.33 32H449V128H290.13a22.62 22.62 0 01-.35 6.55zM49 160h169.49l23.31-32H17v256h159.49a22.73 22.73 0 01.34-6.67l.15-.75.2-.73 6.69-23.85H49z"
      />
      <path
        d="M264.76 329.08h130.55V182.92H276.28l-9.73 34.7H346l-23.16 31.78-58.08 79.68zM160 294.26h-39.31l23.15-31.78 57.95-79.56H70.69v146.16h119.6l9.77-34.82H160zM465 202.67h32v106.67h-32z"
      />
    </svg>

  @react.component
  let batteryDead = (
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
        d="M32 144h400v224H32zM480 218.67v74.66"
      />
    </svg>

  @react.component
  let batteryFull = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path d="M17 384h432V128H17zm32-224h368v192H49z" />
      <path d="M70.69 182.94h324.63v146.13H70.69zM465 202.67h32v106.67h-32z" />
    </svg>

  @react.component
  let batteryHalf = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path d="M17 384h432V128H17zm32-224h368v192H49z" />
      <path d="M70.69 182.92H256v146.16H70.69zM465 202.67h32v106.67h-32z" />
    </svg>

  @react.component
  let beaker = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M453.55 54.7L464 32H128.4c-27.74 0-49 6.57-63.31 19.51C54.39 61.27 48 74.89 48 88v24h16c31 0 32 16.79 32 35v313a20 20 0 0020 20h312a20 20 0 0020-20V96c0-17.16 2.28-34.14 5.55-41.3zM416 96v64H128v-22c0-36.15-21-51-41.77-53.46C89 70 105.7 64.05 128.4 64.05h289.92A221.83 221.83 0 00416 96z"
      />
    </svg>

  @react.component
  let bed = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M432 224V96a16 16 0 00-16-16H96a16 16 0 00-16 16v128a48 48 0 00-48 48v160h36v-32h376v32h36V272a48 48 0 00-48-48zm-192 0H120v-32a16 16 0 0116-16h88a16 16 0 0116 16zm32-32a16 16 0 0116-16h88a16 16 0 0116 16v32H272z"
      />
    </svg>

  @react.component
  let beer = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448 208h-80v-5.74A63.93 63.93 0 00321.65 96a111 111 0 00-27.59-47.29A108.62 108.62 0 00216 16c-29.91 0-57.78 12.28-79 34.67a56 56 0 00-67.51 77.51c-1 .86-1.91 1.74-2.83 2.66A63.56 63.56 0 0048 176.26a62.65 62.65 0 0020.77 46.54A65 65 0 0080 231v249a16 16 0 0016 16h256a16 16 0 0016-16v-48h80a16 16 0 0016-16V224a16 16 0 00-16-16zM176 432h-32V240h32zm64 0h-32V240h32zm64 0h-32V240h32zm16-240c-8.33 0-20.55-5.18-26.69-11.31l-4.68-4.69H148.79L145 186.53c-5.81 16-18.83 20.41-28.73 21.29a34.08 34.08 0 01-25.91-8.67 31 31 0 01-10.32-23 31.8 31.8 0 019.33-22.71c.16-.17.33-.32.5-.49A31.78 31.78 0 01112 144c.09 0 9.12.34 16.4 5.8l12.8 9.6 19.2-25.6-12.8-9.6A63.69 63.69 0 00112 112a64.79 64.79 0 00-14 1.55 24 24 0 0141.4-23.68l.23.35.4.46a35.78 35.78 0 015 8.94l5.62 15 30-11.24-5.62-15a68.2 68.2 0 00-10-17.74c-.38-.52-.79-1-1.19-1.51C178.38 55.45 196.64 48 216 48a76.86 76.86 0 0155.23 23.18A80.2 80.2 0 01292.61 142l-3 15.72 31.43 6 3-15.72a111.78 111.78 0 001.96-19.43 32 32 0 01-6 63.43zm112 208h-64V240h64z"
      />
    </svg>

  @react.component
  let bicycle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M320 192l-29.5-60.1C284.32 118 284.32 118 264 118c-13.26 0-14.76 0-23 7.3l-71.7 69.1c-8.3 8.45-9.3 9.45-9.3 26.6 0 12.67 3.78 14.61 18.51 22.9L240 278v90h32V254s-29-17-48.3-30l48.9-51.5c18.7 28.5 27.3 51.5 38 51.5H384v-32z"
      />
      <path
        d="M388 448a92 92 0 1192-92 92.1 92.1 0 01-92 92zm0-152a60 60 0 1060 60 60.07 60.07 0 00-60-60zM124 448a92 92 0 1192-92 92.1 92.1 0 01-92 92zm0-152a60 60 0 1060 60 60.07 60.07 0 00-60-60zM320 128a31.89 31.89 0 0032-32.1A31.55 31.55 0 00320.2 64a32 32 0 10-.2 64z"
      />
    </svg>

  @react.component
  let bluetooth = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M397.41 161.13L236-.28v212.8l-94.17-80.72-26 30.37L225.27 256 115.8 349.83l26 30.37 94.2-80.72v212.8l161.41-161.41L286.73 256zM276 96.28l62.59 62.59L276 212.52zm62.58 256.85L276 415.72V299.48z"
      />
    </svg>

  @react.component
  let boat = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M477.77 246.42c-2.13-6-7.23-9.55-12.56-11.95L432 221.38V92a20 20 0 00-20-20h-76V40a16 16 0 00-16-16H192a16 16 0 00-16 16v32h-76a20 20 0 00-20 20v129.46l-33.08 13.06c-5.33 2.4-10.58 6-12.72 12s-3.16 11.81-1 19L84.25 415.7h1.06c34.12 0 64-17.41 85.31-43.82 21.32 26.41 51.18 42.12 85.3 42.12s64-15.76 85.31-42.17c21.32 26.41 51.18 43.87 85.3 43.87h1.06l51.25-150.17c2.16-6 1.07-13.1-1.07-19.11zM256 152l-144 56.83V108a4 4 0 014-4h280a4 4 0 014 4v100.76z"
      />
      <path
        d="M345.22 407c-52.25 36.26-126.35 36.25-178.6 0 0 0-45.64 63-94.64 63l13.33 1c29.86 0 58.65-11.73 85.31-25.59a185.33 185.33 0 00170.6 0c26.66 13.87 55.45 25.6 85.31 25.6l13.33-1C392.21 470 345.22 407 345.22 407z"
      />
    </svg>

  @react.component
  let body = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle cx="256" cy="56" r="56" />
      <path
        d="M464 128H48v52h144l-32 325.13 51 6.87 21.65-192h47.02L301 512l51-6.98L320 180h144v-52z"
      />
    </svg>

  @react.component
  let bonfire = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M199.89 336l-15.25-5.62a100.35 100.35 0 01-32-23.08c-13.93-14.9-29.29-40.71-23.38-79.11 5.2-33.73 44.2-74.21 69.34-97.87 27.24-25.62 66-65.85 64.15-99.15L262 16h15.18C328.53 16 384 53.62 384 114.41c0 45.57-22 77.61-68.91 106.9-8 5-16.44 9.66-25.42 14.53-30.63 16.62-75.29 49.83-85.73 85.32zM181.19 113.59C201 95 218.91 78.15 227.62 59.79q-2.76-1.68-5.7-3.09c-11.87-5.69-26.1-8.34-44.76-8.34h-16.94l.56 16.49c.47 14.06-6.06 22.51-14.33 33.21C137.8 109.26 128 121.94 128 141c0 10.23 1.29 18.76 4.2 26.36q3.5-5.31 7.61-10.63c12.19-15.73 27.05-29.68 41.38-43.14z"
      />
      <path
        d="M330.34 239.85c-9.31 5.9-19 11.14-29.25 16.71-32.65 17.69-63.48 34.44-73.23 67.44l-.6 2a110.5 110.5 0 0045.87 10c29.66 0 57.45-11.13 78.24-31.36A107.38 107.38 0 00384 227a92.39 92.39 0 00-5.59-31c-11.35 16.18-27.14 30.58-48.07 43.85zM268.72 360h-25.44a4 4 0 00-3.92 3.22l-25.36 128a4 4 0 003.92 4.78h76.26a4 4 0 003.92-4.78l-25.41-128a4 4 0 00-3.97-3.22zM325.68 354.32l-11.36 11.36a4 4 0 00-.5 5.05l59.47 89.21a4 4 0 006.16.61l41.1-41.1a4 4 0 00-.61-6.16l-89.21-59.47a4 4 0 00-5.05.5zM388 336a4 4 0 00-4 4v8.61a4 4 0 003.34 3.95l88 14.66a4 4 0 004.66-3.94V340a4 4 0 00-4-4zM186.32 354.32l11.36 11.36a4 4 0 01.5 5.05l-59.47 89.21a4 4 0 01-6.16.61l-41.1-41.1a4 4 0 01.61-6.16l89.21-59.47a4 4 0 015.05.5zM124 336H36a4 4 0 00-4 4v23.28a4 4 0 004.66 3.94l88-14.66a4 4 0 003.34-3.95V340a4 4 0 00-4-4z"
      />
    </svg>

  @react.component
  let book = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M464 48c-67.61.29-117.87 9.6-154.24 25.69-27.14 12-37.76 21.08-37.76 51.84V448c41.57-37.5 78.46-48 224-48V48zM48 48c67.61.29 117.87 9.6 154.24 25.69 27.14 12 37.76 21.08 37.76 51.84V448c-41.57-37.5-78.46-48-224-48V48z"
      />
    </svg>

  @react.component
  let bookmark = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path d="M416 480L256 357.41 96 480V32h320z" />
    </svg>

  @react.component
  let bookmarks = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path d="M112 0v48h304v368l48 32V0H112z" /> <path d="M48 80v432l168-124 168 124V80H48z" />
    </svg>

  @react.component
  let bowlingBall = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M414.39 97.61A224 224 0 1097.61 414.39 224 224 0 10414.39 97.61zM286 230a28 28 0 1128-28 28 28 0 01-28 28zm8-76a28 28 0 1128-28 28 28 0 01-28 28zm68 44a28 28 0 1128-28 28 28 0 01-28 28z"
      />
    </svg>

  @react.component
  let briefcase = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M336 288H176v-32H16v196a12 12 0 0012 12h456a12 12 0 0012-12V256H336zM496 124a12 12 0 00-12-12H384V56a8 8 0 00-8-8H136a8 8 0 00-8 8v56H28a12 12 0 00-12 12v100h480zm-152-12H168V88h176z"
      />
    </svg>

  @react.component
  let browsers = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M32 64v384a16 16 0 0016 16h416a16 16 0 0016-16V64a16 16 0 00-16-16H48a16 16 0 00-16 16zm408 364H72a4 4 0 01-4-4V152a4 4 0 014-4h368a4 4 0 014 4v272a4 4 0 01-4 4z"
      />
    </svg>

  @react.component
  let brush = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M480 96l-64-64-244 260 64 64zM142 320c-36.52 0-66 30.63-66 68.57 0 25.43-31 45.72-44 45.72C52.24 462.17 86.78 480 120 480c48.62 0 88-40.91 88-91.43 0-37.94-29.48-68.57-66-68.57z"
      />
    </svg>

  @react.component
  let bug = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M480 304.13v-32h-80V215.2c29.42-27.95 32-64.76 32-103.2V96h-32v16c0 28-1.86 48.15-9.9 63.84C368 128 324.32 112 256 112c-39.8 0-75.19 7.06-100.43 24.32-14.9 10.19-25.2 24.91-32.7 39.72C114 160.57 112 140.82 112 112V96H80v16c0 37.44 2.59 73.36 32 101.2v58.93H32v32l80-.13c0 19 3.7 53.09 10.39 69.69C96.6 396.76 80 422.31 80 464v16h32v-16c0-27.66 9.1-44.71 26.17-61.32C160 448 177 464 240 464V176h32v288c65 0 80-16 101.83-61.32C390.9 419.29 400 436.35 400 464v16h32v-16c0-41.68-16.6-67.23-42.39-90.31C396.3 357.09 400 323 400 304z"
      />
      <path
        d="M256 32c-48.06 0-96 0-96 84 26.12-14 59.35-20 96-20 24.09 0 46.09 2.65 65.39 8 10.75 3 24.66 8.71 30.61 12 0-84-47.94-84-96-84z"
      />
    </svg>

  @react.component
  let build = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M230 209.2L32 405.58 106.65 480l197.59-198.17c46.47 17.46 105.52 12.54 143-24.78 40.44-40.32 40.35-108 16.81-156.79l-87.33 87.06-52.32-52.13 87.33-87.06C363 24.46 294.67 24.34 254.23 64.66c-38.03 37.91-42.78 97.6-24.23 144.54z"
      />
    </svg>

  @react.component
  let bulb = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M208 464h96v32h-96zM192 416h128v32H192zM369.42 62.69C339.35 32.58 299.07 16 256 16A159.62 159.62 0 0096 176c0 46.62 17.87 90.23 49 119.64l4.36 4.09C167.37 316.57 192 339.64 192 360v40h48V269.11L195.72 244 214 217.72 256 240l41.29-22.39 19.1 25.68-44.39 26V400h48v-40c0-19.88 24.36-42.93 42.15-59.77l4.91-4.66C399.08 265 416 223.61 416 176a159.16 159.16 0 00-46.58-113.31z"
      />
    </svg>

  @react.component
  let bus = (~className="", ~fill="none") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path d="M400 64H112a16 16 0 000 32h288a16 16 0 000-32z" fill />
      <path
        d="M424 32H88a24 24 0 00-24 24v360a32 32 0 0016 27.71V480h72v-32h208v32h72v-36.29A32 32 0 00448 416V56a24 24 0 00-24-24zM175.82 371.47a32 32 0 11-35.3-35.29 32.09 32.09 0 0135.3 35.29zM240 288H96V128h144zm16-192H96.46L96 64h320l-.46 32H256zm16 32h144v160H272zm64.18 236.53a32 32 0 1135.3 35.29 32.09 32.09 0 01-35.3-35.29z"
      />
    </svg>

  @react.component
  let business = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M320 176V16H32v480h128v-96h32v96h288V176zM112 432H80v-32h32zm0-80H80v-32h32zm0-80H80v-32h32zm0-80H80v-32h32zm0-80H80V80h32zm128-32h32v32h-32zm-48 272h-32v-32h32zm0-80h-32v-32h32zm0-80h-32v-32h32zm0-80h-32V80h32zm80 320h-32v-32h32zm0-80h-32v-32h32zm0-80h-32v-32h32zm0-80h-32v-32h32v32zm176 272H320v-32h32v-32h-32v-48h32v-32h-32v-48h32v-32h-32v-32h128z"
      />
      <path d="M384 400h32v32h-32zM384 320h32v32h-32zM384 240h32v32h-32z" />
    </svg>

  @react.component
  let cafe = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M448 64H80v254.34a19.83 19.83 0 005.86 14.14l29.65 29.66a19.87 19.87 0 0014.15 5.86h204.68a19.87 19.87 0 0014.15-5.86l29.65-29.66a19.83 19.83 0 005.86-14.14V192h32a16 16 0 0011.31-4.69l32-32A16 16 0 00464 144V80a16 16 0 00-16-16zm-16 73.37L409.37 160H384V96h48zM48 400h368v32H48z"
      />
    </svg>

  @react.component
  let calculator = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M416 48a16 16 0 00-16-16H112a16 16 0 00-16 16v416a16 16 0 0016 16h288a16 16 0 0016-16zM192 432h-48v-48h48zm0-80h-48v-48h48zm0-80h-48v-48h48zm88 160h-48v-48h48zm0-80h-48v-48h48zm0-80h-48v-48h48zm88 160h-48V304h48zm0-160h-48v-48h48zm0-96H144V80h224z"
      />
    </svg>

  @react.component
  let calendar = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M32 456a24 24 0 0024 24h400a24 24 0 0024-24V176H32zm320-244a4 4 0 014-4h40a4 4 0 014 4v40a4 4 0 01-4 4h-40a4 4 0 01-4-4zm0 80a4 4 0 014-4h40a4 4 0 014 4v40a4 4 0 01-4 4h-40a4 4 0 01-4-4zm-80-80a4 4 0 014-4h40a4 4 0 014 4v40a4 4 0 01-4 4h-40a4 4 0 01-4-4zm0 80a4 4 0 014-4h40a4 4 0 014 4v40a4 4 0 01-4 4h-40a4 4 0 01-4-4zm0 80a4 4 0 014-4h40a4 4 0 014 4v40a4 4 0 01-4 4h-40a4 4 0 01-4-4zm-80-80a4 4 0 014-4h40a4 4 0 014 4v40a4 4 0 01-4 4h-40a4 4 0 01-4-4zm0 80a4 4 0 014-4h40a4 4 0 014 4v40a4 4 0 01-4 4h-40a4 4 0 01-4-4zm-80-80a4 4 0 014-4h40a4 4 0 014 4v40a4 4 0 01-4 4h-40a4 4 0 01-4-4zm0 80a4 4 0 014-4h40a4 4 0 014 4v40a4 4 0 01-4 4h-40a4 4 0 01-4-4zM456 64h-55.92V32h-48v32H159.92V32h-48v32H56a23.8 23.8 0 00-24 23.77V144h448V87.77A23.8 23.8 0 00456 64z"
      />
    </svg>

  @react.component
  let calendarClear = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M32 456a24 24 0 0024 24h400a24 24 0 0024-24V192H32zM480 87.77A23.8 23.8 0 00456 64h-55.92V32h-48v32H159.92V32h-48v32H56a23.8 23.8 0 00-24 23.77V144h448z"
      />
    </svg>

  @react.component
  let calendarNumber = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M32 456a24 24 0 0024 24h400a24 24 0 0024-24V176H32zm310.17-244H368v200h-32V256.29l-35.39 26.08-19-25.76zM222 335.3c-8.54-8.74-22.75-12.67-30.11-12.67h-16v-32h16c4.85 0 17.41-2.6 25.28-10.65a22 22 0 006.57-16.08c0-23.23-28.63-23.9-31.89-23.9-17.34 0-23.8 10.61-24.07 11.06l-8.13 13.78-27.56-16.27 8.14-13.77c7.64-13 25.22-26.8 51.62-26.8 16.44 0 31.76 4.77 43.13 13.42 13.39 10.2 20.76 25.28 20.76 42.48A54 54 0 01240 302.35c-1.15 1.18-2.36 2.28-3.59 3.35a66.18 66.18 0 018.42 7.23c10.56 10.8 16.14 25.75 16.14 43.25 0 18.06-7.61 34-21.42 44.92-12.17 9.61-28.75 14.9-46.7 14.9-27.87 0-48.48-18.16-57.66-33.7l-8.13-13.78 27.56-16.27 8.16 13.75c1.08 1.84 11.15 18 30.1 18 16.66 0 36.12-7.29 36.12-27.82 0-6.25-1.22-14.95-7-20.88zM456 64h-55.92V32h-48v32H159.92V32h-48v32H56a23.8 23.8 0 00-24 23.77V144h448V87.77A23.8 23.8 0 00456 64z"
      />
    </svg>

  @react.component
  let call = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M478.94 370.14c-5.22-5.56-23.65-22-57.53-43.75-34.13-21.94-59.3-35.62-66.52-38.81a3.83 3.83 0 00-3.92.49c-11.63 9.07-31.21 25.73-32.26 26.63-6.78 5.81-6.78 5.81-12.33 4-9.76-3.2-40.08-19.3-66.5-45.78s-43.35-57.55-46.55-67.3c-1.83-5.56-1.83-5.56 4-12.34.9-1.05 17.57-20.63 26.64-32.25a3.83 3.83 0 00.49-3.92c-3.19-7.23-16.87-32.39-38.81-66.52-21.78-33.87-38.2-52.3-43.76-57.52a3.9 3.9 0 00-3.89-.87 322.35 322.35 0 00-56 25.45A338 338 0 0033.35 92a3.83 3.83 0 00-1.26 3.74c2.09 9.74 12.08 50.4 43.08 106.72 31.63 57.48 53.55 86.93 100 133.22S252 405.21 309.54 436.84c56.32 31 97 41 106.72 43.07a3.86 3.86 0 003.75-1.26A337.73 337.73 0 00454.35 430a322.7 322.7 0 0025.45-56 3.9 3.9 0 00-.86-3.86z"
      />
    </svg>

  @react.component
  let camera = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle cx="256" cy="272" r="64" />
      <path
        d="M456 144h-83c-3 0-6.72-1.94-9.62-5L336.1 96.2C325 80 320 80 302 80h-92c-18 0-24 0-34.07 16.21L148.62 139c-2.22 2.42-5.34 5-8.62 5v-16a8 8 0 00-8-8H92a8 8 0 00-8 8v16H56a24 24 0 00-24 24v240a24 24 0 0024 24h400a24 24 0 0024-24V168a24 24 0 00-24-24zM260.51 367.9a96 96 0 1191.39-91.39 96.11 96.11 0 01-91.39 91.39z"
      />
    </svg>

  @react.component
  let cameraReverse = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M456 144h-83c-3 0-6.72-1.94-9.62-5l-27.31-42.79C326 80 320 80 302 80h-92c-18 0-23 0-34.07 16.21L148.62 139c-2.22 2.42-5.34 5-8.62 5v-16a8 8 0 00-8-8H92a8 8 0 00-8 8v16H56a24 24 0 00-24 24v240a24 24 0 0024 24h400a24 24 0 0024-24V168a24 24 0 00-24-24zM256 368c-47.82 0-87.76-34.23-95-80h-43.63L176 229.37 234.63 288H194a64.07 64.07 0 00102.63 33.49L320 343l-3.68 3.72A96.64 96.64 0 01256 368zm80-53.84L277.11 256H318a64.26 64.26 0 00-103-33.36L192 200l3.14-2.45A96.19 96.19 0 01255.76 176c47.85 0 87 34.19 94.24 80h44.92z"
      />
    </svg>

  @react.component
  let car = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M447.68 220.78a16.44 16.44 0 00-1-3.1l-48-112A16 16 0 00384 96H128a16 16 0 00-14.71 9.7l-48 112a16.44 16.44 0 00-1 3.1A16.15 16.15 0 0064 224v184a8 8 0 008 8h32a8 8 0 008-8v-24h288v24a8 8 0 008 8h32a8 8 0 008-8V224a16.15 16.15 0 00-.32-3.22zM144 320a32 32 0 1132-32 32 32 0 01-32 32zm224 0a32 32 0 1132-32 32 32 0 01-32 32zM104.26 208l34.29-80h234.9l34.29 80z"
      />
    </svg>

  @react.component
  let carSport = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M488 224c-3-5-32.61-17.79-32.61-17.79 5.15-2.66 8.67-3.21 8.67-14.21 0-12-.06-16-8.06-16h-27.14c-.11-.24-.23-.49-.34-.74-17.52-38.26-19.87-47.93-46-60.95C347.47 96.88 281.76 96 256 96s-91.47.88-126.49 18.31c-26.16 13-25.51 19.69-46 60.95 0 .11-.21.4-.4.74H55.94c-7.94 0-8 4-8 16 0 11 3.52 11.55 8.67 14.21C56.61 206.21 28 220 24 224s-8 32-8 80 4 96 4 96h11.94c0 14 2.06 16 8.06 16h80c6 0 8-2 8-16h256c0 14 2 16 8 16h82c4 0 6-3 6-16h12s4-49 4-96-5-75-8-80zm-362.74 44.94A516.94 516.94 0 0170.42 272c-20.42 0-21.12 1.31-22.56-11.44a72.16 72.16 0 01.51-17.51L49 240h3c12 0 23.27.51 44.55 6.78a98 98 0 0130.09 15.06C131 265 132 268 132 268zm247.16 72L368 352H144s.39-.61-5-11.18c-4-7.82 1-12.82 8.91-15.66C163.23 319.64 208 304 256 304s93.66 13.48 108.5 21.16C370 328 376.83 330 372.42 341zm-257-136.53a96.23 96.23 0 01-9.7.07c2.61-4.64 4.06-9.81 6.61-15.21 8-17 17.15-36.24 33.44-44.35 23.54-11.72 72.33-17 110.23-17s86.69 5.24 110.23 17c16.29 8.11 25.4 27.36 33.44 44.35 2.57 5.45 4 10.66 6.68 15.33-2 .11-4.3 0-9.79-.19zm347.72 56.11C461 273 463 272 441.58 272a516.94 516.94 0 01-54.84-3.06c-2.85-.51-3.66-5.32-1.38-7.1a93.84 93.84 0 0130.09-15.06c21.28-6.27 33.26-7.11 45.09-6.69a3.22 3.22 0 013.09 3 70.18 70.18 0 01-.49 17.47z"
      />
    </svg>

  @react.component
  let card = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M32 416a16 16 0 0016 16h416a16 16 0 0016-16V222H32zm66-138a8 8 0 018-8h92a8 8 0 018 8v64a8 8 0 01-8 8h-92a8 8 0 01-8-8zM464 80H48a16 16 0 00-16 16v66h448V96a16 16 0 00-16-16z"
      />
    </svg>

  @react.component
  let caretBack = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path d="M368 64L144 256l224 192V64z" />
    </svg>

  @react.component
  let caretBackCircle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M48 256c0 114.87 93.13 208 208 208s208-93.13 208-208S370.87 48 256 48 48 141.13 48 256zm252 108.27L169.91 256 300 147.73z"
      />
    </svg>

  @react.component
  let caretDown = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path d="M64 144l192 224 192-224H64z" />
    </svg>

  @react.component
  let caretDownCircle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M464 256c0-114.87-93.13-208-208-208S48 141.13 48 256s93.13 208 208 208 208-93.13 208-208zm-99.73-44L256 342.09 147.73 212z"
      />
    </svg>

  @react.component
  let caretForward = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path d="M144 448l224-192L144 64v384z" />
    </svg>

  @react.component
  let caretForwardCircle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M464 256c0-114.87-93.13-208-208-208S48 141.13 48 256s93.13 208 208 208 208-93.13 208-208zM212 147.73L342.09 256 212 364.27z"
      />
    </svg>

  @react.component
  let caretUp = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path d="M448 368L256 144 64 368h384z" />
    </svg>

  @react.component
  let caretUpCircle = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M256 48C141.13 48 48 141.13 48 256s93.13 208 208 208 208-93.13 208-208S370.87 48 256 48zM147.73 300L256 169.91 364.27 300z"
      />
    </svg>

  @react.component
  let cart = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <circle cx="176" cy="416" r="32" />
      <circle cx="400" cy="416" r="32" />
      <path
        d="M167.78 304h261.34l38.4-192H133.89l-8.47-48H32v32h66.58l48 272H432v-32H173.42l-5.64-32z"
      />
    </svg>

  @react.component
  let cash = (~className="") =>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      className={merge(.[defaultSize, className])}
      viewBox="0 0 512 512">
      <path
        d="M48 368h416v32H48zM80 416h352v32H80zM480 176a96.11 96.11 0 01-96-96V64H128v16a96.11 96.11 0 01-96 96H16v64h16a96.11 96.11 0 0196 96v16h256v-16a96.11 96.11 0 0196-96h16v-64zM256 304a96 96 0 1196-96 96.11 96.11 0 01-96 96z"
      />
      <path
        d="M96 80V64H16v80h16a64.07 64.07 0 0064-64zM32 272H16v80h80v-16a64.07 64.07 0 00-64-64zM480 144h16V64h-80v16a64.07 64.07 0 0064 64zM416 336v16h80v-80h-16a64.07 64.07 0 00-64 64z"
      />
      <circle cx="256" cy="208" r="64" />
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
