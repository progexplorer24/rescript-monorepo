type normalWeights = [#v100 | #v200 | #v300 | #v400 | #v500 | #v600 | #v700 | #v800 | #v900]

type italicWeights = [
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
type weightType<'a> = [<
  | #v100
  | #v200
  | #v300
  | #v400
  | #v500
  | #v600
  | #v700
  | #v800
  | #v900
  | #italic100
  | #italic200
  | #italic300
  | #italic400
  | #italic500
  | #italic600
  | #italic700
  | #italic800
  | #italic900
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

type weights18 = [normalWeights | italicWeights]
type normal8 = [#v100 | #v200 | #v300 | #v400 | #v600 | #v700 | #v800 | #v900]

type italic8 = [
  | #italic100
  | #italic200
  | #italic300
  | #italic400
  | #italic600
  | #italic700
  | #italic800
  | #italic900
]

type weights16 = [normal8 | italic8]

// NOTE: 30 fonts
type styles18 = [
  | #Montserrat(weights18)
  | #Poppins(weights18)
  | #Raleway(weights18)
  | #WorkSans(weights18)
  | #FiraSans(weights18)
  | #Barlow(weights18)
  | #LibreFranklin(weights18)
  | #Bitter(weights18)
  | #BarlowCondensed(weights18)
  | #Exo2(weights18)
  | #Kanit(weights18)
  | #Prompt(weights18)
  | #FiraSansCondensed(weights18)
  | #Exo(weights18)
  | #BarlowSemiCondensed(weights18)
  | #MontserratAlternates(weights18)
  | #FiraSansExtraCondensed(weights18)
  | #PublicSans(weights18)
  | #Saira(weights18)
  | #Jost(weights18)
  | #Taviraj(weights18)
  | #Texturina(weights18)
  | #Fraunces(weights18)
  | #Piazolla(weights18)
  | #Trirong(weights18)
  | #Grandstander(weights18)
  | #Epilogue(weights18)
  | #Petrona(weights18)
  | #Tomorrow(weights18)
  | #Grenze(weights18)
  | #Overpass(weights16)
  | #Mulish(weights16)
]

type styles16 = [#Overpass(weights16) | #Mulish(weights16)]

type fonts = [styles18 | styles16]

type fontRecord = {
  fontName: string,
  weight: int,
  isItalic: bool,
}

let toFontValue = (font: styles18) =>
  switch font {
  | #Montserrat(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Montserrat",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Poppins(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Poppins",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Raleway(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Raleway",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #WorkSans(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Work Sans",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #FiraSans(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Fira Sans",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Barlow(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Barlow",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #LibreFranklin(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Libre Franklin",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Bitter(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Bitter",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Fraunces(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Fraunces",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #BarlowCondensed(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Barlow Condensed",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Exo2(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Exo 2",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Kanit(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Kanit",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Prompt(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Prompt",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #FiraSansCondensed(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Fira Sans Condensed",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Exo(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Exo",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #BarlowSemiCondensed(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Barlow Semi Condensed",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #MontserratAlternates(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Montserrat Alternates",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #FiraSansExtraCondensed(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Fira Sans Extra Condensed",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #PublicSans(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Public Sans",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Taviraj(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Taviraj",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Saira(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Saira",
        weight: weight,
        isItalic: isItalic,
      }
    }

  | #Texturina(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Texturina",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Jost(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Jost",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Piazolla(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Piazolla",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Trirong(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Trirong",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Grandstander(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Grandstander",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Epilogue(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Epilogue",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Petrona(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Petrona",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Tomorrow(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Tomorrow",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Grenze(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Grenze",
        weight: weight,
        isItalic: isItalic,
      }
    }

  | #Overpass(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Overpass",
        weight: weight,
        isItalic: isItalic,
      }
    }
  | #Mulish(weight) => {
      let {weight, isItalic} = toWeightValue(weight)

      {
        fontName: "Mulish",
        weight: weight,
        isItalic: isItalic,
      }
    }
  }

