{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setShape*(self: PhysicsShapeQueryParameters2D; shape: gdref Resource): void =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "set_shape", 968641751)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShape*(self: PhysicsShapeQueryParameters2D): gdref Resource =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "get_shape", 121922552)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Resource)

proc setShapeRid*(self: PhysicsShapeQueryParameters2D; shape: RID): void =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "set_shape_rid", 2722037293)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShapeRid*(self: PhysicsShapeQueryParameters2D): RID =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "get_shape_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

proc setTransform*(self: PhysicsShapeQueryParameters2D; transform: Transform2D): void =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "set_transform", 2761652528)
  var `?param` = [getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTransform*(self: PhysicsShapeQueryParameters2D): Transform2D =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "get_transform", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform2D)

proc setMotion*(self: PhysicsShapeQueryParameters2D; motion: Vector2): void =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "set_motion", 743155724)
  var `?param` = [getPtr motion]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMotion*(self: PhysicsShapeQueryParameters2D): Vector2 =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "get_motion", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setMargin*(self: PhysicsShapeQueryParameters2D; margin: Float): void =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "set_margin", 373806689)
  var `?param` = [getPtr margin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMargin*(self: PhysicsShapeQueryParameters2D): Float =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "get_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setCollisionMask*(self: PhysicsShapeQueryParameters2D; collisionMask: uint32): void =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "set_collision_mask", 1286410249)
  var `?param` = [getPtr collisionMask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMask*(self: PhysicsShapeQueryParameters2D): uint32 =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "get_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setExclude*(self: PhysicsShapeQueryParameters2D; exclude: TypedArray[RID]): void =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "set_exclude", 381264803)
  var `?param` = [getPtr exclude]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExclude*(self: PhysicsShapeQueryParameters2D): TypedArray[RID] =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "get_exclude", 3995934104)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc setCollideWithBodies*(self: PhysicsShapeQueryParameters2D; enable: bool): void =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "set_collide_with_bodies", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollideWithBodiesEnabled*(self: PhysicsShapeQueryParameters2D): bool =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "is_collide_with_bodies_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCollideWithAreas*(self: PhysicsShapeQueryParameters2D; enable: bool): void =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "set_collide_with_areas", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollideWithAreasEnabled*(self: PhysicsShapeQueryParameters2D): bool =
  expandMethodBind(className PhysicsShapeQueryParameters2D, "is_collide_with_areas_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template collisionMask*(self: PhysicsShapeQueryParameters2D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: PhysicsShapeQueryParameters2D; value) = self.setCollisionMask(value)

template exclude*(self: PhysicsShapeQueryParameters2D): untyped = self.getExclude()
template `exclude=`*(self: PhysicsShapeQueryParameters2D; value) = self.setExclude(value)

template margin*(self: PhysicsShapeQueryParameters2D): untyped = self.getMargin()
template `margin=`*(self: PhysicsShapeQueryParameters2D; value) = self.setMargin(value)

template motion*(self: PhysicsShapeQueryParameters2D): untyped = self.getMotion()
template `motion=`*(self: PhysicsShapeQueryParameters2D; value) = self.setMotion(value)

template shape*(self: PhysicsShapeQueryParameters2D): untyped = self.getShape()
template `shape=`*(self: PhysicsShapeQueryParameters2D; value) = self.setShape(value)

template shapeRid*(self: PhysicsShapeQueryParameters2D): untyped = self.getShapeRid()
template `shapeRid=`*(self: PhysicsShapeQueryParameters2D; value) = self.setShapeRid(value)

template transform*(self: PhysicsShapeQueryParameters2D): untyped = self.getTransform()
template `transform=`*(self: PhysicsShapeQueryParameters2D; value) = self.setTransform(value)

template collideWithBodies*(self: PhysicsShapeQueryParameters2D): untyped = self.isCollideWithBodiesEnabled()
template `collideWithBodies=`*(self: PhysicsShapeQueryParameters2D; value) = self.setCollideWithBodies(value)

template collideWithAreas*(self: PhysicsShapeQueryParameters2D): untyped = self.isCollideWithAreasEnabled()
template `collideWithAreas=`*(self: PhysicsShapeQueryParameters2D; value) = self.setCollideWithAreas(value)

const PhysicsShapeQueryParameters2D_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsShapeQueryParameters2D]): Table[string, string] = PhysicsShapeQueryParameters2D_vmap