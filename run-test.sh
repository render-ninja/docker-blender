#!/usr/bin/env bash

docker run --rm -v $(pwd):/data joaomlneto/blender /data/race_spaceship.blend -P /data/analyze.py
