{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc stringify*(_: typedesc[JSON]; data: Variant; indent: String = gdstring""; sortKeys: bool = true; fullPrecision: bool = false): String =
  expandMethodBind(className JSON, "stringify", 462733549)
  var `?param` = [getPtr data, getPtr indent, getPtr sortKeys, getPtr fullPrecision]
  var ret: encoded String
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc parseString*(_: typedesc[JSON]; jsonString: String): Variant =
  expandMethodBind(className JSON, "parse_string", 309047738)
  var `?param` = [getPtr jsonString]
  var ret: encoded Variant
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc parse*(self: JSON; jsonText: String; keepText: bool = false): Error =
  expandMethodBind(className JSON, "parse", 885841341)
  var `?param` = [getPtr jsonText, getPtr keepText]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc getData*(self: JSON): Variant =
  expandMethodBind(className JSON, "get_data", 1214101251)
  var ret: encoded Variant
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Variant)

proc setData*(self: JSON; data: Variant): void =
  expandMethodBind(className JSON, "set_data", 1114965689)
  var `?param` = [getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParsedText*(self: JSON): String =
  expandMethodBind(className JSON, "get_parsed_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getErrorLine*(self: JSON): int32 =
  expandMethodBind(className JSON, "get_error_line", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getErrorMessage*(self: JSON): String =
  expandMethodBind(className JSON, "get_error_message", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

template data*(self: JSON): untyped = self.getData()
template `data=`*(self: JSON; value) = self.setData(value)

const JSON_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[JSON]): Table[string, string] = JSON_vmap