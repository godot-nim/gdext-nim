{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(JavaObject, RefCounted)

proc getJavaClass*(self: JavaObject): gdref JavaClass =
  expandMethodBind(className JavaObject, "get_java_class", 541536347)
  var ret: encoded gdref JavaClass
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref JavaClass)

proc hasJavaMethod*(self: JavaObject; `method`: StringName): bool =
  expandMethodBind(className JavaObject, "has_java_method", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr `method`], addr ret)
  (addr ret).decode_result(bool)
