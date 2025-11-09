{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(AnimationLibrary, Resource)

proc addAnimation*(self: AnimationLibrary; name: StringName; animation: gdref Animation): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationLibrary, "add_animation", 1811855551)
  methodbind.ptrcall(self, [getPtr name, getPtr animation], Error)

proc removeAnimation*(self: AnimationLibrary; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationLibrary, "remove_animation", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc renameAnimation*(self: AnimationLibrary; name: StringName; newname: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationLibrary, "rename_animation", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr newname], void)

proc hasAnimation*(self: AnimationLibrary; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationLibrary, "has_animation", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc getAnimation*(self: AnimationLibrary; name: StringName): gdref Animation =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationLibrary, "get_animation", 2933122410)
  methodbind.ptrcall(self, [getPtr name], gdref Animation)

proc getAnimationList*(self: AnimationLibrary): TypedArray[StringName] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationLibrary, "get_animation_list", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[StringName])

proc getAnimationListSize*(self: AnimationLibrary): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationLibrary, "get_animation_list_size", 3905245786)
  methodbind.ptrcall(self, [], int32)
