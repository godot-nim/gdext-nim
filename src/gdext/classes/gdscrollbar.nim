{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrange; export gdrange

proc setCustomStep*(self: ScrollBar; step: Float): void =
  expandMethodBind(className ScrollBar, "set_custom_step", 373806689)
  methodbind.ptrcall(self, [getPtr step])

proc getCustomStep*(self: ScrollBar): Float =
  expandMethodBind(className ScrollBar, "get_custom_step", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template customStep*(self: ScrollBar): untyped = self.getCustomStep()
template `customStep=`*(self: ScrollBar; value) = self.setCustomStep(value)

const ScrollBar_vmap =
  Range.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ScrollBar]): Table[string, string] = ScrollBar_vmap

proc scrolling*(self: ScrollBar): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("scrolling")
  self.emitSignal(signalname)