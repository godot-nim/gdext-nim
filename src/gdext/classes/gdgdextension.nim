{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GDExtension, Resource)

proc isLibraryOpen*(self: GDExtension): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GDExtension, "is_library_open", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getMinimumLibraryInitializationLevel*(self: GDExtension): GDExtension_InitializationLevel =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GDExtension, "get_minimum_library_initialization_level", 964858755)
  methodbind.ptrcall(self, [], GDExtension_InitializationLevel)
