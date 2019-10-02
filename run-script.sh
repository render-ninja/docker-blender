#!/usr/bin/env bash
set -x

realpath() {
    path=`eval echo "$1"`
    folder=$(dirname "$path")
    echo $(cd "$folder"; pwd)/$(basename "$path");
}

if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
    echo "Usage: $0 <blender file> <python script>"
    exit
fi

echo "Blender File: $1"
echo "Python script: $2"

docker run --rm -v $(realpath $1):/file.blend -v $(realpath $2):/script.py joaomlneto/blender /file.blend -P /script.py
