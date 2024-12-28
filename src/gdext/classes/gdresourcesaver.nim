{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc save*(self: ResourceSaver; resource: gdref Resource; path: String = gdstring""; flags: set[ResourceSaver_SaverFlags] = {}): Error =
  expandMethodBind(className ResourceSaver, "save", 2983274697)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr resource, getPtr path, getPtr flags], addr ret)
  (addr ret).decode_result(Error)

proc getRecognizedExtensions*(self: ResourceSaver; `type`: gdref Resource): PackedStringArray =
  expandMethodBind(className ResourceSaver, "get_recognized_extensions", 4223597960)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr `type`], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc addResourceFormatSaver*(self: ResourceSaver; formatSaver: gdref ResourceFormatSaver; atFront: bool = false): void =
  expandMethodBind(className ResourceSaver, "add_resource_format_saver", 362894272)
  methodbind.ptrcall(self, [getPtr formatSaver, getPtr atFront])

proc removeResourceFormatSaver*(self: ResourceSaver; formatSaver: gdref ResourceFormatSaver): void =
  expandMethodBind(className ResourceSaver, "remove_resource_format_saver", 3373026878)
  methodbind.ptrcall(self, [getPtr formatSaver])

const ResourceSaver_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ResourceSaver]): Table[string, string] = ResourceSaver_vmap