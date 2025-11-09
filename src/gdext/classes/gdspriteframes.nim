{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(SpriteFrames, Resource)

proc addAnimation*(self: SpriteFrames; anim: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "add_animation", 3304788590)
  methodbind.ptrcall(self, [getPtr anim], void)

proc hasAnimation*(self: SpriteFrames; anim: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "has_animation", 2619796661)
  methodbind.ptrcall(self, [getPtr anim], bool)

proc duplicateAnimation*(self: SpriteFrames; animFrom: StringName; animTo: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "duplicate_animation", 3740211285)
  methodbind.ptrcall(self, [getPtr animFrom, getPtr animTo], void)

proc removeAnimation*(self: SpriteFrames; anim: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "remove_animation", 3304788590)
  methodbind.ptrcall(self, [getPtr anim], void)

proc renameAnimation*(self: SpriteFrames; anim: StringName; newname: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "rename_animation", 3740211285)
  methodbind.ptrcall(self, [getPtr anim, getPtr newname], void)

proc getAnimationNames*(self: SpriteFrames): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "get_animation_names", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setAnimationSpeed*(self: SpriteFrames; anim: StringName; fps: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "set_animation_speed", 4135858297)
  methodbind.ptrcall(self, [getPtr anim, getPtr fps], void)

proc getAnimationSpeed*(self: SpriteFrames; anim: StringName): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "get_animation_speed", 2349060816)
  methodbind.ptrcall(self, [getPtr anim], float64)

proc setAnimationLoop*(self: SpriteFrames; anim: StringName; loop: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "set_animation_loop", 2524380260)
  methodbind.ptrcall(self, [getPtr anim, getPtr loop], void)

proc getAnimationLoop*(self: SpriteFrames; anim: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "get_animation_loop", 2619796661)
  methodbind.ptrcall(self, [getPtr anim], bool)

proc addFrame*(self: SpriteFrames; anim: StringName; texture: gdref Texture2D; duration: Float = 1.0; atPosition: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "add_frame", 1351332740)
  methodbind.ptrcall(self, [getPtr anim, getPtr texture, getPtr duration, getPtr atPosition], void)

proc setFrame*(self: SpriteFrames; anim: StringName; idx: int32; texture: gdref Texture2D; duration: Float = 1.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "set_frame", 56804795)
  methodbind.ptrcall(self, [getPtr anim, getPtr idx, getPtr texture, getPtr duration], void)

proc removeFrame*(self: SpriteFrames; anim: StringName; idx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "remove_frame", 2415702435)
  methodbind.ptrcall(self, [getPtr anim, getPtr idx], void)

proc getFrameCount*(self: SpriteFrames; anim: StringName): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "get_frame_count", 2458036349)
  methodbind.ptrcall(self, [getPtr anim], int32)

proc getFrameTexture*(self: SpriteFrames; anim: StringName; idx: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "get_frame_texture", 2900517879)
  methodbind.ptrcall(self, [getPtr anim, getPtr idx], gdref Texture2D)

proc getFrameDuration*(self: SpriteFrames; anim: StringName; idx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "get_frame_duration", 1129309260)
  methodbind.ptrcall(self, [getPtr anim, getPtr idx], Float)

proc clear*(self: SpriteFrames; anim: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "clear", 3304788590)
  methodbind.ptrcall(self, [getPtr anim], void)

proc clearAll*(self: SpriteFrames): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SpriteFrames, "clear_all", 3218959716)
  methodbind.ptrcall(self, [], void)

template animations*(self: SpriteFrames): untyped = self.getAnimations()
template `animations=`*(self: SpriteFrames; value) = self.setAnimations(value)
