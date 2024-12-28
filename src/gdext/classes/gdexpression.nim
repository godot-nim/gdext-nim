{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc parse*(self: Expression; expression: String; inputNames: PackedStringArray = PackedStringArray()): Error =
  expandMethodBind(className Expression, "parse", 3069722906)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr expression, getPtr inputNames], addr ret)
  (addr ret).decode_result(Error)

proc execute*(self: Expression; inputs: Array = gdarray(); baseInstance: Object = default Object; showError: bool = true; constCallsOnly: bool = false): Variant =
  expandMethodBind(className Expression, "execute", 3712471238)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr inputs, getPtr baseInstance, getPtr showError, getPtr constCallsOnly], addr ret)
  (addr ret).decode_result(Variant)

proc hasExecuteFailed*(self: Expression): bool =
  expandMethodBind(className Expression, "has_execute_failed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getErrorText*(self: Expression): String =
  expandMethodBind(className Expression, "get_error_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

const Expression_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Expression]): Table[string, string] = Expression_vmap