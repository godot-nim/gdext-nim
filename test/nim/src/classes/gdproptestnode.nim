import gdext

type PropTestNode* = ref object of Node
  string_with_export*: string = "with export"
  string_with_export_placeholder*: string
  string_with_export_dir*: string = "res://nim"
  string_with_export_global_dir*: string = "/dev"
  string_with_export_file*: string = "res://nim/bootstrap.nim"
  string_with_export_global_file*: string = "/dev/null"
  int_with_export_enum*: int
  string_with_export_enum*: string = "Alpha"
  float_with_export_exp_easing*: float = 2
  string_with_export_multiline*: string = """
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT"""
  StringArray_with_export_multiline*: TypedArray[String]
  PackedStringArray_with_export_multiline*: PackedStringArray
  NodePath_with_export_node_path*: NodePath
  string_with_export_storage*: string = "with export_storage"
  int_with_export_strict_range*: int = 20
  int_with_export_range*: int = 20
  radians_with_export_range_as_degrees*: float = PI/4
  color_with_export*: Color = color(1, 1, 1, 0.5)
  color_with_export_no_alpha*: Color = color(1, 1, 1)

method init(self: PropTestNode) =
  self.StringArray_with_export_multiline = typedArray[String](1)
  self.PackedStringArray_with_export_multiline = packedStringArray()
  echo self.PackedStringArray_with_export_multiline.resize(1)

proc string_with_export(self: PropTestNode): string {.gdsync, name: "get_string_with_export".} =
  self.string_with_export
proc `string_with_export=`(self: PropTestNode; value: string) {.gdsync, name: "set_string_with_export".} =
  self.string_with_export = value

proc string_with_export_placeholder(self: PropTestNode): string {.gdsync, name: "get_string_with_export_placeholder".} =
  self.string_with_export_placeholder
proc `string_with_export_placeholder=`(self: PropTestNode; value: string) {.gdsync, name: "set_string_with_export_placeholder".} =
  self.string_with_export_placeholder = value

proc string_with_export_dir(self: PropTestNode): string {.gdsync, name: "get_string_with_export_dir".} =
  self.string_with_export_dir
proc `string_with_export_dir=`(self: PropTestNode; value: string) {.gdsync, name: "set_string_with_export_dir".} =
  self.string_with_export_dir = value
proc string_with_export_global_dir(self: PropTestNode): string {.gdsync, name: "get_string_with_export_global_dir".} =
  self.string_with_export_global_dir
proc `string_with_export_global_dir=`(self: PropTestNode; value: string) {.gdsync, name: "set_string_with_export_global_dir".} =
  self.string_with_export_global_dir = value
proc string_with_export_file(self: PropTestNode): string {.gdsync, name: "get_string_with_export_file".} =
  self.string_with_export_file
proc `string_with_export_file=`(self: PropTestNode; value: string) {.gdsync, name: "set_string_with_export_file".} =
  self.string_with_export_file = value
proc string_with_export_global_file(self: PropTestNode): string {.gdsync, name: "get_string_with_export_global_file".} =
  self.string_with_export_global_file
proc `string_with_export_global_file=`(self: PropTestNode; value: string) {.gdsync, name: "set_string_with_export_global_file".} =
  self.string_with_export_global_file = value

proc color_with_export(self: PropTestNode): Color {.gdsync, name: "get_color_with_export".} =
  self.color_with_export
proc `color_with_export=`(self: PropTestNode; value: Color) {.gdsync, name: "set_color_with_export".} =
  self.color_with_export= value
proc color_with_export_no_alpha(self: PropTestNode): Color {.gdsync, name: "get_color_with_export_no_alpha".} =
  self.color_with_export_no_alpha
proc `color_with_export_no_alpha=`(self: PropTestNode; value: Color) {.gdsync, name: "set_color_with_export_no_alpha".} =
  self.color_with_export_no_alpha= value

proc int_with_export_enum(self: PropTestNode): int {.gdsync, name: "get_int_with_export_enum".} =
  self.int_with_export_enum
proc `int_with_export_enum=`(self: PropTestNode; value: int) {.gdsync, name: "set_int_with_export_enum".} =
  self.int_with_export_enum = value
proc string_with_export_enum(self: PropTestNode): string {.gdsync, name: "get_string_with_export_enum".} =
  self.string_with_export_enum
proc `string_with_export_enum=`(self: PropTestNode; value: string) {.gdsync, name: "set_string_with_export_enum".} =
  self.string_with_export_enum = value

proc float_with_export_exp_easing(self: PropTestNode): float {.gdsync, name: "get_float_with_export_exp_easing".} =
  self.float_with_export_exp_easing
proc `float_with_export_exp_easing=`(self: PropTestNode; value: float) {.gdsync, name: "set_float_with_export_exp_easing".} =
  self.float_with_export_exp_easing = value

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

