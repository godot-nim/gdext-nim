{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc wrap*(self: JavaClassWrapper; name: String): gdref JavaClass =
  expandMethodBind(className JavaClassWrapper, "wrap", 1124367868)
  var `?param` = [getPtr name]
  var ret: encoded gdref JavaClass
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref JavaClass)

const JavaClassWrapper_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[JavaClassWrapper]): Table[string, string] = JavaClassWrapper_vmap