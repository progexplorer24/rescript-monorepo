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

  module Logos = {
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

    @react.component
    let amazon = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M48.48 378.73a300.52 300.52 0 00152.89 95.92 262.57 262.57 0 00159.3-17.25 225.52 225.52 0 0066.79-47 6.36 6.36 0 00-2-8.53 11.76 11.76 0 00-8-.05 401.92 401.92 0 01-116.55 39.34 358.13 358.13 0 01-127.29-8.83 446.73 446.73 0 01-119.1-60.49 5 5 0 00-6.06 6.9z"
        />
        <path
          d="M387.15 388.44a168.11 168.11 0 0148.94-2.23l.67.13a10 10 0 017.37 12.05A204.71 204.71 0 01429 444.47a2.55 2.55 0 001.66 3.18 2.51 2.51 0 002.23-.37A83.31 83.31 0 00464 382.86a12.44 12.44 0 00-10.22-13.22A95.75 95.75 0 00384.91 384a2.55 2.55 0 00-.57 3.55 2.52 2.52 0 002.81.89zM304.24 324.92a164 164 0 01-28.92 25.3A135.16 135.16 0 01208.63 369a99.49 99.49 0 01-57.49-19.85 97.25 97.25 0 01-27.36-100.28 112.35 112.35 0 0165.3-69.06 367.67 367.67 0 01104.7-15.55V127A37.82 37.82 0 00261 94.72a59.9 59.9 0 00-31.17 4.08 48.89 48.89 0 00-27.13 34.67 12 12 0 01-12.58 6.72l-50.9-4.5a11.38 11.38 0 01-8.38-10.16 103.66 103.66 0 0136.61-63.45A143.86 143.86 0 01257.85 32a146.24 146.24 0 0184.27 27.67 86.82 86.82 0 0130.7 70.22V258.8a84.46 84.46 0 008 31.28l15.87 23.23a13 13 0 010 11.23l-46.99 39.71a12.5 12.5 0 01-12.68-.44 244.84 244.84 0 01-32.78-38.89zm-10.6-116.83a257.68 257.68 0 00-44 2.89A63 63 0 00208 242.54a63 63 0 003.07 54 40.6 40.6 0 0047.11 12.19 78.61 78.61 0 0035.46-55.58v-45.06"
        />
      </svg>

    @react.component
    let amplify = (~className="", ~fillRule="evennodd") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M112.31 268l40.36-68.69 34.65 59-67.54 115h135L289.31 432H16zm58.57-99.76l33.27-56.67L392.44 432h-66.68zM222.67 80h66.59L496 432h-66.68z"
          fillRule
        />
      </svg>

    @react.component
    let android = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M380.91 199l42.47-73.57a8.63 8.63 0 00-3.12-11.76 8.52 8.52 0 00-11.71 3.12l-43 74.52c-32.83-15-69.78-23.35-109.52-23.35s-76.69 8.36-109.52 23.35l-43-74.52a8.6 8.6 0 10-14.88 8.64L131 199C57.8 238.64 8.19 312.77 0 399.55h512c-8.19-86.78-57.8-160.91-131.09-200.55zM138.45 327.65a21.46 21.46 0 1121.46-21.46 21.47 21.47 0 01-21.46 21.46zm235 0A21.46 21.46 0 11395 306.19a21.47 21.47 0 01-21.51 21.46z"
        />
      </svg>

    @react.component
    let angular = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path d="M213.57 256h84.85l-42.43-89.36L213.57 256z" />
        <path
          d="M256 32L32 112l46.12 272L256 480l177.75-96L480 112zm88 320l-26.59-56H194.58L168 352h-40L256 72l128 280z"
        />
      </svg>

    @react.component
    let apple = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M349.13 136.86c-40.32 0-57.36 19.24-85.44 19.24-28.79 0-50.75-19.1-85.69-19.1-34.2 0-70.67 20.88-93.83 56.45-32.52 50.16-27 144.63 25.67 225.11 18.84 28.81 44 61.12 77 61.47h.6c28.68 0 37.2-18.78 76.67-19h.6c38.88 0 46.68 18.89 75.24 18.89h.6c33-.35 59.51-36.15 78.35-64.85 13.56-20.64 18.6-31 29-54.35-76.19-28.92-88.43-136.93-13.08-178.34-23-28.8-55.32-45.48-85.79-45.48z"
        />
        <path
          d="M340.25 32c-24 1.63-52 16.91-68.4 36.86-14.88 18.08-27.12 44.9-22.32 70.91h1.92c25.56 0 51.72-15.39 67-35.11 14.72-18.77 25.88-45.37 21.8-72.66z"
        />
      </svg>

    @react.component
    let appleAppStore = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M256 32C132.26 32 32 132.26 32 256s100.26 224 224 224 224-100.26 224-224S379.74 32 256 32zm-85 321.89a15.48 15.48 0 01-13.46 7.65 14.91 14.91 0 01-7.86-2.16 15.48 15.48 0 01-5.6-21.21l15.29-25.42a8.73 8.73 0 017.54-4.3h2.26c11.09 0 18.85 6.67 21.11 13.13zm129.45-50l-100.13.11h-66.55a15.46 15.46 0 01-15.51-16.15c.32-8.4 7.65-14.76 16-14.76h48.24l57.19-97.35-18.52-31.55C217 137 218.85 127.52 226 123a15.57 15.57 0 0121.87 5.17l9.9 16.91h.11l9.91-16.91A15.58 15.58 0 01289.6 123c7.11 4.52 8.94 14 4.74 21.22l-18.52 31.55-18 30.69-39.09 66.66v.11h57.61c7.22 0 16.27 3.88 19.93 10.12l.32.65c3.23 5.49 5.06 9.26 5.06 14.75a13.82 13.82 0 01-1.17 5.17zm77.75.11h-27.11v.11l19.82 33.71a15.8 15.8 0 01-5.17 21.53 15.53 15.53 0 01-8.08 2.27A15.71 15.71 0 01344.2 354l-29.29-49.86-18.2-31L273.23 233a38.35 38.35 0 01-.65-38c4.64-8.19 8.19-10.34 8.19-10.34L333 273h44.91c8.4 0 15.61 6.46 16 14.75A15.65 15.65 0 01378.23 304z"
        />
      </svg>

    @react.component
    let appleAr = (
      ~className="",
      ~fill="none",
      ~stroke="currentColor",
      ~strokeLinecap="round",
      ~strokeMiterlimit="10",
      ~strokeWidth="32",
    ) =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M201.14 64L256 32l54.86 32" fill stroke strokeLinecap strokeMiterlimit strokeWidth
        />
        <path d="M256 32v80" fill stroke strokeLinecap strokeMiterlimit strokeWidth />
        <path
          d="M310.86 448L256 480l-54.86-32" fill stroke strokeLinecap strokeMiterlimit strokeWidth
        />
        <path d="M256 480v-80" fill stroke strokeLinecap strokeMiterlimit strokeWidth />
        <path
          d="M64 207.51V144l53.15-31.51" fill stroke strokeLinecap strokeMiterlimit strokeWidth
        />
        <path d="M64 144l67.29 40" fill stroke strokeLinecap strokeMiterlimit strokeWidth />
        <path
          d="M448 304.49V368l-53.15 31.51" fill stroke strokeLinecap strokeMiterlimit strokeWidth
        />
        <path d="M448 368l-67.29-40" fill stroke strokeLinecap strokeMiterlimit strokeWidth />
        <path
          d="M117.15 400L64 368v-63.51" fill stroke strokeLinecap strokeMiterlimit strokeWidth
        />
        <path d="M64 368l66.64-40" fill stroke strokeLinecap strokeMiterlimit strokeWidth />
        <path
          d="M394.85 112.49L448 144v63.51" fill stroke strokeLinecap strokeMiterlimit strokeWidth
        />
        <path
          d="M448 144l-67.29 40M256 320v-64l54.86-32M256 256l-54.86-32"
          fill
          stroke
          strokeLinecap
          strokeMiterlimit
          strokeWidth
        />
      </svg>

    @react.component
    let behance = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M344.1 233.6c-28.9 0-32.9 28.8-32.9 28.8h61.4s.4-28.8-28.5-28.8zM204.8 262.4h-54.4v50h51.7c7.8-.2 22.4-2.4 22.4-24.3 0-26-19.7-25.7-19.7-25.7z"
        />
        <path
          d="M256 32C132.3 32 32 132.3 32 256s100.3 224 224 224 224-100.3 224-224S379.7 32 256 32zm47.2 137.6h77.1v23h-77.1v-23zm-39 120.8c0 57-59.4 55.2-59.4 55.2h-97.2v-187h97.2c29.6 0 52.9 16.3 52.9 49.8S229.2 244 229.2 244c37.6 0 35 46.4 35 46.4zm144.2-3.1h-96.9c0 34.7 32.9 32.5 32.9 32.5 31.1 0 30-20.1 30-20.1h32.9c0 53.4-64 49.7-64 49.7-76.7 0-71.8-71.5-71.8-71.5s-.1-71.8 71.8-71.8c75.7.1 65.1 81.2 65.1 81.2z"
        />
        <path d="M218 211.3c0-19.4-13.2-19.4-13.2-19.4h-54.4v41.7h51c8.8 0 16.6-2.9 16.6-22.3z" />
      </svg>

    @react.component
    let bitBucket = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M483.13 32.23a19.65 19.65 0 00-2.54-.23h-449C23 31.88 16.12 38.88 16 47.75a11.44 11.44 0 00.23 2.8l65.3 411.25a22.52 22.52 0 007 12.95A20 20 0 00102 480h313.18a15.45 15.45 0 0015.34-13.42l38.88-247.91H325.19l-18.46 112H205.21l-25.73-148h295.58l20.76-132c1.27-8.75-4.38-17.04-12.69-18.44z"
        />
      </svg>

    @react.component
    let bitCoin = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M410.47 279.2c-5-11.5-12.7-21.6-28.1-30.1a98.15 98.15 0 00-25.4-10 62.22 62.22 0 0016.3-11 56.37 56.37 0 0015.6-23.3 77.11 77.11 0 003.5-28.2c-1.1-16.8-4.4-33.1-13.2-44.8s-21.2-20.7-37.6-27c-12.6-4.8-25.5-7.8-45.5-8.9V32h-40v64h-32V32h-41v64H96v48h27.87c8.7 0 14.6.8 17.6 2.3a13.22 13.22 0 016.5 6c1.3 2.5 1.9 8.4 1.9 17.5V343c0 9-.6 14.8-1.9 17.4s-2 4.9-5.1 6.3-3.2 1.3-11.8 1.3h-26.4L96 416h87v64h41v-64h32v64h40v-64.4c26-1.3 44.5-4.7 59.4-10.3 19.3-7.2 34.1-17.7 44.7-31.5s14-34.9 14.93-51.2c.67-14.5-.03-33.2-4.56-43.4zM224 150h32v74h-32zm0 212v-90h32v90zm72-208.1c6 2.5 9.9 7.5 13.8 12.7 4.3 5.7 6.5 13.3 6.5 21.4 0 7.8-2.9 14.5-7.5 20.5-3.8 4.9-6.8 8.3-12.8 11.1zm28.8 186.7c-7.8 6.9-12.3 10.1-22.1 13.8a56.06 56.06 0 01-6.7 1.9v-82.8a40.74 40.74 0 0111.3 3.4c7.8 3.3 15.2 6.9 19.8 13.2a43.82 43.82 0 018 24.7c-.03 10.9-2.83 19.2-10.33 25.8z"
        />
      </svg>

    @react.component
    let buffer = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M39.93 149.25l197.4 95.32c5.14 2.45 12 3.73 18.79 3.73s13.65-1.28 18.78-3.73l197.4-95.32c10.38-5 10.38-13.18 0-18.2L274.9 35.73c-5.13-2.45-12-3.73-18.78-3.73s-13.65 1.28-18.79 3.73l-197.4 95.32c-10.38 5.02-10.38 13.18 0 18.2z"
        />
        <path
          d="M472.3 246.9s-36.05-17.38-40.83-19.72-6.07-2.21-11.09.12-145.6 70.23-145.6 70.23a45.71 45.71 0 01-18.78 3.74c-6.77 0-13.65-1.29-18.78-3.74 0 0-136.85-66-143.27-69.18C87 225 85 225 78.67 228l-39 18.78c-10.38 5-10.38 13.19 0 18.2L237.1 360.3c5.13 2.45 12 3.73 18.78 3.73s13.65-1.28 18.79-3.73l197.4-95.3c10.61-4.92 10.61-13.08.23-18.1z"
        />
        <path
          d="M472.3 362.75s-36.05-17.38-40.83-19.75-6.07-2.21-11.09.12S274.9 413.5 274.9 413.5a45.74 45.74 0 01-18.78 3.73c-6.77 0-13.65-1.28-18.79-3.73 0 0-136.85-66-143.26-69.18-7-3.39-9-3.39-15.29-.35l-39 18.78c-10.39 5-10.39 13.18 0 18.2l197.4 95.32c5.13 2.56 12 3.73 18.78 3.73s13.65-1.28 18.78-3.73L472.18 381c10.5-5.07 10.5-13.23.12-18.25z"
        />
      </svg>

    @react.component
    let capacitor = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M480 101.09L372.37 208.72l106.86 107.06-69.3 69.3-283.22-283.23L196 32.54l107.07 106.88L410.67 32zM32.55 196l69.3-69.31 283.22 283.24-69.3 69.3-107-106.87L101.08 480 32 410.67l107.42-107.61z"
        />
      </svg>

    @react.component
    let chrome = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path d="M188.8 255.93a67.2 67.2 0 1067.2-67.18 67.38 67.38 0 00-67.2 67.18z" />
        <path
          d="M476.75 217.79v.05a206.63 206.63 0 00-7-28.84h-.11a202.16 202.16 0 017.07 29 203.5 203.5 0 00-7.07-29h-155.4c19.05 17 31.36 40.17 31.36 67.05a86.55 86.55 0 01-12.31 44.73L231 478.45a2.44 2.44 0 010 .27v.28-.26a224 224 0 0025 1.26c6.84 0 13.61-.39 20.3-1a222.91 222.91 0 0029.78-4.74C405.68 451.52 480 362.4 480 255.94a225.25 225.25 0 00-3.25-38.15z"
        />
        <path
          d="M256 345.5c-33.6 0-61.6-17.91-77.29-44.79L76 123.05l-.14-.24A224 224 0 00207.4 474.55v-.05l77.69-134.6a84.13 84.13 0 01-29.09 5.6z"
        />
        <path
          d="M91.29 104.57l77.35 133.25A89.19 89.19 0 01256 166h205.17a246.51 246.51 0 00-25.78-43.94l.12.08A245.26 245.26 0 01461.17 166h.17a245.91 245.91 0 00-25.66-44 2.63 2.63 0 01-.35-.26 223.93 223.93 0 00-344.19-17.4l.14.24z"
        />
      </svg>

    @react.component
    let closedCaptioning = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M0 80v352h512V80zm464 175.78c0 25.74-1.6 45.32-3.77 77.22s-19.2 54.34-59.09 57.86-95.77 3.85-145.14 3.74c-49 .11-105.14-.11-145.14-3.74s-56.8-26-59.09-57.86S48 281.52 48 255.78s.11-42.46 3.77-77.22 23-54.12 59.09-57.64 98.28-3.52 145.14-3.52 109 0 145.14 3.52 55.43 23 59.09 57.64 3.77 51.59 3.77 77.22z"
        />
        <path
          d="M367.57 282.84v.77c0 17.93-11.11 28.49-25.95 28.49s-24.84-11.88-26.27-28.49c0 0-1.31-8.69-1.31-26.29a229.5 229.5 0 011.53-28.6c2.64-18.7 11.77-28.49 26.6-28.49s26.49 12.76 26.49 32.12v.55h49.58c0-24.09-6.05-45.76-18.25-59.4S369.76 153 345.8 153a108.06 108.06 0 00-33 4.73 58.82 58.82 0 00-25.94 16.61c-7.23 7.96-12.86 18.52-16.86 31.83s-6 30-6 50.27c0 19.8 1.65 36.3 4.84 49.61s8 23.87 14.4 31.79a49.76 49.76 0 0024 16.5q14.5 4.62 34 4.62c27.47 0 47.26-7 59.13-20.57S418 305.06 418 279.1h-50.65c.22 0 .22 2.75.22 3.74zM197.3 282.84v.77c0 17.93-11.1 28.49-25.94 28.49s-24.84-11.88-26.27-28.49c0 0-1.31-8.69-1.31-26.29a229.5 229.5 0 011.53-28.6c2.64-18.7 11.77-28.49 26.6-28.49S198.4 213 198.4 232.35v.55H248c0-24.09-6-45.76-18.25-59.4S199.5 153 175.54 153a108.06 108.06 0 00-33 4.73 58.82 58.82 0 00-25.94 16.61c-7.26 7.92-12.86 18.48-16.93 31.79s-6 30-6 50.27c0 19.8 1.65 36.3 4.84 49.61s8 23.87 14.4 31.79a49.76 49.76 0 0024 16.5q14.51 4.62 34 4.62c27.48 0 47.27-7 59.14-20.57s17.81-33.33 17.81-59.29h-50.78c.22.04.22 2.79.22 3.78z"
        />
      </svg>

    @react.component
    let codepen = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M241.24 303.94c-15.32-10.36-30.74-20.57-46.06-30.93-2-1.38-3.43-1.48-5.5 0l-38.88 26.12C182 319.9 244 361.32 244 361.32v-53.79c0-1.22-1.55-2.78-2.76-3.59zM195.09 240.67q23.19-15.24 46.11-30.86a7.54 7.54 0 002.8-5.34v-51.7s-62 41.12-93.26 61.94c13.7 9.16 26.67 17.91 39.78 26.44 1.02.66 3.4.28 4.57-.48zM269.84 209.35q23.71 16.07 47.63 31.82a4.3 4.3 0 003.83 0l39.76-26.47L268 152.48v53.35a4.79 4.79 0 001.84 3.52zM258.11 230.37a5.27 5.27 0 00-4.74.17c-4.82 3-9.47 6.2-14.17 9.35-8.25 5.53-25.35 17-25.35 17l38.84 25.86a6.18 6.18 0 006.26.11l39-26s-34.07-22.66-39.84-26.49zM141 237.12v39.61l29.62-19.84L141 237.12z"
        />
        <path
          d="M256 32C132.29 32 32 132.29 32 256s100.29 224 224 224 224-100.29 224-224S379.71 32 256 32zm139 265c0 5.78-2.65 9.86-7.51 13.09q-61.71 41-123.29 82.19c-5.85 3.92-11.17 3.75-17-.14q-61.17-41-122.63-81.67c-5.11-3.39-7.59-7.56-7.59-13.73V217c0-6.14 2.52-10.34 7.62-13.72 40.91-27.13 81.94-54.36 122.73-81.68 5.82-3.89 11.09-4 16.94-.09q61.54 41.21 123.26 82.19c4.68 3.11 7.45 6.95 7.45 12.66z"
        />
        <path
          d="M316.25 273.23q-22.59 15.34-45.39 30.34c-2.41 1.58-2.89 3.31-2.86 6.19v51.34l93-62-38.53-25.88c-2.3-1.61-3.89-1.57-6.22.01zM370 276.68v-39.62l-29.59 19.87L370 276.68z"
        />
      </svg>

    @react.component
    let css3 = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M64 32l35 403.22L255.77 480 413 435.15 448 32zm290.68 334.9L256.07 395l-98.46-28.24-6.75-77.76h48.26l3.43 39.56 53.59 15.16.13.28 53.47-14.85 5.64-64.15H203l-4-50h120.65l4.35-51H140l-4-49h240.58z"
        />
      </svg>

    @react.component
    let designerNews = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path d="M295.31 122.8L222.86 64l72.68 122.64-.23-63.84z" />
        <path
          d="M339.43 64v195.6h-41.6L225.6 141.28l1.94 118.32h-45.83V131.2L139.09 96c1.14 1.44 2.28 2.88 3.31 4.44 11.43 16.68 17.14 36.6 17.14 60.6 0 59-35 98.52-87.88 98.52H0v.48L228.11 448H512V205.72z"
        />
        <path
          d="M111.89 162.52c0-34.8-16.23-54.12-45.38-54.12H44.57v106.8h21.72c29.71 0 45.6-18.48 45.6-52.68z"
        />
      </svg>

    @react.component
    let devianStart = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M408 103.28V16h-89.31l-8.9 8.78-42.15 78.48-13.25 8.74H104v119.85h82.68l7.36 8.71L104 408.72V496h89.3l8.91-8.79 42.14-78.48 13.26-8.73H408V280.13h-82.68l-7.36-8.75L408 103.28z"
        />
      </svg>

    @react.component
    let discord = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M464 66.52A50 50 0 00414.12 17L97.64 16A49.65 49.65 0 0048 65.52V392c0 27.3 22.28 48 49.64 48H368l-13-44 109 100zM324.65 329.81s-8.72-10.39-16-19.32C340.39 301.55 352.5 282 352.5 282a139 139 0 01-27.85 14.25 173.31 173.31 0 01-35.11 10.39 170.05 170.05 0 01-62.72-.24 184.45 184.45 0 01-35.59-10.4 141.46 141.46 0 01-17.68-8.21c-.73-.48-1.45-.72-2.18-1.21-.49-.24-.73-.48-1-.48-4.36-2.42-6.78-4.11-6.78-4.11s11.62 19.09 42.38 28.26c-7.27 9.18-16.23 19.81-16.23 19.81-53.51-1.69-73.85-36.47-73.85-36.47 0-77.06 34.87-139.62 34.87-139.62 34.87-25.85 67.8-25.12 67.8-25.12l2.42 2.9c-43.59 12.32-63.44 31.4-63.44 31.4s5.32-2.9 14.28-6.77c25.91-11.35 46.5-14.25 55-15.21a24 24 0 014.12-.49 205.62 205.62 0 0148.91-.48 201.62 201.62 0 0172.89 22.95s-19.13-18.15-60.3-30.45l3.39-3.86s33.17-.73 67.81 25.16c0 0 34.87 62.56 34.87 139.62 0-.28-20.35 34.5-73.86 36.19z"
        />
        <path
          d="M212.05 218c-13.8 0-24.7 11.84-24.7 26.57s11.14 26.57 24.7 26.57c13.8 0 24.7-11.83 24.7-26.57.25-14.76-10.9-26.57-24.7-26.57zM300.43 218c-13.8 0-24.7 11.84-24.7 26.57s11.14 26.57 24.7 26.57c13.81 0 24.7-11.83 24.7-26.57S314 218 300.43 218z"
        />
      </svg>

    @react.component
    let docker = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M507 211.16c-1.42-1.19-14.25-10.94-41.79-10.94a132.55 132.55 0 00-21.61 1.9c-5.22-36.4-35.38-54-36.57-55l-7.36-4.28-4.75 6.9a101.65 101.65 0 00-13.06 30.45c-5 20.7-1.9 40.2 8.55 56.85-12.59 7.14-33 8.8-37.28 9H15.94A15.93 15.93 0 000 262.07a241.25 241.25 0 0014.75 86.83C26.39 379.35 43.72 402 66 415.74 91.22 431.2 132.3 440 178.6 440a344.23 344.23 0 0062.45-5.71 257.44 257.44 0 0081.69-29.73 223.55 223.55 0 0055.57-45.67c26.83-30.21 42.74-64 54.38-94h4.75c29.21 0 47.26-11.66 57.23-21.65a63.31 63.31 0 0015.2-22.36l2.14-6.18z"
        />
        <path
          d="M47.29 236.37H92.4a4 4 0 004-4v-40.48a4 4 0 00-4-4H47.29a4 4 0 00-4 4v40.44a4.16 4.16 0 004 4M109.5 236.37h45.12a4 4 0 004-4v-40.48a4 4 0 00-4-4H109.5a4 4 0 00-4 4v40.44a4.16 4.16 0 004 4M172.9 236.37H218a4 4 0 004-4v-40.48a4 4 0 00-4-4h-45.1a4 4 0 00-4 4v40.44a3.87 3.87 0 004 4M235.36 236.37h45.12a4 4 0 004-4v-40.48a4 4 0 00-4-4h-45.12a4 4 0 00-4 4v40.44a4 4 0 004 4M109.5 178.57h45.12a4.16 4.16 0 004-4v-40.48a4 4 0 00-4-4H109.5a4 4 0 00-4 4v40.44a4.34 4.34 0 004 4M172.9 178.57H218a4.16 4.16 0 004-4v-40.48a4 4 0 00-4-4h-45.1a4 4 0 00-4 4v40.44a4 4 0 004 4M235.36 178.57h45.12a4.16 4.16 0 004-4v-40.48a4.16 4.16 0 00-4-4h-45.12a4 4 0 00-4 4v40.44a4.16 4.16 0 004 4M235.36 120.53h45.12a4 4 0 004-4V76a4.16 4.16 0 00-4-4h-45.12a4 4 0 00-4 4v40.44a4.17 4.17 0 004 4M298.28 236.37h45.12a4 4 0 004-4v-40.48a4 4 0 00-4-4h-45.12a4 4 0 00-4 4v40.44a4.16 4.16 0 004 4"
        />
      </svg>

    @react.component
    let dribbble = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M256 32C132.33 32 32 132.33 32 256s100.33 224 224 224 224-100.22 224-224S379.67 32 256 32zm142.22 103.25a186.36 186.36 0 0144 108.38c-40.37-2.1-88.67-2.1-127.4 1.52-4.9-12.37-9.92-24.5-15.4-36.17 44.66-19.36 79.08-44.8 98.8-73.73zM256 69.33a185.81 185.81 0 01119.12 42.94c-20.3 25.66-52.15 48-91.82 64.86C261.6 137 236.63 102.47 210 75.28a187.51 187.51 0 0146-5.95zm-84.47 20.42c26.95 26.83 52.27 61 74.44 101C203.85 203.62 155.55 211 104 211c-9.8 0-19.36-.35-28.81-.94a186.78 186.78 0 0196.34-120.31zM69.68 247.13c10.62.47 21.35.7 32.2.59 58.8-.7 113.52-9.92 160.54-25q6.65 13.83 12.6 28.35a115.43 115.43 0 00-16.69 5c-64.28 27-114.91 70.51-142.33 123.13A186 186 0 0169.33 256c0-3 .12-5.95.35-8.87zM256 442.67a185.57 185.57 0 01-114.45-39.32c24.85-49.23 69.18-90 125.07-115.27 5.25-2.45 12.25-4.43 20.3-6.18q10 27.64 17.85 57.4A678 678 0 01322 430.42a185.06 185.06 0 01-66 12.25zm100.92-29.75a672.61 672.61 0 00-17.39-92.05c-4-15.17-8.51-29.87-13.41-44.22 36.63-3 80.5-2.57 115.38 0a186.5 186.5 0 01-84.58 136.27z"
        />
      </svg>

    @react.component
    let dropBox = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M256.32 126.24l-120.16 78.25 120.16 78.24L136.16 361 16 282.08l120.16-78.24L16 126.24 136.16 48zm-120.8 259.52l120.16-78.25 120.16 78.25L255.68 464zm120.8-103.68l120.16-78.24-120.16-77.6L375.84 48 496 126.24l-120.16 78.25L496 282.73 375.84 361z"
        />
      </svg>

    @react.component
    let edge = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M255.5 15c-132 0-240 108-240 240s108 240 240 240c85.4 0 160.8-45.2 203.3-112.9a6.87 6.87 0 00-9.1-9.7 108.64 108.64 0 01-18.4 8.6c-36.8 12.6-57.1 13.1-82.1 12-27.9-1.2-61.9-10.8-85.8-25s-43.5-34.6-54.1-52.3-17-39.9-14.1-68.3c2.9-29 29.4-52.6 60.4-52.6 33.5 0 60.8 26.6 60.8 60.1 0 17-8.1 31.7-18.5 43.5-2.3 2.1-7.6 9.7 5.8 20 15.9 12.2 51.6 18 79.9 16.6s59.1-12.6 80.2-34.8c16.8-17.7 31.8-46.1 31.8-77.4C495.5 97.7 379.5 15 255.5 15z"
        />
      </svg>

    @react.component
    let electron = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M86.76 255a9.89 9.89 0 004.87-1.29 9.82 9.82 0 003.65-13.43c-16.46-28.56-17.81-52.12-7.45-70 14.26-24.57 53.61-33.65 105.27-24.29a9.86 9.86 0 0011.45-7.9 9.84 9.84 0 00-7.93-11.44c-29.19-5.28-56-5.18-77.39.3-22.3 5.71-39 17.28-48.45 33.48-14 24.19-12.7 54.73 7.42 89.62a9.85 9.85 0 008.56 4.95zM361.61 143.73c32.24.42 52.61 9.31 62.79 26.86 14.21 24.48 2.52 62.81-31.27 102.52a9.82 9.82 0 007.51 16.18 9.88 9.88 0 007.52-3.46c19.12-22.47 32.35-45.54 38.25-66.71 6.14-22 4.43-42.21-5-58.38-13.8-23.78-40.13-36.15-79.59-36.67h-.14a9.83 9.83 0 00-.12 19.66zM326.47 414.89a9.88 9.88 0 00-13.5 3.35c-16.41 27.15-36.57 42.1-56.77 42.1-28.49 0-56-29.31-73.73-78.42a9.87 9.87 0 00-12.59-5.92 9.83 9.83 0 00-6 12.58c10 27.77 23.47 50.75 39 66.46 16.11 16.34 34.55 25 53.32 25 27.38 0 53.54-18.33 73.65-51.61a9.81 9.81 0 00-3.38-13.5zM431.7 338.54a32.14 32.14 0 00-29.9 44.33c-41.8 19.5-119.8 4.79-191.87-36.62-32.91-18.9-62.16-41.86-84.6-66.39a9.9 9.9 0 00-13.91-.65 9.8 9.8 0 00-.65 13.9c23.79 26 54.68 50.28 89.33 70.18 40.28 23.13 82.27 38.63 121.43 44.81a225.54 225.54 0 0035 2.91c23.12 0 43-4.3 58.51-12.79a32.2 32.2 0 1016.7-59.68zm0 44.66a12.6 12.6 0 01-7.82-2.72 10 10 0 00-2.2-2.21 12.61 12.61 0 1110 4.93z"
        />
        <path
          d="M82.09 338.59c.57-21.26 12.41-47 33.68-73.16 23.19-28.45 56.69-56 94.34-77.65 33.25-19.1 65.2-31.9 98.07-38.91a9.83 9.83 0 10-4.12-19.22c-34.85 7.43-68.78 21-103.79 41.09C116.09 219.09 59.9 289.88 62.46 343.9a32.32 32.32 0 1019.63-5.31zM80.3 383.2a12.5 12.5 0 1112.59-12.5 12.56 12.56 0 01-12.59 12.5z"
        />
        <path
          d="M256.2 96.32a32.23 32.23 0 0026.53-13.81c17.89 11.69 34 35 45.81 66.12 13 34.39 19.84 75.38 19.84 118.54 0 37.18-5.19 72.35-15 103.6a9.72 9.72 0 00.66 7.49 9.82 9.82 0 005.8 4.84 9.89 9.89 0 0012.34-6.44c10.42-33.14 15.93-70.34 15.93-109.49 0-47.17-7.77-91.77-22.47-129-14.41-36.48-34.13-62.4-57.14-75.16a32.3 32.3 0 10-32.3 33.31zm0-44.66a12.5 12.5 0 11-12.59 12.5 12.56 12.56 0 0112.59-12.5zM251 243.36a24.35 24.35 0 005.16 48.16 24.68 24.68 0 005.16-.55A24.36 24.36 0 10251 243.36z"
        />
      </svg>

    @react.component
    let euro = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M231.8 272v-48H376l8-48H231.8v-8.12c0-38.69 16.47-62.56 87.18-62.56 28.89 0 61.45 2.69 102.5 9.42l10.52-70A508.54 508.54 0 00315.46 32C189.26 32 135 76.4 135 158.46V176H80v48h55v48H80v48h55v33.54C135 435.6 189.23 480 315.43 480a507.76 507.76 0 00116.44-12.78l-10.58-70c-41.05 6.73-73.46 9.42-102.35 9.42-70.7 0-87.14-20.18-87.14-67.94V320h128.47l7.87-48z"
        />
      </svg>

    @react.component
    let facebook = (~className="", ~fillRule="evenodd") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M480 257.35c0-123.7-100.3-224-224-224s-224 100.3-224 224c0 111.8 81.9 204.47 189 221.29V322.12h-56.89v-64.77H221V208c0-56.13 33.45-87.16 84.61-87.16 24.51 0 50.15 4.38 50.15 4.38v55.13H327.5c-27.81 0-36.51 17.26-36.51 35v42h62.12l-9.92 64.77H291v156.54c107.1-16.81 189-109.48 189-221.31z"
          fillRule
        />
      </svg>

    @react.component
    let figma = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M336 176a80 80 0 000-160H176a80 80 0 000 160 80 80 0 000 160 80 80 0 1080 80V176z"
        />
        <circle cx="336" cy="256" r="80" />
      </svg>

    @react.component
    let fireBase = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M93.19 329.38l47.45-304.07c1.64-10.37 15.55-12.82 20.46-3.55l51 95.45zM432 400l-46.74-276.79a11 11 0 00-18.54-6L80 400l159.36 91.91a33.18 33.18 0 0031.91 0zM302.36 158.93l-36.54-69.54a10.86 10.86 0 00-19.36 0L85.83 375.74z"
        />
      </svg>

    @react.component
    let fireFox = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M471.46 194.62v-.07c-.22-.76-.45-1.52-.68-2.28-.05-.19-.11-.38-.17-.56-.43-1.44-.87-2.88-1.33-4.31l-.06-.2a223.24 223.24 0 00-10-25.56 191.77 191.77 0 00-12.9-23.8 225.15 225.15 0 00-74.74-73.74A222.9 222.9 0 00256 32c-7 0-14 .34-20.82 1-24.12 2.54-64.78 11.21-97.77 40.18C257.5 11.86 417.94 85.7 404.29 223c-4.86 49-46.46 82.67-85.19 88.35a73.73 73.73 0 01-20.8.21c-94.59-13.15-88.8-90.68-60.06-123.83-38-.24-67.47 46.79-53.15 93-32.95-61.18.35-157 70.93-186-82.95-12-160.71 28.2-185.7 98.07A330.23 330.23 0 0188.07 118s-45.22 35.74-54.44 110.9c-.14 1.16-.27 2.32-.39 3.49-.05.4-.09.8-.13 1.21q-.53 5.25-.8 10.57v.81c-.07 1.48-.13 3-.17 4.46v1.25c0 1.76-.07 3.52-.07 5.29 0 123.71 100.29 224 224 224S480 379.71 480 256a224 224 0 00-8.54-61.38z"
        />
      </svg>

    @react.component
    let flickr = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M256 32C132.8 32 32 132.8 32 256s100.8 224 224 224 224-100.8 224-224S379.2 32 256 32zm-82.16 280A56 56 0 11228 257.84 56 56 0 01173.84 312zm168 0A56 56 0 11396 257.84 56 56 0 01341.84 312z"
        />
      </svg>

    @react.component
    let fourSquare = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M376.76 32H138.54C105.67 32 96 56.8 96 72.41v379.64c0 17.59 9.42 24.12 14.72 26.27s19.91 4 28.67-6.17c0 0 112.47-130.89 114.4-132.83 2.92-2.93 2.92-2.93 5.84-2.93h72.77c30.58 0 35.49-21.87 38.69-34.75 2.65-10.79 32.48-164 42.45-212.56C421.14 52 411.74 32 376.76 32zm-5.67 269.64c2.65-10.79 32.48-164 42.45-212.56m-50.85 7.59l-10 51.73c-1.19 5.65-8.28 11.6-14.86 11.6h-95.92c-10.44 0-17.91 6.14-17.91 16.6v13.45c0 10.47 7.52 17.89 18 17.89h81.85c7.38 0 14.61 8.11 13 16s-9.09 46.57-10 50.89-5.84 11.72-14.61 11.72H248c-11.7 0-15.24 1.54-23.07 11.3s-78.26 94.59-78.26 94.59c-.71.82-1.41.58-1.41-.31V95.9c0-6.69 5.8-14.53 14.48-14.53h191.14a12.42 12.42 0 0111.81 15.3z"
        />
      </svg>

    @react.component
    let github = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M256 32C132.3 32 32 134.9 32 261.7c0 101.5 64.2 187.5 153.2 217.9a17.56 17.56 0 003.8.4c8.3 0 11.5-6.1 11.5-11.4 0-5.5-.2-19.9-.3-39.1a102.4 102.4 0 01-22.6 2.7c-43.1 0-52.9-33.5-52.9-33.5-10.2-26.5-24.9-33.6-24.9-33.6-19.5-13.7-.1-14.1 1.4-14.1h.1c22.5 2 34.3 23.8 34.3 23.8 11.2 19.6 26.2 25.1 39.6 25.1a63 63 0 0025.6-6c2-14.8 7.8-24.9 14.2-30.7-49.7-5.8-102-25.5-102-113.5 0-25.1 8.7-45.6 23-61.6-2.3-5.8-10-29.2 2.2-60.8a18.64 18.64 0 015-.5c8.1 0 26.4 3.1 56.6 24.1a208.21 208.21 0 01112.2 0c30.2-21 48.5-24.1 56.6-24.1a18.64 18.64 0 015 .5c12.2 31.6 4.5 55 2.2 60.8 14.3 16.1 23 36.6 23 61.6 0 88.2-52.4 107.6-102.3 113.3 8 7.1 15.2 21.1 15.2 42.5 0 30.7-.3 55.5-.3 63 0 5.4 3.1 11.5 11.4 11.5a19.35 19.35 0 004-.4C415.9 449.2 480 363.1 480 261.7 480 134.9 379.7 32 256 32z"
        />
      </svg>

    @react.component
    let gitlab = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M494.07 281.6l-25.18-78.08a11 11 0 00-.61-2.1l-50.5-156.94a20.08 20.08 0 00-19.17-13.82 19.77 19.77 0 00-18.95 13.94l-48.14 149.55h-152L131.34 44.59a19.76 19.76 0 00-18.86-13.94h-.11a20.15 20.15 0 00-19.12 14L42.7 201.73c0 .14-.11.26-.16.4l-25.63 79.48a29.15 29.15 0 0010.44 32.46l221.44 162.41a11.25 11.25 0 0013.38-.07l221.48-162.34a29.13 29.13 0 0010.42-32.47m-331-64.51l61.73 191.76L76.63 217.09m209.64 191.8l59.19-183.84 2.55-8h86.52L300.47 390.44M398.8 59.31l43.37 134.83h-86.82M324.16 217l-43 133.58-25.66 79.56L186.94 217M112.27 59.31l43.46 134.83H69M40.68 295.58a6.19 6.19 0 01-2.21-6.9l19-59 139.61 180.59m273.26-114.69L313.92 410.22l.52-.69L453.5 229.64l19 59a6.2 6.2 0 01-2.19 6.92"
        />
      </svg>

    @react.component
    let google = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M473.16 221.48l-2.26-9.59H262.46v88.22H387c-12.93 61.4-72.93 93.72-121.94 93.72-35.66 0-73.25-15-98.13-39.11a140.08 140.08 0 01-41.8-98.88c0-37.16 16.7-74.33 41-98.78s61-38.13 97.49-38.13c41.79 0 71.74 22.19 82.94 32.31l62.69-62.36C390.86 72.72 340.34 32 261.6 32c-60.75 0-119 23.27-161.58 65.71C58 139.5 36.25 199.93 36.25 256s20.58 113.48 61.3 155.6c43.51 44.92 105.13 68.4 168.58 68.4 57.73 0 112.45-22.62 151.45-63.66 38.34-40.4 58.17-96.3 58.17-154.9 0-24.67-2.48-39.32-2.59-39.96z"
        />
      </svg>

    @react.component
    let googlePlayStore = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M48 59.49v393a4.33 4.33 0 007.37 3.07L260 256 55.37 56.42A4.33 4.33 0 0048 59.49zM345.8 174L89.22 32.64l-.16-.09c-4.42-2.4-8.62 3.58-5 7.06l201.13 192.32zM84.08 472.39c-3.64 3.48.56 9.46 5 7.06l.16-.09L345.8 338l-60.61-57.95zM449.38 231l-71.65-39.46L310.36 256l67.37 64.43L449.38 281c19.49-10.77 19.49-39.23 0-50z"
        />
      </svg>

    @react.component
    let hackerNews = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M32 32v448h448V32zm249.67 250.83v84H235v-84l-77-140h55l46.32 97.54 44.33-97.54h52.73z"
        />
      </svg>

    @react.component
    let html5 = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M64 32l34.94 403.21L255.77 480 413 435.15 448 32zm308 132H188l4 51h176l-13.51 151.39L256 394.48l-98.68-28-6.78-77.48h48.26l3.42 39.29L256 343.07l53.42-14.92L315 264H148l-12.59-149.59H376.2z"
        />
      </svg>

    @react.component
    let instagram = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M349.33 69.33a93.62 93.62 0 0193.34 93.34v186.66a93.62 93.62 0 01-93.34 93.34H162.67a93.62 93.62 0 01-93.34-93.34V162.67a93.62 93.62 0 0193.34-93.34h186.66m0-37.33H162.67C90.8 32 32 90.8 32 162.67v186.66C32 421.2 90.8 480 162.67 480h186.66C421.2 480 480 421.2 480 349.33V162.67C480 90.8 421.2 32 349.33 32z"
        />
        <path
          d="M377.33 162.67a28 28 0 1128-28 27.94 27.94 0 01-28 28zM256 181.33A74.67 74.67 0 11181.33 256 74.75 74.75 0 01256 181.33m0-37.33a112 112 0 10112 112 112 112 0 00-112-112z"
        />
      </svg>

    @react.component
    let ionic = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path d="M256 153.9A102.1 102.1 0 10358.1 256 102.23 102.23 0 00256 153.9z" />
        <circle cx="402.59" cy="116.45" r="46.52" />
        <path
          d="M459.86 163.2l-1.95-4.28-3.11 3.52a70 70 0 01-28.06 19.32l-3 1.1 1.22 2.93A181.43 181.43 0 01439 256c0 100.92-82.1 183-183 183S73 356.92 73 256 155.08 73 256 73a180.94 180.94 0 0178.43 17.7l2.87 1.3 1.25-2.92A70.19 70.19 0 01359.21 62l3.67-2.93-4.17-2.07A221.61 221.61 0 00256 32C132.49 32 32 132.49 32 256s100.49 224 224 224 224-100.49 224-224a222.19 222.19 0 00-20.14-92.8z"
        />
      </svg>

    @react.component
    let ionitron = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M468.41 269.19c-2.64-33.39-11.76-58-31.44-57.39a1 1 0 00-.92 1.37c5.11 12.59 9.68 36.9 9.17 58.07a1 1 0 01-2 .08c-2.19-21.21-7.1-41.19-16.22-59.43a186.69 186.69 0 00-348.91 41 4 4 0 01-3.33 3.11l-8.65 1.22c-17.2 2.4-26.9 34.9-21.7 72.5s23.5 66.2 40.7 63.8l13.24-1.85a4 4 0 013.93 1.84 186.71 186.71 0 00339-56.07 4 4 0 013.68-3.08l4.4-.24c15.15-2.53 21.75-31.23 19.05-64.93zM94.5 270.42a1 1 0 011.59-1.19c9.63 10 20.25 27.65 23.32 49.86 3.24 23.05-2.24 45.2-9.13 57.87a1 1 0 01-1.84-.73c4.07-14.44 5.16-33.83 2.27-54.74-2.8-20.32-8.71-38.27-16.21-51.07zm178.77 109.79a15.53 15.53 0 01-15.41-13.83 15.48 15.48 0 1115.41 13.83zm81.84-4.72a15.37 15.37 0 1114.6-16.2 15.43 15.43 0 01-14.6 16.2z"
        />
        <path
          d="M165.51 70a.31.31 0 01.1.2c.1.2.2.3.3.5v.1a5.78 5.78 0 002.3 2.7c2 1.5 5 2.4 8.6 3a63.69 63.69 0 0011.9.5 28.25 28.25 0 002.9-.2c-.4-.4-.8-.9-1.2-1.3h-1.3a52 52 0 01-11.6-.9 19.71 19.71 0 01-8.4-3.4 9.24 9.24 0 01-1.4-1.4 4.48 4.48 0 010-2.3c.5-2.3 2.4-4.8 5.5-7.4a57.25 57.25 0 0110.9-7c.9-.4 1.7-.9 2.6-1.3.1-.1.3-.1.5-.2a24.69 24.69 0 00-.2 10.5c2.3 11.9 11.6 20.3 23.2 20.6l4 24.3 12.7-3-4-23.3c10.8-4.6 16.3-16.1 14-28a25.8 25.8 0 00-3.9-9.5c-5.3-.8-15.6-.8-29.2 2.1 1.1-.3 2.1-.7 3.2-1a135.27 135.27 0 0121.5-4.2c.6-.1 1.2-.1 1.8-.2l3.5-.3h.6a61.83 61.83 0 0110.8.3 29 29 0 016.1 1.4 5.71 5.71 0 00-.9 3.2 6.12 6.12 0 004.3 5.8 25.53 25.53 0 01-2.1 2.8 26 26 0 01-2.9 2.8c-1.1.9-2.3 1.8-3.5 2.7l-6.5 3.8-.3 1.5a.35.35 0 00.2-.1l8.4-4.7c1.2-.8 2.4-1.6 3.4-2.4a29.15 29.15 0 003.2-2.8 29.86 29.86 0 002.4-2.8l.3-.6a6.14 6.14 0 005.4-6 6.06 6.06 0 00-6.1-6.1 6.81 6.81 0 00-2.8.7 24.6 24.6 0 00-8.2-2.7 63.48 63.48 0 00-15.5-.6 14.92 14.92 0 00-2.1.2 13.55 13.55 0 01-2 .2 25.15 25.15 0 00-18.7-3.7 25.86 25.86 0 00-17.8 13c-1.3.5-2.6 1.1-3.8 1.7-.7.3-1.3.6-2 .9a60.75 60.75 0 00-13.9 9.1c-3.1 2.9-4.9 5.7-5.3 8.3a6.14 6.14 0 00.7 4 2.19 2.19 0 01.3.5z"
        />
      </svg>

    @react.component
    let javascript = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M32 32v448h448V32zm240 348c0 43.61-25.76 64.87-63.05 64.87-33.68 0-53.23-17.44-63.15-38.49l34.28-20.75c6.61 11.73 11.63 21.65 26.06 21.65 12 0 21.86-5.41 21.86-26.46V240h44zm99.35 63.87c-39.09 0-64.35-17.64-76.68-42L329 382c9 14.74 20.75 24.56 41.5 24.56 17.44 0 27.57-7.72 27.57-19.75 0-14.43-10.43-19.54-29.68-28l-10.52-4.52c-30.38-12.92-50.52-29.16-50.52-63.45 0-31.57 24.05-54.63 61.64-54.63 26.77 0 46 8.32 59.85 32.68L396 290c-7.22-12.93-15-18-27.06-18-12.33 0-20.15 7.82-20.15 18 0 12.63 7.82 17.74 25.86 25.56l10.52 4.51c35.79 15.34 55.94 31 55.94 66.16.01 37.9-29.76 57.64-69.76 57.64z"
        />
      </svg>

    @react.component
    let laravel = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M505.57 234.62c-3.28-3.53-26.82-32.29-39.51-47.79-6.75-8.24-12.08-14.75-14.32-17.45l-.18-.22-.2-.21c-5.22-5.83-12.64-12.51-23.78-12.51a39.78 39.78 0 00-5.41.44c-.37.05-.75.11-1.15.15-2.45.27-10.06 1.5-28.14 4.48-14 2.29-35.11 5.77-38.31 6.07l-.71.06-.69.13c-10 1.78-16.62 6.22-19.56 13.19-1.55 3.68-3.22 11.15 2.94 19.86 1.53 2.22 6.83 9.56 15.94 22.17 6.06 8.4 12.87 17.82 18.75 26L259.9 275 150.66 96.05l-.2-.34-.23-.33-.44-.65C145.32 88.17 139.76 80 123.7 80c-1.13 0-2.31 0-3.63.11-4.6.25-21.42 1.57-40.89 3.11-21.49 1.69-50.9 4-54.72 4.1h-.73l-.79.08c-9.14.89-15.77 4.6-19.7 11-6.55 10.69-1.42 22.69.26 26.63C6.87 133 37.56 197.7 64.63 254.81c18 37.94 36.58 77.17 38.1 80.65a34.85 34.85 0 0032.94 21.59 46.62 46.62 0 009.86-1.1h.21l.2-.05c13.86-3.38 57.83-14.54 89.2-22.59 1.9 3.32 3.9 6.83 6 10.44 21.93 38.5 37.9 66.35 43.16 73.46C287 421 295 432 310.06 432c5.46 0 10.46-1.4 15.74-2.89l1.53-.43h.12c10.53-3 150.69-52.16 157.87-55.35l.22-.1c5.44-2.41 13.66-6.05 16.18-15.4 1.65-6.12.18-12.33-4.38-18.46l-.07-.09-.07-.09c-.85-1.1-4-5.21-8.27-10.9-9.13-12.07-23.88-31.57-36.84-48.54 17.37-4.5 38.8-10.11 43.38-11.55 11.47-3.43 14.94-10.69 16-14.73.79-3.15 1.82-11.2-5.9-18.85zm-320 58.19c-17.81 4.17-30.22 7.08-37.89 8.9-6.67-13.34-19.74-39.65-32.5-65.33-29.74-59.92-45.1-90.77-53.18-106.9l8.15-.7c13.34-1.15 31.61-2.72 41.78-3.57 16.76 28.26 74.32 125.3 96.3 162.3zM427.58 172zM310.06 416.4zm53.67-56.95c-24.21 8-37.33 12.37-44.42 14.74-6.3-10.34-20.16-33.52-32.47-54.19l115.7-29.48c5 6.81 14.57 19.72 33.46 44.93-18.07 6.04-48.2 16.02-72.27 24zm55.87-121.63l-23.76-31.53c13.67-2.39 21.54-3.77 26.15-4.6l12 14.88 11.94 14.82c-8.2 1.99-17.74 4.32-26.33 6.43z"
        />
      </svg>

    @react.component
    let linkedin = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M444.17 32H70.28C49.85 32 32 46.7 32 66.89v374.72C32 461.91 49.85 480 70.28 480h373.78c20.54 0 35.94-18.21 35.94-38.39V66.89C480.12 46.7 464.6 32 444.17 32zm-273.3 373.43h-64.18V205.88h64.18zM141 175.54h-.46c-20.54 0-33.84-15.29-33.84-34.43 0-19.49 13.65-34.42 34.65-34.42s33.85 14.82 34.31 34.42c-.01 19.14-13.31 34.43-34.66 34.43zm264.43 229.89h-64.18V296.32c0-26.14-9.34-44-32.56-44-17.74 0-28.24 12-32.91 23.69-1.75 4.2-2.22 9.92-2.22 15.76v113.66h-64.18V205.88h64.18v27.77c9.34-13.3 23.93-32.44 57.88-32.44 42.13 0 74 27.77 74 87.64z"
        />
      </svg>

    @react.component
    let markDown = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M475 64H37C16.58 64 0 81.38 0 102.77v306.42C0 430.59 16.58 448 37 448h438c20.38 0 37-17.41 37-38.81V102.77C512 81.38 495.42 64 475 64zM288 368h-64V256l-48 64-48-64v112H64V144h64l48 80 48-80h64zm96 0l-80-112h48.05L352 144h64v112h48z"
        />
      </svg>

    @react.component
    let mastodon = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M480 173.59c0-104.13-68.26-134.65-68.26-134.65C377.3 23.15 318.2 16.5 256.8 16h-1.51c-61.4.5-120.46 7.15-154.88 22.94 0 0-68.27 30.52-68.27 134.65 0 23.85-.46 52.35.29 82.59C34.91 358 51.11 458.37 145.32 483.29c43.43 11.49 80.73 13.89 110.76 12.24 54.47-3 85-19.42 85-19.42l-1.79-39.5s-38.93 12.27-82.64 10.77c-43.31-1.48-89-4.67-96-57.81a108.44 108.44 0 01-1-14.9 558.91 558.91 0 0096.39 12.85c32.95 1.51 63.84-1.93 95.22-5.67 60.18-7.18 112.58-44.24 119.16-78.09 10.42-53.34 9.58-130.17 9.58-130.17zm-80.54 134.16h-50V185.38c0-25.8-10.86-38.89-32.58-38.89-24 0-36.06 15.53-36.06 46.24v67h-49.66v-67c0-30.71-12-46.24-36.06-46.24-21.72 0-32.58 13.09-32.58 38.89v122.37h-50V181.67q0-38.65 19.75-61.39c13.6-15.15 31.4-22.92 53.51-22.92 25.58 0 44.95 9.82 57.75 29.48L256 147.69l12.45-20.85c12.81-19.66 32.17-29.48 57.75-29.48 22.11 0 39.91 7.77 53.51 22.92q19.79 22.72 19.75 61.39z"
        />
      </svg>

    @react.component
    let medium = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M28 28v456h456V28H28zm378.83 108.04l-24.46 23.45a7.162 7.162 0 00-2.72 6.86v172.28c-.44 2.61.61 5.26 2.72 6.86l23.88 23.45v5.15H286.13v-5.15l24.74-24.02c2.43-2.43 2.43-3.15 2.43-6.86V198.81l-68.79 174.71h-9.3l-80.09-174.71v117.1c-.67 4.92.97 9.88 4.43 13.44l32.18 39.03v5.15h-91.24v-5.15l32.18-39.03c3.44-3.57 4.98-8.56 4.15-13.44V180.5c.38-3.76-1.05-7.48-3.86-10.01l-28.6-34.46v-5.15h88.81l68.65 150.55 60.35-150.55h84.66v5.16z"
        />
      </svg>

    @react.component
    let microsoft = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M31.87 30.58H244.7v212.81H31.87zM266.89 30.58H479.7v212.81H266.89zM31.87 265.61H244.7v212.8H31.87zM266.89 265.61H479.7v212.8H266.89z"
        />
      </svg>

    @react.component
    let nodejs = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M429.76 130.07L274.33 36.85a37 37 0 00-36.65 0L82.24 130.06A38.2 38.2 0 0064 162.83V349a38.26 38.26 0 0018.24 32.8L123 406.14l.23.13c20.58 10.53 28.46 10.53 37.59 10.53 32.14 0 52.11-20.8 52.11-54.29V182a8.51 8.51 0 00-8.42-8.58h-22.38a8.51 8.51 0 00-8.42 8.58v180.51a15 15 0 01-6.85 13.07c-5.9 3.6-14.47 2.84-24.14-2.15l-39.06-23.51a1.1 1.1 0 01-.48-.92V165.46a1.32 1.32 0 01.59-1.06l151.84-93a.82.82 0 01.73 0l151.93 93a1.34 1.34 0 01.55 1.1V349a1.28 1.28 0 01-.45 1l-152.06 90.65a1.22 1.22 0 01-.8 0l-38.83-23.06a7.8 7.8 0 00-7.83-.41l-.34.2c-10.72 6.35-13.6 8-23.54 11.62-1.62.59-5.43 2-5.76 5.77s3.29 6.45 6.51 8.32l51.9 31.87a35.67 35.67 0 0018.3 5.07h.58a35.87 35.87 0 0017.83-5.07l155.43-93.13A38.37 38.37 0 00448 349V162.83a38.21 38.21 0 00-18.24-32.76z"
        />
        <path
          d="M307.88 318.05c-37.29 0-45.24-10.42-47.6-27.24a8.43 8.43 0 00-8.22-7.32h-19.8a8.44 8.44 0 00-8.26 8.58c0 14.58 5.12 62.17 83.92 62.17 24.38 0 44.66-5.7 58.63-16.49S388 311.26 388 292.55c0-37.55-24.5-47.83-72.75-54.55-49.05-6.82-49.05-10.29-49.05-17.89 0-5.47 0-18.28 35.46-18.28 25.23 0 38.74 3.19 43.06 20a8.35 8.35 0 008.06 6.67h19.87a8.24 8.24 0 006.16-2.86 8.91 8.91 0 002.12-6.44c-2.57-35.55-28.56-53.58-79.24-53.58-46.06 0-73.55 20.75-73.55 55.5 0 38.1 28.49 48.87 71.29 53.33 50 5.17 50 12.71 50 19.37.03 10.38-4.28 24.23-41.55 24.23z"
        />
      </svg>

    @react.component
    let noSmoking = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path d="M360 256h16v48h-16zM112 304h129.6l-48-48H112v48z" />
        <path
          d="M364.5 60.1a8.79 8.79 0 01-1-.6 218.79 218.79 0 00-34.4-14.8l-5.4-1.8A223.2 223.2 0 00256 32C132.3 32 32 132.3 32 256a223.71 223.71 0 00115.4 195.8c.4.2.7.5 1.1.7a218.79 218.79 0 0034.4 14.8l5.4 1.8A222.7 222.7 0 00256 480c123.7 0 224-100.3 224-224A223.76 223.76 0 00364.5 60.1zM256 426.4a161.85 161.85 0 01-27.2-2.4 170.14 170.14 0 01-28.5-7.3c-1.9-.6-3.8-1.2-5.6-1.9a162.39 162.39 0 01-19-8.6 170.33 170.33 0 01-90.1-150.3c0-37.2 12.4-71.4 32.7-99.4l237.2 237.2c-28.1 20.3-62.3 32.7-99.5 32.7zm137.8-71L156.6 118.2c28-20.2 62.1-32.6 99.4-32.6a162.79 162.79 0 0127.2 2.4 170.14 170.14 0 0128.5 7.3c1.8.6 3.7 1.2 5.6 1.9a162 162 0 0118 8.1 170.25 170.25 0 0191.2 150.8c-.1 37.2-12.5 71.3-32.7 99.3z"
        />
        <path
          d="M352 256h-34l34 34v-34zM384 256h16v48h-16zM360.1 212.7c-8.8-4.1-22-5.7-45.6-5.7h-3.6c-12.7.1-15.9-.1-20-6.1-2.8-4.2-1-14.8 3.7-21.9a8 8 0 00.4-8.2 8.26 8.26 0 00-7-4.3 53.67 53.67 0 01-18.3-3.9c-10.6-4.5-15.6-12.1-15.6-23.1 0-25.8 21.8-27.7 22.8-27.7v-16c-12 0-38.8 11-38.8 43.7 0 17.5 9 31 25.7 38a66.58 66.58 0 0012 3.6c-3.3 9.8-3.6 20.9 1.7 28.7 9 13.3 20.3 13.2 33.3 13.1h3.5c26.3 0 34.6 2.3 38.9 4.3 5.7 2.6 6.8 7.5 6.6 15.7v1h16v-1c0-7.1.3-22.8-15.7-30.2z"
        />
        <path
          d="M400 244c0-25.7-3-39.2-9.1-49.6C382.3 180 368.5 172 352 172h-17.4c2.9-8.3 5.4-19.8 3.5-30.9-3.2-18.8-19.1-30-43.1-30v16c21 0 26.1 9.1 27.4 16.7 2.5 14.5-6.8 32.1-6.9 32.3a8 8 0 00.1 7.9 8.06 8.06 0 006.9 3.9H352c10.9 0 19.4 4.9 25.1 14.6 3.1 5.3 6.9 13.5 6.9 41.4h16z"
        />
      </svg>

    @react.component
    let npm = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path d="M227.6 213.1H256v57.1h-28.4z" />
        <path
          d="M0 156v171.4h142.2V356H256v-28.6h256V156zm142.2 142.9h-28.4v-85.7H85.3v85.7H28.4V184.6h113.8zm142.2 0h-56.9v28.6h-56.9V184.6h113.8zm199.2 0h-28.4v-85.7h-28.4v85.7h-28.4v-85.7H370v85.7h-56.9V184.6h170.7v114.3z"
        />
      </svg>

    @react.component
    let octocat = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M172.86 290.12c-9.75 0-18.11 4.56-24.86 13.87s-10.07 20.58-10.07 34 3.43 24.91 10.07 34.12S163 386 172.86 386c9.1 0 17-4.66 23.68-13.87s10.07-20.58 10.07-34.12-3.43-24.81-10.07-34-14.54-13.89-23.68-13.89zM340.32 290.12c-9.64 0-18.11 4.56-24.86 13.87s-10.07 20.58-10.07 34 3.43 24.91 10.07 34.12S330.57 386 340.32 386c9.11 0 17-4.66 23.79-13.87s10.07-20.58 10.07-34.12-3.43-24.81-10.07-34-14.57-13.89-23.79-13.89z"
        />
        <path
          d="M459.36 165c-.11 0 2.89-15.49.32-42.47-2.36-27-8-51.78-17.25-74.53 0 0-4.72.87-13.72 3.14S405 58 384.89 67.18c-19.82 9.2-40.71 21.44-62.46 36.29-14.79-4.23-36.86-6.39-66.43-6.39-28.18 0-50.25 2.16-66.43 6.39Q117.9 53.25 69.46 48q-13.81 34.13-17.14 74.75c-2.57 27 .43 42.58.43 42.58C26.71 193.82 16 234.88 16 268.78c0 26.22.75 49.94 6.54 71 6 20.91 13.6 38 22.6 51.14A147.49 147.49 0 0079 425.43c13.39 10.08 25.71 17.34 36.86 21.89 11.25 4.76 24 8.23 38.57 10.72a279.19 279.19 0 0032.68 4.34s30 1.62 69 1.62 68.89-1.62 68.89-1.62a285.25 285.25 0 0032.68-4.38 178.91 178.91 0 0038.46-10.72c11.15-4.66 23.47-11.81 37-21.89a145 145 0 0033.75-34.55c9-13.11 16.6-30.23 22.6-51.14s6.51-44.81 6.51-71.03c0-32.82-10.71-74.42-36.64-103.67zm-70.07 253.07C359.39 432.26 315.46 438 257.18 438h-2.25c-58.29 0-102.22-5.63-131.57-19.93s-44.25-43.45-44.25-87.43c0-26.32 9.21-47.66 27.32-64 7.93-7 17.57-11.92 29.57-14.84s22.93-3 33.21-2.71c10.08.43 24.22 2.38 42.11 3.79s31.39 3.25 44.79 3.25c12.53 0 29.14-2.17 55.82-4.33s46.61-3.25 59.46-1.09c13.18 2.17 24.65 6.72 34.4 15.93q28.44 25.67 28.5 64c-.11 43.98-15.22 73.24-45 87.43z"
        />
      </svg>

    @react.component
    let paypal = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M424.81 148.79c-.43 2.76-.93 5.58-1.49 8.48-19.17 98-84.76 131.8-168.54 131.8h-42.65a20.67 20.67 0 00-20.47 17.46l-21.84 137.84-6.18 39.07a10.86 10.86 0 009.07 12.42 10.72 10.72 0 001.7.13h75.65a18.18 18.18 0 0018-15.27l.74-3.83 14.24-90 .91-4.94a18.16 18.16 0 0118-15.3h11.31c73.3 0 130.67-29.62 147.44-115.32 7-35.8 3.38-65.69-15.16-86.72a72.27 72.27 0 00-20.73-15.82z"
        />
        <path
          d="M385.52 51.09C363.84 26.52 324.71 16 274.63 16H129.25a20.75 20.75 0 00-20.54 17.48l-60.55 382a12.43 12.43 0 0010.39 14.22 12.58 12.58 0 001.94.15h89.76l22.54-142.29-.7 4.46a20.67 20.67 0 0120.47-17.46h42.65c83.77 0 149.36-33.86 168.54-131.8.57-2.9 1.05-5.72 1.49-8.48 5.7-36.22-.05-60.87-19.72-83.19z"
        />
      </svg>

    @react.component
    let pinterest = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M256.05 32c-123.7 0-224 100.3-224 224 0 91.7 55.2 170.5 134.1 205.2-.6-15.6-.1-34.4 3.9-51.4 4.3-18.2 28.8-122.1 28.8-122.1s-7.2-14.3-7.2-35.4c0-33.2 19.2-58 43.2-58 20.4 0 30.2 15.3 30.2 33.6 0 20.5-13.1 51.1-19.8 79.5-5.6 23.8 11.9 43.1 35.4 43.1 42.4 0 71-54.5 71-119.1 0-49.1-33.1-85.8-93.2-85.8-67.9 0-110.3 50.7-110.3 107.3 0 19.5 5.8 33.3 14.8 43.9 4.1 4.9 4.7 6.9 3.2 12.5-1.1 4.1-3.5 14-4.6 18-1.5 5.7-6.1 7.7-11.2 5.6-31.3-12.8-45.9-47-45.9-85.6 0-63.6 53.7-139.9 160.1-139.9 85.5 0 141.8 61.9 141.8 128.3 0 87.9-48.9 153.5-120.9 153.5-24.2 0-46.9-13.1-54.7-27.9 0 0-13 51.6-15.8 61.6-4.7 17.3-14 34.5-22.5 48a225.13 225.13 0 0063.5 9.2c123.7 0 224-100.3 224-224S379.75 32 256.05 32z"
        />
      </svg>

    @react.component
    let playstation = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M399.77 203c-.8-17.1-3.3-34.5-10.8-50.1a82.45 82.45 0 00-16.5-23.2 105.59 105.59 0 00-21.3-16.3c-17.1-10.2-37.5-17-84.4-31S192 64 192 64v358.3l79.9 25.7s.1-198.8.1-299.5v-3.8c0-9.3 7.5-16.8 16.1-16.8h.5c8.5 0 15.5 7.5 15.5 16.8V278c11 5.3 29.2 9.3 41.8 9.1a47.79 47.79 0 0024-5.7 49.11 49.11 0 0018.4-17.8 78.64 78.64 0 009.9-27.3c1.87-10.8 1.97-22.1 1.57-33.3zM86.67 357.8c27.4-9.8 89.3-29.5 89.3-29.5v-47.2s-76.5 24.8-111.3 37.1c-8.6 3.1-17.3 5.9-25.7 9.5-9.8 4.1-19.4 8.7-28.1 14.8a26.29 26.29 0 00-9.2 10.1 17.36 17.36 0 00-.5 13.6c2 5.1 5.8 9.3 10.1 12.6 7.8 5.9 17.1 9.5 26.4 12.2a262.42 262.42 0 0088.4 13.3c14.5-.2 36-1.9 50-4.4v-42s-11 2.5-41.3 12.5c-4.6 1.5-9.2 3.3-14 4.3a104.87 104.87 0 01-21.6 2.2c-6.5-.3-13.2-.7-19.3-3.1-2.2-1-4.6-2.2-5.5-4.6-.8-2 .3-4 1.7-5.4 2.8-2.9 6.8-4.5 10.6-6z"
        />
        <path
          d="M512 345.9c-.1-6-3.7-11.2-7.9-15-7.1-6.3-15.9-10.3-24.7-13.5-5.5-1.9-9.3-3.3-14.7-5-25.2-8.2-51.9-11.2-78.3-11.3-8 .3-23.1.5-31 1.4-21.9 2.5-67.3 15.4-67.3 15.4v48.8s67.5-21.6 96.5-31.8a94.43 94.43 0 0130.3-4.6c6.5.2 13.2.7 19.4 3.1 2.2.9 4.5 2.2 5.5 4.5.9 2.6-.9 5-2.9 6.5-4.7 3.8-10.7 5.3-16.2 7.4-41 14.5-132.7 44.7-132.7 44.7v47s117.2-39.6 170.8-58.8c8.9-3.3 17.9-6.1 26.4-10.4 7.9-4 15.8-8.6 21.8-15.3a19.74 19.74 0 005-13.1z"
        />
      </svg>

    @react.component
    let pwa = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M330.7 352l77.72-192H356.9l-53.16 124.07L265.93 160h-39.61l-40.58 124.07-28.63-56.53-25.9 79.46 26.3 45h50.7l36.68-111.27 35 111.27zM48.79 286.09h31.65a93.39 93.39 0 0025.62-3.21l8.18-25.19 22.88-70.39a55.75 55.75 0 00-6-7.82Q113.54 160 79.59 160H0v192h48.79zm41.9-81.92q6.89 6.92 6.88 18.52t-6 18.53q-6.64 7.62-24.44 7.61H48.79v-51.58h18.42q16.59 0 23.48 6.92zm286.16 113.44l14.79-37.25h42.69l-20.26-56.51L439.41 160 512 352h-53.53l-12.4-34.39z"
        />
      </svg>

    @react.component
    let python = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M314 36.38c-18.59-3.06-45.8-4.47-64.27-4.38a311.09 311.09 0 00-51.66 4.38c-45.74 8-54.07 24.7-54.07 55.54V128h112v16H107.62C66.06 144 32.33 193.67 32 255.12v.88a162.91 162.91 0 003.13 32c9.29 46.28 38.23 80 72.49 80H128v-54c0-31.3 20.84-59.95 55-66.1l9.87-1.23H314a56.05 56.05 0 0015.06-2A52.48 52.48 0 00368 193.68V91.92c0-28.92-24.68-50.73-54-55.54zM194.93 105.5a20.37 20.37 0 1120.3-20.3 20.29 20.29 0 01-20.3 20.3z"
        />
        <path
          d="M475.28 217c-10.7-42.61-38.41-73-70.9-73h-17.71v47.45c0 39.57-26 68.22-57.74 73.13a63.54 63.54 0 01-9.69.75H198.08a60 60 0 00-15.23 1.95C160.54 273.14 144 291.7 144 315.77v101.77c0 29 29.14 46 57.73 54.31 34.21 9.95 71.48 11.75 112.42 0 27.19-7.77 53.85-23.48 53.85-54.31V384H256v-16h148.38c29.44 0 54.95-24.93 67.45-61.31A156.83 156.83 0 00480 256a160.64 160.64 0 00-4.72-39zM316.51 404a20.37 20.37 0 11-20.3 20.3 20.29 20.29 0 0120.3-20.3z"
        />
      </svg>

    @react.component
    let react = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M410.66 180.72q-7.67-2.62-15.45-4.88 1.29-5.25 2.38-10.56c11.7-56.9 4.05-102.74-22.06-117.83-25-14.48-66 .61-107.36 36.69q-6.1 5.34-11.95 11-3.9-3.76-8-7.36c-43.35-38.58-86.8-54.83-112.88-39.69-25 14.51-32.43 57.6-21.9 111.53q1.58 8 3.55 15.93a320.85 320.85 0 00-17.77 5.6C48.46 198.9 16 226.73 16 255.59c0 29.82 34.84 59.72 87.77 77.85q6.44 2.19 13 4.07-2.13 8.49-3.77 17.17c-10 53-2.2 95.07 22.75 109.49 25.77 14.89 69-.41 111.14-37.31q5-4.38 10-9.25 6.32 6.11 13 11.86c40.8 35.18 81.09 49.39 106 34.93 25.75-14.94 34.12-60.14 23.25-115.13q-1.25-6.3-2.88-12.86 4.56-1.35 8.93-2.79c55-18.27 90.83-47.81 90.83-78-.02-29-33.52-57.01-85.36-74.9zm-129-81.08c35.43-30.91 68.55-43.11 83.65-34.39 16.07 9.29 22.32 46.75 12.22 95.88q-1 4.8-2.16 9.57a487.83 487.83 0 00-64.18-10.16 481.27 481.27 0 00-40.57-50.75q5.38-5.22 11.02-10.15zM157.73 280.25q6.51 12.6 13.61 24.89 7.23 12.54 15.07 24.71a435.28 435.28 0 01-44.24-7.13c4.24-13.72 9.46-27.97 15.56-42.47zm0-48.33c-6-14.19-11.08-28.15-15.25-41.63 13.7-3.07 28.3-5.58 43.52-7.48q-7.65 11.94-14.72 24.23t-13.58 24.88zm10.9 24.17q9.48-19.77 20.42-38.78 10.93-19 23.27-37.13c14.28-1.08 28.92-1.65 43.71-1.65s29.52.57 43.79 1.66q12.21 18.09 23.13 37t20.69 38.6Q334 275.63 323 294.73q-10.91 19-23 37.24c-14.25 1-29 1.55-44 1.55s-29.47-.47-43.46-1.38q-12.43-18.19-23.46-37.29t-20.48-38.76zM340.75 305q7.25-12.58 13.92-25.49a440.41 440.41 0 0116.12 42.32 434.44 434.44 0 01-44.79 7.65q7.62-12.09 14.75-24.48zm13.72-73.07q-6.64-12.65-13.81-25-7-12.18-14.59-24.06c15.31 1.94 30 4.52 43.77 7.67a439.89 439.89 0 01-15.37 41.39zm-98.24-107.45a439.75 439.75 0 0128.25 34.18q-28.35-1.35-56.74 0c9.33-12.34 18.88-23.79 28.49-34.18zM145.66 65.86c16.06-9.32 51.57 4 89 37.27 2.39 2.13 4.8 4.36 7.2 6.67A491.37 491.37 0 00201 160.51a499.12 499.12 0 00-64.06 10q-1.83-7.36-3.3-14.82c-9.05-46.23-3.06-81.08 12.02-89.83zm-23.41 251.85q-6-1.71-11.85-3.71c-23.4-8-42.73-18.44-56-29.81-11.88-10.19-17.9-20.36-17.9-28.6 0-17.51 26.06-39.85 69.52-55q8.19-2.85 16.52-5.21a493.54 493.54 0 0023.4 60.75 502.46 502.46 0 00-23.69 61.58zm111.13 93.67c-18.63 16.32-37.29 27.89-53.74 33.72-14.78 5.23-26.55 5.38-33.66 1.27-15.14-8.75-21.44-42.54-12.85-87.86q1.53-8 3.5-16a480.85 480.85 0 0064.69 9.39 501.2 501.2 0 0041.2 51c-2.98 2.93-6.03 5.75-9.14 8.48zm23.42-23.22c-9.72-10.51-19.42-22.14-28.88-34.64q13.79.54 28.08.54c9.78 0 19.46-.21 29-.64a439.33 439.33 0 01-28.2 34.74zm124.52 28.59c-2.86 15.44-8.61 25.74-15.72 29.86-15.13 8.78-47.48-2.63-82.36-32.72-4-3.44-8-7.13-12.07-11a484.54 484.54 0 0040.23-51.2 477.84 477.84 0 0065-10.05q1.47 5.94 2.6 11.64c4.81 24.3 5.5 46.28 2.32 63.47zm17.4-102.64c-2.62.87-5.32 1.71-8.06 2.53a483.26 483.26 0 00-24.31-60.94 481.52 481.52 0 0023.36-60.06c4.91 1.43 9.68 2.93 14.27 4.52 44.42 15.32 71.52 38 71.52 55.43 0 18.6-29.27 42.74-76.78 58.52z"
        />
        <path d="M256 298.55a43 43 0 10-42.86-43 42.91 42.91 0 0042.86 43z" />
      </svg>

    @react.component
    let reddit = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path d="M324 256a36 36 0 1036 36 36 36 0 00-36-36z" />
        <circle cx="188" cy="292" r="36" transform="rotate(-22.5 187.997 291.992)" />
        <path
          d="M496 253.77c0-31.19-25.14-56.56-56-56.56a55.72 55.72 0 00-35.61 12.86c-35-23.77-80.78-38.32-129.65-41.27l22-79 66.41 13.2c1.9 26.48 24 47.49 50.65 47.49 28 0 50.78-23 50.78-51.21S441 48 413 48c-19.53 0-36.31 11.19-44.85 28.77l-90-17.89-31.1 109.52-4.63.13c-50.63 2.21-98.34 16.93-134.77 41.53A55.38 55.38 0 0072 197.21c-30.89 0-56 25.37-56 56.56a56.43 56.43 0 0028.11 49.06 98.65 98.65 0 00-.89 13.34c.11 39.74 22.49 77 63 105C146.36 448.77 199.51 464 256 464s109.76-15.23 149.83-42.89c40.53-28 62.85-65.27 62.85-105.06a109.32 109.32 0 00-.84-13.3A56.32 56.32 0 00496 253.77zM414 75a24 24 0 11-24 24 24 24 0 0124-24zM42.72 253.77a29.6 29.6 0 0129.42-29.71 29 29 0 0113.62 3.43c-15.5 14.41-26.93 30.41-34.07 47.68a30.23 30.23 0 01-8.97-21.4zM390.82 399c-35.74 24.59-83.6 38.14-134.77 38.14S157 423.61 121.29 399c-33-22.79-51.24-52.26-51.24-83A78.5 78.5 0 0175 288.72c5.68-15.74 16.16-30.48 31.15-43.79a155.17 155.17 0 0114.76-11.53l.3-.21.24-.17c35.72-24.52 83.52-38 134.61-38s98.9 13.51 134.62 38l.23.17.34.25A156.57 156.57 0 01406 244.92c15 13.32 25.48 28.05 31.16 43.81a85.44 85.44 0 014.31 17.67 77.29 77.29 0 01.6 9.65c-.01 30.72-18.21 60.19-51.25 82.95zm69.6-123.92c-7.13-17.28-18.56-33.29-34.07-47.72A29.09 29.09 0 01440 224a29.59 29.59 0 0129.41 29.71 30.07 30.07 0 01-8.99 21.39z"
        />
        <path
          d="M323.23 362.22c-.25.25-25.56 26.07-67.15 26.27-42-.2-66.28-25.23-67.31-26.27a4.14 4.14 0 00-5.83 0l-13.7 13.47a4.15 4.15 0 000 5.89c3.4 3.4 34.7 34.23 86.78 34.45 51.94-.22 83.38-31.05 86.78-34.45a4.16 4.16 0 000-5.9l-13.71-13.47a4.13 4.13 0 00-5.81 0z"
        />
      </svg>

    @react.component
    let rrs = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path d="M108.56 342.78a60.34 60.34 0 1060.56 60.44 60.63 60.63 0 00-60.56-60.44z" />
        <path
          d="M48 186.67v86.55c52 0 101.94 15.39 138.67 52.11s52 86.56 52 138.67h86.66c0-151.56-125.66-277.33-277.33-277.33z"
        />
        <path
          d="M48 48v86.56c185.25 0 329.22 144.08 329.22 329.44H464C464 234.66 277.67 48 48 48z"
        />
      </svg>

    @react.component
    let sass = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M511.78 328.07c-1.47-11.92-7.51-22.26-18-30.77a3.58 3.58 0 00-.43-.44l-.53-.38-.17-.12-5.57-4-.19-.14-.71-.5a3.5 3.5 0 00-.83-.35c-17.62-10.49-46.79-17.84-91.42-2.09-10.65-17.92-11.86-32.28-4.73-54.28 1.27-3.83.09-6.36-3.71-8-7.64-3.25-18.1-1.59-25.52.37-3.46.9-5.54 2.86-6.2 5.83-4.7 22-18.36 42.1-31.57 61.5l-.78 1.14c-8.14-17.26-6.45-30.63-.78-47.38 1.13-3.34.24-5.56-2.89-7.22-8.74-4.51-21.85-1.41-27.07.13-6.62 1.93-13.72 19.82-21.65 41.24-2 5.39-3.72 10-4.75 12.15-2.45 5-4.79 10.7-7.27 16.75-5.6 13.69-11.91 29.1-20.93 38.78-3.28-7.25 1.88-18.68 6.89-29.77 5.93-13.11 11.53-25.5 5.08-33.41a11.82 11.82 0 00-8.33-4.32 13.26 13.26 0 00-6.15 1c.67-5.65.7-10.11-.95-15.5-2.36-7.69-8.49-12-16.93-11.77-19.22.56-35.48 14.88-45.75 26.8-6.84 8-22 14.1-35.31 19.45-5.26 2.23-10.26 4.23-14.43 6.23-6.65-5.62-15.1-11.29-24-17.28-25-16.78-53.33-35.81-54.31-61.61-1.4-38.11 42-65.14 79.88-84.43 28.71-14.6 53.67-24.28 76.31-29.57 31.8-7.43 58.66-5.93 79.82 4.44 11.58 5.67 17 18 13.56 30.68-9 32.95-46.29 55.53-78.18 65.69-19.21 6.12-35.56 8.68-50 7.84-18.1-1.05-32.88-10.13-39.2-14a21.18 21.18 0 00-3.2-1.8l-.29-.07a3.21 3.21 0 00-3.19 1c-1.3 1.55-.84 4-.37 5.24 6.15 16.07 18.85 26.22 37.74 30.17a92.09 92.09 0 0018.78 1.79c44.21 0 100.62-25.49 121.34-46.48 14.13-14.3 24.42-29 28.68-54.35 4.45-26.55-13.55-45-31.89-53.5-44.57-20.57-95.19-12.44-129.81-2-40.5 12.21-82.4 34.41-114.94 60.93-40.12 32.67-54.62 63-43.12 90.25 11.81 27.93 40.61 45.4 68.46 62.3 9 5.45 17.56 10.64 25.27 16-2.32 1.13-4.69 2.28-7.1 3.43-23.38 11.33-49.9 24.08-64.61 45.15-10.68 15.35-12.68 30.63-5.94 45.42 3.6 7.87 10 13.21 18.89 15.87A50 50 0 0053 432c17.31 0 36.36-7 46.73-13.47 18.32-11.5 30.19-26.94 35.29-45.89 4.54-16.86 3.45-33.61-3.15-48.56l22.45-11.32c-10.83 36-2.53 57.5 6.59 69.36 3.36 4.37 9.42 7 16.19 7.12s13-2.43 16.52-6.77c6.66-8.25 11.58-17.9 16.11-27.55-.24 6.3.06 12.68 2.21 18.09 1.93 4.87 5.11 8.1 9.21 9.34 4.36 1.33 9.47.21 14.39-3.15 22.17-15.17 37.33-51.58 49.51-80.85 1.73-4.16 3.39-8.16 5-11.9a152.5 152.5 0 0012.5 31.07c1.18 2.14 1.08 3.08-.52 4.84-2.41 2.64-5.77 5.83-9.33 9.21-10.78 10.23-24.2 23-26 34.23-.7 4.5 2.4 8.6 7.21 9.53 14.47 2.88 31.9-1.33 46.64-11.25 13.4-9 18.44-21.55 15-37.19-3.33-15.06 4.27-33.76 22.59-55.62 3 12.53 7 22.66 12.52 31.53l-.15.12c-13.34 11.65-31.62 27.6-28.78 46.95a13.35 13.35 0 005.58 9.22 14.22 14.22 0 0011.2 2.06c17.47-3.67 30.62-11.06 40.18-22.57s6.07-24.27 2.85-34.17c25-6.78 47.26-6.61 68.1.5 11.7 4 20.09 10.57 24.93 19.64 6.09 11.41 2.8 21.94-9.29 29.65-3.71 2.37-5.5 3.82-5.61 5.65a2.65 2.65 0 001 2.23c1.4 1.15 5.72 3.15 15.49-3 9-5.65 14.28-13.34 15.63-23a39 39 0 00-.01-8.01zm-399.73 25.06l-.1 1.28c-1.56 14.64-9 27.4-22.15 38-8.26 6.66-17.23 10.75-25.25 11.53-5.6.54-9.67-.22-12.09-2.27-1.81-1.53-2.78-3.82-3-7-1.64-25.48 38.32-50.8 60.81-59.13a51.39 51.39 0 011.78 17.59zm102.35-71.86c-3.7 21.09-14.49 60.9-31.45 76.35-.81.74-1.49 1-1.8.93s-.55-.44-.8-1c-5.66-13.12-3.57-35.28 5-52.69 6.59-13.42 16-22.31 26.52-25a5.29 5.29 0 011.34-.19 1.58 1.58 0 011 .27 1.64 1.64 0 01.19 1.33zm83.49 76.88c-3.19 3.33-7.56 2.88-6.53 1.66l16.24-17.24c-1.31 5.93-5.18 10.84-9.71 15.58zm67.37-14.91a14.07 14.07 0 01-4.93 1.39c-.46-9.07 8.33-19.28 17-26.09 2.33 9.46-2.44 19.46-12.07 24.7z"
        />
      </svg>

    @react.component
    let skype = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M467.16 303.6a205.69 205.69 0 004.9-45.15c0-116.32-95.69-210.7-213.79-210.7a221.83 221.83 0 00-36.52 3A123.58 123.58 0 00155.93 32C87.55 32 32 86.72 32 154.15A119.56 119.56 0 0049 216a211.16 211.16 0 00-4.32 42.35c0 116.44 95.69 210.7 213.67 210.7a214 214 0 0039.09-3.5A125.45 125.45 0 00356.07 480C424.57 480 480 425.28 480 357.85a118 118 0 00-12.84-54.25zM368 359c-9.92 13.76-24.51 24.73-43.41 32.43S283.36 403 257.69 403c-30.69 0-56.36-5.37-76.55-15.87a101 101 0 01-35.24-30.8c-9.11-12.83-13.66-25.66-13.66-38 0-7.7 3-14.35 8.87-19.95 5.84-5.37 13.42-8.17 22.29-8.17 7.35 0 13.65 2.1 18.79 6.42 4.9 4.08 9.1 10.15 12.48 18.08A108.09 108.09 0 00207 336.15q6.32 8.22 17.86 13.65c7.82 3.62 18.2 5.48 31 5.48 17.62 0 32.09-3.73 42.94-11.08 10.74-7.12 15.88-15.75 15.88-26.25 0-8.28-2.69-14.82-8.29-19.95-5.83-5.37-13.42-9.57-22.87-12.37-9.69-3-22.87-6.18-39.21-9.56-22.17-4.67-41-10.27-56-16.57-15.28-6.42-27.65-15.4-36.76-26.48-9.22-11.32-13.77-25.55-13.77-42.24a67.86 67.86 0 0114.47-42.58c9.57-12.25 23.46-21.82 41.55-28.35 17.74-6.53 38.86-9.8 62.66-9.8 19.14 0 35.83 2.22 49.83 6.42s25.91 10.15 35.36 17.38 16.34 14.93 20.77 23 6.66 16.22 6.66 24c0 7.46-2.92 14.35-8.76 20.3a29.65 29.65 0 01-21.94 9.1c-7.93 0-14.12-1.87-18.43-5.6-4-3.5-8.17-8.87-12.72-16.69-5.37-9.91-11.79-17.85-19.14-23.45-7.24-5.36-19.14-8.16-35.71-8.16-15.29 0-27.77 3-37 9-8.87 5.72-13.19 12.37-13.19 20.18a18.26 18.26 0 004.32 12.25 38.13 38.13 0 0012.72 9.57 90.14 90.14 0 0017.15 6.53c6 1.64 15.87 4.09 29.53 7.12 17.38 3.62 33.25 7.82 47.26 12.13 14.24 4.55 26.49 10 36.52 16.45a72.93 72.93 0 0124.16 25.09c5.72 10 8.64 22.63 8.64 37.1A75.09 75.09 0 01368 359z"
        />
      </svg>

    @react.component
    let slack = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M126.12 315.1A47.06 47.06 0 1179.06 268h47.06zM149.84 315.1a47.06 47.06 0 0194.12 0v117.84a47.06 47.06 0 11-94.12 0zM196.9 126.12A47.06 47.06 0 11244 79.06v47.06zM196.9 149.84a47.06 47.06 0 010 94.12H79.06a47.06 47.06 0 010-94.12zM385.88 196.9a47.06 47.06 0 1147.06 47.1h-47.06zM362.16 196.9a47.06 47.06 0 01-94.12 0V79.06a47.06 47.06 0 1194.12 0zM315.1 385.88a47.06 47.06 0 11-47.1 47.06v-47.06zM315.1 362.16a47.06 47.06 0 010-94.12h117.84a47.06 47.06 0 110 94.12z"
        />
      </svg>

    @react.component
    let snapChat = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M496 347.21a190.31 190.31 0 01-32.79-5.31c-27.28-6.63-54.84-24.26-68.12-52.43-6.9-14.63-2.64-18.59 11.86-24 14.18-5.27 29.8-7.72 36.86-23 5.89-12.76 1.13-27.76-10.41-35.49-15.71-10.53-30.35-.21-46.62 2.07 3.73-46.66 8.66-88.57-22.67-127.73C338.14 48.86 297.34 32 256.29 32s-81.86 16.86-107.81 49.33c-31.38 39.26-26.4 81.18-22.67 127.92-16.32-2.25-30.81-12.79-46.63-2.18-14.72 9.85-17 29.76-5.44 43s31.64 9.5 43.45 20.6c6.49 6.09 3.49 12.61-.35 20.14-14.48 28.4-39.26 45.74-69.84 51.56-4 .76-22.31 2.87-31 3.65 0 9.28.52 16.78 1.63 21.73 2.94 13.06 12.32 23.58 23.69 30.1 11.18 6.4 35.48 6.43 41.68 15.51 3 4.48 1.76 12.28 5.33 17.38a23.8 23.8 0 0015.37 9.75c18.61 3.61 37.32-7.2 56.42-2.1 14.85 3.95 26.52 15.87 39.26 24 15.51 9.85 32.34 16.42 50.83 17.49 38.1 2.21 59.93-18.91 90.58-36.42 19.5-11.14 38.15-3.86 58.88-2.68 20.1 1.15 23.53-9.25 29.62-24.88a27.37 27.37 0 001.54-4.85 10.52 10.52 0 002.28-1.47c2-1.57 10.55-2.34 12.76-2.86 10.28-2.44 20.34-5.15 29.17-11.2 11.31-7.76 17.65-18.5 19.58-32.64a93.73 93.73 0 001.38-15.67zM208 128c8.84 0 16 10.74 16 24s-7.16 24-16 24-16-10.74-16-24 7.16-24 16-24zm103.62 77.7c-15.25 15-35 23.3-55.62 23.3a78.37 78.37 0 01-55.66-23.34 8 8 0 0111.32-11.32A62.46 62.46 0 00256 213c16.39 0 32.15-6.64 44.39-18.7a8 8 0 0111.23 11.4zM304 176c-8.84 0-16-10.75-16-24s7.16-24 16-24 16 10.75 16 24-7.16 24-16 24z"
        />
      </svg>

    @react.component
    let soundCloud = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M5.8 278a2.11 2.11 0 00-2 2L0 308.64l3.74 28.16a2.12 2.12 0 002.05 2 2.14 2.14 0 002-2l4.44-28.17L7.83 280a2.14 2.14 0 00-2-2zM26.85 262.32a2.13 2.13 0 00-4.26 0l-5 46.32 5 45.3a2.13 2.13 0 004.26 0l5.73-45.31-5.73-46.32zM106.17 219.59a4 4 0 00-3.87 3.87l-4 85.22 4 55.08a3.88 3.88 0 007.75 0l4.53-55.08-4.53-85.22a4 4 0 00-3.88-3.87zM65.12 249.21a3.09 3.09 0 00-3 3l-4.52 56.45 4.51 54.63a3 3 0 006 0l5.13-54.63-5.13-56.48a3.1 3.1 0 00-2.99-2.97zM147.88 367.6a4.83 4.83 0 004.75-4.74l3.93-54.15-3.93-113.46a4.75 4.75 0 00-9.5 0l-3.49 113.45 3.49 54.17a4.81 4.81 0 004.75 4.73zM233.28 367.85a6.6 6.6 0 006.5-6.52l2.74-52.6-2.74-131a6.5 6.5 0 10-13 0l-2.45 131c0 .08 2.45 52.67 2.45 52.67a6.59 6.59 0 006.5 6.45zM190.26 367.65a5.67 5.67 0 005.62-5.64l3.34-53.33-3.34-114.28a5.63 5.63 0 10-11.25 0l-3 114.29 3 53.32a5.66 5.66 0 005.63 5.6zM85.56 367.15a3.53 3.53 0 003.44-3.41l4.83-55.09-4.83-52.4a3.44 3.44 0 00-6.88 0l-4.26 52.38 4.26 55.08a3.5 3.5 0 003.44 3.44zM44.84 364.13a2.67 2.67 0 002.57-2.52l5.43-53-5.42-55a2.57 2.57 0 00-5.14 0l-4.78 55 4.78 53a2.62 2.62 0 002.56 2.53zM211.69 192.53a6.1 6.1 0 00-6.07 6.09l-2.71 110.11 2.71 53a6.07 6.07 0 0012.13 0l3-53-3-110.13a6.1 6.1 0 00-6.06-6.07zM127 367.71a4.41 4.41 0 004.31-4.3l4.23-54.71-4.28-104.7a4.32 4.32 0 00-8.63 0l-3.74 104.7 3.75 54.73a4.38 4.38 0 004.36 4.28zM174.17 362.54l3.63-53.8-3.63-117.28a5.19 5.19 0 10-10.37 0l-3.23 117.28 3.23 53.83a5.18 5.18 0 0010.36 0zM449 241.1a62.42 62.42 0 00-24.33 4.9c-5-57.18-52.61-102-110.66-102a111.92 111.92 0 00-40.28 7.58c-4.75 1.85-6 3.76-6.06 7.46V360.4a7.66 7.66 0 006.8 7.5l174.56.11c34.78 0 63-28.41 63-63.45s-28.2-63.46-63-63.46zM254.79 158.87a7 7 0 00-6.94 7L245 308.75l2.85 51.87a6.94 6.94 0 1013.87-.06v.06l3.09-51.87-3.09-142.93a7 7 0 00-6.93-6.95z"
        />
      </svg>

    @react.component
    let stackOverFlow = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path d="M392 440V320h40v160H64V320h40v120z" />
        <path
          d="M149.1 308.77l198.57 40.87 8.4-39.32-198.57-40.87zm26.27-93.12L359.22 300 376 263.76l-183.82-84.84zm50.95-89l156 127.78 25.74-30.52-156-127.78zM328 32l-33.39 23.8 120.82 160.37L448 192zM144 400h204v-40H144z"
        />
      </svg>

    @react.component
    let steam = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M478.8 208.2a36 36 0 11-36-36 36 36 0 0136 36zM442.6 139a69.42 69.42 0 00-69.4 68.7l-43.2 62a48.86 48.86 0 00-5.4-.3 51.27 51.27 0 00-26.4 7.3L102.4 198a51.8 51.8 0 10-50.6 62.9 51.27 51.27 0 0026.4-7.3L274 332.2a51.76 51.76 0 00102.1-5.9l66.5-48.6a69.35 69.35 0 100-138.7zm0 22.9a46.45 46.45 0 11-46.5 46.5 46.54 46.54 0 0146.5-46.5zm-390.8 9a38.18 38.18 0 0133.7 20.2l-18.9-7.6v.1a30.21 30.21 0 00-22.6 56v.1l16.1 6.4a36.8 36.8 0 01-8.2.9 38.05 38.05 0 01-.1-76.1zm272.8 112.2a38.1 38.1 0 11-33.7 55.9c6.3 2.5 12.5 5 18.8 7.6a30.27 30.27 0 1022.5-56.2l-15.9-6.4a46.83 46.83 0 018.3-.9z"
        />
      </svg>

    @react.component
    let stencil = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M188.8 334.07h197.33L279.47 448H83.2zM512 199H106.61L0 313h405.39zM232.2 64h196.6L322.62 177.93H125.87z"
        />
      </svg>

    @react.component
    let tableau = (~className="", ~fillRule="evenoddd") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M242.69 340.3h26.62v-72.6h67v-25.82h-67v-72.6h-26.62v72.6h-66.15v25.82h66.15zM119.26 445.18h22.59v-64.54h59.7v-20.17h-59.7v-65.34h-22.59v65.34h-59.7v20.17h59.7zM370.15 212h22.59v-64.5h60.5v-19.37h-60.5V62.79h-22.59v65.34h-59.7v19.37h59.7zM246.72 496h19.36v-46h41.15v-16.92h-41.15v-46h-19.36v46h-40.33V450h40.33zM120.07 212h21v-65.31h60.51v-18.56H141V62.79h-21v65.34H59.56v18.56h60.51zM435.72 308.84h19.36v-45.18H496v-17.74h-40.92v-45.18h-19.36v45.18h-40.33v17.74h40.33z"
        />
        <path
          fillRule
          d="M370.15 445.18h22.59v-64.54h60.5v-20.17h-60.5v-65.34h-22.59v65.34h-59.7v20.17h59.7z"
        />
        <path
          d="M307 74.08V60.37h-40.34V16h-14.52v44.37h-40.33v13.71h40.33v44.37h14.52V74.08zM56.11 305.61h14.52v-44.37H111v-13.71H70.63V204H56.11v43.56H16v14.52l40.11-.08z"
        />
      </svg>
    @react.component
    let tikTok = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M412.19 118.66a109.27 109.27 0 01-9.45-5.5 132.87 132.87 0 01-24.27-20.62c-18.1-20.71-24.86-41.72-27.35-56.43h.1C349.14 23.9 350 16 350.13 16h-82.44v318.78c0 4.28 0 8.51-.18 12.69 0 .52-.05 1-.08 1.56 0 .23 0 .47-.05.71v.18a70 70 0 01-35.22 55.56 68.8 68.8 0 01-34.11 9c-38.41 0-69.54-31.32-69.54-70s31.13-70 69.54-70a68.9 68.9 0 0121.41 3.39l.1-83.94a153.14 153.14 0 00-118 34.52 161.79 161.79 0 00-35.3 43.53c-3.48 6-16.61 30.11-18.2 69.24-1 22.21 5.67 45.22 8.85 54.73v.2c2 5.6 9.75 24.71 22.38 40.82A167.53 167.53 0 00115 470.66v-.2l.2.2c39.91 27.12 84.16 25.34 84.16 25.34 7.66-.31 33.32 0 62.46-13.81 32.32-15.31 50.72-38.12 50.72-38.12a158.46 158.46 0 0027.64-45.93c7.46-19.61 9.95-43.13 9.95-52.53V176.49c1 .6 14.32 9.41 14.32 9.41s19.19 12.3 49.13 20.31c21.48 5.7 50.42 6.9 50.42 6.9v-81.84c-10.14 1.1-30.73-2.1-51.81-12.61z"
        />
      </svg>

    @react.component
    let tumblr = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M390 32H120c-49.19 0-88 38.81-88 88v270c0 49.19 38.81 90 88 90h270c49.19 0 90-40.81 90-90V120c0-49.19-40.81-88-90-88zm-54 364h-52c-42.51 0-72-23.68-72-76v-80h-36v-48c42.51-11 57.95-48.32 60-80h44v72h52v56h-52l-.39 70.51c0 21.87 11 29.43 28.62 29.43L336 340z"
        />
      </svg>

    @react.component
    let tux = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M443.66 405.05c-1.46-.79-2.85-1.54-4-2.2-6.47-3.83-13-10.52-11.85-17.83 2.42-15.94 2.89-23.47-.49-28.79a15.61 15.61 0 00-7.67-6.2v-.06c1.41-2.56 2.26-5.66 2.83-10.12 1.44-11-5-44-13.7-70.7-8.08-24.68-29.24-50-44.7-68.56l-3.61-4.34c-23.88-28.93-24.34-38.19-26.55-82.67-.32-6.47-.69-13.8-1.17-22C329.87 41.43 304 16 256 16c-25.2 0-44.62 7.15-57.72 21.26C187.79 48.55 182 64 182 80.78c0 29.52 2 53 2.15 54.29 1.4 35.7 1 41.22-8.31 57.55-2.23 3.93-8.38 10.87-14.89 18.21-8.48 9.57-18.09 20.41-23.36 29.22-3.77 6.31-5.88 12.63-8.11 19.33-3.4 10.21-7.26 21.78-18.15 36.57-12.57 17.07-15.52 29.61-11 47.45-4.94 6.45-4.83 14.37-4.75 20.23a25.84 25.84 0 01-.3 6.09c-2.29 7.59-12.42 9.4-22 10.18-1.58.12-3.1.21-4.55.29-7.26.39-13.53.74-17.13 6.3-3.47 5.36-1.12 13.8 2.14 25.48.72 2.58 1.46 5.25 2.19 8.06 1.83 7-.16 10.48-2.68 14.84-2.44 4.21-5.21 9-5.21 17.55 0 14.67 20 18 43.05 21.94 7.36 1.24 15 2.53 22.63 4.24a225.58 225.58 0 0134.08 10.68c9.72 3.73 17.4 6.68 26.43 6.68 16.18 0 28.25-9.77 39.92-19.21l2.15-1.75c5.53-4.49 21.5-4 34.34-3.64 3.46.1 6.73.2 9.65.2h6.22c13.48-.08 31.94-.18 42.23 2.5 3.75 1 6.2 3.72 9.29 7.19 5.87 6.56 13.17 14.75 33.39 14.75 19.39 0 29.55-8.71 41.32-18.8 7.16-6.13 14.56-12.48 25.07-17.86 3.92-2 7.62-3.87 11.08-5.61 22.64-11.38 35.11-17.65 35.11-27.82 0-9.91-12.24-16.5-20.34-20.86zM211.11 88.38a13.91 13.91 0 0112.47 9c1.95 5.55 1.81 10.42.21 12.94 0 0-.22-1-.36-1.44a14.85 14.85 0 00-6.44-8.59 11.35 11.35 0 00-8.94-1.47c-4.26 1.13-8.41 5-8.91 18.79-5.16-10.47-2.31-18 .92-23 2.31-3.73 7.47-6.33 11.05-6.23zm-17.5 375C192 479.24 175.2 479 170.09 478.59c-9.81-.82-21.66-4.69-33.13-8.43-4.52-1.47-9.19-3-13.73-4.34-13.2-3.89-30.12-6.74-43.72-9-3.22-.55-6.27-1.06-9.05-1.55s-4.61-1.27-5.2-2.3c-1-1.65.38-5.25 1.93-9.41C69.27 438 72.11 430.34 72 421c0-3.91-1.47-8.3-2.84-12.56-1.62-5-3.28-10.17-1.93-12.62 1.23-2.23 6.75-2.49 11.6-2.49h2.26c3.55 0 6.62.06 8.75-.53 6.51-1.81 14.86-6.92 17.81-13.88.9-2.17 1.37-6.94 2-14 .37-4.12.74-8.37 1.22-10.58a3.55 3.55 0 012.11-2.55c1.65-.77 6.78-1.91 18.63 4.08 11.18 5.65 22.88 25.84 34.2 45.37 3.56 6.14 6.92 11.94 10.3 17.36 14.04 22.54 18.83 31.6 17.5 44.8zm128.84-31.56a68.74 68.74 0 01-4.55 10.9.58.58 0 01-1.08-.42 56.61 56.61 0 002.11-18.43c-.25-4.73-.4-7.59-2.66-8.51s-4.26.83-9.45 5.54c-1.1 1-2.36 2.14-3.78 3.4-10.8 9.47-26.88 20.68-55.61 23.37-16.84 1.59-27.59-4.63-30.92-8.14a2.16 2.16 0 00-3.07-.08 2.23 2.23 0 00-.51 2.29c2.12 6.84 1.2 12.26-.49 16.19-.95 2.2-1.85 2.05-2-.34-.25-4.64-1-9.88-3-14.19-3.11-6.94-7-14.34-8.89-17.88v-.05c3.24-1.49 8.86-4.83 11.37-10.88s4.48-18-9.82-31.74c-6.28-6.05-22.1-17.16-36.06-27-10.9-7.65-22.17-15.56-23.65-17.51-4.49-5.89-6.37-9.3-6.94-19.65.07-2.3.13-4.59.19-6.89l.27-2.49a.58.58 0 011.15 0 63.07 63.07 0 002 9.72c1.08 3.73 2.4 7.58 3.62 9.18 3.19 4.22 7.56 7.39 11.67 8.49a5.48 5.48 0 005-.72c2.93-2.33 2.65-7.6 2.19-16.34-.47-9-1.11-21.34 1.85-34.55 5.62-25 10.91-32.51 17.61-42 .86-1.22 1.75-2.47 2.65-3.79 1.44-2.08 3-4.1 4.67-6.23 7.47-9.61 15.93-20.49 13.92-40.95-.51-5.19-.76-8.83-.86-11.39a1 1 0 011.88-.59l.49.77 1.21 2c4.86 8 13.64 22.57 25.1 22.57a13.62 13.62 0 002.36-.21c23.39-3.93 51.9-30.25 52.17-30.51 3.12-3 2.84-6.14 1.64-7.91a5.18 5.18 0 00-6.45-1.72c-3.29 1.4-7.14 3.15-11.22 5-13.82 6.27-37 16.75-42.25 14.34a23.11 23.11 0 01-6.32-5.13 1 1 0 011.14-1.65c5.59 2.29 9.55 1.45 14.2-.08l1-.34c9.37-3.09 14.2-4.77 30.76-12.08a97.55 97.55 0 0116.26-5.93c4-1 6.42-1.63 7.71-4.34a6.65 6.65 0 00-.5-7.13c-1.53-1.87-4.07-2.57-7-1.9-3.22.75-4.7 3-6.41 4.49-2.4 2.05-5 4.16-17.19 8.65-27 10-34.58 10.61-45.21 3.43-9.84-6.69-15.15-13.23-15.15-16 0-2.13 5.45-5.7 8.71-7.84 1.33-.87 2.59-1.69 3.62-2.46 4.34-3.22 13-11.39 13.38-11.73 5.4-5.41 17.91-2.18 25 2.58a2.23 2.23 0 001.72.41 2.14 2.14 0 001.68-2.58c-4.2-17.46-.13-27.34 4-32.55a22.58 22.58 0 0117.48-8.48c12.81 0 21.76 10 21.76 24.42 0 11-2.82 16.79-5.48 20.3a1.73 1.73 0 01-2.58.18 1.78 1.78 0 01-.24-2.2A24.61 24.61 0 00290 114a16.58 16.58 0 00-16.84-16.67c-3.94 0-13.48 1.5-16.77 15.44a29.81 29.81 0 00-.34 11.07l.08.71c.9 7.38 15.3 12.51 27.23 15.51 11.36 2.85 13 6.22 8.84 19.63s3.11 26.23 5.7 29.57a78.3 78.3 0 018.31 12.47 93.8 93.8 0 016.62 16.48c2.17 6.79 4.05 12.65 10.63 21.22 11.07 14.4 17.66 48.64 15 78-.21 2.41-.53 4.29-.77 5.67-.43 2.53-.72 4.2.66 5.38s3.16.7 7.26-.63l3.43-1.09a109.33 109.33 0 0112.58-2.8 2.15 2.15 0 001.59-1.16c3.43-6.91 3.85-15.22 4-22.47q0-1.31.06-2.79c.19-7.77.45-18.93-2.95-32a1 1 0 011.93-.64 93 93 0 016.66 25.55c2.55 22.58-1.9 32.09-1.94 32.17a1.61 1.61 0 00.95 2.25 17.12 17.12 0 016.95 4.67c1.46 1.66.93 2.4-1.14 1.62a36.26 36.26 0 00-12.77-2.29c-10.4 0-18.09 4.95-21.51 9.19-3.19 3.94-3.7 7.67-3.83 11.27l-.06.05c-7.48-.75-12.94 1.21-17.47 6.21l-.08.09c-6.26 7.75-4 24.63-1.29 38.48 1.28 6.45 5.59 25.52 1.73 37.68zm96.1 10.07c-15.71 6.71-25.43 14.51-34 21.39-5.65 4.53-11 8.81-17.28 12.14-10.12 5.34-24.91 6.53-33.27-7.7-2.37-4-.71-9.86 1.58-17.95 3.05-10.75 7.23-25.46 3.71-44.65-.94-5.12-1.77-9.51-2.49-13.31C334 377 332.9 371.43 334 367c.63-2.45 3.43-3 5.87-3a20.83 20.83 0 012.63.19 29.51 29.51 0 007 12.1c5.7 5.86 13.63 8.83 23.56 8.85 2.1.17 25.94 1.55 36.54-22.4 1.46.18 3.65.7 4.3 2.3 1.28 3.19-.27 8.91-1.52 13.5-.9 3.31-1.68 6.16-1.63 8.37.31 16 11 22.78 25.83 32.16 1.79 1.13 3.66 2.31 5.55 3.54S445 425 445 426c-.52 4.79-20 13.16-26.45 15.91z"
        />
      </svg>

    @react.component
    let twitch = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M80 32l-32 80v304h96v64h64l64-64h80l112-112V32zm336 256l-64 64h-96l-64 64v-64h-80V80h304z"
        />
        <path d="M320 143h48v129h-48zM208 143h48v129h-48z" />
      </svg>

    @react.component
    let twitter = (~className="") =>
      <svg
        xmlns="http://www.w3.org/2000/svg"
        className={merge(.[defaultSize, className])}
        viewBox="0 0 512 512">
        <path
          d="M496 109.5a201.8 201.8 0 01-56.55 15.3 97.51 97.51 0 0043.33-53.6 197.74 197.74 0 01-62.56 23.5A99.14 99.14 0 00348.31 64c-54.42 0-98.46 43.4-98.46 96.9a93.21 93.21 0 002.54 22.1 280.7 280.7 0 01-203-101.3A95.69 95.69 0 0036 130.4c0 33.6 17.53 63.3 44 80.7A97.5 97.5 0 0135.22 199v1.2c0 47 34 86.1 79 95a100.76 100.76 0 01-25.94 3.4 94.38 94.38 0 01-18.51-1.8c12.51 38.5 48.92 66.5 92.05 67.3A199.59 199.59 0 0139.5 405.6a203 203 0 01-23.5-1.4A278.68 278.68 0 00166.74 448c181.36 0 280.44-147.7 280.44-275.8 0-4.2-.11-8.4-.31-12.5A198.48 198.48 0 00496 109.5z"
        />
      </svg>
  }
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
