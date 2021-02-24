// This type is based on the getInitialProps return value.
// If you are using getServerSideProps or getStaticProps, you probably
// will never need this
// See https://nextjs.org/docs/advanced-features/custom-app
type pageProps

module PageComponent = {
  type t = React.component<pageProps>
}

type props = {
  @as("Component")
  component: PageComponent.t,
  pageProps: pageProps,
}

// #region REGION: Style Reset

/* ! modern-normalize v1.0.0 | MIT License | https://github.com/sindresorhus/modern-normalize */
/* ! tailwindcss v2.0.3 | MIT License | https://tailwindcss.com */

/**
Use a better box model (opinionated).
*/
let _boxModel = CssJs.global(.
  "*,
*::before,
*::after",
  [CssJs.boxSizing(#borderBox)],
)

/**
Use a more readable tab size (opinionated).
*/

let _root = CssJs.global(.
  ":root",
  [CssJs.unsafe("tab-size", "4"), CssJs.unsafe("-moz-tab-size", "4")],
)

/**
1. Correct the line height in all browsers.
2. Prevent adjustments of font size after orientation changes in iOS.
*/

let _html = CssJs.global(.
  "html",
  [CssJs.lineHeight(#abs(1.5)), CssJs.unsafe("-webkit-text-size-adjust", "100%")],
)

/**
Remove the margin in all browsers.
*/

/**
Improve consistency of default fonts in all browsers. (https://github.com/sindresorhus/modern-normalize/issues/3)
*/

let _body = CssJs.global(.
  "body",
  [
    CssJs.margin(#zero),
    CssJs.fontSize(#inherit_),
    CssJs.lineHeight(#inherit_),
    CssJs.fontFamilies([
      #systemUi,
      #custom("-apple-system"),
      #custom("Segoe UI"),
      #custom("Roboto"),
      #custom("Helvetica"),
      #custom("Arial"),
      #sansSerif,
      #custom("Apple Color Emoji"),
      #custom("Segoe UI Emoji"),
    ]),
  ],
)

/**
1. Add the correct height in Firefox.
2. Correct the inheritance of border color in Firefox. (https://bugzilla.mozilla.org/show_bug.cgi?id=190655)
*/

let _hr = CssJs.global(. "hr", [CssJs.height(#zero), CssJs.unsafe("color", "inherit")])

/**
Add the correct text decoration in Chrome, Edge, and Safari.
*/

let _abbr = CssJs.global(.
  "abbr[title]",
  [CssJs.textDecoration(#underline), CssJs.textDecorationStyle(#dotted)],
)

/**
Add the correct font weight in Edge and Safari.
*/

let _bold = CssJs.global(. "b, strong", [CssJs.fontWeight(#bolder)])

/**
1. Improve consistency of default fonts in all browsers. (https://github.com/sindresorhus/modern-normalize/issues/3)
2. Correct the odd 'em' font sizing in all browsers.
*/

let _code = CssJs.global(.
  "code,
kbd,
samp,
pre",
  [
    CssJs.fontFamilies([
      #custom("ui-monospace"),
      #custom("SFMono-Regular"),
      #custom("Consolas"),
      #custom("Liberation Mono"),
      #custom("Menlo"),
      #monospace,
    ]),
    CssJs.fontSize(#em(1.)),
  ],
)

/**
Add the correct font size in all browsers.
*/

let _small = CssJs.global(. "small", [CssJs.fontSize(#percent(80.))])

/**
Prevent 'sub' and 'sup' elements from affecting the line height in all browsers.
*/

let _subAndSup = CssJs.global(.
  "sub,
sup",
  [
    CssJs.fontSize(#percent(75.)),
    CssJs.lineHeight(#zero),
    CssJs.position(#relative),
    CssJs.verticalAlign(#baseline),
  ],
)

let _sub = CssJs.global(. "sub", [CssJs.bottom(#em(-0.25))])
let _sup = CssJs.global(. "sup", [CssJs.top(#em(-0.5))])

/**
1. Remove text indentation from table contents in Chrome and Safari. (https://bugs.chromium.org/p/chromium/issues/detail?id=999088, https://bugs.webkit.org/show_bug.cgi?id=201297)
2. Correct table border color inheritance in all Chrome and Safari. (https://bugs.chromium.org/p/chromium/issues/detail?id=935729, https://bugs.webkit.org/show_bug.cgi?id=195016)
*/

let _table = CssJs.global(.
  "table",
  [CssJs.textIndent(#zero), CssJs.unsafe("border-color", "inherit")],
)

/**
1. Change the font styles in all browsers.
2. Remove the margin in Firefox and Safari.
*/

let _formStyles = CssJs.global(.
  "button,
input,
optgroup,
select,
textarea",
  [
    CssJs.fontFamily(#inherit_),
    CssJs.fontSize(#percent(100.)),
    CssJs.lineHeight(#abs(1.15)),
    CssJs.margin(#zero),
  ],
)

/**
Remove the inheritance of text transform in Edge and Firefox.
1. Remove the inheritance of text transform in Firefox.
*/
let _buttonAndSelect = CssJs.global(.
  "button,
select",
  [CssJs.textTransform(#none)],
)

/**
Correct the inability to style clickable types in iOS and Safari.
*/
let _button = CssJs.global(.
  "button,
[type='button'],
[type='reset'],
[type='submit']",
  [CssJs.unsafe("-webkit-appearance", "button")],
)

/**
Remove the inner border and padding in Firefox.
*/

let _moz = CssJs.global(. "::-moz-focus-inner", [CssJs.borderStyle(#none), CssJs.padding(#zero)])

/**
Restore the focus styles unset by the previous rule.
*/
let _focusring = CssJs.global(.
  ":-moz-focusring",
  [CssJs.unsafe("outline", "1px dotted ButtonText")],
)

/**
Remove the additional ':invalid' styles in Firefox.
See: https://github.com/mozilla/gecko-dev/blob/2f9eacd9d3d995c937b4251a5557d95d494c9be1/layout/style/res/forms.css#L728-L737
*/

let _mozInvalid = CssJs.global(. ":-moz-ui-invalid", [CssJs.boxShadow(#none)])

/**
Remove the padding so developers are not caught out when they zero out 'fieldset' elements in all browsers.
*/

let _legend = CssJs.global(. "legend", [CssJs.padding(#zero)])

/**
Add the correct vertical alignment in Chrome and Firefox.
*/

let _progress = CssJs.global(. "progress", [CssJs.verticalAlign(#baseline)])

/**
Correct the cursor style of increment and decrement buttons in Safari.
*/

let _spin = CssJs.global(.
  "::-webkit-inner-spin-button,
::-webkit-outer-spin-button",
  [CssJs.height(#auto)],
)

/**
1. Correct the odd appearance in Chrome and Safari.
2. Correct the outline style in Safari.
*/

let _search = CssJs.global(.
  "[type='search']",
  [CssJs.unsafe("-webkit-appearance", "textfield"), CssJs.outlineOffset(#px(-2))],
)

/**
Remove the inner padding in Chrome and Safari on macOS.
*/
let _searchDecoration = CssJs.global(.
  "::-webkit-search-decoration",
  [CssJs.unsafe("-webkit-appearance", "none")],
)

/**
1. Correct the inability to style clickable types in iOS and Safari.
2. Change font properties to 'inherit' in Safari.
*/

let _uploadButton = CssJs.global(.
  "::-webkit-file-upload-button",
  [CssJs.unsafe("-webkit-appearance", "button"), CssJs.unsafe("font", "inherit")],
)

/*
Add the correct display in Chrome and Safari.
*/

let _summary = CssJs.global(. "summary", [CssJs.display(#listItem)])

/**
 * Manually forked from SUIT CSS Base: https://github.com/suitcss/base
 * A thin layer on top of normalize.css that provides a starting point more
 * suitable for web applications.
 */

/**
 * Removes the default spacing and border for appropriate elements.
 */

let _removeMargins = CssJs.global(.
  "blockquote,
dl,
dd,
h1,
h2,
h3,
h4,
h5,
h6,
hr,
figure,
p,
pre",
  [CssJs.margin(#zero)],
)

let _button = CssJs.global(.
  "button",
  [
    CssJs.backgroundColor(#transparent),
    CssJs.backgroundImage(#none),
    CssJs.focus([
      CssJs.outlineStyle(#dotted),
      CssJs.outlineWidth(#px(1)),
      CssJs.unsafe("outline", "5px auto -webkit-focus-ring-color"),
    ]),
  ],
)

let _fieldset = CssJs.global(. "button", [CssJs.margin(#zero), CssJs.padding(#zero)])

let _list = CssJs.global(.
  "ol,
ul",
  [CssJs.margin(#zero), CssJs.padding(#zero), CssJs.listStyleType(#none)],
)

/**
 * Tailwind custom reset styles
 */

/**
 * 1. Use the user's configured `sans` font-family (with Tailwind's default
 *    sans-serif font stack as a fallback) as a sane default.
 * 2. Use Tailwind's default "normal" line-height so the user isn't forced
 *    to override it to ensure consistency even when using the default theme.
 */

/**
 * Work around a Firefox/IE bug where the transparent `button` background
 * results in a loss of the default `button` focus styles.
 */

/**
 * 1. Prevent padding and border from affecting element width.
 *
 *    We used to set this in the html element and inherit from
 *    the parent element for everything else. This caused issues
 *    in shadow-dom-enhanced elements like <details> where the content
 *    is wrapped by a div with box-sizing set to `content-box`.
 *
 *    https://github.com/mozdevs/cssremedy/issues/4
 *
 *
 * 2. Allow adding a border to an element by just adding a border-width.
 *
 *    By default, the way the browser specifies that an element should have no
 *    border is by setting it's border-style to `none` in the user-agent
 *    stylesheet.
 *
 *    In order to easily add borders to elements by just setting the `border-width`
 *    property, we change the default border-style for all elements to `solid`, and
 *    use border-width to hide them instead. This way our `border` utilities only
 *    need to set the `border-width` property instead of the entire `border`
 *    shorthand, making our border utilities much more straightforward to compose.
 *
 *    https://github.com/tailwindcss/tailwindcss/pull/116
 */
let _all = CssJs.global(.
  "*,
::before,
::after",
  [
    CssJs.boxSizing(#borderBox),
    CssJs.borderWidth(#zero),
    CssJs.borderStyle(#solid),
    CssJs.borderColor(#hex("e5e7eb")),
  ],
)

/*
 * Ensure horizontal rules are visible by default
 */

let _hr = CssJs.global(. "hr", [CssJs.borderTopWidth(#px(1))])

/**
 * Undo the `border-style: none` reset that Normalize applies to images so that
 * our `border-{width}` utilities have the expected effect.
 *
 * The Normalize reset is unnecessary for us since we default the border-width
 * to 0 on all elements.
 *
 * https://github.com/tailwindcss/tailwindcss/issues/362
 */

let _img = CssJs.global(. "img", [CssJs.borderStyle(#solid)])
let _textarea = CssJs.global(. "textarea", [CssJs.resize(#vertical)])

let _input = CssJs.global(.
  "input::placeholder,
textarea::placeholder",
  [CssJs.opacity(1.), CssJs.color(#hex("9ca3af"))],
)

let _button = CssJs.global(.
  "button,
[role=\"button\"]",
  [CssJs.cursor(#pointer)],
)

let _table = CssJs.global(. "table", [CssJs.borderCollapse(#collapse)])

let _headings = CssJs.global(.
  "h1,
h2,
h3,
h4,
h5,
h6",
  [CssJs.fontSize(#inherit_), CssJs.fontWeight(#inherit_)],
)

/**
 * Reset links to optimize for opt-in styling instead of
 * opt-out.
 */
let _a = CssJs.global(. "a", [CssJs.unsafe("color", "inherit"), CssJs.textDecoration(#inherit_)])

/**
 * Reset form element properties that are easy to forget to
 * style explicitly so you don't inadvertently introduce
 * styles that deviate from your design system. These styles
 * supplement a partial reset that is already applied by
 * normalize.css.
 */

let _formElements = CssJs.global(.
  "button,
input,
optgroup,
select,
textarea",
  [CssJs.padding(#zero), CssJs.lineHeight(#inherit_), CssJs.unsafe("color", "inherit")],
)

/**
 * Use the configured 'mono' font family for elements that
 * are expected to be rendered with a monospace font, falling
 * back to the system monospace stack if there is no configured
 * 'mono' font family.
 */

let _mono = CssJs.global(.
  "pre,
code,
kbd,
samp",
  [
    CssJs.fontFamilies([
      #custom("ui-monospace"),
      #custom("SFMono-Regular"),
      #custom("Menlo"),
      #custom("Monaco"),
      #custom("Consolas"),
      #custom("Liberation Mono"),
      #custom("Courier New"),
      #monospace,
    ]),
  ],
)

/**
 * Make replaced elements `display: block` by default as that's
 * the behavior you want almost all of the time. Inspired by
 * CSS Remedy, with `svg` added as well.
 *
 * https://github.com/mozdevs/cssremedy/issues/14
 */

let _media = CssJs.global(.
  "img,
svg,
video,
canvas,
audio,
iframe,
embed,
object",
  [CssJs.display(#block), CssJs.verticalAlign(#middle)],
)

/**
 * Constrain images and videos to the parent width and preserve
 * their instrinsic aspect ratio.
 *
 * https://github.com/mozdevs/cssremedy/issues/14
 */

let _imgVidWidth = CssJs.global(.
  "img,
video",
  [CssJs.maxWidth(#percent(100.)), CssJs.height(#auto)],
)
// #endregion   ENDREGION: Style Reset

// We are not using `[@react.component]` since we will never
// use <App/> within our Reason code. It's only used within `pages/_app.js`
let default = (props: props): React.element => {
  let {component, pageProps} = props

  let router = Next.Router.useRouter()

  let content = React.createElement(component, pageProps)

  switch router.route {
  | "/" => content
  | "/loruki/loruki" => content
  | "/typography/typography_solution" => content
  | _ => content
  }
}

// // import "../styles/base.css"
// function MyApp({ Component, pageProps }) {
//   return <Component {...pageProps} />
// }

// export default MyApp
