{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(ShaderIncludeDB, Object)

proc listBuiltInIncludeFiles*(_: typedesc[ShaderIncludeDB]): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShaderIncludeDB, "list_built_in_include_files", 2981934095)
  methodbind.ptrcall([], PackedStringArray)

proc hasBuiltInIncludeFile*(_: typedesc[ShaderIncludeDB]; filename: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShaderIncludeDB, "has_built_in_include_file", 2323990056)
  methodbind.ptrcall([getPtr filename], bool)

proc getBuiltInIncludeFile*(_: typedesc[ShaderIncludeDB]; filename: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShaderIncludeDB, "get_built_in_include_file", 1703090593)
  methodbind.ptrcall([getPtr filename], String)
