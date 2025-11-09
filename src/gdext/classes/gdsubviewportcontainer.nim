{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

expandOnClassImported(SubViewportContainer, Container)

method propagateInputEvent*(self: SubViewportContainer; event: gdref InputEvent): bool {.base.} = (discard)
proc registerVirtual_propagateInputEvent*[T: SubViewportContainer](Self: typedesc[T]) =
  Self.vmethods[newStringName"_propagate_input_event"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[SubViewportContainer](p_instance).propagateInputEvent(p_args[0].decode(gdref InputEvent)).encode(r_ret)

proc setStretch*(self: SubViewportContainer; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubViewportContainer, "set_stretch", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isStretchEnabled*(self: SubViewportContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubViewportContainer, "is_stretch_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setStretchShrink*(self: SubViewportContainer; amount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubViewportContainer, "set_stretch_shrink", 1286410249)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getStretchShrink*(self: SubViewportContainer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubViewportContainer, "get_stretch_shrink", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMouseTarget*(self: SubViewportContainer; amount: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubViewportContainer, "set_mouse_target", 2586408642)
  methodbind.ptrcall(self, [getPtr amount], void)

proc isMouseTargetEnabled*(self: SubViewportContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubViewportContainer, "is_mouse_target_enabled", 2240911060)
  methodbind.ptrcall(self, [], bool)

template stretch*(self: SubViewportContainer): untyped = self.isStretchEnabled()
template `stretch=`*(self: SubViewportContainer; value) = self.setStretch(value)

template stretchShrink*(self: SubViewportContainer): untyped = self.getStretchShrink()
template `stretchShrink=`*(self: SubViewportContainer; value) = self.setStretchShrink(value)

template mouseTarget*(self: SubViewportContainer): untyped = self.isMouseTargetEnabled()
template `mouseTarget=`*(self: SubViewportContainer; value) = self.setMouseTarget(value)
