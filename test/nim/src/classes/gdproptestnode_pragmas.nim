import gdext
import gdext/classes/[
  gdNode,
  gdResourceLoader,
]

type PropTestPragmasEnum* = enum
  PropTestPragmasEnum1, PropTestPragmasEnum2, PropTestPragmasEnum3

type PropTestNodePragmas* = ptr object of Node 
  icon* {.gdexport_category: "Export test 1", gdexport.}: gdref Texture2D
  PropTestEnum_with_export* {.gdexport.}: PropTestPragmasEnum
  string_with_export* {.gdexport.}: string = "with export"
  string_with_export_placeholder* {.gdexport_placeholder:"placeholder here...".}: string
  string_with_export_dir* {.gdexport_dir, gdexport_group:"filesystem", gdexport_subgroup:"local".}: string = "res://nim"
  string_with_export_file* {.gdexport_file.}: string = "res://nim/bootstrap.nim"
  string_with_export_global_dir* {.gdexport_subgroup:"global", gdexport_global_dir.}: string = "/dev"
  string_with_export_global_file* {.gdexport_global_file.}: string = "/dev/null"
  int_with_export_enum* 
    {.gdexport_group:"", gdexport_category: "Export test 2", gdexport_enum(cases = "Alpha", "Beta:10", "Gamma").}
    : int
  string_with_export_enum* 
    {.gdexport_enum(cases = "Alpha", "Beta", "Gamma").}
    : string = "Alpha"
  int_with_export_flags* 
    {.gdexport_flags(flags = "Alpha", "Beta", "Gamma").}
    : int
  int_with_export_flags_some_layers*: int # multiple exports below 
  float_with_export_exp_easing* {.gdexport_exp_easing: positive_only.}: float = 2

  string_with_export_multiline* {.gdexport_multiline.} : string = """
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT"""

  StringArray_with_export_multiline* {.gdexport_multiline.}: TypedArray[String] 
  PackedStringArray_with_export_multiline* {.gdexport_multiline.}: PackedStringArray
  NodePath_with_export_node_path* {.gdexport.}: NodePath
  string_with_export_storage* {.gdexport_storage.}: string = "with export_storage"

  int_with_export_strict_range* 
    {.gdexport_range(min = 5, max = 20).}
    : int = 20
  int_with_export_range* 
    {.gdexport_range(min = 10, max = 100, step = 5, extra = [or_less, or_greater]).}
    : int = 20
  radians_with_export_range_as_degrees*
    {.gdexport_range(min = 0.0, max = 360.0, step = 0.01, extra = radians_as_degrees).}
  : float = PI/4
  color_with_export* {.gdexport.}: Color = color(1, 1, 1, 0.5)
  color_with_export_no_alpha* {.gdexport_color_no_alpha.}: Color = color(1, 1, 1)

  node_ref* {.gdexport.}: Node
  node_path* {.gdexport_node_path(validTypes = "Node2D", "Node3D").}: NodePath

method onInit(self: PropTestNodePragmas) =
  self.StringArray_with_export_multiline = typedArray[String](1)

method enterTree(self: PropTestNodePragmas) {.gdsync.} =
  self.icon = ResourceLoader.load("res://icon.png") as gdref Texture2D

proc get_string_with_export_through_proc(self: PropTestNodePragmas): string {.gdsync.} =
  self.string_with_export
proc set_string_with_export_through_proc(self: PropTestNodePragmas; value: string) {.gdsync.} =
  self.string_with_export = value
gdexport "string_with_export_through_proc",
    get_string_with_export_through_proc,
    set_string_with_export_through_proc

gdexport_flags_2d_navigation PropTestNodePragmas.int_with_export_flags_some_layers, alias "int_with_export_flags_2d_navigation"
gdexport_flags_2d_physics PropTestNodePragmas.int_with_export_flags_some_layers, alias "int_with_export_flags_2d_physics"
gdexport_flags_2d_render PropTestNodePragmas.int_with_export_flags_some_layers, alias "int_with_export_flags_2d_render"
gdexport_flags_3d_navigation PropTestNodePragmas.int_with_export_flags_some_layers, alias "int_with_export_flags_3d_navigation"
gdexport_flags_3d_physics PropTestNodePragmas.int_with_export_flags_some_layers, alias "int_with_export_flags_3d_physics"
gdexport_flags_3d_render PropTestNodePragmas.int_with_export_flags_some_layers, alias "int_with_export_flags_3d_render"
gdexport_flags_avoidance PropTestNodePragmas.int_with_export_flags_some_layers, alias "int_with_export_flags_avoidance"
