module Styles = {
  open Tailwind
  let elementStyles = twStyle([])
}

@react.component
let make = (~className="") =>
  <svg
    version="1.1"
    id="Layer_1"
    xmlns="http://www.w3.org/2000/svg"
    x="0px"
    y="0px"
    viewBox="0 0 512 512"
    className={Tailwind.merge(. [Styles.elementStyles, className])}>
    <circle fill="#F8F6F8" cx="256" cy="256" r="256" />
    <path
      fill="#3E3B43"
      d="M255.437,512c-70.693,0-128-57.307-128-128s57.307-128,128-128s128-57.307,128-128
	s-57.307-128-128-128H256c141.385,0,256,114.615,256,256S397.385,512,256,512H255.437z"
    />
    <circle fill="#F8F6F8" cx="256" cy="384" r="28.473" />
    <circle fill="#3E3B43" cx="256" cy="139.4" r="28.473" />
    <g />
    <g />
    <g />
    <g />
    <g />
    <g />
    <g />
    <g />
    <g />
    <g />
    <g />
    <g />
    <g />
    <g />
    <g />
  </svg>
