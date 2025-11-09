{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(XRVRS, Object)

proc getVrsMinRadius*(self: XRVRS): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRVRS, "get_vrs_min_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVrsMinRadius*(self: XRVRS; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRVRS, "set_vrs_min_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getVrsStrength*(self: XRVRS): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRVRS, "get_vrs_strength", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVrsStrength*(self: XRVRS; strength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRVRS, "set_vrs_strength", 373806689)
  methodbind.ptrcall(self, [getPtr strength], void)

proc getVrsRenderRegion*(self: XRVRS): Rect2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRVRS, "get_vrs_render_region", 410525958)
  methodbind.ptrcall(self, [], Rect2i)

proc setVrsRenderRegion*(self: XRVRS; renderRegion: Rect2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRVRS, "set_vrs_render_region", 1763793166)
  methodbind.ptrcall(self, [getPtr renderRegion], void)

proc makeVrsTexture*(self: XRVRS; targetSize: Vector2; eyeFoci: PackedVector2Array): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRVRS, "make_vrs_texture", 3647044786)
  methodbind.ptrcall(self, [getPtr targetSize, getPtr eyeFoci], RID)

template vrsMinRadius*(self: XRVRS): untyped = self.getVrsMinRadius()
template `vrsMinRadius=`*(self: XRVRS; value) = self.setVrsMinRadius(value)

template vrsStrength*(self: XRVRS): untyped = self.getVrsStrength()
template `vrsStrength=`*(self: XRVRS; value) = self.setVrsStrength(value)

template vrsRenderRegion*(self: XRVRS): untyped = self.getVrsRenderRegion()
template `vrsRenderRegion=`*(self: XRVRS; value) = self.setVrsRenderRegion(value)
