{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(JavaClassWrapper, Object)

proc wrap*(self: JavaClassWrapper; name: String): gdref JavaClass =
  expandMethodBind(className JavaClassWrapper, "wrap", 1124367868)
  var ret: encoded gdref JavaClass
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(gdref JavaClass)

proc getException*(self: JavaClassWrapper): gdref JavaObject =
  expandMethodBind(className JavaClassWrapper, "get_exception", 3277089691)
  var ret: encoded gdref JavaObject
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref JavaObject)
