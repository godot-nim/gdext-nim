{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc loadExtension*(self: GdExtensionManager; path: String): GdExtensionManager_LoadStatus =
  expandMethodBind(className GdExtensionManager, "load_extension", 4024158731)
  var `?param` = [getPtr path]
  var ret: encoded GdExtensionManager_LoadStatus
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(GdExtensionManager_LoadStatus)

proc reloadExtension*(self: GdExtensionManager; path: String): GdExtensionManager_LoadStatus =
  expandMethodBind(className GdExtensionManager, "reload_extension", 4024158731)
  var `?param` = [getPtr path]
  var ret: encoded GdExtensionManager_LoadStatus
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(GdExtensionManager_LoadStatus)

proc unloadExtension*(self: GdExtensionManager; path: String): GdExtensionManager_LoadStatus =
  expandMethodBind(className GdExtensionManager, "unload_extension", 4024158731)
  var `?param` = [getPtr path]
  var ret: encoded GdExtensionManager_LoadStatus
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(GdExtensionManager_LoadStatus)

proc isExtensionLoaded*(self: GdExtensionManager; path: String): bool =
  expandMethodBind(className GdExtensionManager, "is_extension_loaded", 3927539163)
  var `?param` = [getPtr path]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getLoadedExtensions*(self: GdExtensionManager): PackedStringArray =
  expandMethodBind(className GdExtensionManager, "get_loaded_extensions", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getExtension*(self: GdExtensionManager; path: String): gdref GdExtension =
  expandMethodBind(className GdExtensionManager, "get_extension", 49743343)
  var `?param` = [getPtr path]
  var ret: encoded gdref GdExtension
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref GdExtension)

const GdExtensionManager_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GdExtensionManager]): Table[string, string] = GdExtensionManager_vmap

proc extensionsReloaded*(self: GdExtensionManager): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("extensions_reloaded")
  self.emitSignal(signalname)