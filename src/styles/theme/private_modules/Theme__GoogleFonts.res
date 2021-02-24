// TODO: Accept array of weights & array of fonts

// #region  REGION: All possible weights combinations

type _100_200_300_400_500_600_700_800_900 = [
  | #v100
  | #v200
  | #v300
  | #v400
  | #v500
  | #v600
  | #v700
  | #v800
  | #v900
]

type _100_200_300_400_500_600_700_800_900_array = array<_100_200_300_400_500_600_700_800_900>

type italic_100_200_300_400_500_600_700_800_900 = [
  | #italic100
  | #italic200
  | #italic300
  | #italic400
  | #italic500
  | #italic600
  | #italic700
  | #italic800
  | #italic900
]

type withItalics_100_200_300_400_500_600_700_800_900_array = array<
  [_100_200_300_400_500_600_700_800_900 | italic_100_200_300_400_500_600_700_800_900],
>

type _100_200_300_400_500_700_800_900 = [
  | #v100
  | #v200
  | #v300
  | #v400
  | #v500
  | #v700
  | #v800
  | #v900
]

type _100_200_300_400_500_700_800_900_array = array<_100_200_300_400_500_700_800_900>

type _100_300_400_500_600_700_800_900 = [
  | #v100
  | #v300
  | #v400
  | #v500
  | #v600
  | #v700
  | #v800
  | #v900
]
type _100_300_400_500_600_700_800_900_array = array<_100_300_400_500_600_700_800_900>

