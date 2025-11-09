{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(JavaClassWrapper, Object)

proc wrap*(self: JavaClassWrapper; name: String): gdref JavaClass =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JavaClassWrapper, "wrap", 1124367868)
  methodbind.ptrcall(self, [getPtr name], gdref JavaClass)

proc getException*(self: JavaClassWrapper): gdref JavaObject =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JavaClassWrapper, "get_exception", 3277089691)
  methodbind.ptrcall(self, [], gdref JavaObject)
