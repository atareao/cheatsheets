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
  title: "Chuletilla para RESTIC",
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
            title: "Repositorio",
            [
              #elemento(
                description: "define el repositorio por variable de entorno",
                command: "export RESTIC_REPOSITORY=<repo>",
                sample: "export RESTIC_REPOSITORY=/mnt/backup/restic"
              )
              #elemento(
                description: "indica el fichero con la contraseña",
                command: "export RESTIC_PASSWORD_FILE=<fichero>",
                sample: "export RESTIC_PASSWORD_FILE=~/.restic-pass"
              )
              #elemento(
                description: "inicializa el repositorio de la variable",
                command: "restic init",
                sample: "restic init"
              )
              #elemento(
                description: "inicializa un repositorio indicando la ruta",
                command: "restic -r <repo> init",
                sample: "restic -r s3:s3.amazonaws.com/mi-bucket init"
              )
              #elemento(
                description: "muestra la configuración del repositorio",
                command: "restic cat config",
                sample: "restic cat config"
              )
              #elemento(
                description: "lista los snapshots existentes",
                command: "restic snapshots",
                sample: "restic snapshots"
              )
              #elemento(
                description: "resume el tamaño y los datos del repositorio",
                command: "restic stats",
                sample: "restic stats --mode raw-data"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Backup",
            [
              #elemento(
                description: "hace copia de un directorio",
                command: "restic backup <dir>",
                sample: "restic backup /home/lorenzo"
              )
              #elemento(
                description: "excluye rutas que casan con un patrón",
                command: "restic backup --exclude <patrón> <dir>",
                sample: "restic backup --exclude '*.iso' /home/lorenzo"
              )
              #elemento(
                description: "excluye usando una lista de patrones",
                command: "restic backup --exclude-file <fichero> <dir>",
                sample: "restic backup --exclude-file excluir.txt /home/lorenzo"
              )
              #elemento(
                description: "etiqueta el snapshot para filtrarlo luego",
                command: "restic backup --tag <etiqueta> <dir>",
                sample: "restic backup --tag diario /home/lorenzo"
              )
              #elemento(
                description: "copia desde la entrada estándar",
                command: "restic backup --stdin --stdin-filename <nombre>",
                sample: "pg_dump miapp | restic backup --stdin --stdin-filename miapp.sql"
              )
              #elemento(
                description: "simula la copia sin escribir nada",
                command: "restic backup --dry-run <dir>",
                sample: "restic backup --dry-run /home/lorenzo"
              )
              #elemento(
                description: "no cruza fronteras de sistema de ficheros",
                command: "restic backup --one-file-system <dir>",
                sample: "restic backup --one-file-system /"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Consultar y restaurar",
            [
              #elemento(
                description: "filtra los snapshots por etiqueta",
                command: "restic snapshots --tag <etiqueta>",
                sample: "restic snapshots --tag diario"
              )
              #elemento(
                description: "lista el contenido de un snapshot",
                command: "restic ls <snapshot>",
                sample: "restic ls latest"
              )
              #elemento(
                description: "busca un fichero en los snapshots",
                command: "restic find <nombre>",
                sample: "restic find '*.pdf'"
              )
              #elemento(
                description: "restaura un snapshot en un directorio",
                command: "restic restore <snapshot> --target <dir>",
                sample: "restic restore latest --target /tmp/restaurado"
              )
              #elemento(
                description: "monta el repositorio como sistema de ficheros",
                command: "restic mount <dir>",
                sample: "restic mount /mnt/restic"
              )
              #elemento(
                description: "compara dos snapshots",
                command: "restic diff <snap1> <snap2>",
                sample: "restic diff latest 3f9a1c2"
              )
              #elemento(
                description: "extrae un fichero concreto por stdout",
                command: "restic dump <snapshot> <ruta>",
                sample: "restic dump latest /home/lorenzo/notas.txt"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Mantenimiento",
            [
              #elemento(
                description: "aplica política de retención por día, semana y mes",
                command: "restic forget --keep-daily 7 --keep-weekly 4 --keep-monthly 12",
                sample: "restic forget --keep-daily 7 --keep-weekly 4 --keep-monthly 12"
              )
              #elemento(
                description: "conserva los últimos y limpia datos",
                command: "restic forget --keep-last <n> --prune",
                sample: "restic forget --keep-last 5 --prune"
              )
              #elemento(
                description: "elimina del repositorio los datos huérfanos",
                command: "restic prune",
                sample: "restic prune"
              )
              #elemento(
                description: "verifica la integridad de la estructura",
                command: "restic check",
                sample: "restic check"
              )
              #elemento(
                description: "verifica leyendo además todos los datos",
                command: "restic check --read-data",
                sample: "restic check --read-data"
              )
              #elemento(
                description: "libera bloqueos antiguos del repositorio",
                command: "restic unlock",
                sample: "restic unlock"
              )
              #elemento(
                description: "lista las claves del repositorio",
                command: "restic key list",
                sample: "restic key list"
              )
            ]
          )
        ],
      )
    ]
  )
]
)