type t = [
  | #Roboto
  | #PottaOne
  | #YuseiMagic
  | #OpenSans
  | #HachiMaruPop
  | #NotoSansJP
  | #Lato
  | #Montserrat
  | #Fraunces
  | #RobotoCondensed
  | #SourceSansPro
  | #Oswald
  | #LondrinaSolid
  | #Poppins
  | #RobotoMono
  | #NotoSans
  | #Raleway
  | #Imbue
  | #Ubuntu
  | #PTSans
  | #RobotoSlab
  | #Merriweather
  | #PlayfairDisplay
  | #Lora
  | #Nunito
  | #OpenSansCondensed
  | #NotoSansKR
  | #Rubik
  | #PTSerif
  | #CodaCaption
  | #NotoSerif
  | #WorkSans
  | #NotoSansTC
  | #FiraSans
  | #NanumGothic
  | #NunitoSans
  | #TitilliumWeb
  | #Quicksand
  | #HindSiligur
  | #BodoniModa
  | #Slabo27px
  | #Mukta
  | #Karla
  | #Barlow
  | #Inconsolata
  | #Heebo
  | #Oxygen
  | #SourceCodePro
  | #Hanalei
  | #Inter
  | #JosefinSans
  | #PTSansNarrow
  | #Dosis
  | #Arimo
  | #LibreFranklin
  | #LibreBaskerville
  | #YanoneKaffeesatz
  | #Cabin
  | #Anton
  | #BigShouldersDisplay
  | #BebasNeue
  | #NotoSansSC
  | #Bitter
  | #CrimsonText
  | #IBMPlexSans
  | #Lobster
  | #Abel
  | #DancingScript
  | #Hind
  | #FjallaOne
  | #SourceSerifPro
  | #NotoSansHK
  | #Comfortaa
  | #VarelaRound
  | #IndieFlower
  | #ZillaSlab
  | #AnticSlab
  | #Arvo
  | #BarlowCondensed
  | #Pacifico
  | #Cairo
  | #Kanit
  | #Exo2
  | #MerriweatherSans
  | #Syne
  | #Asap
  | #ArchitectsDaughter
  | #Overpass
  | #ShadowsIntoLight
  | #EBGaramond
  | #Teko
  | #HindiMadurai
  | #ArchivoNarrow
  | #Questrial
  | #Prompt
  | #BalsamiqSans
  | #AbrilFatface
  | #MavenPro
  | #DMSans
  | #Gorditas
  | #Assistant
  | #Martel
  | #Acme
  | #FredokaOne
  | #CormorantGaramond
  | #AmaticSC
  | #IBMPlexSerif
  | #Play
  | #PermanentMarker
  | #Catamaran
  | #FiraSansCondensed
  | #Caveat
  | #Rajdhani
  | #Domine
  | #BreeSerif
  | #Satisfy
  | #Signika
  | #Exo
  | #AlfaSlabOne
  | #NotoSerifJp
  | #Righteous
  | #PatrickHand
  | #ABeeZee
  | #Tajawal
  | #Mulish
  | #PTSansCaption
  | #NanumMyeongjo
  | #Cinzel
  | #Archivo
  | #CarterOne
  | #PatuaOne
  | #CreteRound
  | #Amiri
  | #Vollkorn
  | #Monda
  | #SquadaOne
  | #RussoOne
  | #Courgette
  | #FrankRuhlLibre
  | #BarlowSemiCondensed
  | #AlegreyaSans
  | #UbuntuCondensed
  | #LobsterTwo
  | #Yantramanav
  | #FrancoisOne
  | #Tinos
  | #Changa
  | #LuckiestGuy
  | #Sarabun
  | #JetBrainsMono
  | #Alegreya
  | #ArchivoBlack
  | #KaushanScript
  | #Staatliches
  | #Cardo
  | #MPLUSRounded1c
  | #IBMPlexMono
  | #Kalam
  | #GreatVibes
  | #Cuprum
  | #MPLUS1p
  | #OriginalSurfer
  | #Spartan
  | #GloriaHallelujah
  | #PathwayGothicOne
  | #Almarai
  | #HindGuntur
  | #Sacramento
  | #NoticiaText
  | #Ultra
  | #ConcertOne
  | #DidactGothic
  | #Rokkitt
  | #Parisienne
  | #Volkhov
  | #Baloo2
  | #QuattrocentoSans
  | #EncodeSans
  | #Varta
  | #PassionOne
  | #SairaCondensed
  | #Prata
  | #Cantarell
  | #NewsCycle
  | #Padauk
  | #OldStandardTT
  | #Orbitron
  | #Manrope
  | #Chivo
  | #Arapey
  | #MontserratAlternates
  | #PaytoneOne
  | #Ramabhadra
  | #HindVadodara
  | #JosefinSlab
  | #SecularOne
  | #Sriracha
  | #SpecialElite
  | #Quantico
  | #PlayfairDisplaySC
  | #Economica
  | #RopaSans
  | #IstokWeb
  | #Quattrocento
  | #Cookie
  | #ChakraPetch
  | #Lemonada
  | #SawarabiMincho
  | #Yellowtail
  | #Sanchez
  | #Handlee
  | #PoiretOne
  | #PressStart2P
  | #AdventPro
  | #FiraSansExtraCondensed
  | #CrimsonPro
  | #Spectral
  | #BaiJamjuree
  | #DMSerifDisplay
  | #Philosopher
  | #Neuton
  | #Bangers
  | #Viadaloka
  | #HammersmithOne
  | #AndikaNewBasic
  | #Cormorant
  | #AsapCondensed
  | #RedHatDisplay
  | #Ruda
  | #PublicSans
  | #Karma
  | #Taviraj
  | #DMSerifText
  | #Monoton
  | #UnicaOne
  | #Jura
  | #Faustina
  | #Alice
  | #PragatiNarrow
  | #Neucha
  | #Texturina
  | #NotoSerifTC
  | #Jost
  | #Gudea
  | #Jaldi
  | #Saira
  | #Merienda
  | #GothicA1
  | #SigmarOne
  | #CabinCondensed
  | #HomemadeApple
  | #Khand
  | #Unna
  | #Mitr
  | #GentiumBasic
  | #BenchNine
  | #Amaranth
  | #PontanoSans
  | #SpaceMono
  | #Actor
  | #Armata
  | #Viga
  | #PTMono
  | #Aleo
  | #Palanquin
  | #Tangerine
  | #JuliusSansOne
  | #SuezOne
  | #Lusitana
  | #YesevaOne
  | #GentiumBookBasic
  | #RockSalt
  | #MarckScript
  | #Knewave
  | #Allura
  | #Playball
  | #BadScript
  | #Allan
  | #SawarabiGothic
  | #Audiowide
  | #Marcellus
  | #FugazOne
  | #Gruppo
  | #GochiHand
  | #TenorSans
  | #NerkoOne
  | #Alef
  | #NanumPenScript
  | #SairaSemiCondensed
  | #MarkaziText
  | #Pangolin
  | #Gelasio
  | #Castoro
  | #NothingYouCouldDo
  | #Varela
  | #ShadowsIntoLightTwo
  | #NotoSerifSC
  | #Eczar
  | #AlexBrush
  | #Mali
  | #Electrolize
  | #SignikaNegative
  | #Itim
  | #AbhayaLibre
  | #NanumGothicCoding
  | #Rufina
  | #EncodeSansCondensed
  | #Bungee
  | #SortsMillGoudy
  | #CantataOne
  | #Aclonica
  | #Engagement
  | #MrDafoe
  | #Damion
  | #Antic
  | #Sarala
  | #Arsenal
  | #BowlbyOneSC
  | #BigShouldersStencilText
  | #BigShouldersStencilDisplay
  | #BigShouldersStencilDisplay
  | #BigShouldersInlineText
  | #BigShouldersInlineDisplay
  | #BlackOpsOne
  | #OleoScript
  | #LilitaOne
  | #PinyonScript
  | #Sintony
  | #BalooChettan2
  | #CoveredByYourGrace
  | #Krub
  | #Glegoo
  | #Cousine
  | #Cousine
  | #FiraMono
  | #Lateef
  | #Lalezar
  | #LibreBarcodeEAN13Text
  | #Jomhuria
  | #Overlock
  | #Boogaloo
  | #CutiveMono
  | #SairaExtraCondensed
  | #Alata
  | #Average
  | #Sofia
  | #Rancho
  | #Caudex
  | #ReemKufi
  | #PTSerifCaption
  | #Pridi
  | #RubikMonoOne
  | #Kreon
  | #KosugiMaru
  | #Enriqueta
  | #NotoSerifKR
  | #Coda
  | #Chewy
  | #CourierPrime
  | #DoHyeon
  | #Allerta
  | #SpaceGrotesk
  | #Yrsa
  | #AlegreyaSansSC
  | #Schoolbell
  | #Laila
  | #AnonymousPro
  | #Syncopate
  | #Scheherazade
  | #FrederickatheGreat
  | #Capriola
  | #MiriamLibre
  | #Niconne
  | #ShareTechMono
  | #Michroma
  | #AveriaSerifLibre
  | #MartelSans
  | #Piazzolla
  | #OverpassMono
  | #Candal
  | #CaveatBrush
  | #Kameron
  | #Basic
  | #Aldrich
  | #LibreBarcode128
  | #ArbutusSlab
  | #Trispace
  | #Italianno
  | #NixieOne
  | #BlackHanSans
  | #Bevan
  | #Mallanna
  | #ReenieBeanie
  | #LexendDeca
  | #Sansita
  | #BerkshireSwash
  | #Molengo
  | #CabinSketch
  | #Kadwa
  | #AnnieUseYourTelescope
  | #RedHatText
  | #Bentham
  | #Mada
  | #MuktaVaani
  | #Norican
  | #Forum
  | #SixCaps
  | #JustAnotherHand
  | #MuktaMalar
  | #DaysOne
  | #Rambla
  | #ArimaMandurai
  | #Charm
  | #VT323
  | #Scada
  | #LeckerliOne
  | #Nobile
  | #Spinnaker
  | #Shrikhand
  | #TitanOne
  | #Telex
  | #ComingSoon
  | #HoltwoodOneSC
  | #MarcellusSC
  | #BubblegumSans
  | #Trirong
  | #Suranna
  | #CinzelDecorative
  | #BungeeInline
  | #AllertaSencil
  | #ContrailOne
  | #Graduate
  | #RhodiumLibre
  | #RacingSansOne
  | #Yesteryear
  | #Share
  | #Thasadith
  | #Judson
  | #AlegreyaSC
  | #Rochester
  | #HerrVonMullerhoff
  | #ChangaOne
  | #Oranienbaum
  | #PalanquinDark
  | #Arizonia
  | #Wallpoet
  | #IMFellDoublePica
  | #Rye
  | #Literata
  | #Singlet
  | #Biryani
  | #Creepster
  | #Amiko
  | #Voltaire
  | #Delius
  | #FaunaOne
  | #Homenaje
  | #MrsSaintDelafield
  | #Sen
  | #Corben
  | #Lustria
  | #Copse
  | #SansitaSwashed
  | #Amita
  | #CarroisGothic
  | #Kristi
  | #Pattaya
  | #Kurale
  | #Andada
  | #Magra
  | #MeriendaOne
  | #GrandHotel
  | #AverageSans
  | #Halant
  | #Marmelad
  | #OxygenMono
  | #Trocchi
  | #IBMPlexSansCondensed
]

