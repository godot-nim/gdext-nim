{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(Path2D, Node2D)

proc setCurve*(self: Path2D; curve: gdref Curve2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Path2D, "set_curve", 659985499)
  methodbind.ptrcall(self, [getPtr curve], void)

proc getCurve*(self: Path2D): gdref Curve2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Path2D, "get_curve", 660369445)
  methodbind.ptrcall(self, [], gdref Curve2D)

template curve*(self: Path2D): untyped = self.getCurve()
template `curve=`*(self: Path2D; value) = self.setCurve(value)
