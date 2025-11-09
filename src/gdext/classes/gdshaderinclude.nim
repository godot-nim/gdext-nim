{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(ShaderInclude, Resource)

proc setCode*(self: ShaderInclude; code: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShaderInclude, "set_code", 83702148)
  methodbind.ptrcall(self, [getPtr code], void)

proc getCode*(self: ShaderInclude): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShaderInclude, "get_code", 201670096)
  methodbind.ptrcall(self, [], String)

template code*(self: ShaderInclude): untyped = self.getCode()
template `code=`*(self: ShaderInclude; value) = self.setCode(value)