// TODO: Rest

// TODO: Part 1
// | #Ovo
// | #PetitFormalScript
// | #SeaweedScript
// | #RalewayDots
// | #GildaDisplay
// | #Athiti
// | #Niramit
// | #NanumBrushScript
// | #LoveYaLikeASister
// | #GFSDidot
// | #Metrophobic
// | #Slabo13px
// | #Rosario
// | #Blinker
// | #Aladin
// | #Coustard
// | #Cambay
// | #Carme
// | #RozhaOne
// | #CedarvilleCursive
// | #Calligraffitti
// | #Hanuman
// | #Poly
// | #Grandstander
// | #MonsieurLaDoulaise
// | #Cutive
// | #KellySlab
// | #LibreCaslonText
// | #Kosugi
// | #Pompiere
// | #Baskervville
// | #Mitree
// | #Belleza
// | #LeBelleAurore
// | #ChauPhilomeneOne
// | #Radley
// | #Lemon
// | #DuruSans
// | #DoppioOne
// | #Gugi
// | #UnifrakturMaguntia
// | #SyneMono
// | #SyneTactile
// | #K2D
// | #Lekton
// | #TenaliRamakrishna

// TODO: Part 2
// | #Marvel
// | #JockeyOne
// | #Petrona
// | #Sunflower
// | #EmilysCandy
// | #Montaga
// | #kronaOne
// | #epilogue
// | #balooDa2
// | #Amethysta
// | #ComicNeue
// | #Commissioner
// | #CormorantInfant
// | #Battambang
// | #Battambang
// | #Harmattan
// | #Chonburi
// | #DarkerGrotesque
// | #Alike
// | #ZCOOLXiaoWei
// | #B612
// | #Alatsi
// | #AveiraLibre
// | #GoudyBookletter1911
// | #DavidLibre
// | #XanhMono
// | #TurretRoad
// | #StardosStencil
// | #Inder

// TODO: Part 3
// | #Gabriela
// | #SedgwickAve
// | #IMFellEnglish
// | #Frijole
// | #Kufam
// | #SueEllenFrancisco
// | #Mate
// | #Jua
// | #AnticDidone
// | #Gurajada
// | #NewRocker
// | #CevicheOne
// | #OleoScriptSwashCaps
// | #Buenard
// | #SpectralSC
// | #Esteban
// | #MrDeHaviland
// | #BowlbyOne
// | #Balthazar
// | #Mirza
// | #ChelseaMarket
// | #RammettoOne
// | #Manjari

// TODO: Part 4
// | #ShortStack
// | #Mandali
// | #Belgrano
// | #RougeScript
// | #Baumans
// | #Podkova
// | #FingerPaint
// | #Megrim
// | #CormorantSC
// | #FreckleFace
// | #Brawler
// | #BalooTamma2
// | #Convergence
// | #DawningOfANewDay
// | #FanwoodText
// | #GravitasOne
// | #VastShadow
// | #Skranji
// | #AlikeAngular
// | #BilboSwashCaps
// | #PatrickHandSC
// | #Limelight
// | #BioRhyme
// | #Quando

// TODO: Part 5
// | #Qwigley
// | #McLaren
// | #Goldman
// | #Oregano
// | #Bellefair
// | #KumbhSans
// | #Anaheim
// | #HappyMonkey
// | #BalooThambi2
// | #MountainsOfChristmas
// | #Numans
// | #Rasa
// | #B612Mono
// | #Sarpanch
// | #Montez
// | #Timmana
// | #WaitingForTheSunrise
// | #Rakkas
// | #BungeeShade
// | #ProzaLibre
// | #AguafinaScript
// | #RedRose
// | #VesperLibre
// | #Fondamento
// | #LibreBarcode39
// | #Galada
// | #Zeyada
// | #ClickerScript
// | #Andika
// | #FiraCode

