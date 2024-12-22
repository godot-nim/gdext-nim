{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setWorldScale*(self: XROrigin3D; worldScale: Float): void =
  expandMethodBind(className XROrigin3D, "set_world_scale", 373806689)
  var `?param` = [getPtr worldScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWorldScale*(self: XROrigin3D): Float =
  expandMethodBind(className XROrigin3D, "get_world_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setCurrent*(self: XROrigin3D; enabled: bool): void =
  expandMethodBind(className XROrigin3D, "set_current", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCurrent*(self: XROrigin3D): bool =
  expandMethodBind(className XROrigin3D, "is_current", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template worldScale*(self: XROrigin3D): untyped = self.getWorldScale()
template `worldScale=`*(self: XROrigin3D; value) = self.setWorldScale(value)

template current*(self: XROrigin3D): untyped = self.isCurrent()
template `current=`*(self: XROrigin3D; value) = self.setCurrent(value)

const XROrigin3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XROrigin3D]): Table[string, string] = XROrigin3D_vmap