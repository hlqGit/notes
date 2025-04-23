
// All imports
#import "@preview/showybox:2.0.4": showybox

// Main noteworthy function
#let noteworthy(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: none,
  author: none,
  url: none,
  toc-title: "Table of Contents",
  watermark: none,
  content,
) = {
  // Document metadata
  set document(
    title: [#title - #author],
    author: author,
    date: auto,
  )

  // Page settings
  set page(
    paper: paper-size,
    background: if watermark != none {
      rotate(-40deg, text(70pt, fill: rgb("FFCBC4"))[*#watermark*])
    },
    header: context {
      if (counter(page).get().at(0) > 1) [
        #grid(
          columns: (3fr, 1fr),
          align: (left, right),
          smallcaps(title), datetime.today().display("[month]/[day]/[year]"),
        )
        #line(length: 100%)
      ]
    },
    footer: context [
      #line(length: 100%)
      #grid(
        columns: (1fr, 4fr, 1fr),
        align: (left, center, right),
        author,
        if url != none {
          [ #link(url) ]
        },
        counter(page).display(
          "(1/1)",
          both: true,
        ),
      )
    ],
  )

  // Text settings
  set text(
    font: font,
    size: 12pt,
    lang: language,
  )

  // TOC settings
  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }

  // Heading settings
  set heading(numbering: "1.")

  // Paragraph settings
  set par(justify: true)

  // Title
  showybox(
    frame: (
      border-color: purple.darken(50%),
      body-color: purple.lighten(80%),
    ),
    shadow: (
      offset: 4pt,
    ),
    body-style: (
      align: center,
    ),
    
    text(weight: "black", size: 15pt, title),
  )

  // Table of contents
  showybox(
    outline(
      indent: auto,
      title: toc-title,
      depth: 2,
    ),
  )

  // Main content
  content
}