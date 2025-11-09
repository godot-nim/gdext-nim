{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(ResourceLoader, Object)

proc loadThreadedRequest*(self: ResourceLoader; path: String; typeHint: String = newGdString(); useSubThreads: bool = false; cacheMode: ResourceLoader_CacheMode = cacheModeReuse): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceLoader, "load_threaded_request", 3614384323)
  methodbind.ptrcall(self, [getPtr path, getPtr typeHint, getPtr useSubThreads, getPtr cacheMode], Error)

proc loadThreadedGetStatus*(self: ResourceLoader; path: String; progress: Array = newArray()): ResourceLoader_ThreadLoadStatus =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceLoader, "load_threaded_get_status", 4137685479)
  methodbind.ptrcall(self, [getPtr path, getPtr progress], ResourceLoader_ThreadLoadStatus)

proc loadThreadedGet*(self: ResourceLoader; path: String): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceLoader, "load_threaded_get", 1748875256)
  methodbind.ptrcall(self, [getPtr path], gdref Resource)

proc load*(self: ResourceLoader; path: String; typeHint: String = newGdString(); cacheMode: ResourceLoader_CacheMode = cacheModeReuse): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceLoader, "load", 3358495409)
  methodbind.ptrcall(self, [getPtr path, getPtr typeHint, getPtr cacheMode], gdref Resource)

proc getRecognizedExtensionsForType*(self: ResourceLoader; `type`: String): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceLoader, "get_recognized_extensions_for_type", 3538744774)
  methodbind.ptrcall(self, [getPtr `type`], PackedStringArray)

proc addResourceFormatLoader*(self: ResourceLoader; formatLoader: gdref ResourceFormatLoader; atFront: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceLoader, "add_resource_format_loader", 2896595483)
  methodbind.ptrcall(self, [getPtr formatLoader, getPtr atFront], void)

proc removeResourceFormatLoader*(self: ResourceLoader; formatLoader: gdref ResourceFormatLoader): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceLoader, "remove_resource_format_loader", 405397102)
  methodbind.ptrcall(self, [getPtr formatLoader], void)

proc setAbortOnMissingResources*(self: ResourceLoader; abort: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceLoader, "set_abort_on_missing_resources", 2586408642)
  methodbind.ptrcall(self, [getPtr abort], void)

proc getDependencies*(self: ResourceLoader; path: String): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceLoader, "get_dependencies", 3538744774)
  methodbind.ptrcall(self, [getPtr path], PackedStringArray)

proc hasCached*(self: ResourceLoader; path: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceLoader, "has_cached", 2323990056)
  methodbind.ptrcall(self, [getPtr path], bool)

proc getCachedRef*(self: ResourceLoader; path: String): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceLoader, "get_cached_ref", 1748875256)
  methodbind.ptrcall(self, [getPtr path], gdref Resource)

proc exists*(self: ResourceLoader; path: String; typeHint: String = newGdString()): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceLoader, "exists", 4185558881)
  methodbind.ptrcall(self, [getPtr path, getPtr typeHint], bool)

proc getResourceUid*(self: ResourceLoader; path: String): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceLoader, "get_resource_uid", 1597066294)
  methodbind.ptrcall(self, [getPtr path], int64)

proc listDirectory*(self: ResourceLoader; directoryPath: String): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceLoader, "list_directory", 3538744774)
  methodbind.ptrcall(self, [getPtr directoryPath], PackedStringArray)
