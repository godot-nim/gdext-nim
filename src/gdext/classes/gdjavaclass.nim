{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(JavaClass, RefCounted)

proc getJavaClassName*(self: JavaClass): String =
  expandMethodBind(className JavaClass, "get_java_class_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getJavaMethodList*(self: JavaClass): Array[Dictionary[Variant, Variant]] =
  expandMethodBind(className JavaClass, "get_java_method_list", 3995934104)
  var ret: encoded Array[Dictionary[Variant, Variant]]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array[Dictionary[Variant, Variant]])

proc getJavaParentClass*(self: JavaClass): gdref JavaClass =
  expandMethodBind(className JavaClass, "get_java_parent_class", 541536347)
  var ret: encoded gdref JavaClass
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref JavaClass)

proc hasJavaMethod*(self: JavaClass; `method`: StringName): bool =
  expandMethodBind(className JavaClass, "has_java_method", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr `method`], addr ret)
  (addr ret).decode_result(bool)
