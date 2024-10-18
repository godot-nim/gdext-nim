{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setClosed*(self: OccluderPolygon2D; closed: bool): void =
  expandMethodBind(className OccluderPolygon2D, "set_closed", 2586408642)
  var `?param` = [getPtr closed]
  methodbind.ptrcall(self, addr `?param`[0])

proc isClosed*(self: OccluderPolygon2D): bool =
  expandMethodBind(className OccluderPolygon2D, "is_closed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCullMode*(self: OccluderPolygon2D; cullMode: OccluderPolygon2D_CullMode): void =
  expandMethodBind(className OccluderPolygon2D, "set_cull_mode", 3500863002)
  var `?param` = [getPtr cullMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCullMode*(self: OccluderPolygon2D): OccluderPolygon2D_CullMode =
  expandMethodBind(className OccluderPolygon2D, "get_cull_mode", 33931036)
  var ret: encoded OccluderPolygon2D_CullMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(OccluderPolygon2D_CullMode)

proc setPolygon*(self: OccluderPolygon2D; polygon: PackedVector2Array): void =
  expandMethodBind(className OccluderPolygon2D, "set_polygon", 1509147220)
  var `?param` = [getPtr polygon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPolygon*(self: OccluderPolygon2D): PackedVector2Array =
  expandMethodBind(className OccluderPolygon2D, "get_polygon", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector2Array)

template closed*(self: OccluderPolygon2D): untyped = self.isClosed()
template `closed=`*(self: OccluderPolygon2D; value) = self.setClosed(value)

template cullMode*(self: OccluderPolygon2D): untyped = self.getCullMode()
template `cullMode=`*(self: OccluderPolygon2D; value) = self.setCullMode(value)

template polygon*(self: OccluderPolygon2D): untyped = self.getPolygon()
template `polygon=`*(self: OccluderPolygon2D; value) = self.setPolygon(value)

const OccluderPolygon2D_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OccluderPolygon2D]): Table[string, string] = OccluderPolygon2D_vmap