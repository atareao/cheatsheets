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
  title: "Chuletilla para QUADLETS",
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
            title: "Contenedores (.container)",
            [
              #elemento(
                description: "define la sección de unidad y su descripción",
                command: "Description=<TEXTO>",
                sample: "Description=Servidor web Nginx"
              )
              #elemento(
                description: "especifica la imagen que ejecutará el contenedor",
                command: "Image=<IMAGEN>",
                sample: "Image=docker.io/library/nginx:latest"
              )
              #elemento(
                description: "fija el nombre del contenedor en ejecución",
                command: "ContainerName=<NOMBRE>",
                sample: "ContainerName=nginx"
              )
              #elemento(
                description: "publica un puerto del host hacia el contenedor",
                command: "PublishPort=<HOST>:<CONTENEDOR>",
                sample: "PublishPort=8080:80"
              )
              #elemento(
                description: "monta una ruta del host dentro del contenedor",
                command: "Volume=<RUTA_HOST>:<RUTA_CONT>",
                sample: "Volume=/srv/web:/usr/share/nginx/html:Z"
              )
              #elemento(
                description: "define una variable de entorno del contenedor",
                command: "Environment=<CLAVE>=<VALOR>",
                sample: "Environment=TZ=Europe/Madrid"
              )
              #elemento(
                description: "reinicia el contenedor según la política indicada en [Service]",
                command: "Restart=always",
                sample: "Restart=always"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Pods, redes y volúmenes",
            [
              #elemento(
                description: "declara un pod y su nombre en [Pod]",
                command: "PodName=<NOMBRE>",
                sample: "PodName=mipod"
              )
              #elemento(
                description: "publica un puerto para todo el pod",
                command: "PublishPort=<HOST>:<CONTENEDOR>",
                sample: "PublishPort=8080:80"
              )
              #elemento(
                description: "conecta el pod a una red concreta",
                command: "Network=<RED>.network",
                sample: "Network=mired.network"
              )
              #elemento(
                description: "define el nombre de una red en [Network]",
                command: "NetworkName=<NOMBRE>",
                sample: "NetworkName=mired"
              )
              #elemento(
                description: "fija la subred asignada a la red",
                command: "Subnet=<CIDR>",
                sample: "Subnet=10.89.0.0/24"
              )
              #elemento(
                description: "define un volumen gestionado en [Volume]",
                command: "VolumeName=<NOMBRE>",
                sample: "VolumeName=datos"
              )
              #elemento(
                description: "selecciona el controlador del volumen",
                command: "Driver=<CONTROLADOR>",
                sample: "Driver=local"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Instalación y rutas",
            [
              #elemento(
                description: "ruta de quadlets de usuario (rootless)",
                command: "~/.config/containers/systemd/",
                sample: "~/.config/containers/systemd/nginx.container"
              )
              #elemento(
                description: "ruta de quadlets de sistema (root)",
                command: "/etc/containers/systemd/",
                sample: "/etc/containers/systemd/nginx.container"
              )
              #elemento(
                description: "recarga las unidades tras añadir o editar un quadlet",
                command: "systemctl --user daemon-reload",
                sample: "systemctl --user daemon-reload"
              )
              #elemento(
                description: "inicia o detiene el servicio generado",
                command: "systemctl --user start|stop <NOMBRE>.service",
                sample: "systemctl --user start nginx.service"
              )
              #elemento(
                description: "muestra el estado del servicio",
                command: "systemctl --user status <NOMBRE>.service",
                sample: "systemctl --user status nginx.service"
              )
              #elemento(
                description: "habilita el servicio al inicio, requiere sección [Install]",
                command: "systemctl --user enable <NOMBRE>.service",
                sample: "systemctl --user enable nginx.service"
              )
              #elemento(
                description: "sigue los registros del servicio en tiempo real",
                command: "journalctl --user -u <NOMBRE> -f",
                sample: "journalctl --user -u nginx -f"
              )
            ]
          )
        ],
        [
          #columna(
            title: "Actualización y genéricos",
            [
              #elemento(
                description: "activa la actualización automática de la imagen en [Container]",
                command: "AutoUpdate=registry",
                sample: "AutoUpdate=registry"
              )
              #elemento(
                description: "declara una imagen gestionada como unidad en [Image]",
                command: "Image=<IMAGEN>",
                sample: "Image=docker.io/library/alpine:latest"
              )
              #elemento(
                description: "actualiza y reinicia los contenedores marcados con AutoUpdate",
                command: "podman auto-update",
                sample: "podman auto-update"
              )
              #elemento(
                description: "simula la actualización sin aplicar cambios",
                command: "podman auto-update --dry-run",
                sample: "podman auto-update --dry-run"
              )
              #elemento(
                description: "genera unidades systemd clásicas, método anterior a quadlets",
                command: "podman generate systemd --new <CONTENEDOR>",
                sample: "podman generate systemd --new --files nginx"
              )
              #elemento(
                description: "mantiene los servicios de usuario activos tras cerrar sesión",
                command: "loginctl enable-linger <USUARIO>",
                sample: "loginctl enable-linger lorenzo"
              )
              #elemento(
                description: "permite habilitar el servicio con systemctl --user enable desde [Install]",
                command: "WantedBy=default.target",
                sample: "WantedBy=default.target"
              )
            ]
          )
        ],
      )
    ]
  )
]
)
