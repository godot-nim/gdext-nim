import gdext

{.warning[UnusedImport]:off.}
# import your extension classes here
# import myclass
import cases/use_api_from_toplevel
import cases/primitives
import cases/variant
import cases/enums
import cases/image
import cases/issues
import classes/gdextnode
import classes/gdvirtualnode01
import classes/gdvirtualnode02
import classes/gdtestobject

# ==================================

proc register_classes {.execon: initialize_scene.} =
  # register your extension classes here
  # register MyClass
  register GDExtNode
  register VirtualNode01
  register VirtualNode02
  register TestObject

  # ====================================
  discard


GDExtensionEntryPoint
