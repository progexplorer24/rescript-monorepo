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
    viewBox="0 0 351 464"
    fill="none"
    xmlns="http://www.w3.org/2000/svg">
    <g filter="url(#filter0_d)">
      <rect
        x="36.1233"
        y="29"
        width="280"
        height="394"
        rx="20"
        transform="rotate(0.308765 36.1233 29)"
        fill=backgroundFill
      />
      <rect
        x="36.6206"
        y="29.5027"
        width="279"
        height="393"
        rx="19.5"
        transform="rotate(0.308765 36.6206 29.5027)"
        stroke=cardBorder
        strokeWidth={Belt.Int.toString(strokeWidth)}
      />
    </g>
    <path
      d="M115.299 83.6696C115.284 86.43 114.58 88.8742 113.189 91.0021C111.797 93.1301 109.887 94.8255 107.458 96.0885C110.211 97.4315 112.389 99.2792 113.991 101.632C115.593 103.958 116.385 106.697 116.369 109.848C116.341 114.9 114.601 118.888 111.148 121.812C107.695 124.71 103.012 126.143 97.1009 126.111C91.1895 126.079 86.51 124.583 83.0624 121.621C79.6148 118.66 77.9045 114.666 77.9316 109.641C77.9486 106.49 78.7706 103.747 80.3978 101.412C82.025 99.0765 84.2093 97.2653 86.9506 95.978C84.5357 94.6889 82.6439 92.973 81.2752 90.8301C79.9325 88.6875 79.2687 86.2359 79.2835 83.4756C79.3096 78.6319 80.945 74.7865 84.1895 71.9393C87.4342 69.0661 91.83 67.6445 97.3768 67.6744C102.898 67.7041 107.265 69.16 110.478 72.0419C113.718 74.898 115.325 78.7739 115.299 83.6696ZM105.045 108.966C105.058 106.492 104.353 104.509 102.929 103.017C101.504 101.525 99.5812 100.773 97.1594 100.76C94.7636 100.747 92.8456 101.479 91.4053 102.955C89.9652 104.406 89.2384 106.381 89.2249 108.881C89.2118 111.303 89.9044 113.26 91.3027 114.752C92.7009 116.244 94.65 116.996 97.15 117.01C99.5978 117.023 101.516 116.317 102.904 114.892C104.318 113.468 105.031 111.492 105.045 108.966ZM104.007 84.1557C104.019 81.9422 103.442 80.1682 102.278 78.8338C101.113 77.4733 99.4631 76.7873 97.3277 76.7758C95.2184 76.7644 93.5743 77.4066 92.3954 78.7024C91.2165 79.9981 90.6209 81.7918 90.6085 84.0835C90.5963 86.3491 91.1724 88.1751 92.3369 89.5616C93.5013 90.9481 95.1512 91.6471 97.2866 91.6586C99.422 91.6701 101.066 90.9889 102.22 89.6149C103.399 88.241 103.995 86.4213 104.007 84.1557Z"
      fill=cardTextColor
    />
    <path
      fillRule="evenodd"
      clipRule="evenodd"
      d="M109.757 160.401C99.0668 160.508 96.8761 172.666 96.8761 172.666C96.8761 172.666 94.475 160.483 83.7862 160.261C73.0973 160.039 66.4683 169.377 70.0334 179.264C73.5982 189.151 77.1911 191.391 82.833 198.575C88.4747 205.76 96.6721 218.18 96.6151 221.099C96.5899 218.179 104.578 205.847 110.297 198.723C116.017 191.6 119.633 189.399 123.305 179.551C126.976 169.703 120.448 160.294 109.757 160.401Z"
      fill=suitColor
    />
    <defs>
      <filter
        id="filter0_d"
        x="0"
        y="0"
        width="350.119"
        height="463.503"
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
