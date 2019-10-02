#!/usr/bin/env bash

docker run --rm -v $(pwd):/data blender-build-env /data/race_spaceship.blend -P /data/analyze.py
