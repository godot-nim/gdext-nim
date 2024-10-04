{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc setBindCount*(self: Skin; bindCount: int32): void =
  expandMethodBind(className Skin, "set_bind_count", 1286410249)
  var `?param` = [getPtr bindCount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBindCount*(self: Skin): int32 =
  expandMethodBind(className Skin, "get_bind_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc addBind*(self: Skin; bone: int32; pose: Transform3D): void =
  expandMethodBind(className Skin, "add_bind", 3616898986)
  var `?param` = [getPtr bone, getPtr pose]
  methodbind.ptrcall(self, addr `?param`[0])

proc addNamedBind*(self: Skin; name: String; pose: Transform3D): void =
  expandMethodBind(className Skin, "add_named_bind", 3154712474)
  var `?param` = [getPtr name, getPtr pose]
  methodbind.ptrcall(self, addr `?param`[0])

proc setBindPose*(self: Skin; bindIndex: int32; pose: Transform3D): void =
  expandMethodBind(className Skin, "set_bind_pose", 3616898986)
  var `?param` = [getPtr bindIndex, getPtr pose]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBindPose*(self: Skin; bindIndex: int32): Transform3D =
  expandMethodBind(className Skin, "get_bind_pose", 1965739696)
  var `?param` = [getPtr bindIndex]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc setBindName*(self: Skin; bindIndex: int32; name: StringName): void =
  expandMethodBind(className Skin, "set_bind_name", 3780747571)
  var `?param` = [getPtr bindIndex, getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBindName*(self: Skin; bindIndex: int32): StringName =
  expandMethodBind(className Skin, "get_bind_name", 659327637)
  var `?param` = [getPtr bindIndex]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc setBindBone*(self: Skin; bindIndex: int32; bone: int32): void =
  expandMethodBind(className Skin, "set_bind_bone", 3937882851)
  var `?param` = [getPtr bindIndex, getPtr bone]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBindBone*(self: Skin; bindIndex: int32): int32 =
  expandMethodBind(className Skin, "get_bind_bone", 923996154)
  var `?param` = [getPtr bindIndex]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc clearBinds*(self: Skin): void =
  expandMethodBind(className Skin, "clear_binds", 3218959716)
  methodbind.ptrcall(self, nil)

const Skin_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Skin]): Table[string, string] = Skin_vmap