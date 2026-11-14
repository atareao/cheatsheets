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
  title: "Chuletilla para GIT",
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
            title: "Básico",
            [
              #elemento(
                description: "crea un repositorio git en el directorio actual",
                command: "git init",
                sample: "git init"
              )
              #elemento(
                description: "clona un repositorio remoto en local",
                command: "git clone <URL>",
                sample: "git clone https://github.com/atareao/cheatsheets.git"
              )
              #elemento(
                description: "muestra el estado de los ficheros y la rama actual",
                command: "git status",
                sample: "git status"
              )
              #elemento(
                description: "prepara cambios para el commit; con -p, por trozos",
                command: "git add <FICHERO>",
                sample: "git add -p"
              )
              #elemento(
                description: "crea un commit con la convención <emoji> <tipo>(<scope>): <mensaje>",
                command: "git commit -m '<MENSAJE>'",
                sample: "git commit -m '✨ feat(git): añade chuletilla de git'"
              )
              #elemento(
                description: "trae e integra los cambios remotos con rebase",
                command: "git pull --rebase",
                sample: "git pull --rebase origin development"
              )
              #elemento(
                description: "sube la rama y fija su upstream",
                command: "git push -u origin <RAMA>",
                sample: "git push -u origin feature/nueva"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Ramas",
            [
              #elemento(
                description: "lista las ramas locales y marca la actual",
                command: "git branch",
                sample: "git branch -vv"
              )
              #elemento(
                description: "crea una rama nueva y cambia a ella",
                command: "git switch -c <RAMA>",
                sample: "git switch -c feature/nueva"
              )
              #elemento(
                description: "cambia a una rama existente",
                command: "git switch <RAMA>",
                sample: "git switch development"
              )
              #elemento(
                description: "integra otra rama en la rama actual",
                command: "git merge <RAMA>",
                sample: "git merge feature/nueva"
              )
              #elemento(
                description: "reaplica los commits sobre otra base",
                command: "git rebase <BASE>",
                sample: "git rebase development"
              )
              #elemento(
                description: "borra una rama local ya fusionada",
                command: "git branch -d <RAMA>",
                sample: "git branch -d feature/nueva"
              )
              #elemento(
                description: "borra una rama en el repositorio remoto",
                command: "git push origin --delete <RAMA>",
                sample: "git push origin --delete feature/nueva"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Deshacer",
            [
              #elemento(
                description: "descarta los cambios locales de un fichero",
                command: "git restore <FICHERO>",
                sample: "git restore src/git.typ"
              )
              #elemento(
                description: "saca un fichero del área de preparación",
                command: "git restore --staged <FICHERO>",
                sample: "git restore --staged src/git.typ"
              )
              #elemento(
                description: "deshace el último commit conservando los cambios",
                command: "git reset --soft HEAD~1",
                sample: "git reset --soft HEAD~1"
              )
              #elemento(
                description: "crea un commit que revierte otro commit",
                command: "git revert <SHA>",
                sample: "git revert a1b2c3d"
              )
              #elemento(
                description: "corrige el último commit sin cambiar el mensaje",
                command: "git commit --amend",
                sample: "git commit --amend --no-edit"
              )
              #elemento(
                description: "guarda cambios temporalmente y los recupera",
                command: "git stash",
                sample: "git stash pop"
              )
              #elemento(
                description: "borra ficheros y directorios no rastreados",
                command: "git clean -fd",
                sample: "git clean -fd"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Inspección",
            [
              #elemento(
                description: "muestra el historial en una línea y con grafo",
                command: "git log --oneline --graph",
                sample: "git log --oneline --graph --all"
              )
              #elemento(
                description: "muestra los cambios aún no preparados",
                command: "git diff",
                sample: "git diff"
              )
              #elemento(
                description: "muestra los cambios ya preparados",
                command: "git diff --staged",
                sample: "git diff --staged"
              )
              #elemento(
                description: "muestra el contenido de un commit concreto",
                command: "git show <SHA>",
                sample: "git show a1b2c3d"
              )
              #elemento(
                description: "muestra quién modificó cada línea de un fichero",
                command: "git blame <FICHERO>",
                sample: "git blame src/git.typ"
              )
              #elemento(
                description: "historial de movimientos de HEAD y las ramas",
                command: "git reflog",
                sample: "git reflog"
              )
              #elemento(
                description: "lista los repositorios remotos configurados",
                command: "git remote -v",
                sample: "git remote -v"
              )
            ]
          )
        ],
      )
    ]
  )
]
)
