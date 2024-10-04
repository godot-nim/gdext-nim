{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdinputeventgesture; export gdinputeventgesture

proc setDelta*(self: InputEventPanGesture; delta: Vector2): void =
  expandMethodBind(className InputEventPanGesture, "set_delta", 743155724)
  var `?param` = [getPtr delta]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDelta*(self: InputEventPanGesture): Vector2 =
  expandMethodBind(className InputEventPanGesture, "get_delta", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

template delta*(self: InputEventPanGesture): untyped = self.getDelta()
template `delta=`*(self: InputEventPanGesture; value) = self.setDelta(value)

const InputEventPanGesture_vmap =
  InputEventGesture.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InputEventPanGesture]): Table[string, string] = InputEventPanGesture_vmap