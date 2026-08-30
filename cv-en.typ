/////////////// Page Configuration ///////////////

#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
  footer: context [
    #set align(center)
    #set text(8pt, font: "Libertinus Sans")
    #counter(page).display(
      "1",
      both: false,
    )
  ],
)


/////////////// Text Style Configuration ///////////////

// Fonts
#let serif-fonts = (
  "Libertinus Serif",
  "KoPubWorldBatang_Pro",
)

#let sans-fonts = (
  "Libertinus Sans",
  // "KoPubWorldDotum_Pro"
)

// Default text style
#set text(
  size: 10pt,
  font: serif-fonts,
)

// Sans-serif text styles
#let sans(it) = text(
  size: 10pt,
  font: sans-fonts,
)[#it]

#let sans-bold(it) = text(
  size: 10pt,
  font: sans-fonts,
  weight: "bold",
)[#it]

#let sans-sm(it) = text(
  size: 8pt,
  font: sans-fonts,
)[#it]

// For Korean texts
#show regex("[\u3131-\u318E\uAC00-\uD7A3]"): it => context {
  set text(size: text.size / 1.11)
  it
}

// Hyperlink style
#show link: set text(
  size: 8pt,
  font: "JetBrainsMono NF",
  fill: rgb(85, 12, 90),
)

// Icon style
#let icon(it) = text(
  size: 12pt,
  font: "JetBrainsMono NF",
  it,
)


/////////////// Paragraph Style Configuration ///////////////

#set par(
  leading: 0.8em,
  justify: true,
)

#set grid(
  columns: (0.88in, auto),
  align: (right, left),
  column-gutter: 0.2in,
)

#set list(
  spacing: .9em,
)


/////////////// CV Components ///////////////

#let header(title) = grid(
  v(1em),

  grid(
    columns: (auto, auto),
    align: horizon,
    column-gutter: 10pt,

    text(12pt, font: sans-fonts, weight: "bold")[#title], line(length: 100%),
  ),
)

#let plain-content(it) = grid(
  v(1em),

  it,

  v(1.5em),
)

#let bullet-content(..entries) = grid(
  v(1em),

  for entry in entries.pos() [
    - #entry
  ],

  v(1.5em),
)

#let timeline-entry(
  date: "",
  title: "",
  position: "",
  body: none,
  end: false,
) = grid(
  [
    #v(.1em)
    #sans-sm[#date]
  ],
  [
    #sans-bold(title)
    #text(style: "italic")[#position]
    #v(-.3em)
    #body
  ],

  if end [ #v(1.5em) ] else [ #v(.5em) ],
)


/////////////// Macros ///////////////

// Webpage hyperlinks
#let https(url) = link("https://" + url)[#url]

// GitHub hyperlinks
#let github(repo) = link("https://github.com/" + repo)[#repo]
#let github-icon(repo) = link("https://github.com/" + repo)[
  #text(11pt, baseline: 0.5pt, fill: black)[]
]

// DOI hyperlinks
#let doi(code, author, year) = link(
  "https://doi.org/" + code,
)[
  #text(size: 10pt, font: "Libertinus Serif")[
    #show "et al.": set text(style: "italic")
    #author (#year) #h(-1pt)
  ]
]

// LaTeX
// © 2023 Ruben Felgenhauer
#let LaTeX = {
  let A = (
    offset: (
      x: -0.33em,
      y: -0.3em,
    ),
    size: 0.7em,
  )
  let T = (
    x_offset: -0.12em,
  )
  let E = (
    x_offset: -0.2em,
    y_offset: 0.23em,
    size: 1em,
  )
  let X = (
    x_offset: -0.1em,
  )
  [L#h(A.offset.x)#text(size: A.size, baseline: A.offset.y)[A]#h(T.x_offset)T#h(E.x_offset)#text(size: E.size, baseline: E.y_offset)[E]#h(X.x_offset)X]
}

// C++
#let cp = (
  text(10pt)[C]
    + h(-.8pt)
    + text(
      5.5pt,
      baseline: -0.2em,
      font: "JetBrainsMono NF",
    )[+]
)
#let cpp = (
  cp
    + h(-.2pt)
    + text(
      5.5pt,
      baseline: -0.2em,
      font: "JetBrainsMono NF",
    )[+]
)


////////////// Title ///////////////

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
    align: horizon,

    align(right)[
      #icon[]
    ],

    align(left)[
      #link("bloomwayz@snu.ac.kr")
    ],

    align(right)[
      #icon[]
    ],

    align(left)[
      #github("young-52")
    ],

    align(right)[
      #icon[󰖟]
    ],

    align(left)[
      #https("junyoung.vercel.app")
    ],
  ),
)

