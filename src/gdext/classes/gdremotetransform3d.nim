{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(RemoteTransform3D, Node3D)

proc setRemoteNode*(self: RemoteTransform3D; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform3D, "set_remote_node", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getRemoteNode*(self: RemoteTransform3D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform3D, "get_remote_node", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc forceUpdateCache*(self: RemoteTransform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform3D, "force_update_cache", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setUseGlobalCoordinates*(self: RemoteTransform3D; useGlobalCoordinates: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform3D, "set_use_global_coordinates", 2586408642)
  methodbind.ptrcall(self, [getPtr useGlobalCoordinates], void)

proc getUseGlobalCoordinates*(self: RemoteTransform3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform3D, "get_use_global_coordinates", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUpdatePosition*(self: RemoteTransform3D; updateRemotePosition: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform3D, "set_update_position", 2586408642)
  methodbind.ptrcall(self, [getPtr updateRemotePosition], void)

proc getUpdatePosition*(self: RemoteTransform3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform3D, "get_update_position", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUpdateRotation*(self: RemoteTransform3D; updateRemoteRotation: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform3D, "set_update_rotation", 2586408642)
  methodbind.ptrcall(self, [getPtr updateRemoteRotation], void)

proc getUpdateRotation*(self: RemoteTransform3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform3D, "get_update_rotation", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUpdateScale*(self: RemoteTransform3D; updateRemoteScale: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform3D, "set_update_scale", 2586408642)
  methodbind.ptrcall(self, [getPtr updateRemoteScale], void)

proc getUpdateScale*(self: RemoteTransform3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform3D, "get_update_scale", 36873697)
  methodbind.ptrcall(self, [], bool)

template remotePath*(self: RemoteTransform3D): untyped = self.getRemoteNode()
template `remotePath=`*(self: RemoteTransform3D; value) = self.setRemoteNode(value)

template useGlobalCoordinates*(self: RemoteTransform3D): untyped = self.getUseGlobalCoordinates()
template `useGlobalCoordinates=`*(self: RemoteTransform3D; value) = self.setUseGlobalCoordinates(value)

template updatePosition*(self: RemoteTransform3D): untyped = self.getUpdatePosition()
template `updatePosition=`*(self: RemoteTransform3D; value) = self.setUpdatePosition(value)

template updateRotation*(self: RemoteTransform3D): untyped = self.getUpdateRotation()
template `updateRotation=`*(self: RemoteTransform3D; value) = self.setUpdateRotation(value)

template updateScale*(self: RemoteTransform3D): untyped = self.getUpdateScale()
template `updateScale=`*(self: RemoteTransform3D; value) = self.setUpdateScale(value)
