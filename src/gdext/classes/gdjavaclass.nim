{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(JavaClass, RefCounted)

proc getJavaClassName*(self: JavaClass): String =
  expandMethodBind(className JavaClass, "get_java_class_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getJavaMethodList*(self: JavaClass): Array[Dictionary] =
  expandMethodBind(className JavaClass, "get_java_method_list", 3995934104)
  var ret: encoded Array[Dictionary]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array[Dictionary])

proc getJavaParentClass*(self: JavaClass): gdref JavaClass =
  expandMethodBind(className JavaClass, "get_java_parent_class", 541536347)
  var ret: encoded gdref JavaClass
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref JavaClass)
