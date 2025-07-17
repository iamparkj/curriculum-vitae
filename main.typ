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
      #link("https://github.com/iamparkj")[github.com/iamparkj]
    ]
  )
)

#linebreak()
#linebreak()

#grid(
    columns: (1fr, 8fr),
    align: (left, left),
    gutter: 10pt,

    v(1.5em),
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

    v(1em), v(1em),

    v(1.5em),
    grid(
      columns: (auto, auto),
      align: horizon,
      column-gutter: 10pt,
      
      text(14pt)[*Education*],
      line(length: 100%)
    ),

    text(9pt)[03/2023-],
    text(10pt)[
      *Seoul National University*, Undergraduate, Linguistics. \
      GPA: 4.0/4.3 \
      Expected Graduation: February 2028
    ],

    v(1em), v(1em),
    
    v(1.5em),
    grid(
      columns: (auto, auto),
      align: horizon,
      column-gutter: 10pt,
      
      text(14pt)[*Experiences*],
      line(length: 100%)
    ),

    text(9pt)[
      08/2024-
    ],

    align(left)[
      *Programming Research Laboratory (ROPAS)*, Research intern.

      #list(
        spacing: 1em,
        
        [ Static analysis augmented AI Python teaching assistant \
          #text(9pt)[Ongoing project] ],
        [ Simple language extension for a typed lambda language
          (#link("https://github.com/iamparkj/vsm")[iamparkj/vsm]) \
          #text(9pt)[Distributed for an SNU course _Programming Languages_] ]
      )
    ],

    v(0em), v(0em), 

    text(9pt)[
      02/2023 \
      -08/2023
    ],

    align(left)[
      *Institute of Humanities, Social Sciences and Social Science Education* \
      at Korea National University of Education,
      Research assistant.

      #list(
        [ Entered lexical entries for sinoxenic word database ]
      )
    ],

    v(0em), v(0em),

    text(9pt)[
      05/2022 \
      -10/2022
    ],

    align(left)[
      *Computational Semantics Laboratory* \
      at Korea University,
      Research assistant.

      #list(
        spacing: 1em,

        [ Generated three-sentence stories for Korean Story Cloze datasets ]
      )
    ],

    v(1em), v(1em),

    v(1.5em),
    grid(
      columns: (auto, auto),
      align: horizon,
      column-gutter: 10pt,
      
      text(14pt)[*Other Projects*],
      line(length: 100%)
    ),

    v(5.5em),
    align(left)[
      *Hapticky:* a haptic keyboard application for low vision users
      (#link("https://github.com/iamparkj/hapticky")[iamparkj/hapticky]).

      #text(9pt)[
        Hapticky is an iOS haptic-augmented keyboard app. Each key has a distinguished haptic pattern so that low-vision users can enter the keyboard more easily. It is a final project for an SNU undergraduate course _Human-Computer Interaction_.
      ]
    ],

    v(0em),
    align(left)[
      *SuperSnake:* a snake game variation with multi-stage system
      (#link("https://github.com/iamparkj/super-snake")[iamparkj/super-snake]).

      #text(9pt)[
        SuperSnake is a simple snake game which accelerates with each level, provided as a web application. Rescript React and Javalin server are used in this project. It is a final project for an SNU undergraduate course _Computer Programming_.
      ]
    ],

    v(4em), v(4em),
    
    v(1.5em),
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
      *Programming Languages* (4190.310), Teaching Assistant. SNU. \
    ],

    v(-0.7em), v(-0.7em),

    text(9pt)[
      spring 2025
    ],
    text(10pt)[
      *Basic Computing* (F37.101), Tutor. SNU. \
      Received Outstanding Tutor Award
    ],

    v(-0.7em), v(-0.7em),

    text(9pt)[
      autumn 2024
    ],
    text(10pt)[
      *Core Computing* (L0444.000500), Tutor. SNU. \
    ],

    v(-0.7em), v(-0.7em),

    text(9pt)[
      spring 2024
    ],
    text(10pt)[
      *Core Computing* (L0444.000500), Tutor. SNU. \
    ],

    v(-0.7em), v(-0.7em),

    text(9pt)[
      summer 2023
    ],
    text(10pt)[
      *Basic Computing* (L0444.000400), Tutor. SNU. \
    ],

    v(1em), v(1em),
    
    v(1.5em),
    grid(
      columns: (auto, auto),
      align: horizon,
      column-gutter: 10pt,
      
      text(14pt)[*Honours*],
      line(length: 100%)
    ),

    text(9pt)[
      02/2025
    ],
    text(10pt)[
      *Jebong Min Byeong-uk Foundation Scholarship* (full-tuition) \
      Jebong Min Byeong-uk Foundation \
    ],

    v(-0.7em), v(-0.7em),
    
    text(9pt)[
      09/2023 \
      \-02/2024
    ],
    text(10pt)[
      *Professor Fund Scholarship* \
      College of Humanities, Seoul National University \
    ],

    v(-0.7em), v(-0.7em),

    text(9pt)[
      08/2023
    ],
    text(10pt)[
      *Ku Jaeseo Scholarship* (half-tuition) \
      Seoul National University Foundation \
    ],

    v(1em), v(1em),

    v(1.5em),
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

      [ *Korean/#text(9pt)[한국어]* (native) ],
      [ *English* (fluent) ],
      [ *Spanish/Español* (intermediate) ],
      [ *German/Deutsch* (elementary) ]
    ),
)

#place(bottom + right)[
  #text(9pt)[_Last updated: 18 July 2025_]
]
