import gdext
import gdextgen/classes/gdResourceLoader
import gdproptestnode

type PropTestNodePragmas* = ref object of Node
  icon* {.gdexport.}: gdref Texture2D
  PropTestEnum_with_export* {.gdexport.}: PropTestEnum
  string_with_export*: string = "with export"
  string_with_export_placeholder*: string
  string_with_export_dir*: string = "res://nim"
  string_with_export_global_dir*: string = "/dev"
  string_with_export_file*: string = "res://nim/bootstrap.nim"
  string_with_export_global_file*: string = "/dev/null"
  int_with_export_enum*: int
  string_with_export_enum*: string = "Alpha"
  int_with_export_flags*: int
  int_with_export_flags_some_layers*: int
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


method init(self: PropTestNodePragmas) =
  self.icon = ResourceLoader.load("res://icon.png") as gdref Texture2D
