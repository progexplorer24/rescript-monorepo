// Generated by ReScript, PLEASE EDIT WITH CARE


function rows(num) {
  return [{
            NAME: "repeat",
            VAL: [
              {
                NAME: "num",
                VAL: num
              },
              {
                NAME: "minmax",
                VAL: [
                  "zero",
                  {
                    NAME: "fr",
                    VAL: 1
                  }
                ]
              }
            ]
          }];
}

function toValue(colStart) {
  if (colStart === "v2") {
    return rows(2);
  } else if (colStart === "v3") {
    return rows(3);
  } else if (colStart === "v4") {
    return rows(4);
  } else if (colStart === "v5") {
    return rows(5);
  } else if (colStart === "v6") {
    return rows(6);
  } else {
    return rows(1);
  }
}

export {
  rows ,
  toValue ,
  
}
/* No side effect */
