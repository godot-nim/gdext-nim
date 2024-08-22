import gdext

type PropTestNode* = ref object of Node
  string_with_export*: string = "with export"
  string_with_export_multiline*: string = """
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT"""
  string_with_export_storage*: string = "with export_storage"

proc string_with_export(self: PropTestNode): string {.gdsync, name: "get_string_with_export".} =
  self.string_with_export
proc `string_with_export=`(self: PropTestNode; value: string) {.gdsync, name: "set_string_with_export".} =
  self.string_with_export = value

proc string_with_export_multiline(self: PropTestNode): string {.gdsync, name: "get_string_with_export_multiline".} =
  self.string_with_export_multiline
proc `string_with_export_multiline=`(self: PropTestNode; value: string) {.gdsync, name: "set_string_with_export_multiline".} =
  self.string_with_export_multiline = value

proc string_with_export_storage(self: PropTestNode): string {.gdsync, name: "get_string_with_export_storage".} =
  self.string_with_export_storage
proc `string_with_export_storage=`(self: PropTestNode; value: string) {.gdsync, name: "set_string_with_export_storage".} =
  self.string_with_export_storage = value

`@export_category` "Export Test"
`@export` "string_with_export", string_with_export, `string_with_export=`
`@export_multiline` "string_with_export_multiline", string_with_export_multiline, `string_with_export_multiline=`
`@export_storage` "string_with_export_storage", string_with_export_storage, `string_with_export_storage=`

