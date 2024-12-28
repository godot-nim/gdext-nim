{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setBindCount*(self: Skin; bindCount: int32): void =
  expandMethodBind(className Skin, "set_bind_count", 1286410249)
  methodbind.ptrcall(self, [getPtr bindCount])

proc getBindCount*(self: Skin): int32 =
  expandMethodBind(className Skin, "get_bind_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc addBind*(self: Skin; bone: int32; pose: Transform3D): void =
  expandMethodBind(className Skin, "add_bind", 3616898986)
  methodbind.ptrcall(self, [getPtr bone, getPtr pose])

proc addNamedBind*(self: Skin; name: String; pose: Transform3D): void =
  expandMethodBind(className Skin, "add_named_bind", 3154712474)
  methodbind.ptrcall(self, [getPtr name, getPtr pose])

proc setBindPose*(self: Skin; bindIndex: int32; pose: Transform3D): void =
  expandMethodBind(className Skin, "set_bind_pose", 3616898986)
  methodbind.ptrcall(self, [getPtr bindIndex, getPtr pose])

proc getBindPose*(self: Skin; bindIndex: int32): Transform3D =
  expandMethodBind(className Skin, "get_bind_pose", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr bindIndex], addr ret)
  (addr ret).decode_result(Transform3D)

proc setBindName*(self: Skin; bindIndex: int32; name: StringName): void =
  expandMethodBind(className Skin, "set_bind_name", 3780747571)
  methodbind.ptrcall(self, [getPtr bindIndex, getPtr name])

proc getBindName*(self: Skin; bindIndex: int32): StringName =
  expandMethodBind(className Skin, "get_bind_name", 659327637)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr bindIndex], addr ret)
  (addr ret).decode_result(StringName)

proc setBindBone*(self: Skin; bindIndex: int32; bone: int32): void =
  expandMethodBind(className Skin, "set_bind_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr bindIndex, getPtr bone])

proc getBindBone*(self: Skin; bindIndex: int32): int32 =
  expandMethodBind(className Skin, "get_bind_bone", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr bindIndex], addr ret)
  (addr ret).decode_result(int32)

proc clearBinds*(self: Skin): void =
  expandMethodBind(className Skin, "clear_binds", 3218959716)
  methodbind.ptrcall(self, [])

const Skin_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Skin]): Table[string, string] = Skin_vmap