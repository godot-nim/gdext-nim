{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setFrames*(self: AnimatedTexture; frames: int32): void =
  expandMethodBind(className AnimatedTexture, "set_frames", 1286410249)
  var `?param` = [getPtr frames]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrames*(self: AnimatedTexture): int32 =
  expandMethodBind(className AnimatedTexture, "get_frames", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setCurrentFrame*(self: AnimatedTexture; frame: int32): void =
  expandMethodBind(className AnimatedTexture, "set_current_frame", 1286410249)
  var `?param` = [getPtr frame]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCurrentFrame*(self: AnimatedTexture): int32 =
  expandMethodBind(className AnimatedTexture, "get_current_frame", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setPause*(self: AnimatedTexture; pause: bool): void =
  expandMethodBind(className AnimatedTexture, "set_pause", 2586408642)
  var `?param` = [getPtr pause]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPause*(self: AnimatedTexture): bool =
  expandMethodBind(className AnimatedTexture, "get_pause", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setOneShot*(self: AnimatedTexture; oneShot: bool): void =
  expandMethodBind(className AnimatedTexture, "set_one_shot", 2586408642)
  var `?param` = [getPtr oneShot]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOneShot*(self: AnimatedTexture): bool =
  expandMethodBind(className AnimatedTexture, "get_one_shot", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSpeedScale*(self: AnimatedTexture; scale: Float): void =
  expandMethodBind(className AnimatedTexture, "set_speed_scale", 373806689)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpeedScale*(self: AnimatedTexture): Float =
  expandMethodBind(className AnimatedTexture, "get_speed_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFrameTexture*(self: AnimatedTexture; frame: int32; texture: gdref Texture2D): void =
  expandMethodBind(className AnimatedTexture, "set_frame_texture", 666127730)
  var `?param` = [getPtr frame, getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrameTexture*(self: AnimatedTexture; frame: int32): gdref Texture2D =
  expandMethodBind(className AnimatedTexture, "get_frame_texture", 3536238170)
  var `?param` = [getPtr frame]
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setFrameDuration*(self: AnimatedTexture; frame: int32; duration: Float): void =
  expandMethodBind(className AnimatedTexture, "set_frame_duration", 1602489585)
  var `?param` = [getPtr frame, getPtr duration]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrameDuration*(self: AnimatedTexture; frame: int32): Float =
  expandMethodBind(className AnimatedTexture, "get_frame_duration", 2339986948)
  var `?param` = [getPtr frame]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

template frames*(self: AnimatedTexture): untyped = self.getFrames()
template `frames=`*(self: AnimatedTexture; value) = self.setFrames(value)

template currentFrame*(self: AnimatedTexture): untyped = self.getCurrentFrame()
template `currentFrame=`*(self: AnimatedTexture; value) = self.setCurrentFrame(value)

template pause*(self: AnimatedTexture): untyped = self.getPause()
template `pause=`*(self: AnimatedTexture; value) = self.setPause(value)

template oneShot*(self: AnimatedTexture): untyped = self.getOneShot()
template `oneShot=`*(self: AnimatedTexture; value) = self.setOneShot(value)

template speedScale*(self: AnimatedTexture): untyped = self.getSpeedScale()
template `speedScale=`*(self: AnimatedTexture; value) = self.setSpeedScale(value)

const AnimatedTexture_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimatedTexture]): Table[string, string] = AnimatedTexture_vmap