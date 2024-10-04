{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getId*(self: CameraFeed): int32 =
  expandMethodBind(className CameraFeed, "get_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc isActive*(self: CameraFeed): bool =
  expandMethodBind(className CameraFeed, "is_active", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setActive*(self: CameraFeed; active: bool): void =
  expandMethodBind(className CameraFeed, "set_active", 2586408642)
  var `?param` = [getPtr active]
  methodbind.ptrcall(self, addr `?param`[0])

proc getName*(self: CameraFeed): String =
  expandMethodBind(className CameraFeed, "get_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getPosition*(self: CameraFeed): CameraFeed_FeedPosition =
  expandMethodBind(className CameraFeed, "get_position", 2711679033)
  var ret: encoded CameraFeed_FeedPosition
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CameraFeed_FeedPosition)

proc getTransform*(self: CameraFeed): Transform2D =
  expandMethodBind(className CameraFeed, "get_transform", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform2D)

proc setTransform*(self: CameraFeed; transform: Transform2D): void =
  expandMethodBind(className CameraFeed, "set_transform", 2761652528)
  var `?param` = [getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDatatype*(self: CameraFeed): CameraFeed_FeedDataType =
  expandMethodBind(className CameraFeed, "get_datatype", 1477782850)
  var ret: encoded CameraFeed_FeedDataType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CameraFeed_FeedDataType)

template feedIsActive*(self: CameraFeed): untyped = self.isActive()
template `feedIsActive=`*(self: CameraFeed; value) = self.setActive(value)

template feedTransform*(self: CameraFeed): untyped = self.getTransform()
template `feedTransform=`*(self: CameraFeed; value) = self.setTransform(value)

const CameraFeed_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CameraFeed]): Table[string, string] = CameraFeed_vmap