{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setBytecode*(self: RDShaderFile; bytecode: gdref RDShaderSPIRV; version: StringName = stringName ""): void =
  expandMethodBind(className RDShaderFile, "set_bytecode", 1558064255)
  var `?param` = [getPtr bytecode, getPtr version]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSpirv*(self: RDShaderFile; version: StringName = stringName ""): gdref RDShaderSPIRV =
  expandMethodBind(className RDShaderFile, "get_spirv", 3340165340)
  var `?param` = [getPtr version]
  var ret: encoded gdref RDShaderSPIRV
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref RDShaderSPIRV)

proc getVersionList*(self: RDShaderFile): TypedArray[StringName] =
  expandMethodBind(className RDShaderFile, "get_version_list", 3995934104)
  var ret: encoded TypedArray[StringName]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[StringName])

proc setBaseError*(self: RDShaderFile; error: String): void =
  expandMethodBind(className RDShaderFile, "set_base_error", 83702148)
  var `?param` = [getPtr error]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBaseError*(self: RDShaderFile): String =
  expandMethodBind(className RDShaderFile, "get_base_error", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

template baseError*(self: RDShaderFile): untyped = self.getBaseError()
template `baseError=`*(self: RDShaderFile; value) = self.setBaseError(value)

const RDShaderFile_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RDShaderFile]): Table[string, string] = RDShaderFile_vmap