import std/unittest

import gdext
import gdext/nameformats

{.warning[UnusedImport]:off.}
# import your extension classes here
# import myclass
import cases/use_api_from_toplevel
import cases/primitives
import cases/variant
import cases/image
import cases/prints
import cases/issues
import cases/singletons
import classes/gdextnode
import classes/gdextresource
import classes/gdvirtualnode01
import classes/gdvirtualnode02
import classes/gdtestobject
import classes/gdextlabel
import classes/gdsingleton
import classes/gdfunctiontester
import classes/gdenumtester
import classes/gdrenametester

# ==================================

proc set_formatters {.execon: EntryPoint.} =
  nameformats.defaultClassFormatter = nameformats.toGodotClassCase
  nameformats.defaultPropertyFormatter = nameformats.toGodotPropertyCase
  nameformats.defaultFunctionFormatter = nameformats.toGodotFuncCase
  nameformats.defaultVirtualMethodFormatter = nameformats.toGodotInternalFuncCase
  nameformats.defaultConstFormatter = nameformats.toUpperSnakeCase

proc startup {.execon: MainLoopStartup.} =
  test "call startup":
    check true

proc frame {.execon: MainLoopFrame.} = once:
  test "call frame":
    check true

proc shutdown {.execon: MainLoopShutdown.} =
  test "call shutdown":
    check true

proc register_classes {.execon: initialize_scene.} =
  # register your extension classes here
  # register MyClass
  register GDExtNode
  register TestObject

  # ====================================
  discard

import gdext/private/libgodot
import gdext/classes/gdGodotInstance

GDExtensionEntryPoint

var cmdCount {.exportc.}: cint
var cmdLine {.exportc.}: cstringArray

proc main(argc: cint; args: cstringArray; env: cstringArray): cint {.exportc.} =
  echo "main"
  cmdCount = argc
  cmdLine = args
  loadLibGodot()
  echo "libgodot loaded"
  let godot = createGodotInstance(argc, args, entryPoint)
  echo "godot instance created"
  if godot.isNil:
    raise newException(ValueError, "Godot godot is not created")
  if not godot.isStarted:
    discard start godot
    echo "godot started"
  while not godot.iteration:
    echo "godot iteration"
    discard
  echo "exiting main"
  destroyGodotInstance(godot)
  echo "godot instance destroyed"
  unloadLibGodot()
  echo "libgodot unloaded"