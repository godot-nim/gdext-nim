{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc isLibraryOpen*(self: GDExtension): bool =
  expandMethodBind(className GDExtension, "is_library_open", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getMinimumLibraryInitializationLevel*(self: GDExtension): GDExtension_InitializationLevel =
  expandMethodBind(className GDExtension, "get_minimum_library_initialization_level", 964858755)
  var ret: encoded GDExtension_InitializationLevel
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(GDExtension_InitializationLevel)

const GDExtension_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GDExtension]): Table[string, string] = GDExtension_vmap