{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

proc setPoints*(self: ConvexPolygonShape3D; points: PackedVector3Array): void =
  expandMethodBind(className ConvexPolygonShape3D, "set_points", 334873810)
  var `?param` = [getPtr points]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPoints*(self: ConvexPolygonShape3D): PackedVector3Array =
  expandMethodBind(className ConvexPolygonShape3D, "get_points", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector3Array)

template points*(self: ConvexPolygonShape3D): untyped = self.getPoints()
template `points=`*(self: ConvexPolygonShape3D; value) = self.setPoints(value)

const ConvexPolygonShape3D_vmap =
  Shape3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ConvexPolygonShape3D]): Table[string, string] = ConvexPolygonShape3D_vmap