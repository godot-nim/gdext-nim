{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setRemoteNode*(self: RemoteTransform3D; path: NodePath): void =
  expandMethodBind(className RemoteTransform3D, "set_remote_node", 1348162250)
  methodbind.ptrcall(self, [getPtr path])

proc getRemoteNode*(self: RemoteTransform3D): NodePath =
  expandMethodBind(className RemoteTransform3D, "get_remote_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc forceUpdateCache*(self: RemoteTransform3D): void =
  expandMethodBind(className RemoteTransform3D, "force_update_cache", 3218959716)
  methodbind.ptrcall(self, [])

proc setUseGlobalCoordinates*(self: RemoteTransform3D; useGlobalCoordinates: bool): void =
  expandMethodBind(className RemoteTransform3D, "set_use_global_coordinates", 2586408642)
  methodbind.ptrcall(self, [getPtr useGlobalCoordinates])

proc getUseGlobalCoordinates*(self: RemoteTransform3D): bool =
  expandMethodBind(className RemoteTransform3D, "get_use_global_coordinates", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setUpdatePosition*(self: RemoteTransform3D; updateRemotePosition: bool): void =
  expandMethodBind(className RemoteTransform3D, "set_update_position", 2586408642)
  methodbind.ptrcall(self, [getPtr updateRemotePosition])

proc getUpdatePosition*(self: RemoteTransform3D): bool =
  expandMethodBind(className RemoteTransform3D, "get_update_position", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setUpdateRotation*(self: RemoteTransform3D; updateRemoteRotation: bool): void =
  expandMethodBind(className RemoteTransform3D, "set_update_rotation", 2586408642)
  methodbind.ptrcall(self, [getPtr updateRemoteRotation])

proc getUpdateRotation*(self: RemoteTransform3D): bool =
  expandMethodBind(className RemoteTransform3D, "get_update_rotation", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setUpdateScale*(self: RemoteTransform3D; updateRemoteScale: bool): void =
  expandMethodBind(className RemoteTransform3D, "set_update_scale", 2586408642)
  methodbind.ptrcall(self, [getPtr updateRemoteScale])

proc getUpdateScale*(self: RemoteTransform3D): bool =
  expandMethodBind(className RemoteTransform3D, "get_update_scale", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

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

const RemoteTransform3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RemoteTransform3D]): Table[string, string] = RemoteTransform3D_vmap