{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(Path3D, Node3D)

proc setCurve*(self: Path3D; curve: gdref Curve3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Path3D, "set_curve", 408955118)
  methodbind.ptrcall(self, [getPtr curve], void)

proc getCurve*(self: Path3D): gdref Curve3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Path3D, "get_curve", 4244715212)
  methodbind.ptrcall(self, [], gdref Curve3D)

proc setDebugCustomColor*(self: Path3D; debugCustomColor: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Path3D, "set_debug_custom_color", 2920490490)
  methodbind.ptrcall(self, [getPtr debugCustomColor], void)

proc getDebugCustomColor*(self: Path3D): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Path3D, "get_debug_custom_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

template curve*(self: Path3D): untyped = self.getCurve()
template `curve=`*(self: Path3D; value) = self.setCurve(value)

template debugCustomColor*(self: Path3D): untyped = self.getDebugCustomColor()
template `debugCustomColor=`*(self: Path3D; value) = self.setDebugCustomColor(value)
