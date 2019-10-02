#!/usr/bin/env bash
set -e

realpath() {
    path=`eval echo "$1"`
    folder=$(dirname "$path")
    echo $(cd "$folder"; pwd)/$(basename "$path");
}

if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
    echo "Usage: ./$0 <blender file> <python script>"
    exit
fi

docker run --rm -v \
  $(realpath $1):/file.blend -v $(realpath $2):/script.py \
  joaomlneto/blender /file.blend -P /script.py \
  | sed '1,3d' | sed -n -e :a -e '1,2!{P;N;D;};N;ba'
