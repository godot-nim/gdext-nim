{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

method propagateInputEvent*(self: SubViewportContainer; event: gdref InputEvent): bool {.base.} = (discard)
proc propagateInputEvent(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[SubViewportContainer](p_instance).propagateInputEvent(p_args[0].decode(gdref InputEvent)).encode(r_ret)
template propagateInputEvent_bind*(_: typedesc[SubViewportContainer]): ClassCallVirtual = propagateInputEvent

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

template stretch*(self: SubViewportContainer): untyped = self.isStretchEnabled()
template `stretch=`*(self: SubViewportContainer; value) = self.setStretch(value)

template stretchShrink*(self: SubViewportContainer): untyped = self.getStretchShrink()
template `stretchShrink=`*(self: SubViewportContainer; value) = self.setStretchShrink(value)

const SubViewportContainer_vmap =
  Container.vmap.concat toTable {
    "propagateinputevent" : "_propagate_input_event",
    }
template vmap*(_: typedesc[SubViewportContainer]): Table[string, string] = SubViewportContainer_vmap