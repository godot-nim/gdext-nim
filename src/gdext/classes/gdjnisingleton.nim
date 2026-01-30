{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(JNISingleton, Object)

proc hasJavaMethod*(self: JNISingleton; `method`: StringName): bool =
  expandMethodBind(className JNISingleton, "has_java_method", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr `method`], addr ret)
  (addr ret).decode_result(bool)
