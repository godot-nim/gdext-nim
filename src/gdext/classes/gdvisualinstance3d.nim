{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

method getAabb*(self: VisualInstance3D): AABB {.base.} = (discard)
proc getAabb(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[VisualInstance3D](p_instance).getAabb().encode(r_ret)
template getAabb_bind*(_: typedesc[VisualInstance3D]): ClassCallVirtual = getAabb

proc setBase*(self: VisualInstance3D; base: RID): void =
  expandMethodBind(className VisualInstance3D, "set_base", 2722037293)
  methodbind.ptrcall(self, [getPtr base])

proc getBase*(self: VisualInstance3D): RID =
  expandMethodBind(className VisualInstance3D, "get_base", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc getInstance*(self: VisualInstance3D): RID =
  expandMethodBind(className VisualInstance3D, "get_instance", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc setLayerMask*(self: VisualInstance3D; mask: uint32): void =
  expandMethodBind(className VisualInstance3D, "set_layer_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask])

proc getLayerMask*(self: VisualInstance3D): uint32 =
  expandMethodBind(className VisualInstance3D, "get_layer_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setLayerMaskValue*(self: VisualInstance3D; layerNumber: int32; value: bool): void =
  expandMethodBind(className VisualInstance3D, "set_layer_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value])

proc getLayerMaskValue*(self: VisualInstance3D; layerNumber: int32): bool =
  expandMethodBind(className VisualInstance3D, "get_layer_mask_value", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr layerNumber], addr ret)
  (addr ret).decode_result(bool)

proc setSortingOffset*(self: VisualInstance3D; offset: Float): void =
  expandMethodBind(className VisualInstance3D, "set_sorting_offset", 373806689)
  methodbind.ptrcall(self, [getPtr offset])

proc getSortingOffset*(self: VisualInstance3D): Float =
  expandMethodBind(className VisualInstance3D, "get_sorting_offset", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSortingUseAabbCenter*(self: VisualInstance3D; enabled: bool): void =
  expandMethodBind(className VisualInstance3D, "set_sorting_use_aabb_center", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isSortingUseAabbCenter*(self: VisualInstance3D): bool =
  expandMethodBind(className VisualInstance3D, "is_sorting_use_aabb_center", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getAabb*(self: VisualInstance3D): AABB =
  expandMethodBind(className VisualInstance3D, "get_aabb", 1068685055)
  var ret: encoded AABB
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AABB)

template layers*(self: VisualInstance3D): untyped = self.getLayerMask()
template `layers=`*(self: VisualInstance3D; value) = self.setLayerMask(value)

template sortingOffset*(self: VisualInstance3D): untyped = self.getSortingOffset()
template `sortingOffset=`*(self: VisualInstance3D; value) = self.setSortingOffset(value)

template sortingUseAabbCenter*(self: VisualInstance3D): untyped = self.isSortingUseAabbCenter()
template `sortingUseAabbCenter=`*(self: VisualInstance3D; value) = self.setSortingUseAabbCenter(value)

const VisualInstance3D_vmap =
  Node3D.vmap.concat toTable {
    "getaabb" : "_get_aabb",
    }
template vmap*(_: typedesc[VisualInstance3D]): Table[string, string] = VisualInstance3D_vmap