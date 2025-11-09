{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdviewport; export gdviewport

expandOnClassImported(SubViewport, Viewport)

proc setSize*(self: SubViewport; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubViewport, "set_size", 1130785943)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: SubViewport): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubViewport, "get_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setSize2DOverride*(self: SubViewport; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubViewport, "set_size_2d_override", 1130785943)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize2DOverride*(self: SubViewport): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubViewport, "get_size_2d_override", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setSize2DOverrideStretch*(self: SubViewport; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubViewport, "set_size_2d_override_stretch", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isSize2DOverrideStretchEnabled*(self: SubViewport): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubViewport, "is_size_2d_override_stretch_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUpdateMode*(self: SubViewport; mode: SubViewport_UpdateMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubViewport, "set_update_mode", 1295690030)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getUpdateMode*(self: SubViewport): SubViewport_UpdateMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubViewport, "get_update_mode", 2980171553)
  methodbind.ptrcall(self, [], SubViewport_UpdateMode)

proc setClearMode*(self: SubViewport; mode: SubViewport_ClearMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubViewport, "set_clear_mode", 2834454712)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getClearMode*(self: SubViewport): SubViewport_ClearMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SubViewport, "get_clear_mode", 331324495)
  methodbind.ptrcall(self, [], SubViewport_ClearMode)

template size*(self: SubViewport): untyped = self.getSize()
template `size=`*(self: SubViewport; value) = self.setSize(value)

template size2DOverride*(self: SubViewport): untyped = self.getSize2DOverride()
template `size2DOverride=`*(self: SubViewport; value) = self.setSize2DOverride(value)

template size2DOverrideStretch*(self: SubViewport): untyped = self.isSize2DOverrideStretchEnabled()
template `size2DOverrideStretch=`*(self: SubViewport; value) = self.setSize2DOverrideStretch(value)

template renderTargetClearMode*(self: SubViewport): untyped = self.getClearMode()
template `renderTargetClearMode=`*(self: SubViewport; value) = self.setClearMode(value)

template renderTargetUpdateMode*(self: SubViewport): untyped = self.getUpdateMode()
template `renderTargetUpdateMode=`*(self: SubViewport; value) = self.setUpdateMode(value)
