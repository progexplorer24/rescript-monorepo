// Generated by ReScript, PLEASE EDIT WITH CARE


function repeatCols(columns) {
  return [{
            NAME: "repeat",
            VAL: [
              {
                NAME: "num",
                VAL: columns
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

function toValue(cols) {
  if (cols === "v2") {
    return repeatCols(2);
  } else if (cols === "v3") {
    return repeatCols(3);
  } else if (cols === "v4") {
    return repeatCols(4);
  } else if (cols === "v5") {
    return repeatCols(5);
  } else if (cols === "v6") {
    return repeatCols(6);
  } else if (cols === "v7") {
    return repeatCols(7);
  } else if (cols === "v8") {
    return repeatCols(8);
  } else if (cols === "v9") {
    return repeatCols(9);
  } else if (cols === "v10") {
    return repeatCols(10);
  } else if (cols === "v11") {
    return repeatCols(11);
  } else if (cols === "v12") {
    return repeatCols(12);
  } else {
    return repeatCols(1);
  }
}

export {
  repeatCols ,
  toValue ,
  
}
/* No side effect */
