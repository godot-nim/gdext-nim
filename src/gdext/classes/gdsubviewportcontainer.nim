{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer
export SubViewportContainer

method propagateInputEvent*(self: SubViewportContainer; event: gdref InputEvent): bool {.base.} = (discard)
proc registerVirtual_propagateInputEvent*[T: SubViewportContainer](Self: typedesc[T]) =
  Self.vmethods[newStringName"_propagate_input_event"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[SubViewportContainer](p_instance).propagateInputEvent(p_args[0].decode(gdref InputEvent)).encode(r_ret)

proc setStretch*(self: SubViewportContainer; enable: bool): void =
  expandMethodBind(className SubViewportContainer, "set_stretch", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isStretchEnabled*(self: SubViewportContainer): bool =
  expandMethodBind(className SubViewportContainer, "is_stretch_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setStretchShrink*(self: SubViewportContainer; amount: int32): void =
  expandMethodBind(className SubViewportContainer, "set_stretch_shrink", 1286410249)
  methodbind.ptrcall(self, [getPtr amount])

proc getStretchShrink*(self: SubViewportContainer): int32 =
  expandMethodBind(className SubViewportContainer, "get_stretch_shrink", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setMouseTarget*(self: SubViewportContainer; amount: bool): void =
  expandMethodBind(className SubViewportContainer, "set_mouse_target", 2586408642)
  methodbind.ptrcall(self, [getPtr amount])

proc isMouseTargetEnabled*(self: SubViewportContainer): bool =
  expandMethodBind(className SubViewportContainer, "is_mouse_target_enabled", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template stretch*(self: SubViewportContainer): untyped = self.isStretchEnabled()
template `stretch=`*(self: SubViewportContainer; value) = self.setStretch(value)

template stretchShrink*(self: SubViewportContainer): untyped = self.getStretchShrink()
template `stretchShrink=`*(self: SubViewportContainer; value) = self.setStretchShrink(value)

template mouseTarget*(self: SubViewportContainer): untyped = self.isMouseTargetEnabled()
template `mouseTarget=`*(self: SubViewportContainer; value) = self.setMouseTarget(value)
