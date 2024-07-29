import godotcore/dirty/gdextensioninterface
import godotcore/[typeshift]
import godotgen/[classindex, builtinclasses, utilityfuncs]
import godot/[init, classautomate]
import godot/classautomate/contracts
export InitializationLevel, gdcall

import std/strformat

type ExtensionManager = ref object of Node

var gIsRunningInEditor: bool
proc getIsRunningInEditor*: bool {.inline.} = gIsRunningInEditor
template isRunningInEditor*: bool = getIsRunningInEditor()

method init(self: ExtensionManager) =
  print variant gdstring &"{contracts.invoked.len} classes successfully loaded."
  gIsRunningInEditor = true

process initialize_editor, "extension_manager":
  register ExtensionManager