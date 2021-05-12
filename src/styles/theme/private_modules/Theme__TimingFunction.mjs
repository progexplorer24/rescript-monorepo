// Generated by ReScript, PLEASE EDIT WITH CARE


function toValue(timing) {
  if (timing === "linear") {
    return "linear";
  } else if (timing === "easeIn") {
    return {
            NAME: "cubicBezier",
            VAL: [
              0.4,
              0,
              1,
              1
            ]
          };
  } else if (timing === "easeOut") {
    return {
            NAME: "cubicBezier",
            VAL: [
              0,
              0,
              0.2,
              1
            ]
          };
  } else {
    return {
            NAME: "cubicBezier",
            VAL: [
              0.4,
              0,
              0.2,
              1
            ]
          };
  }
}

export {
  toValue ,
  
}
/* No side effect */
