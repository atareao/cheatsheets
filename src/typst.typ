#import "template.typ": header, elemento, columna

#set page(
  paper: "a4",
  flipped: true,
  margin: 0pt,
)
#set text(
  font: "Ubuntu",
)
#header(
  title: "Chuletilla para TYPST",
  logo: none
)
#box(
  fill: gray,
  height: 100%,
  width: 100%,
  outset: (top: 10pt),
  inset: (x: 25pt),
  [
  #box(
    fill: gray,
    height: 100%,
    width: 100%,
    [
      #grid(
        columns: (1.2fr, 1fr, 1fr, 1fr),
        gutter: 10pt,
        [
          #columna(
            title: "Compilar",
            [
              #elemento(
                description: "compila un documento a PDF en el directorio actual",
                command: "typst compile <DOC.typ>",
                sample: "typst compile informe.typ"
              )
              #elemento(
                description: "compila indicando el fichero de salida",
                command: "typst compile <DOC.typ> <SALIDA.pdf>",
                sample: "typst compile informe.typ informe.pdf"
              )
              #elemento(
                description: "recompila automáticamente al detectar cambios",
                command: "typst watch <DOC.typ>",
                sample: "typst watch informe.typ"
              )
              #elemento(
                description: "define el directorio raíz para las rutas del proyecto",
                command: "typst compile --root <DIR> <DOC.typ>",
                sample: "typst compile --root . src/informe.typ"
              )
              #elemento(
                description: "lista las fuentes disponibles",
                command: "typst fonts",
                sample: "typst fonts"
              )
              #elemento(
                description: "añade un directorio de fuentes durante la compilación",
                command: "typst compile --font-path <DIR> <DOC.typ>",
                sample: "typst compile --font-path ./fonts informe.typ"
              )
              #elemento(
                description: "crea un proyecto a partir de una plantilla publicada",
                command: "typst init @preview/<PLANTILLA>",
                sample: "typst init @preview/charged-ieee"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Marcado",
            [
              #elemento(
                description: "crea títulos de nivel uno y dos",
                command: "= Titulo / == Subtitulo",
                sample: "= Introduccion"
              )
              #elemento(
                description: "crea listas sin numerar y numeradas",
                command: "- elemento / + elemento",
                sample: "- primer punto"
              )
              #elemento(
                description: "aplica énfasis o negrita al texto",
                command: "#emph[texto] / #strong[texto]",
                sample: "#strong[Importante]"
              )
              #elemento(
                description: "inserta código en línea o un bloque literal",
                command: "#raw('codigo') o `codigo`",
                sample: "`typst compile`"
              )
              #elemento(
                description: "crea un enlace con texto visible",
                command: "#link('URL')[texto]",
                sample: "#link('https://typst.app')[Typst]"
              )
              #elemento(
                description: "inserta una cita en bloque",
                command: "#quote[texto]",
                sample: "#quote[Menos es mas]"
              )
              #elemento(
                description: "añade una nota al pie",
                command: "#footnote[nota]",
                sample: "#footnote[Ver apendice]"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Layout",
            [
              #elemento(
                description: "configura el tamaño de papel y los márgenes",
                command: "#set page(paper: 'a4', margin: 2cm)",
                sample: "#set page(paper: 'a4', margin: 2cm)"
              )
              #elemento(
                description: "define la fuente y el tamaño del texto",
                command: "#set text(font: 'Ubuntu', size: 11pt)",
                sample: "#set text(font: 'Ubuntu', size: 11pt)"
              )
              #elemento(
                description: "distribuye el contenido en una rejilla de columnas",
                command: "#grid(columns: 2, gutter: 1em)",
                sample: "#grid(columns: 2, gutter: 1em)"
              )
              #elemento(
                description: "reparte el contenido en varias columnas de texto",
                command: "#columns(2)[contenido]",
                sample: "#columns(2)[Texto a dos columnas]"
              )
              #elemento(
                description: "alinea el contenido horizontalmente",
                command: "#align(center)[contenido]",
                sample: "#align(center)[Titulo centrado]"
              )
              #elemento(
                description: "coloca contenido en una caja o en una posición fija",
                command: "#box[contenido] / #place(top+right)[..]",
                sample: "#box(stroke: 1pt)[Dentro]"
              )
              #elemento(
                description: "fuerza un salto de línea",
                command: "#linebreak()",
                sample: "#linebreak()"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Funciones y datos",
            [
              #elemento(
                description: "define una variable reutilizable",
                command: "#let <nombre> = <valor>",
                sample: "#let autor = 'Lorenzo'"
              )
              #elemento(
                description: "define una función con parámetros",
                command: "#let f(x) = x * 2",
                sample: "#let doble(x) = x * 2"
              )
              #elemento(
                description: "importa nombres desde otro fichero",
                command: "#import 'archivo.typ': nombre",
                sample: "#import 'plantilla.typ': header"
              )
              #elemento(
                description: "incluye el contenido completo de otro fichero",
                command: "#include 'otro.typ'",
                sample: "#include 'capitulo1.typ'"
              )
              #elemento(
                description: "escribe una fórmula matemática en línea o centrada",
                command: "$ x^2 + y_2 $",
                sample: "$ x^2 + y_2 $"
              )
              #elemento(
                description: "controla el flujo con condiciones y bucles",
                command: "#if cond [..] / #for x in (1, 2, 3) [..]",
                sample: "#for x in (1, 2, 3) [#x ]"
              )
              #elemento(
                description: "ejecuta código con contexto o lee datos de un fichero",
                command: "#context [..] / #read('datos.json')",
                sample: "#context text.lang"
              )
            ]
          )
        ],
      )
    ]
  )
]
)
