import gdext

# import your extension classes here
# import myclass
import classes/gdproptestnode
import classes/gdproptestnode_pragmas
import classes/gddoctestnode
import classes/gdsignalpublisher
import classes/gdsignalsubscriber

# ==================================

proc register_classes {.execon: initialize_scene.} =
  # register your extension classes here
  # register MyClass
  register SignalPublisher
  register SignalSubscriber

  # ====================================
  discard

import gdext/private/libgodot
import gdext/classes/gdGodotInstance

GDExtensionEntryPoint

proc main(argc: cint; args: cstringArray; env: cstringArray): cint {.exportc.} =
  loadLibGodot()
  let godot = createGodotInstance(argc, args, entryPoint)
  if godot.isNil:
    raise newException(ValueError, "Godot godot is not created")
  if not godot.isStarted:
    discard start godot
  while not godot.iteration:
    discard
  destroyGodotInstance(godot)
  unloadLibGodot()