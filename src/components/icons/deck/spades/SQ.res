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
      d="M119.602 97.8516C119.602 103.164 118.742 107.786 117.023 111.719C115.305 115.625 112.922 118.763 109.875 121.133L119.328 128.555L111.867 135.156L99.7578 125.43C98.3776 125.664 96.9453 125.781 95.4609 125.781C90.7474 125.781 86.5417 124.648 82.8438 122.383C79.1458 120.117 76.2812 116.888 74.25 112.695C72.2188 108.477 71.1901 103.633 71.1641 98.1641V95.3516C71.1641 89.7526 72.1667 84.8307 74.1719 80.5859C76.2031 76.3151 79.0547 73.0469 82.7266 70.7812C86.4245 68.4896 90.6432 67.3438 95.3828 67.3438C100.122 67.3438 104.328 68.4896 108 70.7812C111.698 73.0469 114.549 76.3151 116.555 80.5859C118.586 84.8307 119.602 89.7396 119.602 95.3125V97.8516ZM107.727 95.2734C107.727 89.3099 106.659 84.7786 104.523 81.6797C102.388 78.5807 99.3411 77.0312 95.3828 77.0312C91.4505 77.0312 88.4167 78.5677 86.2812 81.6406C84.1458 84.6875 83.0651 89.1667 83.0391 95.0781V97.8516C83.0391 103.659 84.1068 108.164 86.2422 111.367C88.3776 114.57 91.4505 116.172 95.4609 116.172C99.3932 116.172 102.414 114.635 104.523 111.562C106.633 108.464 107.701 103.958 107.727 98.0469V95.2734Z"
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
