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
  spacing: 1.2em,
)


/////////////// CV Components ///////////////

#let header(title) = grid(
  v(1.5em),

  grid(
    columns: (auto, auto),
    align: horizon,
    column-gutter: 10pt,

    text(12pt, font: sans-fonts, weight: "bold")[#title], line(length: 100%),
  ),
)

#let plain-content(it) = grid(
  v(1.5em),

  it,

  v(2em),
)

#let bullet-content(..entries) = grid(
  v(1.5em),

  for entry in entries.pos() [
    - #entry
  ],

  v(2em),
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

  if end [ #v(2em) ] else [ #v(1em) ],
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
  I am a senior undergraduate student in Linguistics and Computer Science at Seoul National University.
  I am fascinated by every area *where humans and computers meet*: from making developer tools more intuitive to designing AI-powered systems that support diverse users.
  I aim to improve developer experience based on natural/programming languages and HCI.

  _*Areas*_ #h(.5em) _Human-Computer Interaction_ · _Social Computing_ · _Formal Semantics of Languages_
]

#header[Education]
#timeline-entry(
  date: [Mar 2026--],
  title: "Seoul National University,",
  position: "B.Sc. in Computer Science and Engineering.",
  end: false,
)

#v(-1.4em)

#timeline-entry(
  date: [Mar 2023--],
  title: "Seoul National University,",
  position: "B.A. in Linguistics.",
  body: [
    GPA: 4.02/4.3 \
    Expected Graduation: Feb 2028
  ],
  end: true,
)

#header[Research Experience]
#timeline-entry(
  date: [Jul 2026--],
  title: "Interaction Labaoratory, KAIST,",
  position: "Research intern.",
  body: [
    #block[
      #show link: set text(size: 10pt, font: "Libertinus Serif")
      Advised by #link("https://juhokim.com", "Juho Kim").
    ]
    - Exploring public opinion via LLM-agent-based mini-public \
      #text(8pt)[ Ongoing research. ]
  ],
)

#timeline-entry(
  date: [Oct 2025--Jul 2026],
  title: "Natural Language Processing Laboratory, SNU,",
  position: "Research intern.",
  body: [
    #block[
      #show link: set text(size: 10pt, font: "Libertinus Serif")
      Advised by #link("https://knlp.snu.ac.kr/people", "Hyopil Shin") and #link("https://sanajlee.github.io", "Sangah Lee").
    ]
    - Code model preferences and predictive cues in array completion tasks #github-icon("young-52/array-behaviour") \
      #text(
        8pt,
      )[ Investigated token-level preferences of LLMs in code completion, demonstrating that apparent React Hook understanding is driven by surface cues rather than sematic comprehension. ]
    - Tour of Gradio: Gradio tutorial for beginners #github-icon("young-52/tour-of-gradio") \
      #text(
        8pt,
      )[ An LLM/Gradio education website for non-CS major students, which contains of interactive Gradio tutorials and online Gradio playground. Contributed as a frontend engineer and UI designer. ]
    - #smallcaps[Clara]: Linguistic framework for analysing customers' intent and sentiment \
      #text(
        8pt,
      )[ Developed an intent and sentiment classification taxonomy and analysed customer call data based on it. ]
  ],
)

#timeline-entry(
  date: [Aug 2024--Aug 2025],
  title: "Programming Language Laboratory, SNU,",
  position: "Research intern.",
  body: [
    #block[
      #show link: set text(size: 10pt, font: "Libertinus Serif")
      Advised by #link("https://kwangkeunyi.snu.ac.kr", "Kwangkeun Yi").
    ]
    - Static analysis augmented AI Python tutor #github-icon("joongwon/AITA-Colab") \
      #text(
        8pt,
      )[ A Chrome extension for Google Colab. I designed the UI/UX and implemented data fetching architecture. ]
    - M language server and extension #github-icon("young-52/mlang") \
      #text(
        8pt,
      )[ Developed a language server for polymorphic-typed lambda language M, featuring token-wise type inference and semantic highlighting. Deployed as an official tool for the SNU course _Programming Languages_. ]
  ],
  end: true,
)

#pagebreak()

#header[Projects]
#timeline-entry(
  date: [Dec 2025--Jun 2026],
  title: [Moiming,],
  position: [
    Frontend developer
    #h(.1em)
    #github-icon("wafflestudio/moiming-web")
  ],
  body: [
    A web service for creating and managing first-come-first-served events.

    #set text(8pt)
    - Contributed to early-stage UI/UX ideation.
    - Implemented core web interfaces and developed authentication and event creation modules.
    - Built a CI/CD pipeline via GitHub Actions to automate code quality checks and deployment to AWS S3 and CloudFront.
  ],
)

#timeline-entry(
  date: [Mar 2025--Jun 2025],
  title: "Haptic-Augmented Keyboard for Low Vision Users",
  position: github-icon("young-52/hapticky"),
  body: [
    Final project for the SNU  course _Human-Computer Interaction_.

    #set text(8pt)
    - Designed distinct haptic patterns and assigned them to keys to improve texting experiences.
    - Participated in designing UI and developing the iOS application.
  ],
  end: true,
)

#header[Selected Honours]
#timeline-entry(
  date: [Sep 2025--Aug 2027],
  title: "Humanities Scholarship,",
  position: "SK ecoplant Co.,Ltd.",
  body: [Recognized for societal contribution; ￦2.5M scholarship per semester.],
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
  body: [Recognized for academic excellence; half-tuition.],
  end: true,
)

#header[Teaching Experience]
#plain-content[
  #sans[_Undergraduate Teaching Assistant_]
]

#v(-2.9em)

#timeline-entry(
  date: [
    Spring 2026
  ],
  title: "SNU F37.204 Core Computing,",
  position: "Head undergraduate TA.",
)

#v(-1em)

#timeline-entry(
  date: [
    Fall 2025
  ],
  title: "SNU F37.204 Core Computing",
)

#v(-1em)

#timeline-entry(
  date: [
    Spring 2025
  ],
  title: "SNU F37.101 Basic Computing,",
  position: "Outstanding Teaching Assistant Award.",
)

#v(-1em)

#timeline-entry(
  date: [
    Spring 2025
  ],
  title: "SNU 4190.310 Programming Languages",
)

#v(-1em)

#timeline-entry(
  date: [
    Spring/Fall 2024
  ],
  title: "SNU L0444.000500 Core Computing",
)

#v(-1em)

#timeline-entry(
  date: [
    Summer 2023
  ],
  title: "SNU L0444.000400 Basic Computing",
  end: true,
)



#header[Miscellaneous]
#timeline-entry(
  date: [Sep 2025--],
  title: "Waffle Studio,",
  position: "Frontend engineer.",
  body: text(8pt)[
    Waffle Studio is a development club at SNU.
    I am participating in Moiming project as a frontend developer.
    Also, I take a part in React Seminar team to prepare a React seminar for new members in Autumn 2026.
  ],
  end: false,
)

#timeline-entry(
  date: [Mar 2024--],
  title: "LnL, the residential college at SNU,",
  position: "Residential assistant.",
  body: text(8pt)[
    Provided general advice to help freshmen mentees adapt to campus life, living with them at SNU residential hall.],
  end: false,
)

#timeline-entry(
  date: [Jan 2025--Feb 2026],
  title: "Linguistics Student Executive Office,",
  position: "Co-founder & co-director.",
  body: text(8pt)[
    Ran a variety of community events and welfare business, e.g. the first Professor-Student Council for education environment.
  ],
  end: true,
)


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
  #text(9pt)[_Last Updated: 4 Aug 2026_]
]
