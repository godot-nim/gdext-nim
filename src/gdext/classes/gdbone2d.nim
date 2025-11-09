{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(Bone2D, Node2D)

proc setRest*(self: Bone2D; rest: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Bone2D, "set_rest", 2761652528)
  methodbind.ptrcall(self, [getPtr rest], void)

proc getRest*(self: Bone2D): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Bone2D, "get_rest", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc applyRest*(self: Bone2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Bone2D, "apply_rest", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getSkeletonRest*(self: Bone2D): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Bone2D, "get_skeleton_rest", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc getIndexInSkeleton*(self: Bone2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Bone2D, "get_index_in_skeleton", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setAutocalculateLengthAndAngle*(self: Bone2D; autoCalculate: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Bone2D, "set_autocalculate_length_and_angle", 2586408642)
  methodbind.ptrcall(self, [getPtr autoCalculate], void)

proc getAutocalculateLengthAndAngle*(self: Bone2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Bone2D, "get_autocalculate_length_and_angle", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLength*(self: Bone2D; length: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Bone2D, "set_length", 373806689)
  methodbind.ptrcall(self, [getPtr length], void)

proc getLength*(self: Bone2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Bone2D, "get_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setBoneAngle*(self: Bone2D; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Bone2D, "set_bone_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle], void)

proc getBoneAngle*(self: Bone2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Bone2D, "get_bone_angle", 1740695150)
  methodbind.ptrcall(self, [], Float)

template rest*(self: Bone2D): untyped = self.getRest()
template `rest=`*(self: Bone2D; value) = self.setRest(value)
