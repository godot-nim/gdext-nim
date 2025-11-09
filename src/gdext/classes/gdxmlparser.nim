{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(XMLParser, RefCounted)

proc read*(self: XMLParser): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "read", 166280745)
  methodbind.ptrcall(self, [], Error)

proc getNodeType*(self: XMLParser): XMLParser_NodeType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "get_node_type", 2984359541)
  methodbind.ptrcall(self, [], XMLParser_NodeType)

proc getNodeName*(self: XMLParser): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "get_node_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc getNodeData*(self: XMLParser): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "get_node_data", 201670096)
  methodbind.ptrcall(self, [], String)

proc getNodeOffset*(self: XMLParser): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "get_node_offset", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getAttributeCount*(self: XMLParser): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "get_attribute_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getAttributeName*(self: XMLParser; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "get_attribute_name", 844755477)
  methodbind.ptrcall(self, [getPtr idx], String)

proc getAttributeValue*(self: XMLParser; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "get_attribute_value", 844755477)
  methodbind.ptrcall(self, [getPtr idx], String)

proc hasAttribute*(self: XMLParser; name: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "has_attribute", 3927539163)
  methodbind.ptrcall(self, [getPtr name], bool)

proc getNamedAttributeValue*(self: XMLParser; name: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "get_named_attribute_value", 3135753539)
  methodbind.ptrcall(self, [getPtr name], String)

proc getNamedAttributeValueSafe*(self: XMLParser; name: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "get_named_attribute_value_safe", 3135753539)
  methodbind.ptrcall(self, [getPtr name], String)

proc isEmpty*(self: XMLParser): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "is_empty", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getCurrentLine*(self: XMLParser): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "get_current_line", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc skipSection*(self: XMLParser): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "skip_section", 3218959716)
  methodbind.ptrcall(self, [], void)

proc seek*(self: XMLParser; position: uint64): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "seek", 844576869)
  methodbind.ptrcall(self, [getPtr position], Error)

proc open*(self: XMLParser; file: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "open", 166001499)
  methodbind.ptrcall(self, [getPtr file], Error)

proc openBuffer*(self: XMLParser; buffer: PackedByteArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XMLParser, "open_buffer", 680677267)
  methodbind.ptrcall(self, [getPtr buffer], Error)
