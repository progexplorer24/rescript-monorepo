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
      d="M87.8828 91.5625H93.8984C96.763 91.5625 98.8854 90.8464 100.266 89.4141C101.646 87.9818 102.336 86.0807 102.336 83.7109C102.336 81.4193 101.646 79.6354 100.266 78.3594C98.9115 77.0833 97.0365 76.4453 94.6406 76.4453C92.4792 76.4453 90.6693 77.0443 89.2109 78.2422C87.7526 79.4141 87.0234 80.9505 87.0234 82.8516H75.7344C75.7344 79.8828 76.5286 77.2266 78.1172 74.8828C79.7318 72.513 81.9714 70.6641 84.8359 69.3359C87.7266 68.0078 90.9036 67.3437 94.3672 67.3437C100.383 67.3437 105.096 68.7891 108.508 71.6797C111.919 74.5443 113.625 78.5026 113.625 83.5547C113.625 86.1589 112.831 88.5547 111.242 90.7422C109.654 92.9297 107.57 94.6094 104.992 95.7812C108.195 96.9271 110.578 98.6458 112.141 100.937C113.729 103.229 114.523 105.937 114.523 109.062C114.523 114.115 112.674 118.164 108.977 121.211C105.305 124.258 100.435 125.781 94.3672 125.781C88.6901 125.781 84.0417 124.284 80.4219 121.289C76.8281 118.294 75.0312 114.336 75.0312 109.414H86.3203C86.3203 111.549 87.1146 113.294 88.7031 114.648C90.3177 116.003 92.2969 116.68 94.6406 116.68C97.3229 116.68 99.4193 115.977 100.93 114.57C102.466 113.138 103.234 111.25 103.234 108.906C103.234 103.229 100.109 100.391 93.8594 100.391H87.8828V91.5625Z"
      fill=cardTextColor
    />
    <path
      fillRule="evenodd"
      clipRule="evenodd"
      d="M110.755 176.288C109.056 176.288 107.437 176.659 105.961 177.328C107.347 175.139 108.161 172.487 108.161 169.627C108.161 162.122 102.571 156.037 95.6759 156.037C88.7809 156.037 83.1913 162.122 83.1913 169.627C83.1913 172.35 83.93 174.884 85.197 177.01C83.9372 176.545 82.5883 176.288 81.1841 176.288C74.2888 176.288 68.6995 182.373 68.6995 189.878C68.6995 197.383 74.2888 203.467 81.1841 203.467C82.7413 203.467 84.2308 203.154 85.6056 202.587C85.6053 202.59 91.4158 200.882 95.2354 193.315V197.871C95.2354 197.871 93.277 212.234 79.4706 213.806H77.2672V216.044H114.868V213.806H112.665C98.8584 212.234 96.8999 197.871 96.8999 197.871V193.622C97.6113 195.327 101.545 203.665 110.384 203.458C110.508 203.461 110.631 203.467 110.755 203.467C117.651 203.467 123.24 197.383 123.24 189.878C123.24 182.373 117.651 176.288 110.755 176.288Z"
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
