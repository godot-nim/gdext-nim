{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(CameraFeed, RefCounted)

method activateFeed*(self: CameraFeed): bool {.base.} = (discard)
proc registerVirtual_activateFeed*[T: CameraFeed](Self: typedesc[T]) =
  Self.vmethods[newStringName"_activate_feed"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CameraFeed](p_instance).activateFeed().encode(r_ret)

method deactivateFeed*(self: CameraFeed): void {.base.} = (discard)
proc registerVirtual_deactivateFeed*[T: CameraFeed](Self: typedesc[T]) =
  Self.vmethods[newStringName"_deactivate_feed"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CameraFeed](p_instance).deactivateFeed()

proc getId*(self: CameraFeed): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraFeed, "get_id", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc isActive*(self: CameraFeed): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraFeed, "is_active", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setActive*(self: CameraFeed; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraFeed, "set_active", 2586408642)
  methodbind.ptrcall(self, [getPtr active], void)

proc getName*(self: CameraFeed): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraFeed, "get_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc setName*(self: CameraFeed; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraFeed, "set_name", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getPosition*(self: CameraFeed): CameraFeed_FeedPosition =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraFeed, "get_position", 2711679033)
  methodbind.ptrcall(self, [], CameraFeed_FeedPosition)

proc setPosition*(self: CameraFeed; position: CameraFeed_FeedPosition): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraFeed, "set_position", 611162623)
  methodbind.ptrcall(self, [getPtr position], void)

proc getTransform*(self: CameraFeed): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraFeed, "get_transform", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc setTransform*(self: CameraFeed; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraFeed, "set_transform", 2761652528)
  methodbind.ptrcall(self, [getPtr transform], void)

proc setRgbImage*(self: CameraFeed; rgbImage: gdref Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraFeed, "set_rgb_image", 532598488)
  methodbind.ptrcall(self, [getPtr rgbImage], void)

proc setYcbcrImage*(self: CameraFeed; ycbcrImage: gdref Image): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraFeed, "set_ycbcr_image", 532598488)
  methodbind.ptrcall(self, [getPtr ycbcrImage], void)

proc setExternal*(self: CameraFeed; width: int32; height: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraFeed, "set_external", 3937882851)
  methodbind.ptrcall(self, [getPtr width, getPtr height], void)

proc getTextureTexId*(self: CameraFeed; feedImageType: CameraServer_FeedImage): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraFeed, "get_texture_tex_id", 1135699418)
  methodbind.ptrcall(self, [getPtr feedImageType], uint64)

proc getDatatype*(self: CameraFeed): CameraFeed_FeedDataType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraFeed, "get_datatype", 1477782850)
  methodbind.ptrcall(self, [], CameraFeed_FeedDataType)

proc getFormats*(self: CameraFeed): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraFeed, "get_formats", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc setFormat*(self: CameraFeed; index: int32; parameters: Dictionary): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CameraFeed, "set_format", 31872775)
  methodbind.ptrcall(self, [getPtr index, getPtr parameters], bool)

template feedIsActive*(self: CameraFeed): untyped = self.isActive()
template `feedIsActive=`*(self: CameraFeed; value) = self.setActive(value)

template feedTransform*(self: CameraFeed): untyped = self.getTransform()
template `feedTransform=`*(self: CameraFeed; value) = self.setTransform(value)

template formats*(self: CameraFeed): untyped = self.getFormats()
