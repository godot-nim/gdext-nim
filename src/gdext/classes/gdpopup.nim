{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdwindow; export gdwindow

proc call_popupHide*(self: Popup): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("popup_hide")
  self.emitSignal(signalname)