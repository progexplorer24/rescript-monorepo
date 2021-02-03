type t = [
  | #full
  | #px
  | #v0_5
  | #v1
  | #v1_5
  | #v2
  | #v2_5
  | #v3
  | #v3_5
  | #v4
  | #v5
  | #v6
  | #v7
  | #v8
  | #v9
  | #v10
  | #v11
  | #v12
  | #v14
  | #v16
  | #v18
  | #v20
  | #v24
  | #v28
  | #v32
  | #v36
  | #v40
  | #v44
  | #v48
  | #v52
  | #v56
  | #v60
  | #v64
  | #v68
  | #v72
  | #v76
  | #v80
  | #v84
  | #v88
  | #v92
  | #v96
  | #v100
  | #v104
  | #v108
  | #v112
  | #v116
  | #v120
  | #v124
  | #v128
  | #v132
  | #v136
  | #v140
  | #v144
  | #v148
  | #v152
  | #v156
  | #v160
  | #v164
  | #v168
  | #v172
  | #v176
  | #v180
  | #v184
  | #v188
  | #v192
  | #v196
  | #v200
]

let toValue = value =>
  switch value {
  | #px => #px(-1)
  | #full => #percent(-100.)
  | #v0_5 => #rem(-0.125)
  | #v1 => #rem(-0.25)
  | #v1_5 => #rem(-0.375)
  | #v2 => #rem(-0.5)
  | #v2_5 => #rem(-0.625)
  | #v3 => #rem(-0.75)
  | #v3_5 => #rem(-0.875)
  | #v4 => #rem(-1.)
  | #v5 => #rem(-1.25)
  | #v6 => #rem(-1.5)
  | #v7 => #rem(-1.75)
  | #v8 => #rem(-2.)
  | #v9 => #rem(-2.25)
  | #v10 => #rem(-2.5)
  | #v11 => #rem(-2.75)
  | #v12 => #rem(-3.)
  | #v14 => #rem(-3.5)
  | #v16 => #rem(-4.)
  | #v18 => #rem(-4.5)
  | #v20 => #rem(-5.)
  | #v24 => #rem(-6.)
  | #v28 => #rem(-7.)
  | #v32 => #rem(-8.)
  | #v36 => #rem(-9.)
  | #v40 => #rem(-10.)
  | #v44 => #rem(-11.)
  | #v48 => #rem(-12.)
  | #v52 => #rem(-13.)
  | #v56 => #rem(-14.)
  | #v60 => #rem(-15.)
  | #v64 => #rem(-16.)
  | #v68 => #rem(-17.)
  | #v72 => #rem(-18.)
  | #v76 => #rem(-19.)
  | #v80 => #rem(-20.)
  | #v84 => #rem(-21.)
  | #v88 => #rem(-22.)
  | #v92 => #rem(-23.)
  | #v96 => #rem(-24.)
  | #v100 => #rem(-25.)
  | #v104 => #rem(-26.)
  | #v108 => #rem(-27.)
  | #v112 => #rem(-28.)
  | #v116 => #rem(-29.)
  | #v120 => #rem(-30.)
  | #v124 => #rem(-31.)
  | #v128 => #rem(-32.)
  | #v132 => #rem(-33.)
  | #v136 => #rem(-34.)
  | #v140 => #rem(-35.)
  | #v144 => #rem(-36.)
  | #v148 => #rem(-37.)
  | #v152 => #rem(-38.)
  | #v156 => #rem(-39.)
  | #v160 => #rem(-40.)
  | #v164 => #rem(-41.)
  | #v168 => #rem(-42.)
  | #v172 => #rem(-43.)
  | #v176 => #rem(-44.)
  | #v180 => #rem(-45.)
  | #v184 => #rem(-46.)
  | #v188 => #rem(-47.)
  | #v192 => #rem(-48.)
  | #v196 => #rem(-49.)
  | #v200 => #rem(-50.)
  }
