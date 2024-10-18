{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setShape*(self: PhysicsShapeQueryParameters3D; shape: gdref Resource): void =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "set_shape", 968641751)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShape*(self: PhysicsShapeQueryParameters3D): gdref Resource =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "get_shape", 121922552)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Resource)

proc setShapeRid*(self: PhysicsShapeQueryParameters3D; shape: Rid): void =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "set_shape_rid", 2722037293)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShapeRid*(self: PhysicsShapeQueryParameters3D): Rid =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "get_shape_rid", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc setTransform*(self: PhysicsShapeQueryParameters3D; transform: Transform3D): void =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "set_transform", 2952846383)
  var `?param` = [getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTransform*(self: PhysicsShapeQueryParameters3D): Transform3D =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "get_transform", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc setMotion*(self: PhysicsShapeQueryParameters3D; motion: Vector3): void =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "set_motion", 3460891852)
  var `?param` = [getPtr motion]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMotion*(self: PhysicsShapeQueryParameters3D): Vector3 =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "get_motion", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setMargin*(self: PhysicsShapeQueryParameters3D; margin: Float): void =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "set_margin", 373806689)
  var `?param` = [getPtr margin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMargin*(self: PhysicsShapeQueryParameters3D): Float =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "get_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setCollisionMask*(self: PhysicsShapeQueryParameters3D; collisionMask: uint32): void =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "set_collision_mask", 1286410249)
  var `?param` = [getPtr collisionMask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMask*(self: PhysicsShapeQueryParameters3D): uint32 =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "get_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setExclude*(self: PhysicsShapeQueryParameters3D; exclude: TypedArray[Rid]): void =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "set_exclude", 381264803)
  var `?param` = [getPtr exclude]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExclude*(self: PhysicsShapeQueryParameters3D): TypedArray[Rid] =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "get_exclude", 3995934104)
  var ret: encoded TypedArray[Rid]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Rid])

proc setCollideWithBodies*(self: PhysicsShapeQueryParameters3D; enable: bool): void =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "set_collide_with_bodies", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollideWithBodiesEnabled*(self: PhysicsShapeQueryParameters3D): bool =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "is_collide_with_bodies_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCollideWithAreas*(self: PhysicsShapeQueryParameters3D; enable: bool): void =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "set_collide_with_areas", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollideWithAreasEnabled*(self: PhysicsShapeQueryParameters3D): bool =
  expandMethodBind(className PhysicsShapeQueryParameters3D, "is_collide_with_areas_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template collisionMask*(self: PhysicsShapeQueryParameters3D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: PhysicsShapeQueryParameters3D; value) = self.setCollisionMask(value)

template exclude*(self: PhysicsShapeQueryParameters3D): untyped = self.getExclude()
template `exclude=`*(self: PhysicsShapeQueryParameters3D; value) = self.setExclude(value)

template margin*(self: PhysicsShapeQueryParameters3D): untyped = self.getMargin()
template `margin=`*(self: PhysicsShapeQueryParameters3D; value) = self.setMargin(value)

template motion*(self: PhysicsShapeQueryParameters3D): untyped = self.getMotion()
template `motion=`*(self: PhysicsShapeQueryParameters3D; value) = self.setMotion(value)

template shape*(self: PhysicsShapeQueryParameters3D): untyped = self.getShape()
template `shape=`*(self: PhysicsShapeQueryParameters3D; value) = self.setShape(value)

template shapeRid*(self: PhysicsShapeQueryParameters3D): untyped = self.getShapeRid()
template `shapeRid=`*(self: PhysicsShapeQueryParameters3D; value) = self.setShapeRid(value)

template transform*(self: PhysicsShapeQueryParameters3D): untyped = self.getTransform()
template `transform=`*(self: PhysicsShapeQueryParameters3D; value) = self.setTransform(value)

template collideWithBodies*(self: PhysicsShapeQueryParameters3D): untyped = self.isCollideWithBodiesEnabled()
template `collideWithBodies=`*(self: PhysicsShapeQueryParameters3D; value) = self.setCollideWithBodies(value)

template collideWithAreas*(self: PhysicsShapeQueryParameters3D): untyped = self.isCollideWithAreasEnabled()
template `collideWithAreas=`*(self: PhysicsShapeQueryParameters3D; value) = self.setCollideWithAreas(value)

const PhysicsShapeQueryParameters3D_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsShapeQueryParameters3D]): Table[string, string] = PhysicsShapeQueryParameters3D_vmap