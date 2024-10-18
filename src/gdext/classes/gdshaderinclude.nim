{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setCode*(self: ShaderInclude; code: String): void =
  expandMethodBind(className ShaderInclude, "set_code", 83702148)
  var `?param` = [getPtr code]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCode*(self: ShaderInclude): String =
  expandMethodBind(className ShaderInclude, "get_code", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

template code*(self: ShaderInclude): untyped = self.getCode()
template `code=`*(self: ShaderInclude; value) = self.setCode(value)

const ShaderInclude_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ShaderInclude]): Table[string, string] = ShaderInclude_vmap