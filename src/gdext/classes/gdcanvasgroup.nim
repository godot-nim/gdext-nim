{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(CanvasGroup, Node2D)

proc setFitMargin*(self: CanvasGroup; fitMargin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasGroup, "set_fit_margin", 373806689)
  methodbind.ptrcall(self, [getPtr fitMargin], void)

proc getFitMargin*(self: CanvasGroup): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasGroup, "get_fit_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setClearMargin*(self: CanvasGroup; clearMargin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasGroup, "set_clear_margin", 373806689)
  methodbind.ptrcall(self, [getPtr clearMargin], void)

proc getClearMargin*(self: CanvasGroup): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasGroup, "get_clear_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setUseMipmaps*(self: CanvasGroup; useMipmaps: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasGroup, "set_use_mipmaps", 2586408642)
  methodbind.ptrcall(self, [getPtr useMipmaps], void)

proc isUsingMipmaps*(self: CanvasGroup): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasGroup, "is_using_mipmaps", 36873697)
  methodbind.ptrcall(self, [], bool)

template fitMargin*(self: CanvasGroup): untyped = self.getFitMargin()
template `fitMargin=`*(self: CanvasGroup; value) = self.setFitMargin(value)

template clearMargin*(self: CanvasGroup): untyped = self.getClearMargin()
template `clearMargin=`*(self: CanvasGroup; value) = self.setClearMargin(value)

template useMipmaps*(self: CanvasGroup): untyped = self.isUsingMipmaps()
template `useMipmaps=`*(self: CanvasGroup; value) = self.setUseMipmaps(value)