#linebreak()
#linebreak()


/////////////// Contents ///////////////
#plain-content[
  I design interactions that help people make sense of complex computational systems.

  _*Areas*_ #h(.5em) _Human-Computer Interaction_ · _Social Computing_ · _Formal Semantics of Languages_
]

#header[Education]
#timeline-entry(
  date: [
    Mar 2023--Feb 2028 \
    (expected)
  ],
  title: "Seoul National University (SNU),",
  body: [
    _B.A. in Linguistics; B.Sc. in Computer Science & Engineering._

    GPA: 4.02/4.3
  ],
  end: true,
)

#header[Research Appointments]
#timeline-entry(
  date: [Jul 2026--],
  title: "KAIST Interaction Laboratory (KIXLAB),",
  position: "Research intern.",
  body: [
    #block[
      #show link: set text(size: 10pt, font: "Libertinus Serif")
      Advised by #link("https://juhokim.com", "Juho Kim").
    ]
  ],
)

#timeline-entry(
  date: [Oct 2025--Jul 2026],
  title: "Natural Language Processing Laboratory (SNUNLP),",
  position: "Research intern.",
  body: [
    #block[
      #show link: set text(size: 10pt, font: "Libertinus Serif")
      Advised by #link("https://knlp.snu.ac.kr/people", "Hyopil Shin") and #link("https://sanajlee.github.io", "Sangah Lee").
    ]
  ],
)

#timeline-entry(
  date: [Aug 2024--Aug 2025],
  title: "Programming Research Laboratory (ROPAS),",
  position: "Research intern.",
  body: [
    #block[
      #show link: set text(size: 10pt, font: "Libertinus Serif")
      Advised by #link("https://kwangkeunyi.snu.ac.kr", "Kwangkeun Yi").
    ]
  ],
  end: true,
)

#header[Selected Research]
#timeline-entry(
  date: [Jul 2026-- \ @ KIXLAB],
  title: "Exploring Public Opinion via LLM Agent-Based Mini-Publics",
  body: [
    Ongoing research.
  ],
)

#timeline-entry(
  date: [Apr--Jun 2026 \ @ SNUNLP],
  title: "Code Model Preferences and Predictive Cues in Array Completion",
  position: [#h(.1em)#github-icon("young-52/array-behaviour")],
  body: [
    #text(9pt)[
      - Synthesised a JavaScript dataset and compared next-token logits from code models.
      - Found that state-variable preferences were better explained by declaration-form and variable-use cues.
    ]],
)

#timeline-entry(
  date: [May--Aug 2025 \ @ ROPAS],
  title: "Static Analysis-Augmented AI Python Tutor",
  position: [#h(.1em)#github-icon("joongwon/AITA-Colab")],
  body: [
    #text(9pt)[
      - Designed prototype and user scenarios, and implemented the frontend--backend API integration.
    ]
  ],
)

#timeline-entry(
  date: [Mar--Jun 2025],
  title: "Hapticky: Haptic-Augmented Keyboard for Low-Vision iPhone Users",
  position: [#h(.1em)#github-icon("young-52/hapticky")],
  body: [
    Final project for the SNU course _Human-Computer Interaction_.

    #text(9pt)[
      - Conducted exploratory user interviews and co-designed haptic patterns.
    ]
  ],
)

#timeline-entry(
  date: [Aug 2024--Jun 2025 \ @ ROPAS],
  title: "Language Server for M, a polymorphic-typed lambda language",
  position: [#h(.1em)#github-icon("young-52/mlang")],
  body: text(9pt)[
    - Led the implementation, including token-level type inference and editor integrations.
    - Deployed as the official development tool for the SNU course _Programming Languages_.
  ],
)

#timeline-entry(
  date: [Nov 2023--Dec 2024],
  title: "Generational Variation in Korean Lateralisation",
  body: [
    Final project for the SNU courses _Phonology_ and _Historical Linguistics_.

    #text(9pt)[
      - Designed speech-production studies and modeled phonological variation using MaxEnt Harmonic Grammar.
    ]
  ],
)

#pagebreak()

#header[Manuscript]
#timeline-entry(
  date: [Under Review],
  title: [From Simulated Citizens to Simulated Deliberation: Challenges in Representation and Interaction],
  body: [
    Chaemin Jang, Junsik Min, Jaewoo Choi, Donggyu Lee, Haiin Lee, #underline(offset: .3em)[Junyoung Park], Namhee Kim, Hyunwoo Kim, Jungwon Kim, Juho Kim, Nuri Kim, Jihee Kim

    #text(9pt)[
      _Submitted to SocialAgent @ NeurIPS 2026_
    ]
  ],
  end: true,
)

