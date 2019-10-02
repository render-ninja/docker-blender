#!/usr/bin/env bash
set -e

echo $@
/opt/blender/blender -b -noaudio $@
