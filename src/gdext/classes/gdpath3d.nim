{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(Path3D, Node3D)

proc setCurve*(self: Path3D; curve: gdref Curve3D): void =
  expandMethodBind(className Path3D, "set_curve", 408955118)
  methodbind.ptrcall(self, [getPtr curve])

proc getCurve*(self: Path3D): gdref Curve3D =
  expandMethodBind(className Path3D, "get_curve", 4244715212)
  var ret: encoded gdref Curve3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Curve3D)

proc setDebugCustomColor*(self: Path3D; debugCustomColor: Color): void =
  expandMethodBind(className Path3D, "set_debug_custom_color", 2920490490)
  methodbind.ptrcall(self, [getPtr debugCustomColor])

proc getDebugCustomColor*(self: Path3D): Color =
  expandMethodBind(className Path3D, "get_debug_custom_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

template curve*(self: Path3D): untyped = self.getCurve()
template `curve=`*(self: Path3D; value) = self.setCurve(value)

template debugCustomColor*(self: Path3D): untyped = self.getDebugCustomColor()
template `debugCustomColor=`*(self: Path3D; value) = self.setDebugCustomColor(value)
