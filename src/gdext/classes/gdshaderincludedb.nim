{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject
export ShaderIncludeDB

proc listBuiltInIncludeFiles*(_: typedesc[ShaderIncludeDB]): PackedStringArray =
  expandMethodBind(className ShaderIncludeDB, "list_built_in_include_files", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall([], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc hasBuiltInIncludeFile*(_: typedesc[ShaderIncludeDB]; filename: String): bool =
  expandMethodBind(className ShaderIncludeDB, "has_built_in_include_file", 2323990056)
  var ret: encoded bool
  methodbind.ptrcall([getPtr filename], addr ret)
  (addr ret).decode_result(bool)

proc getBuiltInIncludeFile*(_: typedesc[ShaderIncludeDB]; filename: String): String =
  expandMethodBind(className ShaderIncludeDB, "get_built_in_include_file", 1703090593)
  var ret: encoded String
  methodbind.ptrcall([getPtr filename], addr ret)
  (addr ret).decode_result(String)
