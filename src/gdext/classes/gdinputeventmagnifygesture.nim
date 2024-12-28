{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventgesture; export gdinputeventgesture

proc setFactor*(self: InputEventMagnifyGesture; factor: Float): void =
  expandMethodBind(className InputEventMagnifyGesture, "set_factor", 373806689)
  methodbind.ptrcall(self, [getPtr factor])

proc getFactor*(self: InputEventMagnifyGesture): Float =
  expandMethodBind(className InputEventMagnifyGesture, "get_factor", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template factor*(self: InputEventMagnifyGesture): untyped = self.getFactor()
template `factor=`*(self: InputEventMagnifyGesture; value) = self.setFactor(value)

const InputEventMagnifyGesture_vmap =
  InputEventGesture.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InputEventMagnifyGesture]): Table[string, string] = InputEventMagnifyGesture_vmap