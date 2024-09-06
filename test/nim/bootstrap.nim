import gdext

# import your extension classes here
# import myclass
import godotSideTester

{.warning[UnusedImport]:off.}
import geometrics
import cases/use_api_from_toplevel
import cases/array
import classes/gdNimSideTester
import classes/gdproptestnode
import classes/gdtestobject

# ==================================

process initialize_scene:
  # register your extension classes here
  # register MyClass
  register GodotSideTester
  register NimSideTester
  register TestObject
  register PropTestNode

  # ====================================
  discard


GDExtensionEntryPoint