{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc loadThreadedRequest*(self: ResourceLoader; path: String; typeHint: String = gdstring""; useSubThreads: bool = false; cacheMode: ResourceLoader_CacheMode = cacheModeReuse): Error =
  expandMethodBind(className ResourceLoader, "load_threaded_request", 3614384323)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path, getPtr typeHint, getPtr useSubThreads, getPtr cacheMode], addr ret)
  (addr ret).decode_result(Error)

proc loadThreadedGetStatus*(self: ResourceLoader; path: String; progress: Array = gdarray()): ResourceLoader_ThreadLoadStatus =
  expandMethodBind(className ResourceLoader, "load_threaded_get_status", 4137685479)
  var ret: encoded ResourceLoader_ThreadLoadStatus
  methodbind.ptrcall(self, [getPtr path, getPtr progress], addr ret)
  (addr ret).decode_result(ResourceLoader_ThreadLoadStatus)

proc loadThreadedGet*(self: ResourceLoader; path: String): gdref Resource =
  expandMethodBind(className ResourceLoader, "load_threaded_get", 1748875256)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(gdref Resource)

proc load*(self: ResourceLoader; path: String; typeHint: String = gdstring""; cacheMode: ResourceLoader_CacheMode = cacheModeReuse): gdref Resource =
  expandMethodBind(className ResourceLoader, "load", 3358495409)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, [getPtr path, getPtr typeHint, getPtr cacheMode], addr ret)
  (addr ret).decode_result(gdref Resource)

proc getRecognizedExtensionsForType*(self: ResourceLoader; `type`: String): PackedStringArray =
  expandMethodBind(className ResourceLoader, "get_recognized_extensions_for_type", 3538744774)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr `type`], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc addResourceFormatLoader*(self: ResourceLoader; formatLoader: gdref ResourceFormatLoader; atFront: bool = false): void =
  expandMethodBind(className ResourceLoader, "add_resource_format_loader", 2896595483)
  methodbind.ptrcall(self, [getPtr formatLoader, getPtr atFront])

proc removeResourceFormatLoader*(self: ResourceLoader; formatLoader: gdref ResourceFormatLoader): void =
  expandMethodBind(className ResourceLoader, "remove_resource_format_loader", 405397102)
  methodbind.ptrcall(self, [getPtr formatLoader])

proc setAbortOnMissingResources*(self: ResourceLoader; abort: bool): void =
  expandMethodBind(className ResourceLoader, "set_abort_on_missing_resources", 2586408642)
  methodbind.ptrcall(self, [getPtr abort])

proc getDependencies*(self: ResourceLoader; path: String): PackedStringArray =
  expandMethodBind(className ResourceLoader, "get_dependencies", 3538744774)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc hasCached*(self: ResourceLoader; path: String): bool =
  expandMethodBind(className ResourceLoader, "has_cached", 2323990056)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(bool)

proc exists*(self: ResourceLoader; path: String; typeHint: String = gdstring""): bool =
  expandMethodBind(className ResourceLoader, "exists", 4185558881)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr path, getPtr typeHint], addr ret)
  (addr ret).decode_result(bool)

proc getResourceUid*(self: ResourceLoader; path: String): int64 =
  expandMethodBind(className ResourceLoader, "get_resource_uid", 1597066294)
  var ret: encoded int64
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(int64)

const ResourceLoader_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ResourceLoader]): Table[string, string] = ResourceLoader_vmap