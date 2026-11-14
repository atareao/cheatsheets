default:
    @just --list

build:
    #!/bin/bash
    if [[ ! -d build ]]; then
        mkdir ./build
    fi
    for cheat in src/*.typ; do
        input=$(basename "$cheat")
        if [[ "$input" == "template.typ" ]]; then
            continue
        fi
        output=${input/\.typ/.pdf}
        echo "$input"
        typst compile "./src/${input}" "./build/${output}"
    done

clean:
    #!/bin/bash
    if [[ -d build ]]; then
        rm -rf ./build
    fi
