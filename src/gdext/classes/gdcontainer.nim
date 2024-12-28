{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

method getAllowedSizeFlagsHorizontal*(self: Container): PackedInt32Array {.base.} = (discard)
proc getAllowedSizeFlagsHorizontal(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Container](p_instance).getAllowedSizeFlagsHorizontal().encode(r_ret)
template getAllowedSizeFlagsHorizontal_bind*(_: typedesc[Container]): ClassCallVirtual = getAllowedSizeFlagsHorizontal

method getAllowedSizeFlagsVertical*(self: Container): PackedInt32Array {.base.} = (discard)
proc getAllowedSizeFlagsVertical(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Container](p_instance).getAllowedSizeFlagsVertical().encode(r_ret)
template getAllowedSizeFlagsVertical_bind*(_: typedesc[Container]): ClassCallVirtual = getAllowedSizeFlagsVertical

proc queueSort*(self: Container): void =
  expandMethodBind(className Container, "queue_sort", 3218959716)
  methodbind.ptrcall(self, [])

proc fitChildInRect*(self: Container; child: Control; rect: Rect2): void =
  expandMethodBind(className Container, "fit_child_in_rect", 1993438598)
  methodbind.ptrcall(self, [getPtr child, getPtr rect])

const Container_vmap =
  Control.vmap.concat toTable {
    "getallowedsizeflagshorizontal" : "_get_allowed_size_flags_horizontal",
    "getallowedsizeflagsvertical" : "_get_allowed_size_flags_vertical",
    }
template vmap*(_: typedesc[Container]): Table[string, string] = Container_vmap

proc preSortChildren*(self: Container): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("pre_sort_children")
  self.emitSignal(signalname)

proc sortChildren*(self: Container): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("sort_children")
  self.emitSignal(signalname)