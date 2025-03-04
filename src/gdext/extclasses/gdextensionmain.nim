import gdext/core/[builtinindex, gdclass]
import gdext/classes/[gdengine]
import gdext/gen/[classindex]
import gdext/surface/[userclass, classutils]
import gdext/buildconf

import std/macros

macro defExtensionMain: untyped =
  let typ = ident Extension.name
  quote do:
    type `typ`* = ptr object of Object

defExtensionMain

macro ExtensionMain*: untyped = bindSym Extension.name

var extmain*: ExtensionMain

method onInit(self: ExtensionMain) =
  discard

template initializeExtensionMain* =
  register ExtensionMain
  extmain = instantiate ExtensionMain
  Engine.singleton.registerSingleton(className ExtensionMain, extmain)
template eliminateExtensionMain* =
  Engine.singleton.unregisterSingleton(className ExtensionMain)
  destroy extmain

when isMainModule:
  import gdext/gdinterface/native
  initializeExtensionMain()