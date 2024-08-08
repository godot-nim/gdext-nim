import gdextcore/dirty/gdextensioninterface
import gdextcore/[typeshift, staticevents]
import gdextgen/[classindex, builtinclasses, utilityfuncs]
import gdext/[env, init, classautomate]
import gdext/classautomate/contracts

import std/strformat
import std/macros

const ExtensionManagerName = ExtensionMainName & "InternalManager"

macro ExtensionManager*: untyped = ident ExtensionManagerName

macro defExtensionManager: untyped =
  let typ = ident ExtensionManagerName
  quote do:
    type `typ`* = ref object of Node

defExtensionManager

var gIsRunningInEditor: bool
proc getIsRunningInEditor*: bool {.inline.} = gIsRunningInEditor
template isRunningInEditor*: bool = getIsRunningInEditor()

method init(self: ExtensionManager) =
  print variant gdstring &"{loaded} classes successfully loaded."
  gIsRunningInEditor = true

process initialize_editor, "extension_manager":
  register ExtensionManager