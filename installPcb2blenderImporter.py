import bpy

bpy.ops.preferences.addon_install(overwrite=True, filepath='./pcb2blender_importer_2-6.zip')
bpy.ops.preferences.addon_enable(module='pcb2blender_importer')
bpy.ops.wm.save_userpref()