// TODO: Part 6
// | #BeVietnam
// | #MaShanZheng
// | #LexendMega
// | #Manuale
// | #GrenzeGotisch
// | #Unkempt
// | #DenkOne
// | #Gaegu
// | #GiveYouGlory
// | #EncodeSansSemiCondensed
// | #Cambo
// | #CraftyGirls
// | #ArefRuqaa
// | #NTR
// | #FasterOne

// TODO: Part 7
// | #Meddon
// | #MeeraInimai
// | #Iceland
// | #ExpletusSans
// | #Pavanam
// | #MouseMemoirs
// | #Mansalva
// | #Atma
// | #LifeSavers
// | #EuphoriaScript
// | #HeptaSlab
// | #Sora
// | #IMFellDWPica
// | #Geo
// | #NovaMono
// | #Orienta
// | #Tienne
// | #EncodeSansExpanded
// | #Livvic
// | #VollkornSC
// | #Federo
// | #InknutAntiqua
// | #Katibeh
// | #Sail
// | #WendyOne
// | #CarroisGothicSC
// | #Ledger

// TODO: Part 8
// | #ShareTech
// | #OverTheRainbow
// | #Ranchers
// | #Caladea
// | #UnifrakturCook
// | #UnifrakturCook
// | #Tauri
// | #CherryCreamSoda
// | #Strait
// | #Mako
// | #Englebert
// | #IMFellEnglishSC
// | #WalterTurncoat
// | #MontserratSubrayada
// | #Metamorphous
// | #Asul
// | #Calistoga
// | #DeliusSwashCaps
// | #Sumana
// | #Artifika
// | #Amarante
// | #Codystar
// | #Koulen
// | #AveriaSansLibre
// | #CantoraOne
// | #TradeWinds
// | #HiMelody
// | #Salsa
// | #Imprima
// | #Shojumaru
// | #Flamenco
// | #ZCOOLQingKeHuangYou
// | #Peralta
// | #PollerOne
// | #DMMono

// TODO: Part 9
// | #MuseoModerno
// | #Puritan
// | #Notable
// | #Voces
// | #ScopeOne
// | #NovaFlat
// | #CormorantUpright
// | #LovedByTheKing
// | #Farsan
// | #LilyScriptOne
// | #Gafata
// | #SpicyRice
// | #Tillana
// | #NovaSquare
// | #ProstoOne
// | #VampiroOne
// | #NovaRound
// | #BubblerOne
// | #TheGirlNextDoor
// | #HeadlandOne
// | #MuktaMahee
// | #FontdinerSwanky
// | #Italiana
// | #FjordOne
// | #Slackey
// | #CherrySwash
// | #Arya
// | #PortLligatSans
// | #MedulaOne
// | #Fresca
// | #Dokdo
// | #JustMeAgainDownHere
// | #Milonga
// | #Bilbo

// TODO: Part 10
// | #MacondoSwashCaps
// | #Dynalight
// | #Ribeye
// | #Vibur
// | #LexendZetta
// | #IMFellFrenchCanonSC
// | #Mina
// | #Elise
// | #MateSC
// | #Coiny
// | #DeliusUnicase
// | #Sura
// | #PirataOne
// | #Kranky
// | #YeonSung
// | #Chicle
// | #GermaniaOne
// | #Ranga
// | #RuslanDisplay
// | #PortLligatSlab
// | #Paprika
// | #KiteOne
// | #Eater
// | #Oxanium
// | #LeagueScript
// | #YatraOne
// | #BighShouldersText
// | #BalooBhaina2
// | #Almendra
// | #HennyPenny

// TODO: Part 11
// | #Farro
// | #WireOne
// | #Habibi
// | #Khmer
// | #TextMeOne
// | #Shanti
// | #LoversQuarrel
// | #GamjaFlower
// | #EncodeSansSemiExpanded
// | #Julee
// | #AveiraGruesaLibre
// | #BellotaText
// | #Kodchasan
// | #Stalemate
// | #Ramaraja
// | #Moul
// | #SwankyAndMooMoo
// | #Cagliostro
// | #HanaleiFill
// | #Rosarivo
// | #Modak
// | #LibreBarcode39ExtendedText
// | #Angkor
// | #Bayon

// TODO: Part 12
// | #IMFellFrenchCanon
// | #Quintessential
// | #Fenix
// | #Crushed
// | #SongMyung
// | #KottaOne
// | #Mogra
// | #ZCOOLKuaiLe
// | #Rationale
// | #StintUltraCondensed
// | #MysteryQuest
// | #Stylish
// | #SonsieOne
// | #Prociono
// | #Buda
// | #Nokora
// | #Ruluko
// | #Stoke
// | #KoHo
// | #MajorMonoDisplay
// | #EastSeaDokdo
// | #Chamonman
// | #Underdog
// | #ZillaSlabHighlight
// | #Dekko
// | #Simonetta
// | #BalooBhai2
// | #UncialAntiqua
// | #SairaStencilOne

// TODO: Part 13
// | #Asar
// | #Sancreek
// | #InriaSerif
// | #OverlockSC
// | #KumarOne
// | #BalooPaaji2
// | #Margarine
// | #Nosifer
// | #StintUltraExpanded
// | #ElsieSwashCaps
// | #Chango
// | #Iceberg
// | #Metal
// | #DellaRespira
// | #Tomorrow
// | #Fahkwang
// | #Chathura
// | #MarkoOne
// | #Rowdies
// | #Offside
// | #Solway
// | #Akronim
// | #LexendExa
// | #Sarina
// | #LakkiReddy
// | #Barrio
// | #DonegalOne
// | #IMFellGreatPrimer
// | #Bellota
// | #BigelowRules
// | #Dorsa

// TODO: Part 14
// | #LondrinaOutline
// | #IbarraRealNova
// | #RumRaisin
// | #Wellfleet
// | #Condiment
// | #MeieScript
// | #Redressed
// | #AtomicAge
// | #Junge
// | #IMFellDWPicaSC
// | #CroissantOne
// | #TulpenOne
// | #AutourOne
// | #CormorantUnicase
// | #Spirax
// | #Arbutus
// | #Smythe
// | #Gayathri
// | #EagleLake
// | #JotiOne
// | #LindenHill
// | #Ruthie
// | #Monofett
// | #Griffy
// | #Kavoon
// | #Miniver
// | #LibreCaslonDisplay
// | #ModernAntiqua
// | #Jomolhari

