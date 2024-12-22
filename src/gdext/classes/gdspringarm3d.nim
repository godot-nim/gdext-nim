{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc getHitLength*(self: SpringArm3D): Float =
  expandMethodBind(className SpringArm3D, "get_hit_length", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setLength*(self: SpringArm3D; length: Float): void =
  expandMethodBind(className SpringArm3D, "set_length", 373806689)
  var `?param` = [getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLength*(self: SpringArm3D): Float =
  expandMethodBind(className SpringArm3D, "get_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setShape*(self: SpringArm3D; shape: gdref Shape3D): void =
  expandMethodBind(className SpringArm3D, "set_shape", 1549710052)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShape*(self: SpringArm3D): gdref Shape3D =
  expandMethodBind(className SpringArm3D, "get_shape", 3214262478)
  var ret: encoded gdref Shape3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Shape3D)

proc addExcludedObject*(self: SpringArm3D; rid: RID): void =
  expandMethodBind(className SpringArm3D, "add_excluded_object", 2722037293)
  var `?param` = [getPtr rid]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeExcludedObject*(self: SpringArm3D; rid: RID): bool =
  expandMethodBind(className SpringArm3D, "remove_excluded_object", 3521089500)
  var `?param` = [getPtr rid]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc clearExcludedObjects*(self: SpringArm3D): void =
  expandMethodBind(className SpringArm3D, "clear_excluded_objects", 3218959716)
  methodbind.ptrcall(self, nil)

proc setCollisionMask*(self: SpringArm3D; mask: uint32): void =
  expandMethodBind(className SpringArm3D, "set_collision_mask", 1286410249)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMask*(self: SpringArm3D): uint32 =
  expandMethodBind(className SpringArm3D, "get_collision_mask", 2455072627)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setMargin*(self: SpringArm3D; margin: Float): void =
  expandMethodBind(className SpringArm3D, "set_margin", 373806689)
  var `?param` = [getPtr margin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMargin*(self: SpringArm3D): Float =
  expandMethodBind(className SpringArm3D, "get_margin", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template collisionMask*(self: SpringArm3D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: SpringArm3D; value) = self.setCollisionMask(value)

template shape*(self: SpringArm3D): untyped = self.getShape()
template `shape=`*(self: SpringArm3D; value) = self.setShape(value)

template springLength*(self: SpringArm3D): untyped = self.getLength()
template `springLength=`*(self: SpringArm3D; value) = self.setLength(value)

template margin*(self: SpringArm3D): untyped = self.getMargin()
template `margin=`*(self: SpringArm3D; value) = self.setMargin(value)

const SpringArm3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SpringArm3D]): Table[string, string] = SpringArm3D_vmap