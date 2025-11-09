{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdoccluder3d; export gdoccluder3d

expandOnClassImported(PolygonOccluder3D, Occluder3D)

proc setPolygon*(self: PolygonOccluder3D; polygon: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PolygonOccluder3D, "set_polygon", 1509147220)
  methodbind.ptrcall(self, [getPtr polygon], void)

proc getPolygon*(self: PolygonOccluder3D): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PolygonOccluder3D, "get_polygon", 2961356807)
  methodbind.ptrcall(self, [], PackedVector2Array)

template polygon*(self: PolygonOccluder3D): untyped = self.getPolygon()
template `polygon=`*(self: PolygonOccluder3D; value) = self.setPolygon(value)
