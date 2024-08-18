import gdextcore/[gdclass]
import gdextgen/[classindex]
import gdextgen/classes/[gdengine]
import gdext/[env, classautomate, classtraits]

import std/macros

macro defExtensionMain: untyped =
  let typ = ident ExtensionMainName
  quote do:
    type `typ`* = ref object of Object

defExtensionMain

macro ExtensionMain*: untyped = bindSym ExtensionMainName

var extmain*: ExtensionMain

method init(self: ExtensionMain) =
  discard

template initializeExtensionMain* =
  register ExtensionMain
  extmain = instantiate ExtensionMain
  Engine.singleton.registerSingleton(className ExtensionMain, extmain)
proc eliminateExtensionMain* =
  extmain = nil

when isMainModule:
  import gdextcore/dirty/gdextensioninterface
  initializeExtensionMain()