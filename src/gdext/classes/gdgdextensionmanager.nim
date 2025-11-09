{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(GDExtensionManager, Object)

proc loadExtension*(self: GDExtensionManager; path: String): GDExtensionManager_LoadStatus =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GDExtensionManager, "load_extension", 4024158731)
  methodbind.ptrcall(self, [getPtr path], GDExtensionManager_LoadStatus)

proc reloadExtension*(self: GDExtensionManager; path: String): GDExtensionManager_LoadStatus =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GDExtensionManager, "reload_extension", 4024158731)
  methodbind.ptrcall(self, [getPtr path], GDExtensionManager_LoadStatus)

proc unloadExtension*(self: GDExtensionManager; path: String): GDExtensionManager_LoadStatus =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GDExtensionManager, "unload_extension", 4024158731)
  methodbind.ptrcall(self, [getPtr path], GDExtensionManager_LoadStatus)

proc isExtensionLoaded*(self: GDExtensionManager; path: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GDExtensionManager, "is_extension_loaded", 3927539163)
  methodbind.ptrcall(self, [getPtr path], bool)

proc getLoadedExtensions*(self: GDExtensionManager): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GDExtensionManager, "get_loaded_extensions", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getExtension*(self: GDExtensionManager; path: String): gdref GDExtension =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GDExtensionManager, "get_extension", 49743343)
  methodbind.ptrcall(self, [getPtr path], gdref GDExtension)
