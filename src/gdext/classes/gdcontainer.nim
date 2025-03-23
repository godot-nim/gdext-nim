{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

method getAllowedSizeFlagsHorizontal*(self: Container): PackedInt32Array {.base.} = (discard)
proc registerVirtual_getAllowedSizeFlagsHorizontal*[T: Container](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_allowed_size_flags_horizontal"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Container](p_instance).getAllowedSizeFlagsHorizontal().encode(r_ret)

method getAllowedSizeFlagsVertical*(self: Container): PackedInt32Array {.base.} = (discard)
proc registerVirtual_getAllowedSizeFlagsVertical*[T: Container](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_allowed_size_flags_vertical"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Container](p_instance).getAllowedSizeFlagsVertical().encode(r_ret)

proc queueSort*(self: Container): void =
  expandMethodBind(className Container, "queue_sort", 3218959716)
  methodbind.ptrcall(self, [])

proc fitChildInRect*(self: Container; child: Control; rect: Rect2): void =
  expandMethodBind(className Container, "fit_child_in_rect", 1993438598)
  methodbind.ptrcall(self, [getPtr child, getPtr rect])

proc call_preSortChildren*(self: Container): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("pre_sort_children")
  self.emitSignal(signalname)

proc call_sortChildren*(self: Container): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("sort_children")
  self.emitSignal(signalname)