{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Skin, Resource)

proc setBindCount*(self: Skin; bindCount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skin, "set_bind_count", 1286410249)
  methodbind.ptrcall(self, [getPtr bindCount], void)

proc getBindCount*(self: Skin): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skin, "get_bind_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc addBind*(self: Skin; bone: int32; pose: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skin, "add_bind", 3616898986)
  methodbind.ptrcall(self, [getPtr bone, getPtr pose], void)

proc addNamedBind*(self: Skin; name: String; pose: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skin, "add_named_bind", 3154712474)
  methodbind.ptrcall(self, [getPtr name, getPtr pose], void)

proc setBindPose*(self: Skin; bindIndex: int32; pose: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skin, "set_bind_pose", 3616898986)
  methodbind.ptrcall(self, [getPtr bindIndex, getPtr pose], void)

proc getBindPose*(self: Skin; bindIndex: int32): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skin, "get_bind_pose", 1965739696)
  methodbind.ptrcall(self, [getPtr bindIndex], Transform3D)

proc setBindName*(self: Skin; bindIndex: int32; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skin, "set_bind_name", 3780747571)
  methodbind.ptrcall(self, [getPtr bindIndex, getPtr name], void)

proc getBindName*(self: Skin; bindIndex: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skin, "get_bind_name", 659327637)
  methodbind.ptrcall(self, [getPtr bindIndex], StringName)

proc setBindBone*(self: Skin; bindIndex: int32; bone: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skin, "set_bind_bone", 3937882851)
  methodbind.ptrcall(self, [getPtr bindIndex, getPtr bone], void)

proc getBindBone*(self: Skin; bindIndex: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skin, "get_bind_bone", 923996154)
  methodbind.ptrcall(self, [getPtr bindIndex], int32)

proc clearBinds*(self: Skin): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Skin, "clear_binds", 3218959716)
  methodbind.ptrcall(self, [], void)
