module Styles = {
  open Tailwind
  let elementStyles = twStyle([w(#20)])
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
    viewBox="0 0 348 462"
    fill="none"
    className=Styles.elementStyles
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
      d="M109.797 103.594H116.242V112.695H109.797V125H98.5078V112.695H75.1875L74.6797 105.586L98.3906 68.125H109.797V103.594ZM85.9297 103.594H98.5078V83.5156L97.7656 84.8047L85.9297 103.594Z"
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
