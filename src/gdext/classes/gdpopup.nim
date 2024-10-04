{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdwindow; export gdwindow

const Popup_vmap =
  Window.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Popup]): Table[string, string] = Popup_vmap

proc popupHide*(self: Popup): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("popup_hide")
  self.emitSignal(signalname)