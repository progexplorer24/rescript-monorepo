module Styles = {
  open Tailwind
  let elementStyles = twStyle([w(#v20)])
}

@react.component
let make = (
  ~backgroundFill=CardDefaults.backgroundFill,
  ~cardBorder=CardDefaults.cardBorder,
  ~strokeWidth=CardDefaults.strokeWidth,
  ~cardTextColor=CardDefaults.redTextColor,
  ~suitColor=CardDefaults.redTextColor,
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
      d="M113.469 83.2422C113.469 86.0026 112.779 88.4505 111.398 90.5859C110.018 92.7214 108.117 94.4271 105.695 95.7031C108.456 97.0312 110.643 98.8672 112.258 101.211C113.872 103.529 114.68 106.263 114.68 109.414C114.68 114.466 112.961 118.464 109.523 121.406C106.086 124.323 101.411 125.781 95.5 125.781C89.5885 125.781 84.901 124.31 81.4375 121.367C77.974 118.424 76.2422 114.44 76.2422 109.414C76.2422 106.263 77.0495 103.516 78.6641 101.172C80.2786 98.8281 82.4531 97.0052 85.1875 95.7031C82.7656 94.4271 80.8646 92.7214 79.4844 90.5859C78.1302 88.4505 77.4531 86.0026 77.4531 83.2422C77.4531 78.3984 79.0677 74.5443 82.2969 71.6797C85.526 68.7891 89.9141 67.3437 95.4609 67.3437C100.982 67.3437 105.357 68.776 108.586 71.6406C111.841 74.4792 113.469 78.3464 113.469 83.2422ZM103.352 108.594C103.352 106.12 102.635 104.141 101.203 102.656C99.7708 101.172 97.8437 100.43 95.4219 100.43C93.026 100.43 91.112 101.172 89.6797 102.656C88.2474 104.115 87.5312 106.094 87.5312 108.594C87.5312 111.016 88.2344 112.969 89.6406 114.453C91.0469 115.937 93 116.68 95.5 116.68C97.9479 116.68 99.862 115.964 101.242 114.531C102.648 113.099 103.352 111.12 103.352 108.594ZM102.18 83.7891C102.18 81.5755 101.594 79.8047 100.422 78.4766C99.25 77.1224 97.5964 76.4453 95.4609 76.4453C93.3516 76.4453 91.7109 77.0964 90.5391 78.3984C89.3672 79.7005 88.7812 81.4974 88.7812 83.7891C88.7812 86.0547 89.3672 87.8776 90.5391 89.2578C91.7109 90.638 93.3646 91.3281 95.5 91.3281C97.6354 91.3281 99.276 90.638 100.422 89.2578C101.594 87.8776 102.18 86.0547 102.18 83.7891Z"
      fill=cardTextColor
    />
    <path
      fillRule="evenodd"
      clipRule="evenodd"
      d="M67.2307 185.628L96.5044 215.831L125.778 185.628L96.5044 155.425L67.2307 185.628Z"
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