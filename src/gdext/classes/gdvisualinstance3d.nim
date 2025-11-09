{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(VisualInstance3D, Node3D)

method getAabb*(self: VisualInstance3D): AABB {.base.} = (discard)
proc registerVirtual_getAabb*[T: VisualInstance3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_aabb"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualInstance3D](p_instance).getAabb().encode(r_ret)

proc setBase*(self: VisualInstance3D; base: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualInstance3D, "set_base", 2722037293)
  methodbind.ptrcall(self, [getPtr base], void)

proc getBase*(self: VisualInstance3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualInstance3D, "get_base", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getInstance*(self: VisualInstance3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualInstance3D, "get_instance", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setLayerMask*(self: VisualInstance3D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualInstance3D, "set_layer_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getLayerMask*(self: VisualInstance3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualInstance3D, "get_layer_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setLayerMaskValue*(self: VisualInstance3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualInstance3D, "set_layer_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getLayerMaskValue*(self: VisualInstance3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualInstance3D, "get_layer_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setSortingOffset*(self: VisualInstance3D; offset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualInstance3D, "set_sorting_offset", 373806689)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getSortingOffset*(self: VisualInstance3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualInstance3D, "get_sorting_offset", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSortingUseAabbCenter*(self: VisualInstance3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualInstance3D, "set_sorting_use_aabb_center", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isSortingUseAabbCenter*(self: VisualInstance3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualInstance3D, "is_sorting_use_aabb_center", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getAabb*(self: VisualInstance3D): AABB =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualInstance3D, "get_aabb", 1068685055)
  methodbind.ptrcall(self, [], AABB)

template layers*(self: VisualInstance3D): untyped = self.getLayerMask()
template `layers=`*(self: VisualInstance3D; value) = self.setLayerMask(value)

template sortingOffset*(self: VisualInstance3D): untyped = self.getSortingOffset()
template `sortingOffset=`*(self: VisualInstance3D; value) = self.setSortingOffset(value)

template sortingUseAabbCenter*(self: VisualInstance3D): untyped = self.isSortingUseAabbCenter()
template `sortingUseAabbCenter=`*(self: VisualInstance3D; value) = self.setSortingUseAabbCenter(value)
