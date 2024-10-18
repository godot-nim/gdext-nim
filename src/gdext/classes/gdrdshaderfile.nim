{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setBytecode*(self: RdShaderFile; bytecode: gdref RdShaderSpirv; version: StringName = stringName ""): void =
  expandMethodBind(className RdShaderFile, "set_bytecode", 1558064255)
  var `?param` = [getPtr bytecode, getPtr version]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpirv*(self: RdShaderFile; version: StringName = stringName ""): gdref RdShaderSpirv =
  expandMethodBind(className RdShaderFile, "get_spirv", 3340165340)
  var `?param` = [getPtr version]
  var ret: encoded gdref RdShaderSpirv
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref RdShaderSpirv)

proc getVersionList*(self: RdShaderFile): TypedArray[StringName] =
  expandMethodBind(className RdShaderFile, "get_version_list", 3995934104)
  var ret: encoded TypedArray[StringName]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[StringName])

proc setBaseError*(self: RdShaderFile; error: String): void =
  expandMethodBind(className RdShaderFile, "set_base_error", 83702148)
  var `?param` = [getPtr error]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBaseError*(self: RdShaderFile): String =
  expandMethodBind(className RdShaderFile, "get_base_error", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

template baseError*(self: RdShaderFile): untyped = self.getBaseError()
template `baseError=`*(self: RdShaderFile; value) = self.setBaseError(value)

const RdShaderFile_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RdShaderFile]): Table[string, string] = RdShaderFile_vmap