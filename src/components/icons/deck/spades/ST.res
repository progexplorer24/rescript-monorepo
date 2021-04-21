module Styles = {
  open Tailwind
  let elementStyles = twStyle([w(#v20)])
}

@react.component
let make = (
  ~backgroundFill=CardDefaults.backgroundFill,
  ~cardBorder=CardDefaults.cardBorder,
  ~strokeWidth=CardDefaults.strokeWidth,
  ~cardTextColor=CardDefaults.darkSuitColor,
  ~suitColor=CardDefaults.darkSuitColor,
) =>
  <svg
    className=Styles.elementStyles
    viewBox="0 0 348 462"
    fill="none"
    xmlns="http://www.w3.org/2000/svg">
    <g filter="url(#filter0_d)">
      <rect x="34" y="29" width="280" height="394" rx="20" fill=backgroundFill />
      <rect
        x="34.5"
        y="29.5"
        width="279"
        height="393"
        rx="19.5"
        stroke=cardBorder
        strokeWidth={Belt.Int.toString(strokeWidth)}
      />
    </g>
    <path
      d="M80.8516 125H69.5625V81.4844L56.0859 85.6641V76.4844L79.6406 68.0469H80.8516V125ZM137.648 101.484C137.648 109.349 136.021 115.365 132.766 119.531C129.51 123.698 124.745 125.781 118.469 125.781C112.271 125.781 107.531 123.737 104.25 119.648C100.969 115.56 99.2891 109.701 99.2109 102.07V91.6016C99.2109 83.6589 100.852 77.6302 104.133 73.5156C107.44 69.401 112.193 67.3438 118.391 67.3438C124.589 67.3438 129.328 69.388 132.609 73.4766C135.891 77.5391 137.57 83.3854 137.648 91.0156V101.484ZM126.359 90C126.359 85.2865 125.708 81.862 124.406 79.7266C123.13 77.5651 121.125 76.4844 118.391 76.4844C115.734 76.4844 113.768 77.513 112.492 79.5703C111.242 81.6016 110.578 84.7917 110.5 89.1406V102.969C110.5 107.604 111.125 111.055 112.375 113.32C113.651 115.56 115.682 116.68 118.469 116.68C121.229 116.68 123.221 115.599 124.445 113.438C125.669 111.276 126.307 107.969 126.359 103.516V90Z"
      fill=cardTextColor
    />
    <path
      fillRule="evenodd"
      clipRule="evenodd"
      d="M109.243 200.985C119.532 201.117 125.862 193.546 122.38 185.577C118.899 177.608 115.428 175.815 109.963 170.037C104.495 164.26 96.5443 154.265 96.5819 151.907C96.6221 154.265 88.9989 164.26 83.5311 170.037C78.066 175.815 74.5979 177.608 71.1138 185.577C67.6323 193.546 73.9644 201.117 84.2505 200.985C91.3127 200.893 94.4908 196.234 95.7873 193.32L95.7873 197.133C95.7873 197.133 93.5326 210.886 77.6204 212.392L75.0838 212.392L75.0838 214.535L118.413 214.535L118.413 212.392L115.873 212.392C99.964 210.886 97.7065 197.133 97.7065 197.133L97.7065 193.821C99.2339 196.737 102.573 200.898 109.243 200.985Z"
      fill=suitColor
    />
    <defs>
      <filter
        id="filter0_d"
        x="0"
        y="0"
        width="348"
        height="462"
        filterUnits="userSpaceOnUse"
        colorInterpolationFilters="sRGB">
        <feFlood floodOpacity="0" result="BackgroundImageFix" />
        <feColorMatrix
          in_="SourceAlpha" type_="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"
        />
        <feOffset dy="5" />
        <feGaussianBlur stdDeviation="17" />
        <feColorMatrix type_="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.1 0" />
        <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow" />
        <feBlend mode="normal" in_="SourceGraphic" in2="effect1_dropShadow" result="shape" />
      </filter>
    </defs>
  </svg>
