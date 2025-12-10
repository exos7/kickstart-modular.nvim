local ls = require 'luasnip'
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local fmt = require('luasnip.extras.fmt').fmt

return {

  -- 1. Main Latex Template (CS 140 / Lab)
  s(
    'latex-typst-140',
    fmt(
      [[
    #import "@preview/rubber-article:0.5.0": * #import "@preview/showybox:2.0.4": showybox

    #show: article 

    #set enum(spacing: 15pt)
    #set list(spacing: 15pt)

    #maketitle(
      title: "{}",
      authors: ("Dale Sealtiel T. Flores \n 2023-11373 \n THX/WXY",),
    )

    {}
  ]],
      {
        i(1, 'Default Title'),
        i(0),
      }
    )
  ),

  -- 2. Showybox Answer
  s(
    'showy-ans',
    fmt(
      [[
    #showybox(frame: (body-color: luma(80%)))[
      *Answer:* {}
    ]
  ]],
      {
        i(0),
      }
    )
  ),

  -- 3. Enumeration (1, 2, 3)
  s(
    'enum-1',
    fmt(
      [[
    #enum[
      {}
    ]
  ]],
      {
        i(0),
      }
    )
  ),

  -- 4. Enumeration (a, b, c)
  s(
    'enum-a',
    fmt(
      [[
    #enum(numbering:"(a)")[
      {}
    ]
  ]],
      {
        i(0),
      }
    )
  ),

  -- 5. Enumeration (i, ii, iii)
  s(
    'enum-i',
    fmt(
      [[
    #enum(numbering:"i.")[
      {}
    ]
  ]],
      {
        i(0),
      }
    )
  ),

  -- 6. List Initialization
  s(
    'list-init',
    fmt(
      [[
    #list(spacing: 10pt)[
      {}
    ]
  ]],
      {
        i(0),
      }
    )
  ),

  -- 7. Noteworthy Template (Reviewer)
  s(
    'noteworthy-reviewer',
    fmt(
      [[
    #import "@preview/noteworthy:0.2.0": *
    #show: noteworthy.with(
      paper-size: "a4",
      font: "New Computer Modern",
      language: "EN",
      title: "{}",
      author: "Dale Sealtiel T. Flores",
      contact-details: "dtflores6@up.edu.ph",
      toc-title: "Table of Contents",
    )
    
    {}
  ]],
      {
        i(1, 'Title'),
        i(0),
      }
    )
  ),

  -- 8. Boxed Sheet Template (Cheat Sheet)
  s(
    'bs-template',
    fmt(
      [[
    #import "@preview/gentle-clues:1.2.0": *
    #import "@preview/zebraw:0.6.1": *
    #show: zebraw
    #import "@preview/boxed-sheet:0.1.0": *

    #set text(font: ("Times New Roman"))

    #let homepage = "dtflores6@up.edu.ph"
    #let author = "Dale Sealtiel T. Flores"
    #let title = "{}"

    #show: cheatsheet.with(
      title: title,
      homepage: homepage,
      authors: author,
      write-title: true,
      title-align: left,
      title-number: true,
      title-delta: 2pt,
      scaling-size: false,
      font-size: 5.5pt,
      line-skip: 5.5pt,
      x-margin: 10pt,
      y-margin: 30pt,
      num-columns: 4,
      column-gutter: 10pt,
      numbered-units: false
    )

    {}
  ]],
      {
        i(1, 'Title'),
        i(0),
      }
    )
  ),

  -- 9. Concept Block
  s(
    'border-concept-block',
    fmt(
      [[
    #concept-block(body: [
      {}
    ])
  ]],
      {
        i(0),
      }
    )
  ),

  -- 10. Codly Initialization
  s(
    'init-codly',
    t {
      '#import "@preview/codly:1.3.0": *',
      '#import "@preview/codly-languages:0.1.1": *',
      '#show: codly-init.with()',
      '',
    }
  ),

  -- 11. Gentle Clues Initialization
  s(
    'init-gentle-clue',
    t {
      '#import "@preview/gentle-clues:1.2.0": *',
      '',
    }
  ),

  -- 12. Example Clue
  s(
    'gentle-example-clue',
    fmt(
      [[
    #example(accent-color: color-box.at({}))[
      {}
    ]
  ]],
      {
        i(1, 'Color'),
        i(0),
      }
    )
  ),

  -- 13. References (Bibliography)
  s(
    'biblio',
    fmt(
      [[
    #bibliography(
      style: "american-psychological-association",
      ("refs.bib"),
      full: true,
    )
  ]],
      {}
    )
  ),

  -- 14. Code Block
  s(
    'code-block',
    fmt(
      [[
    ```{}
    {}
    ```
  ]],
      {
        i(1, 'lang'),
        i(0),
      }
    )
  ),
}
