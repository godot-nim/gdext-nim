{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc save*(self: ResourceSaver; resource: gdref Resource; path: String = gdstring""; flags: set[ResourceSaver_SaverFlags] = {}): Error =
  expandMethodBind(className ResourceSaver, "save", 2983274697)
  var `?param` = [getPtr resource, getPtr path, getPtr flags]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc getRecognizedExtensions*(self: ResourceSaver; `type`: gdref Resource): PackedStringArray =
  expandMethodBind(className ResourceSaver, "get_recognized_extensions", 4223597960)
  var `?param` = [getPtr `type`]
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc addResourceFormatSaver*(self: ResourceSaver; formatSaver: gdref ResourceFormatSaver; atFront: bool = false): void =
  expandMethodBind(className ResourceSaver, "add_resource_format_saver", 362894272)
  var `?param` = [getPtr formatSaver, getPtr atFront]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeResourceFormatSaver*(self: ResourceSaver; formatSaver: gdref ResourceFormatSaver): void =
  expandMethodBind(className ResourceSaver, "remove_resource_format_saver", 3373026878)
  var `?param` = [getPtr formatSaver]
  methodbind.ptrcall(self, addr `?param`[0])

const ResourceSaver_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ResourceSaver]): Table[string, string] = ResourceSaver_vmap