import gdextcore/dirty/gdextensioninterface
import gdextcore/[typeshift]
import gdextgen/[classindex, builtinclasses, utilityfuncs]
import gdext/[init, classautomate]
import gdext/classautomate/contracts
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