module Styles = {
  open Tailwind
  let elementStyles = twStyle([w(#20)])
}

@react.component
let make = (
  ~backgroundFill=CardDefaults.backgroundFill,
  ~cardBorder=CardDefaults.cardBorder,
  ~strokeWidth=CardDefaults.strokeWidth,
  ~cardTextColor=CardDefaults.darkSuitColor,
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
      d="M155.398 255.617C155.398 244.68 156.727 235.969 159.383 229.484C162.039 223 166.883 216.633 173.914 210.383C181.023 204.055 185.75 198.938 188.094 195.031C190.438 191.047 191.609 186.867 191.609 182.492C191.609 169.289 185.516 162.688 173.328 162.688C167.547 162.688 162.898 164.484 159.383 168.078C155.945 171.594 154.148 176.477 153.992 182.727H120.008C120.164 167.805 124.969 156.125 134.422 147.688C143.953 139.25 156.922 135.031 173.328 135.031C189.891 135.031 202.742 139.055 211.883 147.102C221.023 155.07 225.594 166.359 225.594 180.969C225.594 187.609 224.109 193.898 221.141 199.836C218.172 205.695 212.977 212.219 205.555 219.406L196.062 228.43C190.125 234.133 186.727 240.812 185.867 248.469L185.398 255.617H155.398ZM152 291.594C152 286.359 153.758 282.062 157.273 278.703C160.867 275.266 165.438 273.547 170.984 273.547C176.531 273.547 181.062 275.266 184.578 278.703C188.172 282.062 189.969 286.359 189.969 291.594C189.969 296.75 188.211 301.008 184.695 304.367C181.258 307.727 176.688 309.406 170.984 309.406C165.281 309.406 160.672 307.727 157.156 304.367C153.719 301.008 152 296.75 152 291.594Z"
      fill=cardTextColor
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
