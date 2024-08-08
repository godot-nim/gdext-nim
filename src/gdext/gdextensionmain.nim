import gdextcore/dirty/gdextensioninterface
import gdextcore/[gdclass, staticevents]
import gdextgen/[classindex, builtinclasses]
import gdextgen/classes/[gdengine]
import gdext/[env, init, classautomate, classtraits]
import gdext/classautomate/contracts

import std/macros

macro ExtensionMain*: untyped = ident ExtensionMainName

macro defExtensionMain: untyped =
  let typ = ident ExtensionMainName
  quote do:
    type `typ`* = ref object of Object

defExtensionMain

var extmain*: ExtensionMain

method init(self: ExtensionMain) =
  discard

proc setupExtensionMain* =
  extmain = instantiate ExtensionMain
  Engine.singleton.registerSingleton(className ExtensionMain, extmain)

process initialize_before_scene, "extmain":
  register ExtensionMain
  setupExtensionMain()

process eliminate_scene, "extmain":
  extmain = nil