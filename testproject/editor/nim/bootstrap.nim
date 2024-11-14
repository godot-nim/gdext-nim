import gdext

{.warning[UnusedImport]:off.}
# import your extension classes here
# import myclass
import classes/gdproptestnode
import classes/gdproptestnode_pragmas
import classes/gdsignalpublisher
import classes/gdsignalsubscriber

# ==================================

proc register_classes {.execon: initialize_scene.} =
  # register your extension classes here
  # register MyClass
  register PropTestNode
  register PropTestNodePragmas
  register SignalPublisher
  register SignalSubscriber

  # ====================================
  discard


GDExtensionEntryPoint
