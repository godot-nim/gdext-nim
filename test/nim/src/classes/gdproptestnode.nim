import gdext

type PropTestNode* = ref object of Node
  string_with_export*: string = "with export"
  string_with_export_multiline*: string = """
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT"""
  StringArray_with_export_multiline*: TypedArray[String]
  PackedStringArray_with_export_multiline*: PackedStringArray
  string_with_export_storage*: string = "with export_storage"

method init(self: PropTestNode) =
  self.StringArray_with_export_multiline = typedArray[String](1)
  self.PackedStringArray_with_export_multiline = packedStringArray()
  echo self.PackedStringArray_with_export_multiline.resize(1)

proc string_with_export(self: PropTestNode): string {.gdsync, name: "get_string_with_export".} =
  self.string_with_export
proc `string_with_export=`(self: PropTestNode; value: string) {.gdsync, name: "set_string_with_export".} =
  self.string_with_export = value

proc string_with_export_multiline(self: PropTestNode): string {.gdsync, name: "get_string_with_export_multiline".} =
  self.string_with_export_multiline
proc `string_with_export_multiline=`(self: PropTestNode; value: string) {.gdsync, name: "set_string_with_export_multiline".} =
  self.string_with_export_multiline = value

proc StringArray_with_export_multiline(self: PropTestNode): TypedArray[String] {.gdsync, name: "get_StringArray_with_export_multiline".} =
  self.StringArray_with_export_multiline
proc `StringArray_with_export_multiline=`(self: PropTestNode; value: TypedArray[String]) {.gdsync, name: "set_StringArray_with_export_multiline".} =
  self.StringArray_with_export_multiline = value

proc PackedStringArray_with_export_multiline(self: PropTestNode): PackedStringArray {.gdsync, name: "get_PackedStringArray_with_export_multiline".} =
  self.PackedStringArray_with_export_multiline
proc `PackedStringArray_with_export_multiline=`(self: PropTestNode; value: PackedStringArray) {.gdsync, name: "set_PackedStringArray_with_export_multiline".} =
  self.PackedStringArray_with_export_multiline = value

proc string_with_export_storage(self: PropTestNode): string {.gdsync, name: "get_string_with_export_storage".} =
  self.string_with_export_storage
proc `string_with_export_storage=`(self: PropTestNode; value: string) {.gdsync, name: "set_string_with_export_storage".} =
  self.string_with_export_storage = value

`@export_category` "Export Test"
`@export` "string_with_export", string_with_export, `string_with_export=`
`@export_multiline` "string_with_export_multiline", string_with_export_multiline, `string_with_export_multiline=`
# Currently not works,
`@export_multiline` "StringArray_with_export_multiline", StringArray_with_export_multiline, `StringArray_with_export_multiline=`
`@export_multiline` "PackedStringArray_with_export_multiline", PackedStringArray_with_export_multiline, `PackedStringArray_with_export_multiline=`

`@export_storage` "string_with_export_storage", string_with_export_storage, `string_with_export_storage=`

