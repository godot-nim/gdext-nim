import gdext/private/buildsettings
import gdext/private/propertyinfo
import gdext/private/internalbridge
import gdext/bridge
import gdext/builtinindex
import gdext/classes/[gdengine]
import gdext/objecttools

type ExtensionMain* {.name: Extension.name.} = ptr object of Object

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
