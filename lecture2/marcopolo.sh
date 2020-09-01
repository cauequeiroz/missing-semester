#!/usr/bin/sh

marco () {
    echo "Saving place: $(pwd)"
    echo "$(pwd)" > /tmp/marcopolo.txt
}

polo () {
    dirname=$(cat /tmp/marcopolo.txt)
    echo "Moving to: $dirname"
    cd $dirname
}
