import gdext

type PropTestNode* = ref object of Node
  string_with_export*: string

proc string_with_export(self: PropTestNode): string {.gdsync, name: "get_string_with_export".} =
  self.string_with_export
proc `string_with_export=`(self: PropTestNode; value: string) {.gdsync, name: "set_string_with_export".} =
  self.string_with_export = value

`@export` "string_with_export", string_with_export, `string_with_export=`

