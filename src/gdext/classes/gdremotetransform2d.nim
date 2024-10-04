{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setRemoteNode*(self: RemoteTransform2D; path: NodePath): void =
  expandMethodBind(className RemoteTransform2D, "set_remote_node", 1348162250)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRemoteNode*(self: RemoteTransform2D): NodePath =
  expandMethodBind(className RemoteTransform2D, "get_remote_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc forceUpdateCache*(self: RemoteTransform2D): void =
  expandMethodBind(className RemoteTransform2D, "force_update_cache", 3218959716)
  methodbind.ptrcall(self, nil)

proc setUseGlobalCoordinates*(self: RemoteTransform2D; useGlobalCoordinates: bool): void =
  expandMethodBind(className RemoteTransform2D, "set_use_global_coordinates", 2586408642)
  var `?param` = [getPtr useGlobalCoordinates]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUseGlobalCoordinates*(self: RemoteTransform2D): bool =
  expandMethodBind(className RemoteTransform2D, "get_use_global_coordinates", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUpdatePosition*(self: RemoteTransform2D; updateRemotePosition: bool): void =
  expandMethodBind(className RemoteTransform2D, "set_update_position", 2586408642)
  var `?param` = [getPtr updateRemotePosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUpdatePosition*(self: RemoteTransform2D): bool =
  expandMethodBind(className RemoteTransform2D, "get_update_position", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUpdateRotation*(self: RemoteTransform2D; updateRemoteRotation: bool): void =
  expandMethodBind(className RemoteTransform2D, "set_update_rotation", 2586408642)
  var `?param` = [getPtr updateRemoteRotation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUpdateRotation*(self: RemoteTransform2D): bool =
  expandMethodBind(className RemoteTransform2D, "get_update_rotation", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUpdateScale*(self: RemoteTransform2D; updateRemoteScale: bool): void =
  expandMethodBind(className RemoteTransform2D, "set_update_scale", 2586408642)
  var `?param` = [getPtr updateRemoteScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUpdateScale*(self: RemoteTransform2D): bool =
  expandMethodBind(className RemoteTransform2D, "get_update_scale", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

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

const RemoteTransform2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RemoteTransform2D]): Table[string, string] = RemoteTransform2D_vmap