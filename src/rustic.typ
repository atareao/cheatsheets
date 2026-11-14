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
  title: "Chuletilla para RUSTIC",
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
            title: "Repositorio y config",
            [
              #elemento(
                description: "inicializa el repositorio por defecto",
                command: "rustic init",
                sample: "rustic init"
              )
              #elemento(
                description: "inicializa un repositorio indicando la ruta",
                command: "rustic -r <repo> init",
                sample: "rustic -r s3:https://s3.amazonaws.com/mi-bucket init"
              )
              #elemento(
                description: "usa un perfil del fichero de configuración",
                command: "rustic --profile <nombre> <orden>",
                sample: "rustic --profile diario backup /home/lorenzo"
              )
              #elemento(
                description: "abreviatura del perfil con -P",
                command: "rustic -P <perfil> <orden>",
                sample: "rustic -P diario snapshots"
              )
              #elemento(
                description: "sección con el repositorio y la contraseña",
                command: "[repository]",
                sample: "path = '/mnt/backup/rustic'"
              )
              #elemento(
                description: "apunta al fichero con la contraseña",
                command: "password-file = '<fichero>'",
                sample: "password-file = '/home/lorenzo/.rustic-pass'"
              )
              #elemento(
                description: "resume la información del repositorio",
                command: "rustic repoinfo",
                sample: "rustic repoinfo"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Backup",
            [
              #elemento(
                description: "hace copia de uno o varios directorios",
                command: "rustic backup <dirs>",
                sample: "rustic backup /home/lorenzo /etc"
              )
              #elemento(
                description: "incluye ficheros que casan con un glob",
                command: "rustic backup --glob <patrón>",
                sample: "rustic backup --glob '/home/lorenzo/*.pdf'"
              )
              #elemento(
                description: "excluye con el glob negativo ! y reincluye",
                command: "rustic backup --glob '!<excepción>' <dir>",
                sample: "rustic backup --glob '!*.iso' /home/lorenzo"
              )
              #elemento(
                description: "etiqueta el snapshot",
                command: "rustic backup --tag <etiqueta> <dir>",
                sample: "rustic backup --tag diario /home/lorenzo"
              )
              #elemento(
                description: "fija el hostname del snapshot",
                command: "rustic backup --host <host> <dir>",
                sample: "rustic backup --host portatil /home/lorenzo"
              )
              #elemento(
                description: "simula la copia sin escribir nada",
                command: "rustic backup --dry-run <dir>",
                sample: "rustic backup --dry-run /home/lorenzo"
              )
              #elemento(
                description: "usa un snapshot como base del nuevo",
                command: "rustic backup --parent <snapshot> <dir>",
                sample: "rustic backup --parent latest /home/lorenzo"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Snapshots y restauración",
            [
              #elemento(
                description: "lista los snapshots existentes",
                command: "rustic snapshots",
                sample: "rustic snapshots"
              )
              #elemento(
                description: "agrupa los snapshots por host y etiqueta",
                command: "rustic snapshots --group-by host,tag",
                sample: "rustic snapshots --group-by host,tag"
              )
              #elemento(
                description: "lista el contenido de un snapshot",
                command: "rustic ls <snapshot>",
                sample: "rustic ls latest"
              )
              #elemento(
                description: "restaura un snapshot en un destino",
                command: "rustic restore <snapshot> <destino>",
                sample: "rustic restore latest /tmp/restaurado"
              )
              #elemento(
                description: "monta el repositorio como sistema de ficheros",
                command: "rustic mount <dir>",
                sample: "rustic mount /mnt/rustic"
              )
              #elemento(
                description: "compara dos snapshots",
                command: "rustic diff <a> <b>",
                sample: "rustic diff latest 3f9a1c2"
              )
              #elemento(
                description: "vuelca el contenido de una ruta por stdout",
                command: "rustic cat <snapshot> <ruta>",
                sample: "rustic cat latest /home/lorenzo/notas.txt"
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
                command: "rustic forget --keep-daily 7 --keep-weekly 4 --keep-monthly 12",
                sample: "rustic forget --keep-daily 7 --keep-weekly 4 --keep-monthly 12"
              )
              #elemento(
                description: "elimina del repositorio los datos huérfanos",
                command: "rustic prune",
                sample: "rustic prune"
              )
              #elemento(
                description: "verifica la integridad de la estructura",
                command: "rustic check",
                sample: "rustic check"
              )
              #elemento(
                description: "verifica leyendo además todos los datos",
                command: "rustic check --read-data",
                sample: "rustic check --read-data"
              )
              #elemento(
                description: "repara snapshots dañados del índice",
                command: "rustic repair snapshots",
                sample: "rustic repair snapshots"
              )
              #elemento(
                description: "olvida snapshots y limpia en una sola orden",
                command: "rustic forget --prune",
                sample: "rustic forget --prune"
              )
            ]
          )
        ],
      )
    ]
  )
]
)
