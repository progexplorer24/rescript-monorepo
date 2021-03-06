// Generated by ReScript, PLEASE EDIT WITH CARE


var none = {
  NAME: "px",
  VAL: 0
};

var sm = {
  NAME: "rem",
  VAL: 0.125
};

var $$default = {
  NAME: "rem",
  VAL: 0.25
};

var md = {
  NAME: "rem",
  VAL: 0.375
};

var lg = {
  NAME: "rem",
  VAL: 0.5
};

var xl = {
  NAME: "rem",
  VAL: 0.75
};

var _2xl = {
  NAME: "rem",
  VAL: 1
};

var _3xl = {
  NAME: "rem",
  VAL: 1.5
};

var full = {
  NAME: "px",
  VAL: 9999
};

function toRadius(borderRadius) {
  if (borderRadius === "none") {
    return none;
  } else if (borderRadius === "lg") {
    return lg;
  } else if (borderRadius === "md") {
    return md;
  } else if (borderRadius === "sm") {
    return sm;
  } else if (borderRadius === "xl") {
    return xl;
  } else if (borderRadius === "xl2") {
    return _2xl;
  } else if (borderRadius === "xl3") {
    return _3xl;
  } else if (borderRadius === "default") {
    return $$default;
  } else {
    return full;
  }
}

export {
  none ,
  sm ,
  $$default ,
  $$default as default,
  md ,
  lg ,
  xl ,
  _2xl ,
  _3xl ,
  full ,
  toRadius ,
  
}
/* No side effect */
