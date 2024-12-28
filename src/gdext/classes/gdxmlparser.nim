{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc read*(self: XMLParser): Error =
  expandMethodBind(className XMLParser, "read", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Error)

proc getNodeType*(self: XMLParser): XMLParser_NodeType =
  expandMethodBind(className XMLParser, "get_node_type", 2984359541)
  var ret: encoded XMLParser_NodeType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(XMLParser_NodeType)

proc getNodeName*(self: XMLParser): String =
  expandMethodBind(className XMLParser, "get_node_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getNodeData*(self: XMLParser): String =
  expandMethodBind(className XMLParser, "get_node_data", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getNodeOffset*(self: XMLParser): uint64 =
  expandMethodBind(className XMLParser, "get_node_offset", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc getAttributeCount*(self: XMLParser): int32 =
  expandMethodBind(className XMLParser, "get_attribute_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getAttributeName*(self: XMLParser; idx: int32): String =
  expandMethodBind(className XMLParser, "get_attribute_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(String)

proc getAttributeValue*(self: XMLParser; idx: int32): String =
  expandMethodBind(className XMLParser, "get_attribute_value", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(String)

proc hasAttribute*(self: XMLParser; name: String): bool =
  expandMethodBind(className XMLParser, "has_attribute", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc getNamedAttributeValue*(self: XMLParser; name: String): String =
  expandMethodBind(className XMLParser, "get_named_attribute_value", 3135753539)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(String)

proc getNamedAttributeValueSafe*(self: XMLParser; name: String): String =
  expandMethodBind(className XMLParser, "get_named_attribute_value_safe", 3135753539)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(String)

proc isEmpty*(self: XMLParser): bool =
  expandMethodBind(className XMLParser, "is_empty", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getCurrentLine*(self: XMLParser): int32 =
  expandMethodBind(className XMLParser, "get_current_line", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc skipSection*(self: XMLParser): void =
  expandMethodBind(className XMLParser, "skip_section", 3218959716)
  methodbind.ptrcall(self, [])

proc seek*(self: XMLParser; position: uint64): Error =
  expandMethodBind(className XMLParser, "seek", 844576869)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr position], addr ret)
  (addr ret).decode_result(Error)

proc open*(self: XMLParser; file: String): Error =
  expandMethodBind(className XMLParser, "open", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr file], addr ret)
  (addr ret).decode_result(Error)

proc openBuffer*(self: XMLParser; buffer: PackedByteArray): Error =
  expandMethodBind(className XMLParser, "open_buffer", 680677267)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr buffer], addr ret)
  (addr ret).decode_result(Error)

const XMLParser_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XMLParser]): Table[string, string] = XMLParser_vmap