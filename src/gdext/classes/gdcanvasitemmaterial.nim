{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmaterial; export gdmaterial

proc setBlendMode*(self: CanvasItemMaterial; blendMode: CanvasItemMaterial_BlendMode): void =
  expandMethodBind(className CanvasItemMaterial, "set_blend_mode", 1786054936)
  methodbind.ptrcall(self, [getPtr blendMode])

proc getBlendMode*(self: CanvasItemMaterial): CanvasItemMaterial_BlendMode =
  expandMethodBind(className CanvasItemMaterial, "get_blend_mode", 3318684035)
  var ret: encoded CanvasItemMaterial_BlendMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(CanvasItemMaterial_BlendMode)

proc setLightMode*(self: CanvasItemMaterial; lightMode: CanvasItemMaterial_LightMode): void =
  expandMethodBind(className CanvasItemMaterial, "set_light_mode", 628074070)
  methodbind.ptrcall(self, [getPtr lightMode])

proc getLightMode*(self: CanvasItemMaterial): CanvasItemMaterial_LightMode =
  expandMethodBind(className CanvasItemMaterial, "get_light_mode", 3863292382)
  var ret: encoded CanvasItemMaterial_LightMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(CanvasItemMaterial_LightMode)

proc setParticlesAnimation*(self: CanvasItemMaterial; particlesAnim: bool): void =
  expandMethodBind(className CanvasItemMaterial, "set_particles_animation", 2586408642)
  methodbind.ptrcall(self, [getPtr particlesAnim])

proc getParticlesAnimation*(self: CanvasItemMaterial): bool =
  expandMethodBind(className CanvasItemMaterial, "get_particles_animation", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setParticlesAnimHFrames*(self: CanvasItemMaterial; frames: int32): void =
  expandMethodBind(className CanvasItemMaterial, "set_particles_anim_h_frames", 1286410249)
  methodbind.ptrcall(self, [getPtr frames])

proc getParticlesAnimHFrames*(self: CanvasItemMaterial): int32 =
  expandMethodBind(className CanvasItemMaterial, "get_particles_anim_h_frames", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setParticlesAnimVFrames*(self: CanvasItemMaterial; frames: int32): void =
  expandMethodBind(className CanvasItemMaterial, "set_particles_anim_v_frames", 1286410249)
  methodbind.ptrcall(self, [getPtr frames])

proc getParticlesAnimVFrames*(self: CanvasItemMaterial): int32 =
  expandMethodBind(className CanvasItemMaterial, "get_particles_anim_v_frames", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setParticlesAnimLoop*(self: CanvasItemMaterial; loop: bool): void =
  expandMethodBind(className CanvasItemMaterial, "set_particles_anim_loop", 2586408642)
  methodbind.ptrcall(self, [getPtr loop])

proc getParticlesAnimLoop*(self: CanvasItemMaterial): bool =
  expandMethodBind(className CanvasItemMaterial, "get_particles_anim_loop", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template blendMode*(self: CanvasItemMaterial): untyped = self.getBlendMode()
template `blendMode=`*(self: CanvasItemMaterial; value) = self.setBlendMode(value)

template lightMode*(self: CanvasItemMaterial): untyped = self.getLightMode()
template `lightMode=`*(self: CanvasItemMaterial; value) = self.setLightMode(value)

template particlesAnimation*(self: CanvasItemMaterial): untyped = self.getParticlesAnimation()
template `particlesAnimation=`*(self: CanvasItemMaterial; value) = self.setParticlesAnimation(value)

template particlesAnimHFrames*(self: CanvasItemMaterial): untyped = self.getParticlesAnimHFrames()
template `particlesAnimHFrames=`*(self: CanvasItemMaterial; value) = self.setParticlesAnimHFrames(value)

template particlesAnimVFrames*(self: CanvasItemMaterial): untyped = self.getParticlesAnimVFrames()
template `particlesAnimVFrames=`*(self: CanvasItemMaterial; value) = self.setParticlesAnimVFrames(value)

template particlesAnimLoop*(self: CanvasItemMaterial): untyped = self.getParticlesAnimLoop()
template `particlesAnimLoop=`*(self: CanvasItemMaterial; value) = self.setParticlesAnimLoop(value)

const CanvasItemMaterial_vmap =
  Material.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CanvasItemMaterial]): Table[string, string] = CanvasItemMaterial_vmap