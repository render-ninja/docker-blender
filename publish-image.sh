#!/usr/bin/env bash

docker tag joaomlneto-blender-build joaomlneto/blender:v2.80
docker tag joaomlneto-blender-build joaomlneto/blender:latest
docker push joaomlneto/blender:v2.80
docker push joaomlneto/blender:latest
