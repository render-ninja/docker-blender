import json
import bpy

result = dict()

scene = bpy.context.scene
print("Scene %r frames: %d .. %d" % (scene.name, scene.frame_start, scene.frame_end))

result['frame_start'] = scene.frame_start
result['frame_end'] = scene.frame_end

print(result)

with open("/data/result.json", "w") as file:
	json.dump(result, file)
