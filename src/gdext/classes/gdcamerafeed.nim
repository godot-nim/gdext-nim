{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted
export CameraFeed

method activateFeed*(self: CameraFeed): bool {.base.} = (discard)
proc registerVirtual_activateFeed*[T: CameraFeed](Self: typedesc[T]) =
  Self.vmethods[newStringName"_activate_feed"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CameraFeed](p_instance).activateFeed().encode(r_ret)

method deactivateFeed*(self: CameraFeed): void {.base.} = (discard)
proc registerVirtual_deactivateFeed*[T: CameraFeed](Self: typedesc[T]) =
  Self.vmethods[newStringName"_deactivate_feed"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CameraFeed](p_instance).deactivateFeed()

proc getId*(self: CameraFeed): int32 =
  expandMethodBind(className CameraFeed, "get_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc isActive*(self: CameraFeed): bool =
  expandMethodBind(className CameraFeed, "is_active", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setActive*(self: CameraFeed; active: bool): void =
  expandMethodBind(className CameraFeed, "set_active", 2586408642)
  methodbind.ptrcall(self, [getPtr active])

proc getName*(self: CameraFeed): String =
  expandMethodBind(className CameraFeed, "get_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setName*(self: CameraFeed; name: String): void =
  expandMethodBind(className CameraFeed, "set_name", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc getPosition*(self: CameraFeed): CameraFeed_FeedPosition =
  expandMethodBind(className CameraFeed, "get_position", 2711679033)
  var ret: encoded CameraFeed_FeedPosition
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(CameraFeed_FeedPosition)

proc setPosition*(self: CameraFeed; position: CameraFeed_FeedPosition): void =
  expandMethodBind(className CameraFeed, "set_position", 611162623)
  methodbind.ptrcall(self, [getPtr position])

proc getTransform*(self: CameraFeed): Transform2D =
  expandMethodBind(className CameraFeed, "get_transform", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Transform2D)

proc setTransform*(self: CameraFeed; transform: Transform2D): void =
  expandMethodBind(className CameraFeed, "set_transform", 2761652528)
  methodbind.ptrcall(self, [getPtr transform])

proc setRgbImage*(self: CameraFeed; rgbImage: gdref Image): void =
  expandMethodBind(className CameraFeed, "set_rgb_image", 532598488)
  methodbind.ptrcall(self, [getPtr rgbImage])

proc setYcbcrImage*(self: CameraFeed; ycbcrImage: gdref Image): void =
  expandMethodBind(className CameraFeed, "set_ycbcr_image", 532598488)
  methodbind.ptrcall(self, [getPtr ycbcrImage])

proc setExternal*(self: CameraFeed; width: int32; height: int32): void =
  expandMethodBind(className CameraFeed, "set_external", 3937882851)
  methodbind.ptrcall(self, [getPtr width, getPtr height])

proc getTextureTexId*(self: CameraFeed; feedImageType: CameraServer_FeedImage): uint64 =
  expandMethodBind(className CameraFeed, "get_texture_tex_id", 1135699418)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr feedImageType], addr ret)
  (addr ret).decode_result(uint64)

proc getDatatype*(self: CameraFeed): CameraFeed_FeedDataType =
  expandMethodBind(className CameraFeed, "get_datatype", 1477782850)
  var ret: encoded CameraFeed_FeedDataType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(CameraFeed_FeedDataType)

proc getFormats*(self: CameraFeed): Array =
  expandMethodBind(className CameraFeed, "get_formats", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

proc setFormat*(self: CameraFeed; index: int32; parameters: Dictionary): bool =
  expandMethodBind(className CameraFeed, "set_format", 31872775)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr index, getPtr parameters], addr ret)
  (addr ret).decode_result(bool)

template feedIsActive*(self: CameraFeed): untyped = self.isActive()
template `feedIsActive=`*(self: CameraFeed; value) = self.setActive(value)

template feedTransform*(self: CameraFeed): untyped = self.getTransform()
template `feedTransform=`*(self: CameraFeed; value) = self.setTransform(value)

template formats*(self: CameraFeed): untyped = self.getFormats()
