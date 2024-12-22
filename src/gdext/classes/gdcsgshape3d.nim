{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgeometryinstance3d; export gdgeometryinstance3d

proc isRootShape*(self: CSGShape3D): bool =
  expandMethodBind(className CSGShape3D, "is_root_shape", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setOperation*(self: CSGShape3D; operation: CSGShape3D_Operation): void =
  expandMethodBind(className CSGShape3D, "set_operation", 811425055)
  var `?param` = [getPtr operation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOperation*(self: CSGShape3D): CSGShape3D_Operation =
  expandMethodBind(className CSGShape3D, "get_operation", 2662425879)
  var ret: encoded CSGShape3D_Operation
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CSGShape3D_Operation)

proc setSnap*(self: CSGShape3D; snap: Float): void =
  expandMethodBind(className CSGShape3D, "set_snap", 373806689)
  var `?param` = [getPtr snap]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSnap*(self: CSGShape3D): Float =
  expandMethodBind(className CSGShape3D, "get_snap", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setUseCollision*(self: CSGShape3D; operation: bool): void =
  expandMethodBind(className CSGShape3D, "set_use_collision", 2586408642)
  var `?param` = [getPtr operation]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingCollision*(self: CSGShape3D): bool =
  expandMethodBind(className CSGShape3D, "is_using_collision", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCollisionLayer*(self: CSGShape3D; layer: uint32): void =
  expandMethodBind(className CSGShape3D, "set_collision_layer", 1286410249)
  var `?param` = [getPtr layer]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionLayer*(self: CSGShape3D): uint32 =
  expandMethodBind(className CSGShape3D, "get_collision_layer", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setCollisionMask*(self: CSGShape3D; mask: uint32): void =
  expandMethodBind(className CSGShape3D, "set_collision_mask", 1286410249)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMask*(self: CSGShape3D): uint32 =
  expandMethodBind(className CSGShape3D, "get_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setCollisionMaskValue*(self: CSGShape3D; layerNumber: int32; value: bool): void =
  expandMethodBind(className CSGShape3D, "set_collision_mask_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMaskValue*(self: CSGShape3D; layerNumber: int32): bool =
  expandMethodBind(className CSGShape3D, "get_collision_mask_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setCollisionLayerValue*(self: CSGShape3D; layerNumber: int32; value: bool): void =
  expandMethodBind(className CSGShape3D, "set_collision_layer_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionLayerValue*(self: CSGShape3D; layerNumber: int32): bool =
  expandMethodBind(className CSGShape3D, "get_collision_layer_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setCollisionPriority*(self: CSGShape3D; priority: Float): void =
  expandMethodBind(className CSGShape3D, "set_collision_priority", 373806689)
  var `?param` = [getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionPriority*(self: CSGShape3D): Float =
  expandMethodBind(className CSGShape3D, "get_collision_priority", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setCalculateTangents*(self: CSGShape3D; enabled: bool): void =
  expandMethodBind(className CSGShape3D, "set_calculate_tangents", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCalculatingTangents*(self: CSGShape3D): bool =
  expandMethodBind(className CSGShape3D, "is_calculating_tangents", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getMeshes*(self: CSGShape3D): Array =
  expandMethodBind(className CSGShape3D, "get_meshes", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

template operation*(self: CSGShape3D): untyped = self.getOperation()
template `operation=`*(self: CSGShape3D; value) = self.setOperation(value)

template snap*(self: CSGShape3D): untyped = self.getSnap()
template `snap=`*(self: CSGShape3D; value) = self.setSnap(value)

template calculateTangents*(self: CSGShape3D): untyped = self.isCalculatingTangents()
template `calculateTangents=`*(self: CSGShape3D; value) = self.setCalculateTangents(value)

template useCollision*(self: CSGShape3D): untyped = self.isUsingCollision()
template `useCollision=`*(self: CSGShape3D; value) = self.setUseCollision(value)

template collisionLayer*(self: CSGShape3D): untyped = self.getCollisionLayer()
template `collisionLayer=`*(self: CSGShape3D; value) = self.setCollisionLayer(value)

template collisionMask*(self: CSGShape3D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: CSGShape3D; value) = self.setCollisionMask(value)

template collisionPriority*(self: CSGShape3D): untyped = self.getCollisionPriority()
template `collisionPriority=`*(self: CSGShape3D; value) = self.setCollisionPriority(value)

const CSGShape3D_vmap =
  GeometryInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CSGShape3D]): Table[string, string] = CSGShape3D_vmap