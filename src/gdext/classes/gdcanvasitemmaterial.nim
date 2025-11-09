{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmaterial; export gdmaterial

expandOnClassImported(CanvasItemMaterial, Material)

proc setBlendMode*(self: CanvasItemMaterial; blendMode: CanvasItemMaterial_BlendMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItemMaterial, "set_blend_mode", 1786054936)
  methodbind.ptrcall(self, [getPtr blendMode], void)

proc getBlendMode*(self: CanvasItemMaterial): CanvasItemMaterial_BlendMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItemMaterial, "get_blend_mode", 3318684035)
  methodbind.ptrcall(self, [], CanvasItemMaterial_BlendMode)

proc setLightMode*(self: CanvasItemMaterial; lightMode: CanvasItemMaterial_LightMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItemMaterial, "set_light_mode", 628074070)
  methodbind.ptrcall(self, [getPtr lightMode], void)

proc getLightMode*(self: CanvasItemMaterial): CanvasItemMaterial_LightMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItemMaterial, "get_light_mode", 3863292382)
  methodbind.ptrcall(self, [], CanvasItemMaterial_LightMode)

proc setParticlesAnimation*(self: CanvasItemMaterial; particlesAnim: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItemMaterial, "set_particles_animation", 2586408642)
  methodbind.ptrcall(self, [getPtr particlesAnim], void)

proc getParticlesAnimation*(self: CanvasItemMaterial): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItemMaterial, "get_particles_animation", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setParticlesAnimHFrames*(self: CanvasItemMaterial; frames: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItemMaterial, "set_particles_anim_h_frames", 1286410249)
  methodbind.ptrcall(self, [getPtr frames], void)

proc getParticlesAnimHFrames*(self: CanvasItemMaterial): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItemMaterial, "get_particles_anim_h_frames", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setParticlesAnimVFrames*(self: CanvasItemMaterial; frames: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItemMaterial, "set_particles_anim_v_frames", 1286410249)
  methodbind.ptrcall(self, [getPtr frames], void)

proc getParticlesAnimVFrames*(self: CanvasItemMaterial): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItemMaterial, "get_particles_anim_v_frames", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setParticlesAnimLoop*(self: CanvasItemMaterial; loop: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItemMaterial, "set_particles_anim_loop", 2586408642)
  methodbind.ptrcall(self, [getPtr loop], void)

proc getParticlesAnimLoop*(self: CanvasItemMaterial): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasItemMaterial, "get_particles_anim_loop", 36873697)
  methodbind.ptrcall(self, [], bool)

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
