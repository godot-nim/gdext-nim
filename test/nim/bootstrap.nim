import gdext

{.warning[UnusedImport]:off.}
# import your extension classes here
# import myclass
import cases/geometrics
import cases/use_api_from_toplevel
import cases/array
import cases/variant
import classes/gdextnode
import classes/gdproptestnode
import classes/gdtestobject

# ==================================

proc register_classes {.execon: initialize_scene.} =
  # register your extension classes here
  # register MyClass
  register GDExtNode
  register TestObject
  register PropTestNode

  # ====================================
  discard


GDExtensionEntryPoint