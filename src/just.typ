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
  title: "Chuletilla para JUST",
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
            title: "Ejecutar",
            [
              #elemento(
                description: "ejecuta la receta por defecto del justfile",
                command: "just",
                sample: "just"
              )
              #elemento(
                description: "lista las recetas disponibles",
                command: "just --list",
                sample: "just --list"
              )
              #elemento(
                description: "ejecuta una receta concreta",
                command: "just <RECETA>",
                sample: "just build"
              )
              #elemento(
                description: "ejecuta una receta pasando argumentos",
                command: "just <RECETA> <ARG>",
                sample: "just deploy produccion"
              )
              #elemento(
                description: "muestra qué haría sin ejecutarlo",
                command: "just --dry-run <RECETA>",
                sample: "just --dry-run build"
              )
              #elemento(
                description: "muestra el cuerpo de una receta",
                command: "just --show <RECETA>",
                sample: "just --show build"
              )
              #elemento(
                description: "usa un justfile con otra ruta",
                command: "just -f <FICHERO> <RECETA>",
                sample: "just -f tareas/Deploy.just build"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Recetas",
            [
              #elemento(
                description: "receta por defecto, se ejecuta con solo just",
                command: "default:",
                sample: "default: just --list"
              )
              #elemento(
                description: "oculta una receta del listado",
                command: "[private]",
                sample: "[private] _limpiar: rm -rf build"
              )
              #elemento(
                description: "no cambia al directorio del justfile",
                command: "[no-cd]",
                sample: "[no-cd] actual: pwd"
              )
              #elemento(
                description: "ejecuta la receta con una shell concreta",
                command: "#!/usr/bin/env bash",
                sample: "saluda: #!/usr/bin/env bash"
              )
              #elemento(
                description: "declara dependencias de otra receta",
                command: "<RECETA>: <DEPENDENCIA>",
                sample: "build: limpiar"
              )
              #elemento(
                description: "el comentario encima aparece en just --list",
                command: "# <DESCRIPCION>",
                sample: "# Compila el proyecto -> build"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Variables y parámetros",
            [
              #elemento(
                description: "define una variable reutilizable",
                command: "NOMBRE := 'valor'",
                sample: "VERSION := '1.0.0'"
              )
              #elemento(
                description: "exporta la variable a las recetas",
                command: "export NOMBRE := 'valor'",
                sample: "export RUST_LOG := 'debug'"
              )
              #elemento(
                description: "receta que recibe un parámetro",
                command: "<RECETA> <PARAM>:",
                sample: "saluda nombre: echo hola {{nombre}}"
              )
              #elemento(
                description: "parámetro con valor por defecto",
                command: "<RECETA> <PARAM='default'>:",
                sample: "saluda nombre='mundo'"
              )
              #elemento(
                description: "interpola la variable en el comando",
                command: "echo {{<VAR>}}",
                sample: "echo version {{VERSION}}"
              )
              #elemento(
                description: "recoge argumentos variádicos adicionales",
                command: "<RECETA> +<ARGS>:",
                sample: "run +args: cargo {{args}}"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Avanzado",
            [
              #elemento(
                description: "importa recetas de otro justfile",
                command: "import 'ruta.just'",
                sample: "import 'tareas/Deploy.just'"
              )
              #elemento(
                description: "carga variables desde un fichero .env",
                command: "set dotenv-load",
                sample: "set dotenv-load"
              )
              #elemento(
                description: "define la shell usada por las recetas",
                command: "set shell := ['bash', '-cu']",
                sample: "set shell := ['bash', '-cu']"
              )
              #elemento(
                description: "sobrescribe una variable al invocar just",
                command: "just --set <VAR> <valor> <RECETA>",
                sample: "just --set VERSION 2.0.0 build"
              )
              #elemento(
                description: "formatea el justfile automáticamente",
                command: "just --fmt",
                sample: "just --fmt --check"
              )
              #elemento(
                description: "muestra un menú interactivo de recetas",
                command: "just --choose",
                sample: "just --choose"
              )
            ]
          )
        ],
      )
    ]
  )
]
)