// TODO: Part 15
// | #MaidenOrange
// | #ChelaOne
// | #MissFajardose
// | #SreeKrushnadevaraya
// | #CuteFont
// | #Gotu
// | #Trykker
// | #Sahitya
// | #SirinStencil
// | #BalooTammudu2
// | #GlassAntiqua
// | #GoblinOne
// | #Srisakdi
// | #Inika
// | #LibreBarcode39Text
// | #KulimPark
// | #SeymourOne
// | #JacquesFrancoisShadow
// | #OdorMeanChey
// | #BigshotOne
// | #Felipa
// | #MetalMania
// | #Diplomata
// | #Contnet
// | #LibreBarcode39Extended
// | #Piedra
// | #Devonshire
// | #Romanesco
// | #InriaSans
// | #OldenBurg

// TODO: Part 16
// | #RibeyeMarrow
// | #Asset
// | #Kavivanar
// | #Ewert
// | #Molle
// | #Flavors
// | #JollyLodger
// | #Lancelot
// | #PoorStory
// | #Snippet
// | #PrincessSofia
// | #Chilanka
// | #Bokor
// | #BethEllen
// | #Revalia
// | #CaesarDressing
// | #Girassol
// | #LondrinaShadow
// | #ViaodaLibre
// | #MedievalSharp
// | #DrSugiyama
// | #DiplomataSC
// | #AlmendraSC
// | #LibreBarcode128Text
// | #JimNightshade
// | #Bahiana
// | #MrsSheppards
// | #Galdeano

// TODO: Part 17
// | #Plaster
// | #KeaniaOne
// | #Gupter
// | #SulphurPoint
// | #IMFellGreatPrimerSC
// | #GFSNeohellenic
// | #BungeeOutline
// | #Peddana
// | #Risque
// | #StalinistOne
// | #OdibeeSans
// | #Recursive
// | #SupermercadoOne
// | #Barriecito
// | #Galindo
// | #KumarOneOutline
// | #Smokum
// | #EmblemaOne
// | #AlmendraDisplay
// | #LexendGiga
// | #PurplePurse
// | #SedgwickAveDisplay
// | #SnowburstOne

// TODO: Part 18
// | #JacquesFrancois
// | #NovaSlim
// | #IrishGrover
// | #MrBedfort
// | #BlackAndWhitePicture
// | #Macondo
// | #IMFellDoublePicaSC
// | #FascinateInline
// | #Sunshiney
// | #RaviPrakash
// | #BungeeHairline
// | #RugeBoogie
// | #Trochut
// | #LexendTera
// | #LexendPeta
// | #LiuJianMaoCao
// | #Federant
// | #EricaOne
// | #ButterflyKids
// | #KirangHaerang
// | #ZhiMangXing
// | #Gidugu
// | #Grenze
// | #Unlock
// | #Vibes
// | #Bonbon
// | #NovaScript
// | #Bahianita
// | #Sevillana
// | #Lacquer
// | #Astloch
// | #NovaOval
// | #NovaCut

// TODO: Part 19
// | #GeostarFill
// | #MiltonianTattoo
// | #Langar
// | #PasseroOne
// | #Fascinate
// | #Butcherman
// | #Miltonian
// | #Aubrey
// | #SofadiOne
// | #Combo
// | #LongCang
// | #Fruktur
// | #Suravaram
// | #Geostar
// | #BioRhymeExpanded
// | #Warnes
// | #SingleDay
// | #Dhurjati
// | #Kenia

