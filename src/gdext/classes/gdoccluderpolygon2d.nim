{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(OccluderPolygon2D, Resource)

proc setClosed*(self: OccluderPolygon2D; closed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OccluderPolygon2D, "set_closed", 2586408642)
  methodbind.ptrcall(self, [getPtr closed], void)

proc isClosed*(self: OccluderPolygon2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OccluderPolygon2D, "is_closed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCullMode*(self: OccluderPolygon2D; cullMode: OccluderPolygon2D_CullMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OccluderPolygon2D, "set_cull_mode", 3500863002)
  methodbind.ptrcall(self, [getPtr cullMode], void)

proc getCullMode*(self: OccluderPolygon2D): OccluderPolygon2D_CullMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OccluderPolygon2D, "get_cull_mode", 33931036)
  methodbind.ptrcall(self, [], OccluderPolygon2D_CullMode)

proc setPolygon*(self: OccluderPolygon2D; polygon: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OccluderPolygon2D, "set_polygon", 1509147220)
  methodbind.ptrcall(self, [getPtr polygon], void)

proc getPolygon*(self: OccluderPolygon2D): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OccluderPolygon2D, "get_polygon", 2961356807)
  methodbind.ptrcall(self, [], PackedVector2Array)

template closed*(self: OccluderPolygon2D): untyped = self.isClosed()
template `closed=`*(self: OccluderPolygon2D; value) = self.setClosed(value)

template cullMode*(self: OccluderPolygon2D): untyped = self.getCullMode()
template `cullMode=`*(self: OccluderPolygon2D; value) = self.setCullMode(value)

template polygon*(self: OccluderPolygon2D): untyped = self.getPolygon()
template `polygon=`*(self: OccluderPolygon2D; value) = self.setPolygon(value)