#header[Selected Honours]
#timeline-entry(
  date: [Sep 2025--Aug 2027],
  title: "Humanities Scholarship,",
  position: "SK ecoplant Co.,Ltd.",
  body: [Recognised for societal contribution; ￦2.5M scholarship per semester.],
  end: false,
)

#timeline-entry(
  date: [Jun 2025],
  title: "Outstanding Teaching Assistant Award,",
  position: "SNU College.",
  body: [SNU F37.101 _Basic Computing_.],
  end: false,
)

#timeline-entry(
  date: [Aug 2023],
  title: "Ku Jaeseo Scholarship,",
  position: "SNU Foundation.",
  body: [Recognised for academic excellence; half-tuition.],
  end: true,
)

#header[Teaching Experience]
#plain-content[
  #sans[_Undergraduate Teaching Assistant_]
]

#v(-2em)

#timeline-entry(
  date: [
    Fall 2026
  ],
  title: "SNU F37.101 Basic Computing",
)

#v(-.8em)

#timeline-entry(
  date: [
    Spring 2026
  ],
  title: "SNU F37.204 Core Computing,",
  position: "Head undergraduate TA.",
)

#v(-.8em)

#timeline-entry(
  date: [
    Fall 2025
  ],
  title: "SNU F37.204 Core Computing",
)

#v(-.8em)

#timeline-entry(
  date: [
    Spring 2025
  ],
  title: "SNU F37.101 Basic Computing,",
  position: "Outstanding Teaching Assistant Award.",
)

#v(-.8em)

#timeline-entry(
  date: [
    Spring 2025
  ],
  title: "SNU 4190.310 Programming Languages",
)

#v(-.8em)

#timeline-entry(
  date: [
    Spring/Fall 2024
  ],
  title: "SNU L0444.000500 Core Computing",
)

#v(-.8em)

#timeline-entry(
  date: [
    Summer 2023
  ],
  title: "SNU L0444.000400 Basic Computing",
  end: true,
)

#header[Development Experience]
#timeline-entry(
  date: [Dec 2025--Jun 2026],
  title: [Moiming,],
  position: [
    Frontend developer.
    #h(.1em)
    #github-icon("wafflestudio/moiming-web")
  ],
  body: [
    A web service for easy first-come, first-served event registration. \
    Originally developed for SNU Running Crew.
  ],
)

#timeline-entry(
  date: [Nov 2025--Apr 2026],
  title: [Tour of Gradio,],
  position: [
    Frontend developer.
    #h(.1em)
    #github-icon("young-52/tour-of-gradio")
  ],
  body: [
    Designed and implemented an interactive LLM/Gradio tutorial for non-CS learners.
  ],
  end: true,
)

#header[Miscellaneous]
#timeline-entry(
  date: [Sep 2025--],
  title: "Waffle Studio,",
  position: "Frontend engineer.",
  body: [
    A development club at SNU. \
    Co-organizing a React seminar for new members in Fall 2026.
  ],
  end: false,
)

#timeline-entry(
  date: [Mar 2024--],
  title: "LnL, the residential college at SNU,",
  position: "Residential assistant.",
  body: [
    Advised freshman mentees on campus life while living alongside them in SNU Residence Hall.
  ],
  end: false,
)

#timeline-entry(
  date: [Jan 2025--Feb 2026],
  title: "Linguistics Student Association,",
  position: "Co-founder & co-director.",
  body: [
    Organized community events and student welfare initiatives, including the first Professor-Student Council on the educational environment.
  ],
  end: true,
)

#pagebreak()

#header[Skills]
#timeline-entry(
  title: "Natural Languages",
  body: [
    Korean/한국어 (native, 2003) · English (fluent, 2009) · Spanish/Español (intermediate, 2020) \
    German/Deutsch (elementary, 2024) · Korean Sign Language (elementary, 2026)
  ],
)

#timeline-entry(
  title: "I Use Frequently",
  body: [
    Python (2019) · #LaTeX (2023) · OCaml (2024) · TypeScript (2024) · Typst (2024) · React (2025)
  ],
)

#timeline-entry(
  title: "I Have Experience in",
  body: [
    C (2016) · Java (2018) · JavaScript (2024) · Swift (2025) · #cpp (2025) · ReScript (2025) · Rust (2025) \
    Next.js (2026) · Svelte/SvelteKit (2026)
  ],
)


#place(bottom + right)[
  #text(9pt)[_Last Updated: 31 Aug 2026_]
]