let tovalue = fontName =>
  switch fontName {
  | #Roboto => "Roboto"
  | #PottaOne => "Potta One"
  | #YuseiMagic => "Yusei Magic"
  | #OpenSans => "Open Sans"
  | #HachiMaruPop => "Hachi Maru Pop"
  | #NotoSansJP => "Noto Sans JP"
  | #Lato => "Lato"
  | #Montserrat => "Montserrat"
  | #Fraunces => "Fraunces"
  | #RobotoCondensed => "Roboto Condensed"
  | #SourceSansPro => "Source Sans Pro"
  | #Oswald => "Oswald"
  | #LondrinaSolid => "Londrina Solid"
  | #Poppins => "Poppins"
  | #RobotoMono => "Roboto Mono"
  | #NotoSans => "Noto Sans"
  | #Raleway => "Raleway"
  | #Imbue => "Imbue"
  | #Ubuntu => "Ubuntu"
  | #PTSans => "PT Sans"
  | #RobotoSlab => "Roboto Slab"
  | #Merriweather => "Merriweather"
  | #PlayfairDisplay => "Playfair Display"
  | #Lora => "Lora"
  | #Nunito => "Nunito"
  | #OpenSansCondensed => "Open Sans Condensed"
  | #NotoSansKR => "Noto Sans KR"
  | #Rubik => "Rubik"
  | #PTSerif => "PT Serif"
  | #CodaCaption => "Coda Caption"
  | #NotoSerif => "Noto Serif"
  | #WorkSans => "Work Sans"
  | #NotoSansTC => "Noto Sans TC"
  | #FiraSans => "Fira Sans"
  | #NanumGothic => "Nanum Gothic"
  | #NunitoSans => "Nunito Sans"
  | #TitilliumWeb => "Titillium Web"
  | #Quicksand => "Quicksand"
  | #HindSiligur => "Hind Siliguri"
  | #BodoniModa => "Bodoni Moda"
  | #Slabo27px => "Slabo 27px"
  | #Mukta => "Mukata"
  | #Karla => "Karla"
  | #Barlow => "Barlow"
  | #Inconsolata => "Inconsolata"
  | #Heebo => "Heebo"
  | #Oxygen => "Oxygen"
  | #SourceCodePro => "Source Code Pro"
  | #Hanalei => "Hanalei"
  | #Inter => "Inter"
  | #JosefinSans => "Josefin Sans"
  | #PTSansNarrow => "PT Sans Narrow"
  | #Dosis => "Dosis"
  | #Arimo => "Arimo"
  | #LibreFranklin => "Libre Franklin"
  | #LibreBaskerville => "Libre Baskerville"
  | #YanoneKaffeesatz => "Yanone Kaffeesatz"
  | #Cabin => "Cabin"
  | #Anton => "Anton"
  | #BigShouldersDisplay => "Big Shoulders Display"
  | #BebasNeue => "Bebas Neue"
  | #NotoSansSC => "Noto Sans SC"
  | #Bitter => "Bitter"
  | #CrimsonText => "Crimson Text"
  | #IBMPlexSans => "IBM Plex Sans"
  | #Lobster => "Lobster"
  | #Abel => "Abel"
  | #DancingScript => "DancingScript"
  | #Hind => "Hind"
  | #FjallaOne => "Fjalla One"
  | #SourceSerifPro => "Source Serif Pro"
  | #NotoSansHK => "Noto Sans HK"
  | #Comfortaa => "Comfortaa"
  | #VarelaRound => "Varela Round"
  | #IndieFlower => "Indie Flower"
  | #ZillaSlab => "Zilla Slab"
  | #AnticSlab => "Antic Slab"
  | #Arvo => "Arvo"
  | #BarlowCondensed => "Barlow Condensed"
  | #Pacifico => "Pacifico"
  | #Cairo => "Cairo"
  | #Kanit => "Kanit"
  | #Exo2 => "Exo 2"
  | #MerriweatherSans => "Merriweather Sans"
  | #Syne => "Syne"
  | #Asap => "Asap"
  | #ArchitectsDaughter => "Architects Daughter"
  | #Overpass => "Overpass"
  | #ShadowsIntoLight => "Shadows Into Light"
  | #EBGaramond => "EB Garamond"
  | #Teko => "Teko"
  | #HindiMadurai => "Hind Madurai"
  | #ArchivoNarrow => "Archivo Narrow"
  | #Questrial => "Questrial"
  | #Prompt => "Prompt"
  | #BalsamiqSans => "Balsamiq Sans"
  | #AbrilFatface => "Abril Fatface"
  | #MavenPro => "Maven Pro"
  | #DMSans => "DM Sans"

  | #Gorditas => "Gorditas"
  | #Assistant => "Assistant"
  | #Martel => "Martel"
  | #Acme => "Acme"
  | #FredokaOne => "Fredoka One"
  | #CormorantGaramond => "Cormorant Garamond"
  | #AmaticSC => "Amatic SC"
  | #IBMPlexSerif => "IBM Plex Serif"
  | #Play => "Play"
  | #PermanentMarker => "Permanent Marker"
  | #Catamaran => "Catamaran"
  | #FiraSansCondensed => "Fira Sans Condensed"
  | #Caveat => "Caveat"
  | #Rajdhani => "Rajdhani"
  | #Domine => "Domine"
  | #BreeSerif => "BreeSerif"
  | #Satisfy => "Satisfy"
  | #Signika => "Signika"
  | #Exo => "Exo"
  | #AlfaSlabOne => "Alfa Slab One"
  | #NotoSerifJp => "Noto Serif JP"
  | #Righteous => "Righteous"
  | #PatrickHand => "Patrick Hand"
  | #ABeeZee => "ABeeZee"
  | #Tajawal => "Tajawal"
  | #Mulish => "Mulish"
  | #PTSansCaption => "PT Sans Caption"
  | #NanumMyeongjo => "Nanum Myeongjo"
  | #Cinzel => "Cinzel"
  | #Archivo => "Archivo"
  | #CarterOne => "Carter One"
  | #PatuaOne => "Patua One"
  | #CreteRound => "Create Round"
  | #Amiri => "Amiri"
  | #Vollkorn => "Vollkorn"
  | #Monda => "Monda"
  | #SquadaOne => "Squada One"
  | #RussoOne => "Russo One"
  | #Courgette => "Courgette"
  | #FrankRuhlLibre => "Frank Ruhl Libre"
  | #BarlowSemiCondensed => "Barlow Semi Condensed"
  | #AlegreyaSans => "Alegreya Sans"
  | #UbuntuCondensed => "Ubuntu Condensed"
  | #LobsterTwo => "Lobster Two"
  | #Yantramanav => "Yantramanav"
  | #FrancoisOne => "Francois One"
  | #Tinos => "Tinos"
  | #Changa => "Changa"
  | #LuckiestGuy => "Luckiest Guy"
  | #Sarabun => "Sarabun"
  | #JetBrainsMono => "JetBrains Mono"
  | #Alegreya => "Alegreya"
  | #ArchivoBlack => "Archivo Black"
  | #KaushanScript => "Kaushan Script"
  | #Staatliches => "Staatliches"
  | #Cardo => "Cardo"
  | #MPLUSRounded1c => "M PLUS Rounded 1c"
  | #IBMPlexMono => "IBM Plex Mono"
  | #Kalam => "Kalam"
  | #GreatVibes => "Great Vibes"
  | #Cuprum => "Cuprum"
  | #MPLUS1p => "M PLUS 1p"
  | #OriginalSurfer => "Original Surfer"
  | #Spartan => "Spartan"
  | #GloriaHallelujah => "Gloria Hallelujah"
  | #PathwayGothicOne => "Pathway Gothic One"
  | #Almarai => "Almarai"
  | #HindGuntur => "Hind Guntur"
  | #Sacramento => "Sacramento"
  | #NoticiaText => "Noticia Text"
  | #Ultra => "Ultra"
  | #ConcertOne => "Concert One"
  | #DidactGothic => "Didact Gothic"
  | #Rokkitt => "Rokkitt"
  | #Parisienne => "Parisienne"
  | #Volkhov => "Volkhov"
  | #Baloo2 => "Baloo 2"
  | #QuattrocentoSans => "Quattrocento Sans"
  | #EncodeSans => "Encode Sans"
  | #Varta => "Varta"
  | #PassionOne => "Passion One"
  | #SairaCondensed => "Saira Condensed"
  | #Prata => "Prata"
  | #Cantarell => "Cantarell"
  | #NewsCycle => "News Cycle"
  | #Padauk => "Paduk"
  | #OldStandardTT => "Old Standard TT"
  | #Orbitron => "Orbitron"
  | #Manrope => "Manrope"
  | #Chivo => "Chivo"
  | #Arapey => "Arapey"
  | #MontserratAlternates => "Montserrat Alternates"
  | #PaytoneOne => "Paytone One"
  | #Ramabhadra => "Ramabhadra"
  | #HindVadodara => "Hind Vadodara"
  | #JosefinSlab => "Josefin Slab"
  | #SecularOne => "Secular One"
  | #Sriracha => "Sriracha"
  | #SpecialElite => "Special Elite"
  | #Quantico => "Quantico"
  | #PlayfairDisplaySC => "Playfair Display SC"
  | #Economica => "Economica"
  | #RopaSans => "Ropa Sans"
  | #IstokWeb => "Istok Web"
  | #Quattrocento => "Quattrocento"
  | #Cookie => "Cookie"
  | #ChakraPetch => "Chakra Petch"
  | #Lemonada => "Lemonada"
  | #SawarabiMincho => "Sawarabi Mincho"
  | #Yellowtail => "Yellowtail"
  | #Sanchez => "Sanchez"
  | #Handlee => "Handlee"
  | #PoiretOne => "Poiret One"
  | #PressStart2P => "Press Start 2P"
  | #AdventPro => "Advent Pro"
  | #FiraSansExtraCondensed => "Fira Sans Extra Condensed"
  | #CrimsonPro => "Crimson Pro"
  | #Spectral => "Spectral"
  | #BaiJamjuree => "Bai Jamjuree"
  | #DMSerifDisplay => "DM Serif Display"
  | #Philosopher => "Philosopher"
  | #Neuton => "Neuton"
  | #Bangers => "Bangers"
  | #Viadaloka => "Viadaloka"
  | #HammersmithOne => "Hammersmith One"
  | #AndikaNewBasic => "Andika New Basic"
  | #Cormorant => "Cormorant"
  | #AsapCondensed => "Asap Condensed"
  | #RedHatDisplay => "Red Hat Display"
  | #Ruda => "Ruda"
  | #PublicSans => "Public Sans"
  | #Karma => "Krama"
  | #Taviraj => "Taviraj"
  | #DMSerifText => "DM Serif Text"
  | #Monoton => "Monoton"
  | #UnicaOne => "Unica One"
  | #Jura => "Jura"
  | #Faustina => "Faustina"
  | #Alice => "Alice"
  | #PragatiNarrow => "Pragati Narrow"
  | #Neucha => "Neucha"
  | #Texturina => "Texturina"
  | #NotoSerifTC => "Noto Serif TC"
  | #Jost => "Jost"
  | #Gudea => "Gudea"
  | #Jaldi => "Jaldi"
  | #Saira => "Saira"

  | #Merienda => "Merienda"
  | #GothicA1 => "Gothic A1"
  | #SigmarOne => "Sigmar One"
  | #CabinCondensed => "Cabin Condensed"
  | #HomemadeApple => "Homemade Apple"
  | #Khand => "Khand"
  | #Unna => "Unna"
  | #Mitr => "Mitr"
  | #GentiumBasic => "Gentium Basic"
  | #BenchNine => "BenchNine"
  | #Amaranth => "Amaranth"
  | #PontanoSans => "Pontano Sans"
  | #SpaceMono => "Space Mono"
  | #Actor => "Actor"
  | #Armata => "Armata"
  | #Viga => "Viga"
  | #PTMono => "PTMono"
  | #Aleo => "Aleo"
  | #Palanquin => "Palanquin"
  | #Tangerine => "Tangerine"
  | #JuliusSansOne => "Julius Sans One"
  | #SuezOne => "Suez One"
  | #Lusitana => "Lusitana"
  | #YesevaOne => "Yeseva One"
  | #GentiumBookBasic => "Gentium Book Basic"
  | #RockSalt => "Rock Salt"
  | #MarckScript => "Marck Script"
  | #Knewave => "Knewave"
  | #Allura => "Allura"
  | #Playball => "Playball"
  | #BadScript => "Bad Script"
  | #Allan => "Allan"

  | #SawarabiGothic => "Sawarabi Gothic"
  | #Audiowide => "Audiowide"
  | #Marcellus => "Marcellus"
  | #FugazOne => "Fugaz One"
  | #Gruppo => "Gruppo"
  | #GochiHand => "Gochi Hand"
  | #TenorSans => "Tenor Sans"
  | #NerkoOne => "Nerko One"
  | #Alef => "Alef"
  | #NanumPenScript => "Nanum Pen Script"
  | #SairaSemiCondensed => "Saira Semi Condensed"
  | #MarkaziText => "Markazi Text"
  | #Pangolin => "Pangolin"
  | #Gelasio => "Gelasio"
  | #Castoro => "Castoro"
  | #NothingYouCouldDo => "Nothing You Could Do"
  | #Varela => "Varela"
  | #ShadowsIntoLightTwo => "Shadows Into Light Two"
  | #NotoSerifSC => "Noto Serif SC"
  | #Eczar => "Eczar"
  | #AlexBrush => "AlexBrush"
  | #Mali => "Mali"
  | #Electrolize => "Electrolize"
  | #SignikaNegative => "Signika Negative"
  | #Itim => "Itim"
  | #AbhayaLibre => "Abhaya Libre"
  | #NanumGothicCoding => "Nanum Gothic Coding"
  | #Rufina => "Rufina"
  | #EncodeSansCondensed => "Encode Sans Condensed"
  | #Bungee => "Bungee"
  | #SortsMillGoudy => "Sorts Mill Goudy"
  | #CantataOne => "Cantata One"
  | #Aclonica => "Aclonica"
  | #Engagement => "Engagement"
  | #MrDafoe => "MrDafoe"
  | #Damion => "Damion"
  | #Antic => "Antic"
  | #Sarala => "Sarala"
  | #Arsenal => "Arsenal"

  | #BowlbyOneSC => "Bowlby One SC"
  | #BigShouldersStencilText => "Big Shoulders Stencil Text"
  | #BigShouldersStencilDisplay => "Big Shoulders Stencil Display"
  | #BigShouldersInlineText => "Big Shoulders Inline Text"
  | #BigShouldersInlineDisplay => "Big Shoulders Inline Display"
  | #BlackOpsOne => "Black Ops One"
  | #OleoScript => "Oleo Script"
  | #LilitaOne => "Lilita One"
  | #PinyonScript => "Pinyon Script"
  | #Sintony => "Sintony"
  | #BalooChettan2 => "Baloo Chettan 2"
  | #CoveredByYourGrace => "Covered By Your Grace"
  | #Krub => "Krub"
  | #Glegoo => "Glegoo"
  | #Cousine => "Cousine"
  | #FiraMono => "Fira Mono"
  | #Lateef => "Lateef"
  | #Lalezar => "Lalezar"
  | #LibreBarcodeEAN13Text => "Libre Barcode EAN13 Text"
  | #Jomhuria => "Jomhuria"
  | #Overlock => "Overlock"
  | #Boogaloo => "Boogaloo"
  | #CutiveMono => "Cutive Mono"
  | #SairaExtraCondensed => "Saira Extra Condensed"

  | #Alata => "Alata"
  | #Average => "Average"
  | #Sofia => "Sofia"
  | #Rancho => "Rancho"
  | #Caudex => "Caudex"
  | #ReemKufi => "Reem Kufi"
  | #PTSerifCaption => "PT Serif Caption"
  | #Pridi => "Pridi"
  | #RubikMonoOne => "Rubik Mono One"
  | #Kreon => "Kreon"
  | #KosugiMaru => "Kosugi Maru"
  | #Enriqueta => "Enriqueta"
  | #NotoSerifKR => "Noto Serif KR"
  | #Coda => "Coda"
  | #Chewy => "Chewy"
  | #CourierPrime => "Courier Prime"
  | #DoHyeon => "Do Hyeon"
  | #Allerta => "Allerta"
  | #SpaceGrotesk => "Space Grotesk"
  | #Yrsa => "Yrsa"
  | #AlegreyaSansSC => "Alegreya Sans SC"
  | #Schoolbell => "Schoolbell"
  | #Laila => "Laila"
  | #AnonymousPro => "Anonymous Pro"
  | #Syncopate => "Syncopate"
  | #Scheherazade => "Scheherazade"
  | #FrederickatheGreat => "Fredericka the Great"
  | #Capriola => "Capriola"
  | #MiriamLibre => "Miriam Libre"
  | #Niconne => "Niconne"
  | #ShareTechMono => "Share Tech Mono"
  | #Michroma => "Michroma"
  | #AveriaSerifLibre => "Averia Serif Libre"
  | #MartelSans => "Martel Sans"
  | #Piazzolla => "Piazzolla"
  | #OverpassMono => "Overpass Mono"
  | #Candal => "Candal"
  | #CaveatBrush => "Caveat Brush"
  | #Kameron => "Kameron"
  | #Basic => "Basic"
  | #Aldrich => "Aldrich"
  | #LibreBarcode128 => "Libre Barcode 128"

  | #ArbutusSlab => "Arbutus Slab"
  | #Trispace => "Trispace"
  | #Italianno => "Italianno"
  | #NixieOne => "Nixie One"
  | #BlackHanSans => "Black Han Sans"
  | #Bevan => "Bevan"
  | #Mallanna => "Mallanna"
  | #ReenieBeanie => "Reenie Beanie"
  | #LexendDeca => "Lexend Deca"
  | #Sansita => "Sansita"
  | #BerkshireSwash => "Berkshire Swash"
  | #Molengo => "Molengo"
  | #CabinSketch => "Cabin Sketch"
  | #Kadwa => "Kadwa"
  | #AnnieUseYourTelescope => "Annie Use Your Telescope"
  | #RedHatText => "Red Hat Text"
  | #Bentham => "Bentham"
  | #Mada => "Mada"
  | #MuktaVaani => "Mukta Vaani"
  | #Norican => "Norican"
  | #Forum => "Forum"
  | #SixCaps => "Six Caps"
  | #JustAnotherHand => "Just Another Hand"
  | #MuktaMalar => "Mukta Malar"
  | #DaysOne => "Days One"

  | #Rambla => "Rambla"
  | #ArimaMandurai => "Arima Madurai"
  | #Charm => "Charm"
  | #VT323 => "VT323"
  | #Scada => "Scada"
  | #LeckerliOne => "Leckerli One"
  | #Nobile => "Nobile"
  | #Spinnaker => "Spinnaker"
  | #Shrikhand => "Shrikhand"
  | #TitanOne => "Titan One"
  | #Telex => "Telex"
  | #ComingSoon => "Coming Soon"
  | #HoltwoodOneSC => "Holtwood One SC"
  | #MarcellusSC => "Marcellus SC"
  | #BubblegumSans => "Bubblegum Sans"
  | #Trirong => "Trirong"
  | #Suranna => "Suranna"
  | #CinzelDecorative => "Cinzel Decorative"
  | #BungeeInline => "Bungee Inline"
  | #AllertaSencil => "Allerta Stencil"
  | #ContrailOne => "Contrail One"
  | #Graduate => "Graduate"
  | #RhodiumLibre => "Rhodium Libre"
  | #RacingSansOne => "Racing Sans One"
  | #Yesteryear => "Yesteryear"
  | #Share => "Share"
  | #Thasadith => "Thasadith"
  | #Judson => "Judson"
  | #AlegreyaSC => "Alegreya SC"
  | #Rochester => "Rochester"
  | #HerrVonMullerhoff => "Herr Von Muellerhoff"
  | #ChangaOne => "Changa One"
  | #Oranienbaum => "Oranienbaum"
  | #PalanquinDark => "Palanquin Dark"
  | #Arizonia => "Arizonia"
  | #Wallpoet => "Wallpoet"
  | #IMFellDoublePica => "IM Fell Double Pica"
  | #Rye => "Rye"

  | #Literata => "Literata"
  | #Singlet => "Singlet"
  | #Biryani => "Biryani"
  | #Creepster => "Creepster"
  | #Amiko => "Amiko"
  | #Voltaire => "Voltaire"
  | #Delius => "Delius"
  | #FaunaOne => "Fauna One"
  | #Homenaje => "Homenaje"
  | #MrsSaintDelafield => "Mrs Saint Delafield"
  | #Sen => "Sen"
  | #Corben => "Corben"
  | #Lustria => "Lustria"
  | #Copse => "Copse"
  | #SansitaSwashed => "Sansita Swashed"
  | #Amita => "Amita"
  | #CarroisGothic => "Carrois Gothic"
  | #Kristi => "Kristi"
  | #Pattaya => "Pattaya"
  | #Kurale => "Kurale"
  | #Andada => "Andada"
  | #Magra => "Magra"
  | #MeriendaOne => "Merienda One"
  | #GrandHotel => "Grand Hotel"
  | #AverageSans => "Average Sans"
  | #Halant => "Halant"
  | #Marmelad => "Marmelad"
  | #OxygenMono => "Oxygen Mono"
  | #Trocchi => "Trocchi"
  | #IBMPlexSansCondensed => "IBM Plex Sans Condensed"
  }

// type notoWeights = [#v100 | #v300 | #v400 | #v500 | #v700 | #v900]

// let
