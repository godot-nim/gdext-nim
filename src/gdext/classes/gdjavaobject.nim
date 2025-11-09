{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(JavaObject, RefCounted)

proc getJavaClass*(self: JavaObject): gdref JavaClass =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JavaObject, "get_java_class", 541536347)
  methodbind.ptrcall(self, [], gdref JavaClass)
