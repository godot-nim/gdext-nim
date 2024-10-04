{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setCurve*(self: Path2D; curve: gdref Curve2D): void =
  expandMethodBind(className Path2D, "set_curve", 659985499)
  var `?param` = [getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCurve*(self: Path2D): gdref Curve2D =
  expandMethodBind(className Path2D, "get_curve", 660369445)
  var ret: encoded gdref Curve2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve2D)

template curve*(self: Path2D): untyped = self.getCurve()
template `curve=`*(self: Path2D; value) = self.setCurve(value)

const Path2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Path2D]): Table[string, string] = Path2D_vmap