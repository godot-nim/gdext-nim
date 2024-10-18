{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc isLibraryOpen*(self: GdExtension): bool =
  expandMethodBind(className GdExtension, "is_library_open", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getMinimumLibraryInitializationLevel*(self: GdExtension): GdExtension_InitializationLevel =
  expandMethodBind(className GdExtension, "get_minimum_library_initialization_level", 964858755)
  var ret: encoded GdExtension_InitializationLevel
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GdExtension_InitializationLevel)

const GdExtension_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GdExtension]): Table[string, string] = GdExtension_vmap