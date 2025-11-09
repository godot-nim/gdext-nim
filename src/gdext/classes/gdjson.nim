{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(JSON, Resource)

proc stringify*(_: typedesc[JSON]; data: Variant; indent: String = newGdString(); sortKeys: bool = true; fullPrecision: bool = false): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSON, "stringify", 462733549)
  methodbind.ptrcall([getPtr data, getPtr indent, getPtr sortKeys, getPtr fullPrecision], String)

proc parseString*(_: typedesc[JSON]; jsonString: String): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSON, "parse_string", 309047738)
  methodbind.ptrcall([getPtr jsonString], Variant)

proc parse*(self: JSON; jsonText: String; keepText: bool = false): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSON, "parse", 885841341)
  methodbind.ptrcall(self, [getPtr jsonText, getPtr keepText], Error)

proc getData*(self: JSON): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSON, "get_data", 1214101251)
  methodbind.ptrcall(self, [], Variant)

proc setData*(self: JSON; data: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSON, "set_data", 1114965689)
  methodbind.ptrcall(self, [getPtr data], void)

proc getParsedText*(self: JSON): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSON, "get_parsed_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc getErrorLine*(self: JSON): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSON, "get_error_line", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getErrorMessage*(self: JSON): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSON, "get_error_message", 201670096)
  methodbind.ptrcall(self, [], String)

proc fromNative*(_: typedesc[JSON]; variant: Variant; fullObjects: bool = false): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSON, "from_native", 2963479484)
  methodbind.ptrcall([getPtr variant, getPtr fullObjects], Variant)

proc toNative*(_: typedesc[JSON]; json: Variant; allowObjects: bool = false): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className JSON, "to_native", 2963479484)
  methodbind.ptrcall([getPtr json, getPtr allowObjects], Variant)

template data*(self: JSON): untyped = self.getData()
template `data=`*(self: JSON; value) = self.setData(value)
