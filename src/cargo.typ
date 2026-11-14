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
  title: "Chuletilla para CARGO",
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
            title: "Proyecto",
            [
              #elemento(
                description: "crea un binario nuevo en la carpeta indicada",
                command: "cargo new <NOMBRE>",
                sample: "cargo new mi-app"
              )
              #elemento(
                description: "crea una librería nueva",
                command: "cargo new --lib <NOMBRE>",
                sample: "cargo new --lib mi-lib"
              )
              #elemento(
                description: "compila y ejecuta el binario del proyecto",
                command: "cargo run",
                sample: "cargo run"
              )
              #elemento(
                description: "ejecuta el binario pasando argumentos",
                command: "cargo run -- <ARGS>",
                sample: "cargo run -- --help"
              )
              #elemento(
                description: "compila en modo depuración",
                command: "cargo build",
                sample: "cargo build"
              )
              #elemento(
                description: "compila optimizado para producción",
                command: "cargo build --release",
                sample: "cargo build --release"
              )
              #elemento(
                description: "comprueba tipos y errores sin generar binario",
                command: "cargo check",
                sample: "cargo check --all-targets"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Calidad",
            [
              #elemento(
                description: "ejecuta todos los tests del proyecto",
                command: "cargo test",
                sample: "cargo test"
              )
              #elemento(
                description: "ejecuta solo los tests que coincidan con un nombre",
                command: "cargo test <NOMBRE>",
                sample: "cargo test parsea_config"
              )
              #elemento(
                description: "muestra la salida estándar durante los tests",
                command: "cargo test -- --nocapture",
                sample: "cargo test -- --nocapture"
              )
              #elemento(
                description: "formatea el código con rustfmt",
                command: "cargo fmt",
                sample: "cargo fmt"
              )
              #elemento(
                description: "verifica el formato sin modificar ficheros",
                command: "cargo fmt --check",
                sample: "cargo fmt --check"
              )
              #elemento(
                description: "analiza el código tratando los avisos como errores",
                command: "cargo clippy -- -D warnings",
                sample: "cargo clippy --all-targets -- -D warnings"
              )
              #elemento(
                description: "genera la documentación y la abre en el navegador",
                command: "cargo doc --open",
                sample: "cargo doc --open --no-deps"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Dependencias",
            [
              #elemento(
                description: "añade una dependencia al Cargo.toml",
                command: "cargo add <CRATE>",
                sample: "cargo add serde"
              )
              #elemento(
                description: "añade una dependencia activando una feature",
                command: "cargo add <CRATE> --features <FEATURE>",
                sample: "cargo add serde --features derive"
              )
              #elemento(
                description: "elimina una dependencia del Cargo.toml",
                command: "cargo remove <CRATE>",
                sample: "cargo remove serde"
              )
              #elemento(
                description: "actualiza las dependencias a la última versión compatible",
                command: "cargo update",
                sample: "cargo update"
              )
              #elemento(
                description: "muestra el árbol de dependencias",
                command: "cargo tree",
                sample: "cargo tree"
              )
              #elemento(
                description: "muestra solo las dependencias duplicadas",
                command: "cargo tree -d",
                sample: "cargo tree -d"
              )
              #elemento(
                description: "busca vulnerabilidades conocidas en las dependencias",
                command: "cargo audit",
                sample: "cargo audit"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Workspaces y publicación",
            [
              #elemento(
                description: "compila un miembro concreto del workspace",
                command: "cargo build -p <MIEMBRO>",
                sample: "cargo build -p core"
              )
              #elemento(
                description: "ejecuta un miembro concreto del workspace",
                command: "cargo run -p <MIEMBRO>",
                sample: "cargo run -p cli"
              )
              #elemento(
                description: "compila activando una feature del crate",
                command: "cargo build --features <FEATURE>",
                sample: "cargo build --features serde"
              )
              #elemento(
                description: "empaqueta y valida el crate sin llegar a publicarlo",
                command: "cargo publish --dry-run",
                sample: "cargo publish --dry-run"
              )
              #elemento(
                description: "publica el crate en crates.io",
                command: "cargo publish",
                sample: "cargo publish"
              )
              #elemento(
                description: "instala el binario del proyecto actual",
                command: "cargo install --path .",
                sample: "cargo install --path ."
              )
              #elemento(
                description: "borra los artefactos generados en target",
                command: "cargo clean",
                sample: "cargo clean"
              )
            ]
          )
        ],
      )
    ]
  )
]
)
