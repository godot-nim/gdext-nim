{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(SpringArm3D, Node3D)

proc getHitLength*(self: SpringArm3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringArm3D, "get_hit_length", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setLength*(self: SpringArm3D; length: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringArm3D, "set_length", 373806689)
  methodbind.ptrcall(self, [getPtr length], void)

proc getLength*(self: SpringArm3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringArm3D, "get_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setShape*(self: SpringArm3D; shape: gdref Shape3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringArm3D, "set_shape", 1549710052)
  methodbind.ptrcall(self, [getPtr shape], void)

proc getShape*(self: SpringArm3D): gdref Shape3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringArm3D, "get_shape", 3214262478)
  methodbind.ptrcall(self, [], gdref Shape3D)

proc addExcludedObject*(self: SpringArm3D; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringArm3D, "add_excluded_object", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

proc removeExcludedObject*(self: SpringArm3D; rid: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringArm3D, "remove_excluded_object", 3521089500)
  methodbind.ptrcall(self, [getPtr rid], bool)

proc clearExcludedObjects*(self: SpringArm3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringArm3D, "clear_excluded_objects", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setCollisionMask*(self: SpringArm3D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringArm3D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getCollisionMask*(self: SpringArm3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringArm3D, "get_collision_mask", 2455072627)
  methodbind.ptrcall(self, [], uint32)

proc setMargin*(self: SpringArm3D; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringArm3D, "set_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin], void)

proc getMargin*(self: SpringArm3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpringArm3D, "get_margin", 191475506)
  methodbind.ptrcall(self, [], Float)

template collisionMask*(self: SpringArm3D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: SpringArm3D; value) = self.setCollisionMask(value)

template shape*(self: SpringArm3D): untyped = self.getShape()
template `shape=`*(self: SpringArm3D; value) = self.setShape(value)

template springLength*(self: SpringArm3D): untyped = self.getLength()
template `springLength=`*(self: SpringArm3D; value) = self.setLength(value)

template margin*(self: SpringArm3D): untyped = self.getMargin()
template `margin=`*(self: SpringArm3D; value) = self.setMargin(value)
