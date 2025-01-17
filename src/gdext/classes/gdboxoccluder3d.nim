{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdoccluder3d; export gdoccluder3d

proc setSize*(self: BoxOccluder3D; size: Vector3): void =
  expandMethodBind(className BoxOccluder3D, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size])

proc getSize*(self: BoxOccluder3D): Vector3 =
  expandMethodBind(className BoxOccluder3D, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

template size*(self: BoxOccluder3D): untyped = self.getSize()
template `size=`*(self: BoxOccluder3D; value) = self.setSize(value)

const BoxOccluder3D_vmap =
  Occluder3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[BoxOccluder3D]): Table[string, string] = BoxOccluder3D_vmap