type _200_300_400_500_700_800_900 = [#v200 | #v300 | #v400 | #v500 | #v700 | #v800 | #v900]
type _200_300_400_500_700_800_900_array = array<_200_300_400_500_700_800_900>

type _200_300_400_500_600_700 = [#v200 | #v300 | #v400 | #v500 | #v600 | #v700]
type _200_300_400_500_600_700_array = array<_200_300_400_500_600_700>

type _400_500_600_700_800_900 = [#v400 | #v500 | #v600 | #v700 | #v800 | #v900]
type _400_500_600_700_800_900_array = array<_400_500_600_700_800_900>

type _100_300_400_500_700_900 = [#v100 | #v300 | #v400 | #v500 | #v700 | #v900]
type _100_300_400_500_700_900_array = array<_100_300_400_500_700_900>

type _200_300_400_500_700_800 = [#v200 | #v300 | #v400 | #v500 | #v700 | #v800]
type _200_300_400_500_700_800_array = array<_200_300_400_500_700_800>

type _200_300_400_700_800 = [#v200 | #v300 | #v400 | #v700 | #v800]
type _200_300_400_700_800_array = array<_200_300_400_700_800>

type _100_300_400_700_800 = [#v100 | #v300 | #v400 | #v700 | #v800]
type _100_300_400_700_800_array = array<_100_300_400_700_800>

type _300_400_500_700_900 = [#v300 | #v400 | #v500 | #v700 | #v900]
type _300_400_500_700_900_array = array<_300_400_500_700_900>

type _300_400_500_700_800 = [#v300 | #v400 | #v500 | #v700 | #v800]
type _300_400_500_700_800_array = array<_300_400_500_700_800>

// INFO: One weight not available

type _200_300_400_500_600_700_800_900 = [
  | #v200
  | #v300
  | #v400
  | #v500
  | #v600
  | #v700
  | #v800
  | #v900
]

type _200_300_400_500_600_700_800_900_array = array<_200_300_400_500_600_700_800_900>
type italic_200_300_400_500_600_700_800_900 = [
  | #italic200
  | #italic300
  | #italic400
  | #italic500
  | #italic600
  | #italic700
  | #italic800
  | #italic900
]

type withItalics_200_300_400_500_600_700_800_900_array = array<
  [_200_300_400_500_600_700_800_900 | italic_200_300_400_500_600_700_800_900],
>

type _100_200_300_400_500_600_700_800 = [
  | #v100
  | #v200
  | #v300
  | #v400
  | #v500
  | #v600
  | #v700
  | #v800
]

type _100_200_300_400_500_600_700_800_array = array<_100_200_300_400_500_600_700_800>
type italic_100_200_300_400_500_600_700_800 = [
  | #italic100
  | #italic200
  | #italic300
  | #italic400
  | #italic500
  | #italic600
  | #italic700
  | #italic800
]

type withItalics_100_200_300_400_500_600_700_800_array = array<
  [_100_200_300_400_500_600_700_800 | italic_100_200_300_400_500_600_700_800],
>

type _100_200_300_400_500_600_700_900 = [
  | #v100
  | #v200
  | #v300
  | #v400
  | #v500
  | #v600
  | #v700
  | #v900
]
type italic_100_200_300_400_500_600_700_900 = [
  | #italic100
  | #italic200
  | #italic300
  | #italic400
  | #italic500
  | #italic600
  | #italic700
  | #italic900
]

type withItalics_100_200_300_400_500_600_700_900_array = array<
  [_100_200_300_400_500_600_700_900 | italic_100_200_300_400_500_600_700_900],
>

type _100_200_300_400_600_700_800_900 = [
  | #v100
  | #v200
  | #v300
  | #v400
  | #v600
  | #v700
  | #v800
  | #v900
]
type _100_200_300_400_600_700_800_900_array = array<_100_200_300_400_600_700_800_900>
type italic_100_200_300_400_600_700_800_900 = [
  | #italic100
  | #italic200
  | #italic300
  | #italic400
  | #italic600
  | #italic700
  | #italic800
  | #italic900
]

type withItalics_100_200_300_400_600_700_800_900_array = array<
  [_100_200_300_400_600_700_800_900 | italic_100_200_300_400_600_700_800_900],
>

// INFO: Two weights not available

type _100_300_400_500_700_800_900 = [#v100 | #v300 | #v400 | #v500 | #v700 | #v800 | #v900]
type _100_300_400_500_700_800_900_array = array<_100_300_400_500_700_800_900>
type italic_100_300_400_500_700_800_900 = [
  | #italic100
  | #italic300
  | #italic400
  | #italic500
  | #italic700
  | #italic800
  | #italic900
]

type withItalics_100_300_400_500_700_800_900_array = array<
  [_100_300_400_500_700_800_900 | italic_100_300_400_500_700_800_900],
>

type _100_200_300_400_500_600_700 = [#v100 | #v200 | #v300 | #v400 | #v500 | #v600 | #v700]
type _100_200_300_400_500_600_700_array = array<
  [#v100 | #v200 | #v300 | #v400 | #v500 | #v600 | #v700],
>
type italic_100_200_300_400_500_600_700 = [
  | #italic100
  | #italic200
  | #italic300
  | #italic400
  | #italic500
  | #italic600
  | #italic700
]

type withItalics_100_200_300_400_500_600_700_array = array<
  [_100_200_300_400_500_600_700 | italic_100_200_300_400_500_600_700],
>

type _100_300_400_500_600_700_800 = [#v100 | #v300 | #v400 | #v500 | #v600 | #v700 | #v800]
type italic_100_300_400_500_600_700_800 = [
  | #italic100
  | #italic300
  | #italic400
  | #italic500
  | #italic600
  | #italic700
  | #italic800
]

type withItalics_100_300_400_500_600_700_800_array = array<
  [_100_300_400_500_600_700_800 | italic_100_300_400_500_600_700_800],
>

type _200_300_400_500_600_700_800 = [#v200 | #v300 | #v400 | #v500 | #v600 | #v700 | #v800]
type _200_300_400_500_600_700_800_array = array<_200_300_400_500_600_700_800>
type italic_200_300_400_500_600_700_800 = [
  | #italic200
  | #italic300
  | #italic400
  | #italic500
  | #italic600
  | #italic700
  | #italic800
]

type withItalics_200_300_400_500_600_700_800_array = array<
  [_200_300_400_500_600_700_800 | italic_200_300_400_500_600_700_800],
>

type _200_300_400_600_700_800_900 = [#v200 | #v300 | #v400 | #v600 | #v700 | #v800 | #v900]
type _200_300_400_600_700_800_900_array = array<
  [#v200 | #v300 | #v400 | #v600 | #v700 | #v800 | #v900],
>
type italic_200_300_400_600_700_800_900 = [
  | #italic200
  | #italic300
  | #italic400
  | #italic600
  | #italic700
  | #italic800
  | #italic900
]

type withItalics_200_300_400_600_700_800_900_array = array<
  [_200_300_400_600_700_800_900 | italic_200_300_400_600_700_800_900],
>

type _300_400_500_600_700_800_900 = [#v300 | #v400 | #v500 | #v600 | #v700 | #v800 | #v900]
type _300_400_500_600_700_800_900_array = array<_300_400_500_600_700_800_900>
type italic_300_400_500_600_700_800_900 = [
  | #italic300
  | #italic400
  | #italic500
  | #italic600
  | #italic700
  | #italic800
  | #italic900
]

type withItalics_300_400_500_600_700_800_900_array = array<
  [_300_400_500_600_700_800_900 | italic_300_400_500_600_700_800_900],
>

type _200_300_400_500_600_700_900 = [#v200 | #v300 | #v400 | #v500 | #v600 | #v700 | #v900]
type _200_300_400_500_600_700_900_array = array<_200_300_400_500_600_700_900>
type italic_200_300_400_500_600_700_900 = [
  | #italic200
  | #italic300
  | #italic400
  | #italic500
  | #italic600
  | #italic700
  | #italic900
]

type withItalics_200_300_400_500_600_700_900_array = array<
  [_200_300_400_500_600_700_900 | italic_200_300_400_500_600_700_900],
>

// INFO: Three weights not available

type italic_200_300_400_500_600_700 = [
  | #italic200
  | #italic300
  | #italic400
  | #italic500
  | #italic600
  | #italic700
]

type withItalics_200_300_400_500_600_700_array = array<
  [_200_300_400_500_600_700 | italic_200_300_400_500_600_700],
>

type italic_400_500_600_700_800_900 = [
  | #italic400
  | #italic500
  | #italic600
  | #italic700
  | #italic800
  | #italic900
]

type withItalics_400_500_600_700_800_900_array = array<
  [_400_500_600_700_800_900 | italic_400_500_600_700_800_900],
>

type _300_400_500_600_700_800 = [#v300 | #v400 | #v500 | #v600 | #v700 | #v800]
type italic_300_400_500_600_700_800 = [
  | #italic300
  | #italic400
  | #italic500
  | #italic600
  | #italic700
  | #italic800
]

type withItalics_300_400_500_600_700_800_array = array<
  [_300_400_500_600_700_800 | italic_300_400_500_600_700_800],
>

type italic_100_300_400_500_700_900 = [
  | #italic100
  | #italic300
  | #italic400
  | #italic500
  | #italic700
  | #italic900
]

type withItalics_100_300_400_500_700_900_array = array<
  [_100_300_400_500_700_900 | italic_100_300_400_500_700_900],
>

// INFO: Four weights not available

type _400_500_700_800_900 = [#v400 | #v500 | #v700 | #v800 | #v900]
type _400_500_700_800_900_array = array<[#v400 | #v500 | #v700 | #v800 | #v900]>
type italic_400_500_700_800_900 = [#italic400 | #italic500 | #italic700 | #italic800 | #italic900]

type withItalics_400_500_700_800_900_array = array<
  [_400_500_700_800_900 | italic_400_500_700_800_900],
>

type _300_400_500_600_700 = [#v300 | #v400 | #v500 | #v600 | #v700]
type _300_400_500_600_700_array = array<_300_400_500_600_700>
type italic_300_400_500_600_700 = [#italic300 | #italic400 | #italic500 | #italic600 | #italic700]

type withItalics_300_400_500_600_700_array = array<
  [_300_400_500_600_700 | italic_300_400_500_600_700],
>

type _400_500_600_700_800 = [#v400 | #v500 | #v600 | #v700 | #v800]
type _400_500_600_700_800_array = array<_400_500_600_700_800>
type italic_400_500_600_700_800 = [#italic400 | #italic500 | #italic600 | #italic700 | #italic800]

type withItalics_400_500_600_700_800_array = array<
  [_400_500_600_700_800 | italic_400_500_600_700_800],
>

type _200_300_400_600_700 = [#v200 | #v300 | #v400 | #v600 | #v700]
type italic_200_300_400_600_700 = [#italic200 | #italic300 | #italic400 | #italic600 | #italic700]

type withItalics_200_300_400_600_700_array = array<
  [_200_300_400_600_700 | italic_200_300_400_600_700],
>

type _100_300_400_700_900 = [#v100 | #v300 | #v400 | #v700 | #v900]
type italic_100_300_400_700_900 = [
  | #italic100
  | #italic300
  | #italic400
  | #italic600
  | #italic700
  | #italic900
]

type withItalics_100_300_400_700_900_array = array<
  [_100_300_400_700_900 | italic_100_300_400_700_900],
>

type _300_400_600_700_800 = [#v300 | #v400 | #v600 | #v700 | #v800]
type _300_400_600_700_800_array = array<_300_400_600_700_800>
type italic_300_400_600_700_800 = [#italic300 | #italic400 | #italic600 | #italic700 | #italic800]

type withItalics_300_400_600_700_800_array = array<
  [_300_400_600_700_800 | italic_300_400_600_700_800],
>

type _200_300_400_600_700_900 = [#v200 | #v300 | #v400 | #v600 | #v700 | #v900]
type _200_300_400_600_700_900_array = array<_200_300_400_600_700_900>
type italic_200_300_400_600_700_900 = [
  | #italic200
  | #italic300
  | #italic400
  | #italic600
  | #italic700
  | #italic900
]

type withItalics_200_300_400_600_700_900_array = array<
  [_200_300_400_600_700_900 | italic_200_300_400_600_700_900],
>

type withItalics_titilliumWeb_array = array<[_200_300_400_600_700_900 | italic_200_300_400_600_700]>

// INFO: Fonts with 4 weights

type _400_500_600_700 = [#v400 | #v500 | #v600 | #v700]
type _400_500_600_700_array = array<_400_500_600_700>
type italics_400_500_600_700 = [#italic400 | #italic500 | #italic600 | #italic700]

type _300_400_700_900 = [#v300 | #v400 | #v700 | #v900]
type italics_300_400_700_900 = [#italic300 | #italic400 | #italic700 | #italic900]

type _400_500_700_900 = [#v400 | #v500 | #v700 | #v900]
type italics_400_500_700_900 = [#italic400 | #italic500 | #italic700 | #italic900]

type _400_700_800_900 = [#v400 | #v700 | #v800 | #v900]
type italics_400_700_800_900 = [#italic400 | #italic700 | #italic800 | #italic900]

type _300_400_500_700 = [#v300 | #v400 | #v500 | #v700]
type italics_300_400_500_700 = [#italic300 | #italic400 | #italic500 | #italic700]

type withItalics_400_500_600_700_array = array<[_400_500_600_700 | italics_400_500_600_700]>
type withItalics_300_400_700_900_array = array<[_300_400_700_900 | italics_300_400_700_900]>
type withItalics_400_500_700_900_array = array<[_400_500_700_900 | italics_400_500_700_900]>
type withItalics_400_700_800_900_array = array<[_400_700_800_900 | italics_400_700_800_900]>
type withItalics_300_400_500_700_array = array<[_300_400_500_700 | italics_300_400_500_700]>

// INFO: Fonts with 3 weights

type _300_400_700 = [#v300 | #v400 | #v700]
type _300_400_700_array = array<_300_400_700>
type italics_300_400_700 = [#italic300 | #italic400 | #italic700]

type withItalics_300_400_700_array = array<[_300_400_700 | italics_300_400_700]>

type _400_600_700 = [#v400 | #v600 | #v700]
// type _400_600_700_array = array<_400_600_700>
type italics_400_600_700 = [#italic400 | #italic600 | #italic700]

type withItalics_400_600_700_array = array<[_400_600_700 | italics_400_600_700]>

type _300_400_500 = [#v300 | #v400 | #v500]
// type _300_400_500_array = array<_300_400_500>
type italics_300_400_500 = [#italic300 | #italic400 | #italic500]

type withItalics_300_400_500_array = array<[_300_400_500 | italics_300_400_500]>

type _400_500_700 = [#v300 | #v400 | #v500]
// type _400_500_700_array = array<_400_500_700>
type italics_400_500_700 = [#italic300 | #italic400 | #italic500]

type withItalics_400_500_700_array = array<[_400_500_700 | italics_400_500_700]>

type _400_700_900 = [#v400 | #v700 | #v900]
// type _400_700_900_array = array<_400_700_900>
type italics_400_700_900 = [#italic400 | #italic700 | #italic900]

type withItalics_400_700_900_array = array<[_400_700_900 | italics_400_700_900]>

// #endregion     ENDREGION: All possible weights combinations

// #region REGION: Convert weights to spec object
type weightType<'a> = [<
  | _100_200_300_400_500_600_700_800_900
  | italic_100_200_300_400_500_600_700_800_900
] as 'a

type weightRecord = {
  weight: int,
  isItalic: bool,
}

let toWeightValue = (weight: weightType<'a>) =>
  switch weight {
  | #v100 => {
      weight: 100,
      isItalic: false,
    }
  | #v200 => {
      weight: 200,
      isItalic: false,
    }
  | #v300 => {
      weight: 300,
      isItalic: false,
    }
  | #v400 => {
      weight: 400,
      isItalic: false,
    }
  | #v500 => {
      weight: 500,
      isItalic: false,
    }
  | #v600 => {
      weight: 600,
      isItalic: false,
    }
  | #v700 => {
      weight: 700,
      isItalic: false,
    }
  | #v800 => {
      weight: 800,
      isItalic: false,
    }
  | #v900 => {
      weight: 900,
      isItalic: false,
    }
  | #italic100 => {
      weight: 100,
      isItalic: true,
    }
  | #italic200 => {
      weight: 200,
      isItalic: true,
    }
  | #italic300 => {
      weight: 300,
      isItalic: true,
    }
  | #italic400 => {
      weight: 400,
      isItalic: true,
    }
  | #italic500 => {
      weight: 500,
      isItalic: true,
    }
  | #italic600 => {
      weight: 600,
      isItalic: true,
    }
  | #italic700 => {
      weight: 700,
      isItalic: true,
    }
  | #italic800 => {
      weight: 800,
      isItalic: true,
    }
  | #italic900 => {
      weight: 900,
      isItalic: true,
    }
  }

let toArrayWeightValue = (weightsArray: array<weightType<'a>>) =>
  Belt.Array.map(weightsArray, element => toWeightValue(element))

// #endregion     ENDREGION: Convert weights to spec object

type fontRecord = {
  fontName: string,
  weights: array<weightRecord>,
}

type neuton = [#v200 | #v300 | #v400 | #italic400 | #v700 | #v800]
type neuton_array = array<neuton>

// INFO: Types

// NOTE: 243 fonts 5+ font styles + 58 new
type fonts = [
  | #AbhayaLibre(_400_500_600_700_800_array)
  | #AdventPro(_100_200_300_400_500_600_700_array)
  | #Alegreya(_400_500_700_800_900_array)
  | #AlegreyaSans(withItalics_100_300_400_500_700_800_900_array)
  | #AlegreyaSansSC(withItalics_100_300_400_500_700_800_900_array)
  | #AlegreyaSC(_400_500_700_800_900_array)
  | #Aleo(withItalics_300_400_700_array)
  | #Archivo(withItalics_400_500_600_700_array)
  | #ArchivoNarrow(withItalics_400_500_600_700_array)
  | #ArimaMadurai(_100_200_300_400_500_700_800_900_array)
  | #Arimo(withItalics_400_500_600_700_array)
  | #Asap(withItalics_400_500_600_700_array)
  | #AsapCondensed(withItalics_400_500_600_700_array)
  | #Assistant(_200_300_400_500_600_700_800_array)
  | #Athiti(_200_300_400_500_600_700_array)
  | #Atma(_300_400_500_600_700_array)
  | #AveriaLibre(withItalics_300_400_700_array)
  | #AveriaSansLibre(withItalics_300_400_700_array)
  | #AveriaSerifLibre(withItalics_300_400_700_array)
  | #BaiJamjuree(withItalics_200_300_400_500_600_700_array)
  | #Baloo2(_400_500_600_700_800_array)
  | #BalooBhai2(_400_500_600_700_800_array)
  | #BalooBhaina2(_400_500_600_700_800_array)
  | #BalooChettan2(_400_500_600_700_800_array)
  | #BalooDa2(_400_500_600_700_800_array)
  | #BalooPaaji2(_400_500_600_700_800_array)
  | #BalooTamma2(_400_500_600_700_800_array)
  | #BalooTammudu2(_400_500_600_700_800_array)
  | #BalooThambi2(_400_500_600_700_800_array)
  | #Barlow(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #BarlowCondensed(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #BarlowSemiCondensed(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Bellota(withItalics_300_400_700_array)
  | #BellotaText(withItalics_300_400_700_array)
  | #BeVietnam(withItalics_100_300_400_500_600_700_800_array)
  | #BigShouldersDisplay(_100_300_400_500_600_700_800_900_array)
  | #BigShouldersInlineDisplay(_100_300_400_500_600_700_800_900_array)
  | #BigShouldersInlineText(_100_300_400_500_600_700_800_900_array)
  | #BigShouldersStencilDisplay(_100_300_400_500_600_700_800_900_array)
  | #BigShouldersStencilText(_100_300_400_500_600_700_800_900_array)
  | #BigShouldersText(_100_300_400_500_600_700_800_900_array)
  | #BioRhyme(_200_300_400_700_800_array)
  | #BioRhymeExpanded(_200_300_400_700_800_array)
  | #Biryani(_200_300_400_600_700_800_900_array)
  | #Bitter(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Blinker(_100_200_300_400_600_700_800_900_array)
  | #BodoniModa(withItalics_400_500_600_700_800_900_array)
  | #Cabin(withItalics_400_500_600_700_array)
  | #Cairo(_200_300_400_600_700_900_array)
  | #Catamaran(_100_200_300_400_500_600_700_800_900_array)
  | #ChakraPetch(withItalics_300_400_500_600_700_array)
  | #Changa(_200_300_400_500_600_700_800_array)
  | #Chathura(_100_300_400_700_800_array)
  | #Cinzel(_400_500_600_700_800_900_array)
  | #Chivo(withItalics_300_400_700_900_array)
  | #Comfortaa(_300_400_500_600_700_array)
  | #ComicNeue(withItalics_300_400_700_array)
  | #Commissioner(_100_200_300_400_500_600_700_800_900_array)
  | #Cormorant(withItalics_300_400_500_600_700_array)
  | #CormorantSC(_300_400_500_600_700_array)
  | #CormorantUnicase(_300_400_500_600_700_array)
  | #CormorantUpright(_300_400_500_600_700_array)
  | #CormorantGaramond(withItalics_300_400_500_600_700_array)
  | #CormorantInfant(withItalics_300_400_500_600_700_array)
  | #CrimsonPro(withItalics_200_300_400_500_600_700_800_900_array)
  | #CrimsonText(withItalics_400_600_700_array)
  | #Cuprum(withItalics_400_500_600_700_array)
  | #DMMono(withItalics_300_400_500_array)
  | #DMSans(withItalics_400_500_700_array)
  | #DarkerGrotesque(_300_400_500_600_700_800_900_array)
  | #Dosis(_200_300_400_500_600_700_800_array)
  | #EBGaramond(withItalics_400_500_600_700_800_array)
  | #Eczar(_400_500_600_700_800_array)
  | #EncodeSans(_100_200_300_400_500_600_700_800_900_array)
  | #EncodeSansCondensed(_100_200_300_400_500_600_700_800_900_array)
  | #EncodeSansExpanded(_100_200_300_400_500_600_700_800_900_array)
  | #EncodeSansSemiCondensed(_100_200_300_400_500_600_700_800_900_array)
  | #EncodeSansSemiExpanded(_100_200_300_400_500_600_700_800_900_array)
  | #Epilogue(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Exo(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Exo2(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #ExpletusSans(withItalics_400_500_600_700_array)
  | #Fahkwang(withItalics_200_300_400_500_600_700_array)
  | #Faustina(withItalics_400_500_600_700_array)
  | #FiraCode(_300_400_500_600_700_array)
  | #FiraSans(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #FiraSansCondensed(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #FiraSansExtraCondensed(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #FrankRuhlLibre(_300_400_500_700_900_array)
  | #Fraunces(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Gelasio(withItalics_400_500_600_700_array)
  | #GothicA1(_100_200_300_400_500_600_700_800_900_array)
  | #Grandstander(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Grenze(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #GrenzeGotisch(_100_200_300_400_500_600_700_800_900_array)
  | #Halant(_300_400_500_600_700_array)
  | #Heebo(_100_200_300_400_500_600_700_800_900_array)
  | #HeptaSlab(_100_200_300_400_500_600_700_800_900_array)
  | #Hind(_300_400_500_600_700_array)
  | #HindGuntur(_300_400_500_600_700_array)
  | #HindMadurai(_300_400_500_600_700_array)
  | #HindSiliguri(_300_400_500_600_700_array)
  | #HindVadodara(_300_400_500_600_700_array)
  | #IbarraRealNova(withItalics_400_500_600_700_array)
  | #IBMPlexMono(withItalics_100_200_300_400_500_600_700_array)
  | #IBMPlexSans(withItalics_100_200_300_400_500_600_700_array)
  | #IBMPlexSansCondensed(withItalics_100_200_300_400_500_600_700_array)
  | #IBMPlexSerif(withItalics_100_200_300_400_500_600_700_array)
  | #Imbue(_100_200_300_400_500_600_700_800_900_array)
  | #Inconsolata(_200_300_400_500_600_700_800_900_array)
  | #InknutAntiqua(_300_400_500_600_700_800_900_array)
  | #InriaSans(withItalics_300_400_700_array)
  | #InriaSerif(withItalics_300_400_700_array)
  | #Inter(_100_200_300_400_500_600_700_800_900_array)
  | #JetBrainsMono(withItalics_100_200_300_400_500_600_700_800_array)
  | #JosefinSans(withItalics_100_200_300_400_500_600_700_array)
  | #JosefinSlab(withItalics_100_200_300_400_500_600_700_array)
  | #Jost(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Jura(_300_400_500_600_700_array)
  | #K2D(withItalics_100_200_300_400_500_600_700_800_array)
  | #Kanit(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Karla(withItalics_200_300_400_500_600_700_800_array)
  | #Karma(_300_400_500_600_700_array)
  | #Khand(_300_400_500_600_700_array)
  | #Khula(_300_400_600_700_800_array)
  | #Kodchasan(withItalics_200_300_400_500_600_700_array)
  | #KoHo(withItalics_200_300_400_500_600_700_array)
  | #Kreon(_300_400_500_600_700_array)
  | #Krub(withItalics_200_300_400_500_600_700_array)
  | #Kufam(withItalics_400_500_600_700_800_900_array)
  | #KulimPark(withItalics_200_300_400_600_700_array)
  | #Laila(_300_400_500_600_700_array)
  | #Lato(withItalics_100_300_400_700_900_array)
  | #Lemonada(_300_400_500_600_700_array)
  | #LibreFranklin(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Literata(withItalics_200_300_400_500_600_700_800_900_array)
  | #Livvic(withItalics_100_200_300_400_500_600_700_900_array)
  | #Lora(withItalics_400_500_600_700_array)
  | #MPLUS1p(_100_300_400_500_700_800_900_array)
  | #MPLUSRounded1c(_100_300_400_500_700_800_900_array)
  | #Mada(_200_300_400_500_600_700_900_array)
  | #Maitree(_200_300_400_500_600_700_array)
  | #Mali(withItalics_200_300_400_500_600_700_array)
  | #Manrope(_200_300_400_500_600_700_800_array)
  | #Manuale(withItalics_400_500_600_700_array)
  | #Martel(_200_300_400_600_700_800_900_array)
  | #MartelSans(_200_300_400_600_700_800_900_array)
  | #MavenPro(_400_500_600_700_800_900_array)
  | #Merriweather(withItalics_300_400_700_900_array)
  | #MerriweatherSans(withItalics_300_400_500_600_700_800_array)
  | #Mitr(_200_300_400_500_600_700_array)
  | #Montserrat(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #MontserratAlternates(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Mukta(_200_300_400_500_600_700_800_array)
  | #MuktaMahee(_200_300_400_500_600_700_800_array)
  | #MuktaMalar(_200_300_400_500_600_700_800_array)
  | #MuktaVaani(_200_300_400_500_600_700_800_array)
  | #Mulish(withItalics_200_300_400_500_600_700_800_900_array)
  | #MuseoModerno(_100_200_300_400_500_600_700_800_900_array)
  | #Neuton(neuton_array)
  | #Niramit(withItalics_200_300_400_500_600_700_array)
  | #Nobile(withItalics_400_500_700_array)
  | #NotoSansHK(_100_300_400_500_700_900_array)
  | #NotoSansJP(_100_300_400_500_700_900_array)
  | #NotoSansKR(_100_300_400_500_700_900_array)
  | #NotoSansSC(_100_300_400_500_700_900_array)
  | #NotoSansTC(_100_300_400_500_700_900_array)
  | #NotoSerifJP(_200_300_400_500_600_700_900_array)
  | #NotoSerifKR(_200_300_400_500_600_700_900_array)
  | #NotoSerifSC(_200_300_400_500_600_700_900_array)
  | #NotoSerifTC(_200_300_400_500_600_700_900_array)
  | #Nunito(withItalics_200_300_400_600_700_800_900_array)
  | #NunitoSans(withItalics_200_300_400_600_700_800_900_array)
  | #OpenSans(withItalics_300_400_600_700_800_array)
  | #Orbitron(_400_500_600_700_800_900_array)
  | #Oswald(_200_300_400_500_600_700_array)
  | #Overlock(withItalics_400_700_900_array)
  | #Overpass(withItalics_100_200_300_400_600_700_800_900_array)
  | #Oxanium(_200_300_400_500_600_700_800_array)
  | #Palanquin(_100_200_300_400_500_600_700_array)
  | #Petrona(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Piazolla(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #PlayfairDisplay(withItalics_400_500_600_700_800_900_array)
  | #PlayfairDisplaySC(withItalics_400_700_900_array)
  | #Podkova(_400_500_600_700_800_array)
  | #Poppins(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Pridi(_200_300_400_500_600_700_array)
  | #Prompt(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #ProzaLibre(withItalics_400_500_600_700_800_array)
  | #PublicSans(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Quicksand(_300_400_500_600_700_array)
  | #Rajdhani(_300_400_500_600_700_array)
  | #Raleway(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Rasa(_300_400_500_600_700_array)
  | #Recursive(_300_400_500_600_700_800_900_array)
  | #RedHatDisplay(withItalics_400_500_700_900_array)
  | #RedHatText(withItalics_400_500_700_array)
  | #RedRose(_300_400_500_600_700_array)
  | #Roboto(withItalics_100_300_400_500_700_900_array)
  | #RobotoCondensed(withItalics_300_400_700_array)
  | #RobotoMono(withItalics_100_200_300_400_500_600_700_array)
  | #RobotoSlab(_100_200_300_400_500_600_700_800_900_array)
  | #Rokkitt(_100_200_300_400_500_600_700_800_900_array)
  | #Rosario(withItalics_300_400_500_600_700_array)
  | #Rubik(withItalics_300_400_500_600_700_800_900_array)
  | #Ruda(_400_500_600_700_800_900_array)
  | #Saira(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #SairaCondensed(_100_200_300_400_500_600_700_800_900_array)
  | #SairaExtraCondensed(_100_200_300_400_500_600_700_800_900_array)
  | #SairaSemiCondensed(_100_200_300_400_500_600_700_800_900_array)
  | #Sansita(withItalics_400_700_800_900_array)
  | #SansitaSwashed(_300_400_500_600_700_800_900_array)
  | #Sarabun(withItalics_100_200_300_400_500_600_700_800_array)
  | #Sarpanch(withItalics_400_500_600_700_800_900_array)
  | #Signika(_300_400_500_600_700_array)
  | #Solway(_300_400_500_700_800_array)
  | #Sora(_100_200_300_400_500_600_700_800_array)
  | #SourceCodePro(withItalics_200_300_400_500_600_700_900_array)
  | #SourceSansPro(withItalics_200_300_400_600_700_900_array)
  | #SourceSerifPro(withItalics_200_300_400_600_700_900_array)
  | #SpaceGrotesk(_300_400_500_600_700_array)
  | #Spartan(_100_200_300_400_500_600_700_800_900_array)
  | #Spectral(withItalics_200_300_400_500_600_700_800_array)
  | #SpectralSC(withItalics_200_300_400_500_600_700_800_array)
  | #Syne(_400_500_600_700_800_array)
  | #Tajawal(_200_300_400_500_700_800_900_array)
  | #Taviraj(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Teko(_300_400_500_600_700_array)
  | #Texturina(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Tillana(_400_500_600_700_800_array)
  | #TitilliumWeb(withItalics_titilliumWeb_array)
  | #Tomorrow(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Trirong(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #Trispace(_100_200_300_400_500_600_700_800_array)
  | #TurretRoad(_200_300_400_500_700_800_array)
  | #Ubuntu(withItalics_300_400_500_700_array)
  | #Varta(_300_400_500_600_700_array)
  | #Vollkorn(withItalics_400_500_600_700_800_900_array)
  | #WorkSans(withItalics_100_200_300_400_500_600_700_800_900_array)
  | #YanoneKaffeesatz(_200_300_400_500_600_700_array)
  | #Yantramanav(_100_300_400_500_700_900_array)
  | #Yrsa(_300_400_500_600_700_array)
  | #ZillaSlab(withItalics_300_400_500_600_700_array)
]

type fontsArray = array<fonts>

let toFontValue2 = (font: fonts) =>
  switch font {
  | #Montserrat(weights) => {
      fontName: "Montserrat",
      weights: toArrayWeightValue(weights),
    }
  | #Poppins(weights) => {
      fontName: "Poppins",
      weights: toArrayWeightValue(weights),
    }
  | #Raleway(weights) => {
      fontName: "Raleway",
      weights: toArrayWeightValue(weights),
    }
  | #WorkSans(weights) => {
      fontName: "Work Sans",
      weights: toArrayWeightValue(weights),
    }
  | #FiraSans(weights) => {
      fontName: "Fira Sans",
      weights: toArrayWeightValue(weights),
    }
  | #Barlow(weights) => {
      fontName: "Barlow",
      weights: toArrayWeightValue(weights),
    }
  | #LibreFranklin(weights) => {
      fontName: "Libre Franklin",
      weights: toArrayWeightValue(weights),
    }
  | #Bitter(weights) => {
      fontName: "Bitter",
      weights: toArrayWeightValue(weights),
    }
  | #Fraunces(weights) => {
      fontName: "Fraunces",
      weights: toArrayWeightValue(weights),
    }
  | #BarlowCondensed(weights) => {
      fontName: "Barlow Condensed",
      weights: toArrayWeightValue(weights),
    }
  | #Exo2(weights) => {
      fontName: "Exo 2",
      weights: toArrayWeightValue(weights),
    }
  | #Kanit(weights) => {
      fontName: "Kanit",
      weights: toArrayWeightValue(weights),
    }
  | #Prompt(weights) => {
      fontName: "Prompt",
      weights: toArrayWeightValue(weights),
    }
  | #FiraSansCondensed(weights) => {
      fontName: "Fira Sans Condensed",
      weights: toArrayWeightValue(weights),
    }
  | #Exo(weights) => {
      fontName: "Exo",
      weights: toArrayWeightValue(weights),
    }
  | #BarlowSemiCondensed(weights) => {
      fontName: "Barlow Semi Condensed",
      weights: toArrayWeightValue(weights),
    }
  | #MontserratAlternates(weights) => {
      fontName: "Montserrat Alternates",
      weights: toArrayWeightValue(weights),
    }
  | #FiraSansExtraCondensed(weights) => {
      fontName: "Fira Sans Extra Condensed",
      weights: toArrayWeightValue(weights),
    }
  | #PublicSans(weights) => {
      fontName: "Public Sans",
      weights: toArrayWeightValue(weights),
    }
  | #Taviraj(weights) => {
      fontName: "Taviraj",
      weights: toArrayWeightValue(weights),
    }
  | #Saira(weights) => {
      fontName: "Saira",
      weights: toArrayWeightValue(weights),
    }

  | #Texturina(weights) => {
      fontName: "Texturina",
      weights: toArrayWeightValue(weights),
    }
  | #Jost(weights) => {
      fontName: "Jost",
      weights: toArrayWeightValue(weights),
    }
  | #Piazolla(weights) => {
      fontName: "Piazolla",
      weights: toArrayWeightValue(weights),
    }
  | #Trirong(weights) => {
      fontName: "Trirong",
      weights: toArrayWeightValue(weights),
    }
  | #Grandstander(weights) => {
      fontName: "Grandstander",
      weights: toArrayWeightValue(weights),
    }
  | #Epilogue(weights) => {
      fontName: "Epilogue",
      weights: toArrayWeightValue(weights),
    }
  | #Petrona(weights) => {
      fontName: "Petrona",
      weights: toArrayWeightValue(weights),
    }
  | #Tomorrow(weights) => {
      fontName: "Tomorrow",
      weights: toArrayWeightValue(weights),
    }
  | #Grenze(weights) => {
      fontName: "Grenze",
      weights: toArrayWeightValue(weights),
    }

  | #Overpass(weights) => {
      fontName: "Overpass",
      weights: toArrayWeightValue(weights),
    }
  | #Mulish(weights) => {
      fontName: "Mulish",
      weights: toArrayWeightValue(weights),
    }

  | #CrimsonPro(weights) => {
      fontName: "Crimson Pro",
      weights: toArrayWeightValue(weights),
    }
  | #JetBrainsMono(weights) => {
      fontName: "JetBrains Mono",
      weights: toArrayWeightValue(weights),
    }
  | #K2D(weights) => {
      fontName: "K2D",
      weights: toArrayWeightValue(weights),
    }
  | #Sarabun(weights) => {
      fontName: "Sarabun",
      weights: toArrayWeightValue(weights),
    }
  | #Literata(weights) => {
      fontName: "Literata",
      weights: toArrayWeightValue(weights),
    }
  | #Livvic(weights) => {
      fontName: "Livvic",
      weights: toArrayWeightValue(weights),
    }
  | #RobotoMono(weights) => {
      fontName: "Roboto Mono",
      weights: toArrayWeightValue(weights),
    }

  | #NunitoSans(weights) => {
      fontName: "Nunito Sans",
      weights: toArrayWeightValue(weights),
    }

  | #BeVietnam(weights) => {
      fontName: "Be Vietnam",
      weights: toArrayWeightValue(weights),
    }

  | #Spectral(weights) => {
      fontName: "Spectral",
      weights: toArrayWeightValue(weights),
    }

  | #SourceCodePro(weights) => {
      fontName: "Source Code Pro",
      weights: toArrayWeightValue(weights),
    }

  | #AlegreyaSans(weights) => {
      fontName: "Alegreya Sans",
      weights: toArrayWeightValue(weights),
    }
  | #IBMPlexSansCondensed(weights) => {
      fontName: "IBM Plex Sans Condensed",
      weights: toArrayWeightValue(weights),
    }
  | #AlegreyaSansSC(weights) => {
      fontName: "Alegreya Sans SC",
      weights: toArrayWeightValue(weights),
    }
  | #JosefinSans(weights) => {
      fontName: "Josefin Sans",
      weights: toArrayWeightValue(weights),
    }
  | #Nunito(weights) => {
      fontName: "Nunito",
      weights: toArrayWeightValue(weights),
    }
  | #IBMPlexMono(weights) => {
      fontName: "IBM Plex Mono",
      weights: toArrayWeightValue(weights),
    }
  | #IBMPlexSans(weights) => {
      fontName: "IBM Plex Sans",
      weights: toArrayWeightValue(weights),
    }

  | #IBMPlexSerif(weights) => {
      fontName: "IBM Plex Serif",
      weights: toArrayWeightValue(weights),
    }
  | #JosefinSlab(weights) => {
      fontName: "Josefin Slab",
      weights: toArrayWeightValue(weights),
    }

  | #Rubik(weights) => {
      fontName: "Rubik",
      weights: toArrayWeightValue(weights),
    }
  | #Karla(weights) => {
      fontName: "Karla",
      weights: toArrayWeightValue(weights),
    }

  | #SpectralSC(weights) => {
      fontName: "Spectral SC",
      weights: toArrayWeightValue(weights),
    }

  | #Krub(weights) => {
      fontName: "Krub",
      weights: toArrayWeightValue(weights),
    }

  | #Roboto(weights) => {
      fontName: "Roboto",
      weights: toArrayWeightValue(weights),
    }
  | #Niramit(weights) => {
      fontName: "Niramit",
      weights: toArrayWeightValue(weights),
    }
  | #KoHo(weights) => {
      fontName: "KoHo",
      weights: toArrayWeightValue(weights),
    }
  | #Mali(weights) => {
      fontName: "Mali",
      weights: toArrayWeightValue(weights),
    }
  | #Kufam(weights) => {
      fontName: "Kufam",
      weights: toArrayWeightValue(weights),
    }
  | #Fahkwang(weights) => {
      fontName: "Fahkwang",
      weights: toArrayWeightValue(weights),
    }
  | #Vollkorn(weights) => {
      fontName: "Vollkorn",
      weights: toArrayWeightValue(weights),
    }
  | #SourceSerifPro(weights) => {
      fontName: "Source Serif Pro",
      weights: toArrayWeightValue(weights),
    }
  | #MerriweatherSans(weights) => {
      fontName: "Merriweather Sans",
      weights: toArrayWeightValue(weights),
    }
  | #PlayfairDisplay(weights) => {
      fontName: "Playfair Display",
      weights: toArrayWeightValue(weights),
    }
  | #BaiJamjuree(weights) => {
      fontName: "Bai Jamjuree",
      weights: toArrayWeightValue(weights),
    }
  | #Kodchasan(weights) => {
      fontName: "Kodchasan",
      weights: toArrayWeightValue(weights),
    }
  | #SourceSansPro(weights) => {
      fontName: "Source Sans Pro",
      weights: toArrayWeightValue(weights),
    }
  | #BodoniModa(weights) => {
      fontName: "Bodoni Moda",
      weights: toArrayWeightValue(weights),
    }
  | #Alegreya(weights) => {
      fontName: "Alegreya",
      weights: toArrayWeightValue(weights),
    }
  | #AlegreyaSC(weights) => {
      fontName: "Alegreya SC",
      weights: toArrayWeightValue(weights),
    }
  | #ChakraPetch(weights) => {
      fontName: "Chakra Petch",
      weights: toArrayWeightValue(weights),
    }
  | #Cormorant(weights) => {
      fontName: "Cormorant",
      weights: toArrayWeightValue(weights),
    }
  | #CormorantGaramond(weights) => {
      fontName: "Cormorant Garamond",
      weights: toArrayWeightValue(weights),
    }
  | #CormorantInfant(weights) => {
      fontName: "Cormorant Infant",
      weights: toArrayWeightValue(weights),
    }
  | #EBGaramond(weights) => {
      fontName: "EB Garamond",
      weights: toArrayWeightValue(weights),
    }
  | #KulimPark(weights) => {
      fontName: "Kulim Park",
      weights: toArrayWeightValue(weights),
    }
  | #Lato(weights) => {
      fontName: "Lato",
      weights: toArrayWeightValue(weights),
    }
  | #OpenSans(weights) => {
      fontName: "Open Sans",
      weights: toArrayWeightValue(weights),
    }
  | #ProzaLibre(weights) => {
      fontName: "Proza Libre",
      weights: toArrayWeightValue(weights),
    }
  | #Rosario(weights) => {
      fontName: "Rosario",
      weights: toArrayWeightValue(weights),
    }
  | #TitilliumWeb(weights) => {
      fontName: "Titillium Web",
      weights: toArrayWeightValue(weights),
    }
  | #ZillaSlab(weights) => {
      fontName: "Zilla Slab",
      weights: toArrayWeightValue(weights),
    }

  | #Catamaran(weights) => {
      fontName: "Catamaran",
      weights: toArrayWeightValue(weights),
    }

  | #Commissioner(weights) => {
      fontName: "Commissioner",
      weights: toArrayWeightValue(weights),
    }

  | #EncodeSans(weights) => {
      fontName: "Encode Sans",
      weights: toArrayWeightValue(weights),
    }

  | #EncodeSansCondensed(weights) => {
      fontName: "Encode Sans Condensed",
      weights: toArrayWeightValue(weights),
    }

  | #EncodeSansExpanded(weights) => {
      fontName: "Encode Sans Expanded",
      weights: toArrayWeightValue(weights),
    }

  | #EncodeSansSemiCondensed(weights) => {
      fontName: "Encode Sans Semi Condensed",
      weights: toArrayWeightValue(weights),
    }

  | #EncodeSansSemiExpanded(weights) => {
      fontName: "Encode Sans Semi Expanded",
      weights: toArrayWeightValue(weights),
    }

  | #GothicA1(weights) => {
      fontName: "Gothic A1",
      weights: toArrayWeightValue(weights),
    }

  | #GrenzeGotisch(weights) => {
      fontName: "Grenze Gotisch",
      weights: toArrayWeightValue(weights),
    }

  | #Heebo(weights) => {
      fontName: "Heebo",
      weights: toArrayWeightValue(weights),
    }

  | #HeptaSlab(weights) => {
      fontName: "Hepta Slab",
      weights: toArrayWeightValue(weights),
    }

  | #Imbue(weights) => {
      fontName: "Imbue",
      weights: toArrayWeightValue(weights),
    }

  | #Inter(weights) => {
      fontName: "Inter",
      weights: toArrayWeightValue(weights),
    }

  | #MuseoModerno(weights) => {
      fontName: "MuseoModerno",
      weights: toArrayWeightValue(weights),
    }

  | #Rokkitt(weights) => {
      fontName: "Rokkitt",
      weights: toArrayWeightValue(weights),
    }

  | #RobotoSlab(weights) => {
      fontName: "Roboto Slab",
      weights: toArrayWeightValue(weights),
    }

  | #SairaCondensed(weights) => {
      fontName: "Saira Condensed",
      weights: toArrayWeightValue(weights),
    }

  | #SairaExtraCondensed(weights) => {
      fontName: "Saira Extra Condensed",
      weights: toArrayWeightValue(weights),
    }

  | #SairaSemiCondensed(weights) => {
      fontName: "Saira Semi Condensed",
      weights: toArrayWeightValue(weights),
    }

  | #Spartan(weights) => {
      fontName: "Spartan",
      weights: toArrayWeightValue(weights),
    }

  | #Archivo(weights) => {
      fontName: "Archivo",
      weights: toArrayWeightValue(weights),
    }

  | #ArchivoNarrow(weights) => {
      fontName: "Archivo Narrow",
      weights: toArrayWeightValue(weights),
    }

  | #ArimaMadurai(weights) => {
      fontName: "Arima Madurai",
      weights: toArrayWeightValue(weights),
    }

  | #Arimo(weights) => {
      fontName: "Arimo",
      weights: toArrayWeightValue(weights),
    }

  | #Asap(weights) => {
      fontName: "Asap",
      weights: toArrayWeightValue(weights),
    }

  | #AsapCondensed(weights) => {
      fontName: "Asap Condensed",
      weights: toArrayWeightValue(weights),
    }

  | #BigShouldersDisplay(weights) => {
      fontName: "Big Shoulders Display",
      weights: toArrayWeightValue(weights),
    }

  | #BigShouldersInlineDisplay(weights) => {
      fontName: "Big Shoulders Inline Display",
      weights: toArrayWeightValue(weights),
    }

  | #BigShouldersInlineText(weights) => {
      fontName: "Big Shoulders Inline Text",
      weights: toArrayWeightValue(weights),
    }

  | #BigShouldersStencilDisplay(weights) => {
      fontName: "Big Shoulders Stencil Display",
      weights: toArrayWeightValue(weights),
    }

  | #BigShouldersStencilText(weights) => {
      fontName: "Big Shoulders Stencil Text",
      weights: toArrayWeightValue(weights),
    }

  | #BigShouldersText(weights) => {
      fontName: "Big Shoulders Text",
      weights: toArrayWeightValue(weights),
    }

  | #Blinker(weights) => {
      fontName: "Blinker",
      weights: toArrayWeightValue(weights),
    }

  | #Cabin(weights) => {
      fontName: "Cabin",
      weights: toArrayWeightValue(weights),
    }

  | #Chivo(weights) => {
      fontName: "Chivo",
      weights: toArrayWeightValue(weights),
    }

  | #Cuprum(weights) => {
      fontName: "Cuprum",
      weights: toArrayWeightValue(weights),
    }

  | #ExpletusSans(weights) => {
      fontName: "Expletus Sans",
      weights: toArrayWeightValue(weights),
    }

  | #Faustina(weights) => {
      fontName: "Faustina",
      weights: toArrayWeightValue(weights),
    }

  | #Gelasio(weights) => {
      fontName: "Gelasio",
      weights: toArrayWeightValue(weights),
    }

  | #IbarraRealNova(weights) => {
      fontName: "Ibarra Real Nova",
      weights: toArrayWeightValue(weights),
    }

  | #Inconsolata(weights) => {
      fontName: "Inconsolata",
      weights: toArrayWeightValue(weights),
    }

  | #Lora(weights) => {
      fontName: "Lora",
      weights: toArrayWeightValue(weights),
    }

  | #Manuale(weights) => {
      fontName: "Manuale",
      weights: toArrayWeightValue(weights),
    }

  | #Merriweather(weights) => {
      fontName: "Merriweather",
      weights: toArrayWeightValue(weights),
    }
  | #RedHatDisplay(weights) => {
      fontName: "Red Hat Display",
      weights: toArrayWeightValue(weights),
    }
  | #Sansita(weights) => {
      fontName: "Sansita",
      weights: toArrayWeightValue(weights),
    }
  | #Sora(weights) => {
      fontName: "Sora",
      weights: toArrayWeightValue(weights),
    }
  | #Trispace(weights) => {
      fontName: "Trispace",
      weights: toArrayWeightValue(weights),
    }

  | #Ubuntu(weights) => {
      fontName: "Ubuntu",
      weights: toArrayWeightValue(weights),
    }

  | #AdventPro(weights) => {
      fontName: "Advent Pro",
      weights: toArrayWeightValue(weights),
    }

  | #Assistant(weights) => {
      fontName: "Assistant",
      weights: toArrayWeightValue(weights),
    }

  | #Biryani(weights) => {
      fontName: "Biryani",
      weights: toArrayWeightValue(weights),
    }

  | #Changa(weights) => {
      fontName: "Changa",
      weights: toArrayWeightValue(weights),
    }

  | #DarkerGrotesque(weights) => {
      fontName: "Darker Grotesque",
      weights: toArrayWeightValue(weights),
    }

  | #Dosis(weights) => {
      fontName: "Dosis",
      weights: toArrayWeightValue(weights),
    }

  | #InknutAntiqua(weights) => {
      fontName: "Inknut Antiqua",
      weights: toArrayWeightValue(weights),
    }

  | #MPLUS1p(weights) => {
      fontName: "M PLUS 1p",
      weights: toArrayWeightValue(weights),
    }

  | #MPLUSRounded1c(weights) => {
      fontName: "M PLUS Rounded 1c",
      weights: toArrayWeightValue(weights),
    }

  | #Mada(weights) => {
      fontName: "Mada",
      weights: toArrayWeightValue(weights),
    }

  | #Manrope(weights) => {
      fontName: "Manrope",
      weights: toArrayWeightValue(weights),
    }

  | #Martel(weights) => {
      fontName: "Martel",
      weights: toArrayWeightValue(weights),
    }

  | #MartelSans(weights) => {
      fontName: "Martel Sans",
      weights: toArrayWeightValue(weights),
    }

  | #Mukta(weights) => {
      fontName: "Mukta",
      weights: toArrayWeightValue(weights),
    }

  | #MuktaMahee(weights) => {
      fontName: "Mukta Mahee",
      weights: toArrayWeightValue(weights),
    }

  | #MuktaMalar(weights) => {
      fontName: "Mukta Malar",
      weights: toArrayWeightValue(weights),
    }

  | #MuktaVaani(weights) => {
      fontName: "Mukta Vaani",
      weights: toArrayWeightValue(weights),
    }

  | #NotoSerifJP(weights) => {
      fontName: "Noto Serif JP",
      weights: toArrayWeightValue(weights),
    }

  | #NotoSerifKR(weights) => {
      fontName: "Noto Serif KR",
      weights: toArrayWeightValue(weights),
    }
  | #NotoSerifSC(weights) => {
      fontName: "Noto Serif SC",
      weights: toArrayWeightValue(weights),
    }

  | #NotoSerifTC(weights) => {
      fontName: "Noto Serif TC",
      weights: toArrayWeightValue(weights),
    }

  | #Oxanium(weights) => {
      fontName: "Oxanium",
      weights: toArrayWeightValue(weights),
    }

  | #Palanquin(weights) => {
      fontName: "Palanquin",
      weights: toArrayWeightValue(weights),
    }

  | #Recursive(weights) => {
      fontName: "Recursive",
      weights: toArrayWeightValue(weights),
    }

  | #SansitaSwashed(weights) => {
      fontName: "Sansita Swashed",
      weights: toArrayWeightValue(weights),
    }

  | #Tajawal(weights) => {
      fontName: "Tajawal",
      weights: toArrayWeightValue(weights),
    }

  | #Aleo(weights) => {
      fontName: "Aleo",
      weights: toArrayWeightValue(weights),
    }

  | #Athiti(weights) => {
      fontName: "Athiti",
      weights: toArrayWeightValue(weights),
    }

  | #AveriaLibre(weights) => {
      fontName: "Averia Libre",
      weights: toArrayWeightValue(weights),
    }

  | #AveriaSansLibre(weights) => {
      fontName: "Averia Sans Libre",
      weights: toArrayWeightValue(weights),
    }

  | #AveriaSerifLibre(weights) => {
      fontName: "Averia Serif Libre",
      weights: toArrayWeightValue(weights),
    }

  | #Bellota(weights) => {
      fontName: "Bellota",
      weights: toArrayWeightValue(weights),
    }

  | #BellotaText(weights) => {
      fontName: "Bellota Text",
      weights: toArrayWeightValue(weights),
    }

  | #Cairo(weights) => {
      fontName: "Cairo",
      weights: toArrayWeightValue(weights),
    }

  | #Cinzel(weights) => {
      fontName: "Cinzel",
      weights: toArrayWeightValue(weights),
    }

  | #ComicNeue(weights) => {
      fontName: "Comic Neue",
      weights: toArrayWeightValue(weights),
    }

  | #CrimsonText(weights) => {
      fontName: "Crimson Text",
      weights: toArrayWeightValue(weights),
    }

  | #DMMono(weights) => {
      fontName: "DM Mono",
      weights: toArrayWeightValue(weights),
    }

  | #DMSans(weights) => {
      fontName: "DM Sans",
      weights: toArrayWeightValue(weights),
    }

  | #InriaSans(weights) => {
      fontName: "Inria Sans",
      weights: toArrayWeightValue(weights),
    }

  | #InriaSerif(weights) => {
      fontName: "Inria Serif",
      weights: toArrayWeightValue(weights),
    }

  | #Maitree(weights) => {
      fontName: "Maitree",
      weights: toArrayWeightValue(weights),
    }

  | #MavenPro(weights) => {
      fontName: "Maven Pro",
      weights: toArrayWeightValue(weights),
    }

  | #Mitr(weights) => {
      fontName: "Mitr",
      weights: toArrayWeightValue(weights),
    }

  | #Neuton(weights) => {
      fontName: "Neuton",
      weights: toArrayWeightValue(weights),
    }

  | #Nobile(weights) => {
      fontName: "Nobile",
      weights: toArrayWeightValue(weights),
    }

  | #NotoSansHK(weights) => {
      fontName: "Noto Sans HK",
      weights: toArrayWeightValue(weights),
    }
  | #NotoSansJP(weights) => {
      fontName: "Noto Sans JP",
      weights: toArrayWeightValue(weights),
    }
  | #NotoSansKR(weights) => {
      fontName: "Noto Sans KR",
      weights: toArrayWeightValue(weights),
    }
  | #NotoSansSC(weights) => {
      fontName: "Noto Sans SC",
      weights: toArrayWeightValue(weights),
    }
  | #NotoSansTC(weights) => {
      fontName: "Noto Sans HK",
      weights: toArrayWeightValue(weights),
    }

  | #Orbitron(weights) => {
      fontName: "Orbitron",
      weights: toArrayWeightValue(weights),
    }

  | #Oswald(weights) => {
      fontName: "Oswald",
      weights: toArrayWeightValue(weights),
    }

  | #Overlock(weights) => {
      fontName: "Overlock",
      weights: toArrayWeightValue(weights),
    }

  | #PlayfairDisplaySC(weights) => {
      fontName: "Playfair Display SC",
      weights: toArrayWeightValue(weights),
    }

  | #Pridi(weights) => {
      fontName: "Pridi",
      weights: toArrayWeightValue(weights),
    }

  | #RedHatText(weights) => {
      fontName: "Red Hat Text",
      weights: toArrayWeightValue(weights),
    }

  | #RobotoCondensed(weights) => {
      fontName: "Roboto Condensed",
      weights: toArrayWeightValue(weights),
    }

  | #Ruda(weights) => {
      fontName: "Ruda",
      weights: toArrayWeightValue(weights),
    }

  | #Sarpanch(weights) => {
      fontName: "Sarpanch",
      weights: toArrayWeightValue(weights),
    }

  | #TurretRoad(weights) => {
      fontName: "Turret Road",
      weights: toArrayWeightValue(weights),
    }

  | #YanoneKaffeesatz(weights) => {
      fontName: "Yanone Kaffeesatz",
      weights: toArrayWeightValue(weights),
    }

  | #Yantramanav(weights) => {
      fontName: "Yantramanav",
      weights: toArrayWeightValue(weights),
    }

  | #AbhayaLibre(weights) => {
      fontName: "Abhaya Libre",
      weights: toArrayWeightValue(weights),
    }

  | #Atma(weights) => {
      fontName: "Atma",
      weights: toArrayWeightValue(weights),
    }

  | #Baloo2(weights) => {
      fontName: "Baloo 2",
      weights: toArrayWeightValue(weights),
    }

  | #BalooBhai2(weights) => {
      fontName: "Baloo Bhai 2",
      weights: toArrayWeightValue(weights),
    }

  | #BalooBhaina2(weights) => {
      fontName: "Baloo Bhaina 2",
      weights: toArrayWeightValue(weights),
    }

  | #BalooChettan2(weights) => {
      fontName: "Baloo Chettan 2",
      weights: toArrayWeightValue(weights),
    }

  | #BalooDa2(weights) => {
      fontName: "Baloo Da 2",
      weights: toArrayWeightValue(weights),
    }

  | #BalooPaaji2(weights) => {
      fontName: "Baloo Paaji 2",
      weights: toArrayWeightValue(weights),
    }

  | #BalooTamma2(weights) => {
      fontName: "Baloo Tamma 2",
      weights: toArrayWeightValue(weights),
    }

  | #BalooTammudu2(weights) => {
      fontName: "Baloo Tammudu 2",
      weights: toArrayWeightValue(weights),
    }

  | #BalooThambi2(weights) => {
      fontName: "Baloo Thambi 2",
      weights: toArrayWeightValue(weights),
    }

  | #BioRhyme(weights) => {
      fontName: "BioRhyme",
      weights: toArrayWeightValue(weights),
    }

  | #BioRhymeExpanded(weights) => {
      fontName: "BioRhyme Expanded",
      weights: toArrayWeightValue(weights),
    }

  | #Chathura(weights) => {
      fontName: "Chathura",
      weights: toArrayWeightValue(weights),
    }

  | #Comfortaa(weights) => {
      fontName: "Comfortaa",
      weights: toArrayWeightValue(weights),
    }

  | #CormorantSC(weights) => {
      fontName: "Cormorant SC",
      weights: toArrayWeightValue(weights),
    }

  | #CormorantUnicase(weights) => {
      fontName: "Cormorant Unicase",
      weights: toArrayWeightValue(weights),
    }

  | #CormorantUpright(weights) => {
      fontName: "Cormorant Upright",
      weights: toArrayWeightValue(weights),
    }

  | #Eczar(weights) => {
      fontName: "Eczar",
      weights: toArrayWeightValue(weights),
    }

  | #FrankRuhlLibre(weights) => {
      fontName: "Frank Ruhl Libre",
      weights: toArrayWeightValue(weights),
    }

  | #Halant(weights) => {
      fontName: "Halant",
      weights: toArrayWeightValue(weights),
    }

  | #Hind(weights) => {
      fontName: "Hind",
      weights: toArrayWeightValue(weights),
    }

  | #HindGuntur(weights) => {
      fontName: "Hind Guntur",
      weights: toArrayWeightValue(weights),
    }

  | #HindMadurai(weights) => {
      fontName: "Hind Madurai",
      weights: toArrayWeightValue(weights),
    }

  | #HindSiliguri(weights) => {
      fontName: "Hind Siliguri",
      weights: toArrayWeightValue(weights),
    }

  | #HindVadodara(weights) => {
      fontName: "Hind Vadodara",
      weights: toArrayWeightValue(weights),
    }

  | #Karma(weights) => {
      fontName: "Karma",
      weights: toArrayWeightValue(weights),
    }

  | #Khand(weights) => {
      fontName: "Khand",
      weights: toArrayWeightValue(weights),
    }

  | #Khula(weights) => {
      fontName: "Khula",
      weights: toArrayWeightValue(weights),
    }

  | #Kreon(weights) => {
      fontName: "Kreon",
      weights: toArrayWeightValue(weights),
    }

  | #Laila(weights) => {
      fontName: "Laila",
      weights: toArrayWeightValue(weights),
    }

  | #Lemonada(weights) => {
      fontName: "Lemonada",
      weights: toArrayWeightValue(weights),
    }

  | #Podkova(weights) => {
      fontName: "Podkova",
      weights: toArrayWeightValue(weights),
    }

  | #Quicksand(weights) => {
      fontName: "Quicksand",
      weights: toArrayWeightValue(weights),
    }

  | #Rajdhani(weights) => {
      fontName: "Rajdhani",
      weights: toArrayWeightValue(weights),
    }

  | #Rasa(weights) => {
      fontName: "Rasa",
      weights: toArrayWeightValue(weights),
    }

  | #RedRose(weights) => {
      fontName: "Red Rose",
      weights: toArrayWeightValue(weights),
    }

  | #Signika(weights) => {
      fontName: "Signika",
      weights: toArrayWeightValue(weights),
    }

  | #Solway(weights) => {
      fontName: "Solway",
      weights: toArrayWeightValue(weights),
    }

  | #SpaceGrotesk(weights) => {
      fontName: "Space Grotesk",
      weights: toArrayWeightValue(weights),
    }

  | #Syne(weights) => {
      fontName: "Syne",
      weights: toArrayWeightValue(weights),
    }

  | #Teko(weights) => {
      fontName: "Teko",
      weights: toArrayWeightValue(weights),
    }

  | #Tillana(weights) => {
      fontName: "Tillana",
      weights: toArrayWeightValue(weights),
    }

  | #Varta(weights) => {
      fontName: "Varta",
      weights: toArrayWeightValue(weights),
    }

  | #Yrsa(weights) => {
      fontName: "Yrsa",
      weights: toArrayWeightValue(weights),
    }

  | #Jura(weights) => {
      fontName: "Jura",
      weights: toArrayWeightValue(weights),
    }

  | #FiraCode(weights) => {
      fontName: "Fira Code",
      weights: toArrayWeightValue(weights),
    }
  }

let toFontValues = (fonts: fontsArray) => Belt.Array.map(fonts, font => toFontValue2(font))