proc NodePath_with_export_node_path(self: PropTestNode): NodePath {.gdsync, name: "get_NodePath_with_export_node_path".} =
  self.NodePath_with_export_node_path
proc `NodePath_with_export_node_path=`(self: PropTestNode; value: NodePath) {.gdsync, name: "set_NodePath_with_export_node_path".} =
  self.NodePath_with_export_node_path = value

proc int_with_export_strict_range(self: PropTestNode): int {.gdsync, name: "get_int_with_export_strict_range".} =
  self.int_with_export_strict_range
proc `int_with_export_strict_range=`(self: PropTestNode; value: int) {.gdsync, name: "set_int_with_export_strict_range".} =
  self.int_with_export_strict_range = value

proc int_with_export_range(self: PropTestNode): int {.gdsync, name: "get_int_with_export_range".} =
  self.int_with_export_range
proc `int_with_export_range=`(self: PropTestNode; value: int) {.gdsync, name: "set_int_with_export_range".} =
  self.int_with_export_range = value

proc radians_with_export_range_as_degrees(self: PropTestNode): float {.gdsync, name: "get_radians_with_export_range_as_degrees".} =
  self.radians_with_export_range_as_degrees
proc `radians_with_export_range_as_degrees=`(self: PropTestNode; value: float) {.gdsync, name: "set_radians_with_export_range_as_degrees".} =
  self.radians_with_export_range_as_degrees = value

proc string_with_export_storage(self: PropTestNode): string {.gdsync, name: "get_string_with_export_storage".} =
  self.string_with_export_storage
proc `string_with_export_storage=`(self: PropTestNode; value: string) {.gdsync, name: "set_string_with_export_storage".} =
  self.string_with_export_storage = value

`@export_category` PropTestNode, "Export Test"

`@export` "string_with_export", string_with_export, `string_with_export=`
`@export_placeholder` "string_with_export_placeholder", string_with_export_placeholder, `string_with_export_placeholder=`,
  "placeholder here..."

`@export_group` PropTestNode, "filesystem"

`@export_subgroup` ProptestNode, "local"
`@export_dir` "string_with_export_dir", string_with_export_dir, `string_with_export_dir=`
`@export_file` "string_with_export_file", string_with_export_file, `string_with_export_file=`

`@export_subgroup` ProptestNode, "global"
`@export_global_dir` "string_with_export_global_dir", string_with_export_global_dir, `string_with_export_global_dir=`
`@export_global_file` "string_with_export_global_file", string_with_export_global_file, `string_with_export_global_file=`

`@export_group` PropTestNode, ""

`@export` "color_with_export", color_with_export, `color_with_export=`
`@export_color_no_alpha` "color_with_export_no_alpha", color_with_export_no_alpha, `color_with_export_no_alpha=`

`@export_enum` "int_with_export_enum", int_with_export_enum, `int_with_export_enum=`,
  "Alpha", "Beta:10", "Gamma"
`@export_enum` "string_with_export_enum", string_with_export_enum, `string_with_export_enum=`,
  "Alpha", "Beta", "Gamma"

`@export_exp_easing` "float_with_export_exp_easing", float_with_export_exp_easing, `float_with_export_exp_easing=`
`@export_exp_easing` "float_with_export_exp_easing_attenuation", float_with_export_exp_easing, `float_with_export_exp_easing=`,
  attenuation
`@export_exp_easing` "float_with_export_exp_easing_positive_only", float_with_export_exp_easing, `float_with_export_exp_easing=`,
  positive_only

`@export_multiline` "string_with_export_multiline", string_with_export_multiline, `string_with_export_multiline=`
# Currently not works,
`@export_multiline` "StringArray_with_export_multiline", StringArray_with_export_multiline, `StringArray_with_export_multiline=`
`@export_multiline` "PackedStringArray_with_export_multiline", PackedStringArray_with_export_multiline, `PackedStringArray_with_export_multiline=`

`@export_node_path` "NodePath_with_export_node_path", NodePath_with_export_node_path, `NodePath_with_export_node_path=`,
  "Sprite2D"
`@export_node_path` "NodePath_with_export_node_path_typedesc", NodePath_with_export_node_path, `NodePath_with_export_node_path=`,
  Sprite2D

`@export_range` "int_with_export_strict_range", int_with_export_strict_range, `int_with_export_strict_range=`,
  10, 100
`@export_range` "int_with_export_range", int_with_export_range, `int_with_export_range=`,
  10, 100, 5, or_less, or_greater
`@export_range` "radians_with_export_range_as_degrees", radians_with_export_range_as_degrees, `radians_with_export_range_as_degrees=`,
  0, 360, radians_as_degrees

`@export_storage` "string_with_export_storage", string_with_export_storage, `string_with_export_storage=`

