{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc read*(self: XmlParser): Error =
  expandMethodBind(className XmlParser, "read", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc getNodeType*(self: XmlParser): XmlParser_NodeType =
  expandMethodBind(className XmlParser, "get_node_type", 2984359541)
  var ret: encoded XmlParser_NodeType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(XmlParser_NodeType)

proc getNodeName*(self: XmlParser): String =
  expandMethodBind(className XmlParser, "get_node_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getNodeData*(self: XmlParser): String =
  expandMethodBind(className XmlParser, "get_node_data", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getNodeOffset*(self: XmlParser): uint64 =
  expandMethodBind(className XmlParser, "get_node_offset", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc getAttributeCount*(self: XmlParser): int32 =
  expandMethodBind(className XmlParser, "get_attribute_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getAttributeName*(self: XmlParser; idx: int32): String =
  expandMethodBind(className XmlParser, "get_attribute_name", 844755477)
  var `?param` = [getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getAttributeValue*(self: XmlParser; idx: int32): String =
  expandMethodBind(className XmlParser, "get_attribute_value", 844755477)
  var `?param` = [getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc hasAttribute*(self: XmlParser; name: String): bool =
  expandMethodBind(className XmlParser, "has_attribute", 3927539163)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getNamedAttributeValue*(self: XmlParser; name: String): String =
  expandMethodBind(className XmlParser, "get_named_attribute_value", 3135753539)
  var `?param` = [getPtr name]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getNamedAttributeValueSafe*(self: XmlParser; name: String): String =
  expandMethodBind(className XmlParser, "get_named_attribute_value_safe", 3135753539)
  var `?param` = [getPtr name]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc isEmpty*(self: XmlParser): bool =
  expandMethodBind(className XmlParser, "is_empty", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getCurrentLine*(self: XmlParser): int32 =
  expandMethodBind(className XmlParser, "get_current_line", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc skipSection*(self: XmlParser): void =
  expandMethodBind(className XmlParser, "skip_section", 3218959716)
  methodbind.ptrcall(self, nil)

proc seek*(self: XmlParser; position: uint64): Error =
  expandMethodBind(className XmlParser, "seek", 844576869)
  var `?param` = [getPtr position]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc open*(self: XmlParser; file: String): Error =
  expandMethodBind(className XmlParser, "open", 166001499)
  var `?param` = [getPtr file]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc openBuffer*(self: XmlParser; buffer: PackedByteArray): Error =
  expandMethodBind(className XmlParser, "open_buffer", 680677267)
  var `?param` = [getPtr buffer]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

const XmlParser_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XmlParser]): Table[string, string] = XmlParser_vmap