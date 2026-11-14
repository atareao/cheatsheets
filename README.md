# Cheatsheets (Chuletillas)

Chuletillas de referencia —en PDF, maquetadas con [Typst](https://typst.app/)— sobre las herramientas que uso a diario.

## Chuletillas

- [Docker](src/docker.typ)
- [Podman](src/podman.typ)
- [Quadlets (systemd)](src/quadlets.typ)
- [Just](src/just.typ)
- [Git](src/git.typ)
- [Cargo (Rust)](src/cargo.typ)
- [Typst](src/typst.typ)
- [Restic](src/restic.typ)
- [Rustic](src/rustic.typ)

## Compilar

Requiere [Typst](https://typst.app/) y, opcionalmente, la fuente *Ubuntu*.

```bash
just build     # genera un PDF por chuletilla en ./build/
just clean     # borra ./build/
```

O directamente una sola:

```bash
typst compile src/docker.typ build/docker.pdf
```

## Estructura

- `src/<tema>.typ` — fuente de cada chuletilla (autocontenida; importa `src/template.typ`).
- `src/template.typ` — helpers compartidos de maquetación (`header`, `elemento`, `columna`).
