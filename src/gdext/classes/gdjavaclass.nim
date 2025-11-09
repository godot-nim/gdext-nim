{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(JavaClass, RefCounted)

proc getJavaClassName*(self: JavaClass): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JavaClass, "get_java_class_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc getJavaMethodList*(self: JavaClass): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JavaClass, "get_java_method_list", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Dictionary])

proc getJavaParentClass*(self: JavaClass): gdref JavaClass =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JavaClass, "get_java_parent_class", 541536347)
  methodbind.ptrcall(self, [], gdref JavaClass)
