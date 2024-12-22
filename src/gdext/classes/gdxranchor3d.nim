{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrnode3d; export gdxrnode3d

proc getSize*(self: XRAnchor3D): Vector3 =
  expandMethodBind(className XRAnchor3D, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getPlane*(self: XRAnchor3D): Plane =
  expandMethodBind(className XRAnchor3D, "get_plane", 2753500971)
  var ret: encoded Plane
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Plane)

const XRAnchor3D_vmap =
  XRNode3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRAnchor3D]): Table[string, string] = XRAnchor3D_vmap