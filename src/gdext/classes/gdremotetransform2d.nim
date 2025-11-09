{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(RemoteTransform2D, Node2D)

proc setRemoteNode*(self: RemoteTransform2D; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform2D, "set_remote_node", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getRemoteNode*(self: RemoteTransform2D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform2D, "get_remote_node", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc forceUpdateCache*(self: RemoteTransform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform2D, "force_update_cache", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setUseGlobalCoordinates*(self: RemoteTransform2D; useGlobalCoordinates: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform2D, "set_use_global_coordinates", 2586408642)
  methodbind.ptrcall(self, [getPtr useGlobalCoordinates], void)

proc getUseGlobalCoordinates*(self: RemoteTransform2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform2D, "get_use_global_coordinates", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUpdatePosition*(self: RemoteTransform2D; updateRemotePosition: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform2D, "set_update_position", 2586408642)
  methodbind.ptrcall(self, [getPtr updateRemotePosition], void)

proc getUpdatePosition*(self: RemoteTransform2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform2D, "get_update_position", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUpdateRotation*(self: RemoteTransform2D; updateRemoteRotation: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform2D, "set_update_rotation", 2586408642)
  methodbind.ptrcall(self, [getPtr updateRemoteRotation], void)

proc getUpdateRotation*(self: RemoteTransform2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform2D, "get_update_rotation", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUpdateScale*(self: RemoteTransform2D; updateRemoteScale: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform2D, "set_update_scale", 2586408642)
  methodbind.ptrcall(self, [getPtr updateRemoteScale], void)

proc getUpdateScale*(self: RemoteTransform2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RemoteTransform2D, "get_update_scale", 36873697)
  methodbind.ptrcall(self, [], bool)

template remotePath*(self: RemoteTransform2D): untyped = self.getRemoteNode()
template `remotePath=`*(self: RemoteTransform2D; value) = self.setRemoteNode(value)

template useGlobalCoordinates*(self: RemoteTransform2D): untyped = self.getUseGlobalCoordinates()
template `useGlobalCoordinates=`*(self: RemoteTransform2D; value) = self.setUseGlobalCoordinates(value)

template updatePosition*(self: RemoteTransform2D): untyped = self.getUpdatePosition()
template `updatePosition=`*(self: RemoteTransform2D; value) = self.setUpdatePosition(value)

template updateRotation*(self: RemoteTransform2D): untyped = self.getUpdateRotation()
template `updateRotation=`*(self: RemoteTransform2D; value) = self.setUpdateRotation(value)

template updateScale*(self: RemoteTransform2D): untyped = self.getUpdateScale()
template `updateScale=`*(self: RemoteTransform2D; value) = self.setUpdateScale(value)
