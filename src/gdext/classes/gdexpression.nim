{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(Expression, RefCounted)

proc parse*(self: Expression; expression: String; inputNames: PackedStringArray = PackedStringArray()): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Expression, "parse", 3069722906)
  methodbind.ptrcall(self, [getPtr expression, getPtr inputNames], Error)

proc execute*(self: Expression; inputs: Array = newArray(); baseInstance: Object = default Object; showError: bool = true; constCallsOnly: bool = false): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Expression, "execute", 3712471238)
  methodbind.ptrcall(self, [getPtr inputs, getPtr baseInstance, getPtr showError, getPtr constCallsOnly], Variant)

proc hasExecuteFailed*(self: Expression): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Expression, "has_execute_failed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getErrorText*(self: Expression): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Expression, "get_error_text", 201670096)
  methodbind.ptrcall(self, [], String)
