{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(ResourceSaver, Object)

proc save*(self: ResourceSaver; resource: gdref Resource; path: String = newGdString(); flags: set[ResourceSaver_SaverFlags] = {}): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceSaver, "save", 2983274697)
  methodbind.ptrcall(self, [getPtr resource, getPtr path, getPtr flags], Error)

proc setUid*(self: ResourceSaver; resource: String; uid: int64): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceSaver, "set_uid", 993915709)
  methodbind.ptrcall(self, [getPtr resource, getPtr uid], Error)

proc getRecognizedExtensions*(self: ResourceSaver; `type`: gdref Resource): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceSaver, "get_recognized_extensions", 4223597960)
  methodbind.ptrcall(self, [getPtr `type`], PackedStringArray)

proc addResourceFormatSaver*(self: ResourceSaver; formatSaver: gdref ResourceFormatSaver; atFront: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceSaver, "add_resource_format_saver", 362894272)
  methodbind.ptrcall(self, [getPtr formatSaver, getPtr atFront], void)

proc removeResourceFormatSaver*(self: ResourceSaver; formatSaver: gdref ResourceFormatSaver): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceSaver, "remove_resource_format_saver", 3373026878)
  methodbind.ptrcall(self, [getPtr formatSaver], void)

proc getResourceIdForPath*(self: ResourceSaver; path: String; generate: bool = false): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ResourceSaver, "get_resource_id_for_path", 150756522)
  methodbind.ptrcall(self, [getPtr path, getPtr generate], int64)
