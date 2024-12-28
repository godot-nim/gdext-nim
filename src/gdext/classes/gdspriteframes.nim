{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc addAnimation*(self: SpriteFrames; anim: StringName): void =
  expandMethodBind(className SpriteFrames, "add_animation", 3304788590)
  methodbind.ptrcall(self, [getPtr anim])

proc hasAnimation*(self: SpriteFrames; anim: StringName): bool =
  expandMethodBind(className SpriteFrames, "has_animation", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr anim], addr ret)
  (addr ret).decode_result(bool)

proc removeAnimation*(self: SpriteFrames; anim: StringName): void =
  expandMethodBind(className SpriteFrames, "remove_animation", 3304788590)
  methodbind.ptrcall(self, [getPtr anim])

proc renameAnimation*(self: SpriteFrames; anim: StringName; newname: StringName): void =
  expandMethodBind(className SpriteFrames, "rename_animation", 3740211285)
  methodbind.ptrcall(self, [getPtr anim, getPtr newname])

proc getAnimationNames*(self: SpriteFrames): PackedStringArray =
  expandMethodBind(className SpriteFrames, "get_animation_names", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setAnimationSpeed*(self: SpriteFrames; anim: StringName; fps: float64): void =
  expandMethodBind(className SpriteFrames, "set_animation_speed", 4135858297)
  methodbind.ptrcall(self, [getPtr anim, getPtr fps])

proc getAnimationSpeed*(self: SpriteFrames; anim: StringName): float64 =
  expandMethodBind(className SpriteFrames, "get_animation_speed", 2349060816)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr anim], addr ret)
  (addr ret).decode_result(float64)

proc setAnimationLoop*(self: SpriteFrames; anim: StringName; loop: bool): void =
  expandMethodBind(className SpriteFrames, "set_animation_loop", 2524380260)
  methodbind.ptrcall(self, [getPtr anim, getPtr loop])

proc getAnimationLoop*(self: SpriteFrames; anim: StringName): bool =
  expandMethodBind(className SpriteFrames, "get_animation_loop", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr anim], addr ret)
  (addr ret).decode_result(bool)

proc addFrame*(self: SpriteFrames; anim: StringName; texture: gdref Texture2D; duration: Float = 1.0; atPosition: int32 = -1): void =
  expandMethodBind(className SpriteFrames, "add_frame", 1351332740)
  methodbind.ptrcall(self, [getPtr anim, getPtr texture, getPtr duration, getPtr atPosition])

proc setFrame*(self: SpriteFrames; anim: StringName; idx: int32; texture: gdref Texture2D; duration: Float = 1.0): void =
  expandMethodBind(className SpriteFrames, "set_frame", 56804795)
  methodbind.ptrcall(self, [getPtr anim, getPtr idx, getPtr texture, getPtr duration])

proc removeFrame*(self: SpriteFrames; anim: StringName; idx: int32): void =
  expandMethodBind(className SpriteFrames, "remove_frame", 2415702435)
  methodbind.ptrcall(self, [getPtr anim, getPtr idx])

proc getFrameCount*(self: SpriteFrames; anim: StringName): int32 =
  expandMethodBind(className SpriteFrames, "get_frame_count", 2458036349)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr anim], addr ret)
  (addr ret).decode_result(int32)

proc getFrameTexture*(self: SpriteFrames; anim: StringName; idx: int32): gdref Texture2D =
  expandMethodBind(className SpriteFrames, "get_frame_texture", 2900517879)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [getPtr anim, getPtr idx], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc getFrameDuration*(self: SpriteFrames; anim: StringName; idx: int32): Float =
  expandMethodBind(className SpriteFrames, "get_frame_duration", 1129309260)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr anim, getPtr idx], addr ret)
  (addr ret).decode_result(Float)

proc clear*(self: SpriteFrames; anim: StringName): void =
  expandMethodBind(className SpriteFrames, "clear", 3304788590)
  methodbind.ptrcall(self, [getPtr anim])

proc clearAll*(self: SpriteFrames): void =
  expandMethodBind(className SpriteFrames, "clear_all", 3218959716)
  methodbind.ptrcall(self, [])

template animations*(self: SpriteFrames): untyped = self.getAnimations()
template `animations=`*(self: SpriteFrames; value) = self.setAnimations(value)

const SpriteFrames_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SpriteFrames]): Table[string, string] = SpriteFrames_vmap