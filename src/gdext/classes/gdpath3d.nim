{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setCurve*(self: Path3D; curve: gdref Curve3D): void =
  expandMethodBind(className Path3D, "set_curve", 408955118)
  var `?param` = [getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCurve*(self: Path3D): gdref Curve3D =
  expandMethodBind(className Path3D, "get_curve", 4244715212)
  var ret: encoded gdref Curve3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve3D)

template curve*(self: Path3D): untyped = self.getCurve()
template `curve=`*(self: Path3D; value) = self.setCurve(value)

const Path3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Path3D]): Table[string, string] = Path3D_vmap

proc curveChanged*(self: Path3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("curve_changed")
  self.emitSignal(signalname)