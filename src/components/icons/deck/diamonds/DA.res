module Styles = {
  open Tailwind
  let elementStyles = twStyle([w(#v20)])
}

@react.component
let make = (~backgroundFill=CardDefaults.backgroundFill, ~cardBorder=CardDefaults.cardBorder) =>
  <svg
    className={Tailwind.merge(. [Styles.elementStyles])}
    viewBox="0 0 348 462"
    fill="none"
    xmlns="http://www.w3.org/2000/svg">
    <g filter="url(#filter0_d)">
      <rect x="34" y="29" width="280" height="394" rx="20" fill=backgroundFill />
      <rect x="34.5" y="29.5" width="279" height="393" rx="19.5" stroke=cardBorder />
    </g>
    <path
      d="M105.773 113.281H85.2266L81.3203 125H68.8594L90.0312 68.125H100.891L122.18 125H109.719L105.773 113.281ZM88.3906 103.789H102.609L95.4609 82.5L88.3906 103.789Z"
      fill="#F24822"
    />
    <path
      fillRule="evenodd"
      clipRule="evenodd"
      d="M67.2307 185.628L96.5044 215.831L125.778 185.628L96.5044 155.425L67.2307 185.628Z"
      fill="#F24822"
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
