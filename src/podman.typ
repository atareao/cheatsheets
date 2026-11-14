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
  title: "Chuletilla para PODMAN",
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
            title: "Contenedores",
            [
              #elemento(
                description: "ejecuta un contenedor a partir de una imagen",
                command: "podman run <IMAGEN>",
                sample: "podman run docker.io/library/nginx"
              )
              #elemento(
                description: "... en segundo plano y con un nombre",
                command: "podman run -d --name <CONTENEDOR> <IMAGEN>",
                sample: "podman run -d --name web nginx"
              )
              #elemento(
                description: "lista los contenedores en ejecución",
                command: "podman ps",
                sample: "podman ps"
              )
              #elemento(
                description: "lista todos los contenedores, parados incluidos",
                command: "podman ps -a",
                sample: "podman ps -a"
              )
              #elemento(
                description: "abre una shell interactiva dentro del contenedor",
                command: "podman exec -it <CONTENEDOR> <COMANDO>",
                sample: "podman exec -it web bash"
              )
              #elemento(
                description: "muestra los logs de un contenedor",
                command: "podman logs <CONTENEDOR>",
                sample: "podman logs web"
              )
              #elemento(
                description: "detiene y elimina un contenedor",
                command: "podman stop <CONTENEDOR> && podman rm <CONTENEDOR>",
                sample: "podman stop web && podman rm web"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Imágenes",
            [
              #elemento(
                description: "descarga una imagen del registro",
                command: "podman pull <IMAGEN[:ETIQUETA]>",
                sample: "podman pull docker.io/library/nginx:latest"
              )
              #elemento(
                description: "lista las imágenes locales",
                command: "podman images",
                sample: "podman images"
              )
              #elemento(
                description: "construye una imagen desde un Containerfile",
                command: "podman build -t <NOMBRE:TAG> <CONTEXTO>",
                sample: "podman build -t miapp:1.0 ."
              )
              #elemento(
                description: "sube una imagen a un registro",
                command: "podman push <IMAGEN[:TAG]>",
                sample: "podman push quay.io/usuario/miapp:1.0"
              )
              #elemento(
                description: "elimina una o varias imágenes",
                command: "podman rmi <IMAGEN>",
                sample: "podman rmi miapp:1.0"
              )
              #elemento(
                description: "busca imágenes en los registros configurados",
                command: "podman search <TEXTO>",
                sample: "podman search nginx"
              )
              #elemento(
                description: "inspecciona los metadatos de una imagen",
                command: "podman inspect <IMAGEN>",
                sample: "podman inspect nginx"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Pods",
            [
              #elemento(
                description: "crea un pod con todos sus puertos publicados",
                command: "podman pod create --name <POD> -p <HPORT:CPORT>",
                sample: "podman pod create --name mipod -p 8080:80"
              )
              #elemento(
                description: "lista los pods existentes",
                command: "podman pod ps",
                sample: "podman pod ps"
              )
              #elemento(
                description: "añade un contenedor a un pod existente",
                command: "podman run -d --pod <POD> <IMAGEN>",
                sample: "podman run -d --pod mipod nginx"
              )
              #elemento(
                description: "muestra los logs de todos los contenedores del pod",
                command: "podman pod logs <POD>",
                sample: "podman pod logs mipod"
              )
              #elemento(
                description: "para un pod y sus contenedores",
                command: "podman pod stop <POD>",
                sample: "podman pod stop mipod"
              )
              #elemento(
                description: "elimina un pod y sus contenedores",
                command: "podman pod rm <POD>",
                sample: "podman pod rm mipod"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Redes y volúmenes",
            [
              #elemento(
                description: "crea una red definida por el usuario",
                command: "podman network create <RED>",
                sample: "podman network create mired"
              )
              #elemento(
                description: "lista las redes disponibles",
                command: "podman network ls",
                sample: "podman network ls"
              )
              #elemento(
                description: "elimina una red",
                command: "podman network rm <RED>",
                sample: "podman network rm mired"
              )
              #elemento(
                description: "crea un volumen con nombre",
                command: "podman volume create <VOLUMEN>",
                sample: "podman volume create datos"
              )
              #elemento(
                description: "lista e inspecciona los volúmenes",
                command: "podman volume ls && podman volume inspect <VOLUMEN>",
                sample: "podman volume ls && podman volume inspect datos"
              )
              #elemento(
                description: "monta un volumen o directorio del host",
                command: "podman run -v <HOST>:<CONT> <IMAGEN>",
                sample: "podman run -v ./web:/usr/share/nginx/html nginx"
              )
              #elemento(
                description: "genera una unidad systemd para un contenedor",
                command: "podman generate systemd --new --name <CONTENEDOR>",
                sample: "podman generate systemd --new --name web"
              )
            ]
          )
        ],
      )
    ]
  )
]
)
