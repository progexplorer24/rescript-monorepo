@module("@emotion/css") external css: (. string) => string = "css"
@module("@emotion/css") external merge: (. array<string>) => string = "cx"
@module("@emotion/css") external global: (. string) => unit = "injectGlobal"
@module("@emotion/css") external keyframes: (. string) => string = "keyframes"
