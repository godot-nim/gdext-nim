{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

proc setSize*(self: BoxShape3D; size: Vector3): void =
  expandMethodBind(className BoxShape3D, "set_size", 3460891852)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: BoxShape3D): Vector3 =
  expandMethodBind(className BoxShape3D, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

template size*(self: BoxShape3D): untyped = self.getSize()
template `size=`*(self: BoxShape3D; value) = self.setSize(value)

const BoxShape3D_vmap =
  Shape3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[BoxShape3D]): Table[string, string] = BoxShape3D_vmap