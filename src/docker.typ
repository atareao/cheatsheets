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
#set page(
  paper: "a4",
  flipped: true,
  margin: 0pt,
)
#set text(
  font: "Ubuntu",
)
#header(
  title: "Chuletilla para Docker",
  logo: "docker-logo.svg"
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
    //outset: (x:10pt, y: 20pt),
    [
      #grid(
        columns: (1.2fr, 1fr, 1fr, 1fr),
        gutter: 10pt,
        [
          #columna(
            title: "Ejecutar contenedores",
            [
              #elemento(
                description: "Inicia un contenedor",
                command: "docker run IMAGE",
                sample: "docker run nging"
              )
              #elemento(
                description: "... y le asigna un nombre",
                command: "docker run --name <CONTENEDOR> <IMAGE>",
                sample: "docker run --name web nging"
              )
              #elemento(
                description: "... y mapea un puerto",
                command: "docker run -p <HPORT:CPORT> <IMAGE>",
                sample: "docker run -p 8080:80 nginx"
              )
              #elemento(
                description: "... y mapea todos los puertos",
                command: "docker run -P <IMAGE>",
                sample: "docker run -P nginx"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Gestionar contenedores",
            [
              #elemento(
                description: "Lista contendores en ejecución",
                command: "docker ps"
              )
              #elemento(
                description: "Lista todos los contendores",
                command: "docker ps -a"
              )
              #elemento(
                description: "Elimina un contendor",
                command: "docker rm <CONTENEDOR>",
                sample: "docker rm web"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Gestionar imágenes",
            [
              #elemento(
                description: "Descargar una imagen",
                command: "docker pull <IMAGE[:TAG]>",
                sample: "docker pull nginx",
              )
              #elemento(
                description: "Subir una imagen",
                command: "docker push <IMAGE[:TAG]>",
                sample: "docker push myimage:1.0",
              )
              #elemento(
                description: "Borrar una imagen",
                command: "docker rmi <IMAGE>",
                sample: "docker rmi myimage",
              )
              #elemento(
                description: "Listar imágenes",
                command: "docker images",
              )
            ]
          )
        ],
        [
          #columna(
            title: "Información",
            [
              #elemento(
                description: "Logs",
                command: "docker logs <CONTAINER>",
                sample: "docker logs web",
              )
              #elemento(
                description: "Estadísticas",
                command: "docker stats",
              )
              #elemento(
                description: "Procesos en un contenedor",
                command: "docker top <CONTAINER>",
                sample: "docker top web",
              )
              #elemento(
                description: "Versión de docker",
                command: "docker version",
              )
              #elemento(
                description: "Información de un objeto",
                command: "docker inspect <NAME>",
                sample: "docker inspect web",
              )
              #elemento(
                description: "Modificaciones en un contendor",
                command: "docker diff <CONTAINER>",
                sample: "docker diff web",
              )
              #elemento(
                description: "Puertos de un contendor",
                command: "docker port <CONTAINER>",
                sample: "docker port web",
              )
            ]
          )
        ],
      )
    ]
  )
]
)
