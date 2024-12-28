{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc loadExtension*(self: GDExtensionManager; path: String): GDExtensionManager_LoadStatus =
  expandMethodBind(className GDExtensionManager, "load_extension", 4024158731)
  var ret: encoded GDExtensionManager_LoadStatus
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(GDExtensionManager_LoadStatus)

proc reloadExtension*(self: GDExtensionManager; path: String): GDExtensionManager_LoadStatus =
  expandMethodBind(className GDExtensionManager, "reload_extension", 4024158731)
  var ret: encoded GDExtensionManager_LoadStatus
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(GDExtensionManager_LoadStatus)

proc unloadExtension*(self: GDExtensionManager; path: String): GDExtensionManager_LoadStatus =
  expandMethodBind(className GDExtensionManager, "unload_extension", 4024158731)
  var ret: encoded GDExtensionManager_LoadStatus
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(GDExtensionManager_LoadStatus)

proc isExtensionLoaded*(self: GDExtensionManager; path: String): bool =
  expandMethodBind(className GDExtensionManager, "is_extension_loaded", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(bool)

proc getLoadedExtensions*(self: GDExtensionManager): PackedStringArray =
  expandMethodBind(className GDExtensionManager, "get_loaded_extensions", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getExtension*(self: GDExtensionManager; path: String): gdref GDExtension =
  expandMethodBind(className GDExtensionManager, "get_extension", 49743343)
  var ret: encoded gdref GDExtension
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(gdref GDExtension)

const GDExtensionManager_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GDExtensionManager]): Table[string, string] = GDExtensionManager_vmap

proc extensionsReloaded*(self: GDExtensionManager): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("extensions_reloaded")
  self.emitSignal(signalname)