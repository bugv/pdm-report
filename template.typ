#import "@preview/drafting:0.2.2": *
#import "@local/chem-par:0.2.0": *
#import "@preview/typsium:0.3.2": ce


#import "@preview/physica:0.9.4": *
#import "@preview/gentle-clues:1.2.0": *

// Fonts used in front matter, sidenotes, bibliography, and captions
#let sans-fonts = (
    "PT Sans",
    "Gill Sans MT",
    "TeX Gyre Heros",
    "Noto Sans"
  )


#let template(doc,standalone: false) = {
  // page
  set page(
    paper: "a4",
    numbering:"1"
    )

  // text
  // Just a suttle lightness to decrease the harsh contrast
  set text(fill:luma(30))
  // justify
  set par(justify: true,)

  // headings
  show title: set text(font: sans-fonts)
  show heading: set text(font: sans-fonts)
  show heading.where(level: 1): set heading(supplement: [Chapter])


  // figures and tables
  show figure: set figure.caption(separator: [.#h(0.5em)])
  show figure.caption: set par(justify: true)
  show figure.caption: set align(left)
  show figure.caption: set block(width: 90%)
  set figure(placement:auto)

  show figure.where(kind: table): set figure.caption(position: top)
  set table(stroke: none, gutter:0em, align:left)



  // math
  set math.equation(numbering: "(1)")
  show math.equation: set block(spacing: 0.65em)

  // chemistry
  // show: chem-style
  show: rules.formulae
  show: rules.greek
  show "->" : $arrow.r$
  show "degC": "°C"
  show "R2SCAN": $"r"^2"SCAN"$


  show "TODO": set text(fill: red, weight: "bold")
  show "REF": set text(fill: red, weight: "bold")

  let numbered-doc = if standalone {
    set heading(numbering: (..nums) => {
      let nums = nums.pos()
      if nums.len() > 1 {
        numbering("1.1", ..nums.slice(1))
        }
      })
    show heading.where(level: 1): set heading(numbering: none)
    show heading.where(level: 1): it => {
      counter(heading).step(level: 1)
      it
    }
    doc
  } else {
    set heading(numbering: "1.")
    doc
  }

  numbered-doc
}



#let big_todo(content) = clue(content,title-font:sans-fonts,accent-color:yellow,title:"TODO",icon:emoji.warning)


#let assumption(title: none, content) = clue(
  content,
  title-font: sans-fonts,
  accent-color: purple,
  title: if title != none {title} else {"Assumption"}
)

#let textcite(key, ..args) = cite(key, style:"american-chemical-society_nice_prose.csl", form:"prose",..args) // Smith’s (2000)

#let todo(content) = text(
  if content != "" {"TODO" + content} else {"TODO"},
  fill: red,
  weight:"bold"
)

#let definition(content) = clue(content,title-font:sans-fonts,accent-color:blue,title:"Definition",icon:emoji.book.open)

#let lit(body) = [#chem-toggle(false)#body#chem-toggle(true)]


