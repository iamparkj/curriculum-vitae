#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
  footer: context [
    #set align(center)
    #set text(8pt)
    #counter(page).display(
      "1",
      both: false,
    )
  ]
)

#set text(
  size: 10pt,
  font: (
    "Libertinus Serif",
    "KoPubWorldBatang_Pro"
  )
)

#show raw: set text(
  size: 9pt,
  font: "JetBrainsMono NF"
)

#show link: set text(
  size: 8pt,
  font: "JetBrainsMono NF",
)

#let icon(it) = text(
  size: 12pt,
  font: "JetBrainsMono NF",
  it
)

#grid(
  columns: (1fr, 2fr),
  align: horizon,

  align(left)[
    #text(20pt)[
      *PARK* \
      JUNYOUNG
    ]
    #v(-10pt)  
    #text(10pt, font: "KoPubWorldBatang_Pro")[
      /박준영/ 
    ]
    #text(10pt, font: "Libertinus Serif")[
      [pɐk t͡ɕu.nʲʌ̹ŋ]
    ]
  ],

  grid(
    columns: (1fr, auto),
    gutter: 11pt,
    align: center,

    align(right)[
      #icon[]
    ], 

    align(left)[
      #link("bloomwayz@snu.ac.kr")`,` \
      #link("jypark@ropas.snu.ac.kr")
    ],

    align(right)[
      #icon[󰖟]
    ],

    align(left)[
      #link("https://ropas.snu.ac.kr/~jypark")[ropas.snu.ac.kr/\~jypark]
      
    ],

    align(right)[
      #icon[]
    ], 

    align(left)[
      #link("https://github.com/bloomwayz")[github.com/bloomwayz]
    ]
  )
)

#linebreak()
#linebreak()

#grid(
    columns: (1fr, 8fr),
    align: (left, left),
    gutter: 20pt,

    h(1cm),
    grid(
      columns: (auto, auto),
      align: horizon,
      column-gutter: 10pt,
      
      text(14pt)[*Education*],
      line(length: 100%)
    ),

    text(9pt)[03/2023-],
    text(10pt)[
      *Seoul National University* \
      Undergraduate, Linguistics \
      Seoul, Korea
    ],

    h(1cm),
    h(1cm),

    h(1cm),
    grid(
      columns: (auto, auto),
      align: horizon,
      column-gutter: 10pt,
      
      text(14pt)[*Interests*],
      line(length: 100%)
    ),

    h(1cm),
    list(
      spacing: 1em,

      [ Programming Languages ],
      [ Static Analysis ],
      [ Human Factors in Programming Languages ]
    ),

    h(1cm),
    h(1cm),
    
    h(1cm),
    grid(
      columns: (auto, auto),
      align: horizon,
      column-gutter: 10pt,
      
      text(14pt)[*Experience*],
      line(length: 100%)
    ),

    text(9pt)[
      08/2024-
    ],

    align(left)[
      *Programming Research Laboratory (ROPAS)* \
      Research intern \
      Seoul, Korea
    ],

    h(1cm),
    h(1cm),

    h(1cm),
    grid(
      columns: (auto, auto),
      align: horizon,
      column-gutter: 10pt,
      
      text(14pt)[*Projects*],
      line(length: 100%)
    ),

    h(1cm),

    align(left)[
      #list(
        spacing: 1.5em,
        [ Haptic Keyboard for Blind or Low-vision Users
          (#link("https://github.com/bloomwayz/hapticky")[bloomwayz/hapticky])
          - Final project for SNU _Human-Computer Interaction_ ],
        [ Language extension for typed lambda language M
          (#link("https://github.com/bloomwayz/vsm")[bloomwayz/mlang]) ]
      )
    ],

    h(1cm),
    h(1cm),
    
    h(1cm),
    grid(
      columns: (auto, auto),
      align: horizon,
      column-gutter: 10pt,
      
      text(14pt)[*Teaching*],
      line(length: 100%)
    ),

    text(9pt)[
      spring 2025
    ],
    text(10pt)[
      *Programming Lanuguages* (4190.310), Teaching Assistant. SNU. \
    ],

    text(9pt)[
      spring 2025
    ],
    text(10pt)[
      *Basic Computing* (F37.101), Tutor. SNU. \
      Received Outstanding Tutor Award
    ],

    text(9pt)[
      autumn 2024
    ],
    text(10pt)[
      *Core Computing* (L0444.000500), Tutor. SNU. \
    ],

    text(9pt)[
      spring 2024
    ],
    text(10pt)[
      *Core Computing* (L0444.000500), Tutor. SNU. \
    ],

    text(9pt)[
      summer 2023
    ],
    text(10pt)[
      *Basic Computing* (L0444.000400), Tutor. SNU. \
    ],

    v(1cm),
    v(1cm),
    
    h(1cm),
    grid(
      columns: (auto, auto),
      align: horizon,
      column-gutter: 10pt,
      
      text(14pt)[*Honors*],
      line(length: 100%)
    ),

    text(9pt)[
      02/2025
    ],
    text(10pt)[
      *Jebong Min Byeong-uk Foundation Scholarship* (Full-tuition) \
      Jebong Min Byeong-uk Foundation \
    ],
    
    text(9pt)[
      09/2023 \
      \-02/2024
    ],
    text(10pt)[
      *Professor Fund Scholarship* \
      College of Humanities, Seoul National University \
    ],

    text(9pt)[
      08/2023
    ],
    text(10pt)[
      *Ku Jaeseo Scholarship* (Half-tuition) \
      Seoul National University Foundation \
    ],

    h(1cm),
    h(1cm),

    h(1cm),
    grid(
      columns: (auto, auto),
      align: horizon,
      column-gutter: 10pt,
      
      text(14pt)[*Natural Languages*],
      line(length: 100%)
    ),

    h(1cm),
    list(
      spacing: 1em,

      [ *Korean/한국어* (Native) ],
      [ *English* (Fluent) ],
      [ *Spanish/Español* (Intermediate) ],
      [ *German/Deutsch* (Elementary) ]
    )
)

#place(bottom + right)[
  #text(9pt)[_Last updated: 2 June 2025_]
]
