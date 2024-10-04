{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setWorldScale*(self: XrOrigin3D; worldScale: Float): void =
  expandMethodBind(className XrOrigin3D, "set_world_scale", 373806689)
  var `?param` = [getPtr worldScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWorldScale*(self: XrOrigin3D): Float =
  expandMethodBind(className XrOrigin3D, "get_world_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setCurrent*(self: XrOrigin3D; enabled: bool): void =
  expandMethodBind(className XrOrigin3D, "set_current", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCurrent*(self: XrOrigin3D): bool =
  expandMethodBind(className XrOrigin3D, "is_current", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template worldScale*(self: XrOrigin3D): untyped = self.getWorldScale()
template `worldScale=`*(self: XrOrigin3D; value) = self.setWorldScale(value)

template current*(self: XrOrigin3D): untyped = self.isCurrent()
template `current=`*(self: XrOrigin3D; value) = self.setCurrent(value)

const XrOrigin3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrOrigin3D]): Table[string, string] = XrOrigin3D_vmap