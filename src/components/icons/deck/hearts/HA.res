module Styles = {
  open Tailwind
  let elementStyles = twStyle([w(#v20)])
}

@react.component
let make = (~backgroundFill=CardDefaults.backgroundFill, ~cardBorder=CardDefaults.cardBorder) =>
  <svg
    className=Styles.elementStyles
    viewBox="0 0 348 463"
    fill="none"
    xmlns="http://www.w3.org/2000/svg">
    <g filter="url(#filter0_d)">
      <rect x="34" y="29.7516" width="280" height="394" rx="20" fill=backgroundFill />
      <rect x="34.5" y="30.2516" width="279" height="393" rx="19.5" stroke=cardBorder />
    </g>
    <path
      d="M105.773 114.033H85.2266L81.3203 125.752H68.8594L90.0312 68.8766H100.891L122.18 125.752H109.719L105.773 114.033ZM88.3906 104.541H102.609L95.4609 83.2516L88.3906 104.541Z"
      fill="#F24822"
    />
    <path
      fillRule="evenodd"
      clipRule="evenodd"
      d="M108.341 160.754C97.6512 160.918 95.5261 173.088 95.5261 173.088C95.5261 173.088 93.0593 160.918 82.3695 160.754C71.6795 160.589 65.101 169.963 68.7192 179.831C72.3373 189.698 75.9423 191.919 81.6228 199.073C87.3031 206.227 95.5673 218.602 95.5261 221.522C95.4851 218.602 103.407 206.227 109.088 199.073C114.768 191.919 118.373 189.698 121.991 179.831C125.609 169.963 119.031 160.589 108.341 160.754Z"
      fill="#F24822"
    />
    <defs>
      <filter
        id="filter0_d"
        x="0"
        y="0.751587"
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
