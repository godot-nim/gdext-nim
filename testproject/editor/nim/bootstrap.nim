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


GDExtensionEntryPoint
