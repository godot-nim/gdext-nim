{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setCurve*(self: Path2D; curve: gdref Curve2D): void =
  expandMethodBind(className Path2D, "set_curve", 659985499)
  methodbind.ptrcall(self, [getPtr curve])

proc getCurve*(self: Path2D): gdref Curve2D =
  expandMethodBind(className Path2D, "get_curve", 660369445)
  var ret: encoded gdref Curve2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Curve2D)

template curve*(self: Path2D): untyped = self.getCurve()
template `curve=`*(self: Path2D; value) = self.setCurve(value)
