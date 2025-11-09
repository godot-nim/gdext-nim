{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrnode3d; export gdxrnode3d

expandOnClassImported(XRAnchor3D, XRNode3D)

proc getSize*(self: XRAnchor3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRAnchor3D, "get_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getPlane*(self: XRAnchor3D): Plane =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRAnchor3D, "get_plane", 2753500971)
  methodbind.ptrcall(self, [], Plane)
