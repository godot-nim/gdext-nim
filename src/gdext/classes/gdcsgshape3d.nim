{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgeometryinstance3d; export gdgeometryinstance3d

expandOnClassImported(CSGShape3D, GeometryInstance3D)

proc isRootShape*(self: CSGShape3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "is_root_shape", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setOperation*(self: CSGShape3D; operation: CSGShape3D_Operation): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "set_operation", 811425055)
  methodbind.ptrcall(self, [getPtr operation], void)

proc getOperation*(self: CSGShape3D): CSGShape3D_Operation =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "get_operation", 2662425879)
  methodbind.ptrcall(self, [], CSGShape3D_Operation)

proc setSnap*(self: CSGShape3D; snap: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "set_snap", 373806689)
  methodbind.ptrcall(self, [getPtr snap], void)

proc getSnap*(self: CSGShape3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "get_snap", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setUseCollision*(self: CSGShape3D; operation: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "set_use_collision", 2586408642)
  methodbind.ptrcall(self, [getPtr operation], void)

proc isUsingCollision*(self: CSGShape3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "is_using_collision", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollisionLayer*(self: CSGShape3D; layer: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "set_collision_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layer], void)

proc getCollisionLayer*(self: CSGShape3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "get_collision_layer", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCollisionMask*(self: CSGShape3D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getCollisionMask*(self: CSGShape3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "get_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCollisionMaskValue*(self: CSGShape3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "set_collision_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getCollisionMaskValue*(self: CSGShape3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "get_collision_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setCollisionLayerValue*(self: CSGShape3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "set_collision_layer_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getCollisionLayerValue*(self: CSGShape3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "get_collision_layer_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setCollisionPriority*(self: CSGShape3D; priority: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "set_collision_priority", 373806689)
  methodbind.ptrcall(self, [getPtr priority], void)

proc getCollisionPriority*(self: CSGShape3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "get_collision_priority", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc bakeCollisionShape*(self: CSGShape3D): gdref ConcavePolygonShape3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "bake_collision_shape", 36102322)
  methodbind.ptrcall(self, [], gdref ConcavePolygonShape3D)

proc setCalculateTangents*(self: CSGShape3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "set_calculate_tangents", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isCalculatingTangents*(self: CSGShape3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "is_calculating_tangents", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getMeshes*(self: CSGShape3D): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "get_meshes", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc bakeStaticMesh*(self: CSGShape3D): gdref ArrayMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGShape3D, "bake_static_mesh", 1605880883)
  methodbind.ptrcall(self, [], gdref ArrayMesh)

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
