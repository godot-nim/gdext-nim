{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrnode3d; export gdxrnode3d

proc getSize*(self: XrAnchor3D): Vector3 =
  expandMethodBind(className XrAnchor3D, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getPlane*(self: XrAnchor3D): Plane =
  expandMethodBind(className XrAnchor3D, "get_plane", 2753500971)
  var ret: encoded Plane
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Plane)

const XrAnchor3D_vmap =
  XrNode3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrAnchor3D]): Table[string, string] = XrAnchor3D_vmap