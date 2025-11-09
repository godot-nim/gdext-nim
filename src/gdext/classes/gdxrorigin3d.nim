{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(XROrigin3D, Node3D)

proc setWorldScale*(self: XROrigin3D; worldScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XROrigin3D, "set_world_scale", 373806689)
  methodbind.ptrcall(self, [getPtr worldScale], void)

proc getWorldScale*(self: XROrigin3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XROrigin3D, "get_world_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setCurrent*(self: XROrigin3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XROrigin3D, "set_current", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isCurrent*(self: XROrigin3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XROrigin3D, "is_current", 36873697)
  methodbind.ptrcall(self, [], bool)

template worldScale*(self: XROrigin3D): untyped = self.getWorldScale()
template `worldScale=`*(self: XROrigin3D; value) = self.setWorldScale(value)

template current*(self: XROrigin3D): untyped = self.isCurrent()
template `current=`*(self: XROrigin3D; value) = self.setCurrent(value)
