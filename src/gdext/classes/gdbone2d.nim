{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setRest*(self: Bone2D; rest: Transform2D): void =
  expandMethodBind(className Bone2D, "set_rest", 2761652528)
  methodbind.ptrcall(self, [getPtr rest])

proc getRest*(self: Bone2D): Transform2D =
  expandMethodBind(className Bone2D, "get_rest", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Transform2D)

proc applyRest*(self: Bone2D): void =
  expandMethodBind(className Bone2D, "apply_rest", 3218959716)
  methodbind.ptrcall(self, [])

proc getSkeletonRest*(self: Bone2D): Transform2D =
  expandMethodBind(className Bone2D, "get_skeleton_rest", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Transform2D)

proc getIndexInSkeleton*(self: Bone2D): int32 =
  expandMethodBind(className Bone2D, "get_index_in_skeleton", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setAutocalculateLengthAndAngle*(self: Bone2D; autoCalculate: bool): void =
  expandMethodBind(className Bone2D, "set_autocalculate_length_and_angle", 2586408642)
  methodbind.ptrcall(self, [getPtr autoCalculate])

proc getAutocalculateLengthAndAngle*(self: Bone2D): bool =
  expandMethodBind(className Bone2D, "get_autocalculate_length_and_angle", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setLength*(self: Bone2D; length: Float): void =
  expandMethodBind(className Bone2D, "set_length", 373806689)
  methodbind.ptrcall(self, [getPtr length])

proc getLength*(self: Bone2D): Float =
  expandMethodBind(className Bone2D, "get_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setBoneAngle*(self: Bone2D; angle: Float): void =
  expandMethodBind(className Bone2D, "set_bone_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle])

proc getBoneAngle*(self: Bone2D): Float =
  expandMethodBind(className Bone2D, "get_bone_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template rest*(self: Bone2D): untyped = self.getRest()
template `rest=`*(self: Bone2D; value) = self.setRest(value)

const Bone2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Bone2D]): Table[string, string] = Bone2D_vmap