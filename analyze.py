import json
import bpy

scene = bpy.context.scene

result = dict()
result['frame_start'] = scene.frame_start
result['frame_end'] = scene.frame_end

print(result)
