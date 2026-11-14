#let header(
  title: "",
  logo: none
) = {
  box(
    fill: aqua,
    width: 100%,
    inset: (top: 10pt, left: 20pt, bottom: 10pt),
    [
      #grid(
        columns: (auto, 1fr),
        gutter: 10pt,
        [
          #if logo != none [
            #box(
              inset: (left: 10pt),
              [
                #image(logo, height: 32pt)
              ]
            )
          ]
        ],
        [
          #set text(
            size: 32pt,
            fill: rgb("#333"),
          )
          #title
        ]
      )
    ]
  )
}

#let elemento(
  description: "",
  command: "",
  sample: none 
) = {
  set text(size: 10pt)
  block(below: 8pt, text(fill: gray)[- #description])
  [
    #set list(marker: [  ])
    - #command
    #if sample != none [
    - #emph[#sample]
    ]
  ]
}
#let columna(
  title: "",
  body
) = {
  box(
    fill: aqua,
    inset: (x: 10pt, y: 10pt),
    radius: 10pt,
    [
      #box(
        fill: aqua,
        [
          #title
        ]
      )
      #box(
        fill: white,
        width: 100%,
        inset: (top: 10pt ),
        outset: (x: 10pt, bottom: 10pt),
        [
          #body
        ]
      )
    ]
  )
}
