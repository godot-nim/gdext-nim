import gdext/core/[gdclass]
import gdextgen/[classindex]
import gdextgen/classes/[gdengine]
import gdext/surface/[userclass, classutils]
import gdext/buildconf

import std/macros

macro defExtensionMain: untyped =
  let typ = ident Extension.name
  quote do:
    type `typ`* = ref object of Object

defExtensionMain

macro ExtensionMain*: untyped = bindSym Extension.name

var extmain*: ExtensionMain

method init(self: ExtensionMain) =
  discard

template initializeExtensionMain* =
  register ExtensionMain
  extmain = instantiate ExtensionMain
  Engine.singleton.registerSingleton(className ExtensionMain, extmain)
template eliminateExtensionMain* =
  Engine.singleton.unregisterSingleton(className ExtensionMain)
  extmain = nil

when isMainModule:
  import gdext/dirty/gdextensioninterface
  initializeExtensionMain()