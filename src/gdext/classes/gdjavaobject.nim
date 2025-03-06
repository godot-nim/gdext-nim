{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getJavaClass*(self: JavaObject): gdref JavaClass =
  expandMethodBind(className JavaObject, "get_java_class", 541536347)
  var ret: encoded gdref JavaClass
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref JavaClass)

const JavaObject_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[JavaObject]): Table[string, string] = JavaObject_vmap