{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdoccluder3d; export gdoccluder3d

proc setPolygon*(self: PolygonOccluder3D; polygon: PackedVector2Array): void =
  expandMethodBind(className PolygonOccluder3D, "set_polygon", 1509147220)
  methodbind.ptrcall(self, [getPtr polygon])

proc getPolygon*(self: PolygonOccluder3D): PackedVector2Array =
  expandMethodBind(className PolygonOccluder3D, "get_polygon", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedVector2Array)

template polygon*(self: PolygonOccluder3D): untyped = self.getPolygon()
template `polygon=`*(self: PolygonOccluder3D; value) = self.setPolygon(value)

const PolygonOccluder3D_vmap =
  Occluder3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PolygonOccluder3D]): Table[string, string] = PolygonOccluder3D_vmap