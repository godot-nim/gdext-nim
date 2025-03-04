import gdext
import gdext/classes/[
  gdNode,
  gdResourceLoader,
]

type PropTestPragmasEnum* = enum
  PropTestPragmasEnum1, PropTestPragmasEnum2, PropTestPragmasEnum3

type PropTestNodePragmas* {.gdsync.} = ptr object of Node
  icon* {.gdexport.}: gdref Texture2D
  string_array* {.gdexport.}: TypedArray[String]
  texture2D_array* {.gdexport.}: TypedArray[Texture2D]
  PropTestEnum_with_export* {.gdexport.}: PropTestPragmasEnum
  string_with_export* {.gdexport.}: string = "with export"
  string_with_export_placeholder* {.gdexport: Appearance.placeholder("placeholder here...").}: string
  string_with_export_dir* {.gdexport: Appearance.dir.}: string = "res://nim"
  string_with_export_file* {.gdexport: Appearance.file.}: string = "res://nim/bootstrap.nim"
  string_with_export_global_dir* {.gdexport: Appearance.globalDir.}: string = "/dev"
  string_with_export_global_file* {.gdexport: Appearance.globalFile.}: string = "/dev/null"
  int_with_export_enum*
    {.gdexport(Appearance.enum("Alpha", "Beta:10", "Gamma")).}
    : int
  string_with_export_enum*
    {.gdexport(Appearance.enum("Alpha", "Beta", "Gamma")).}
    : string = "Alpha"
  int_with_export_flags*
    {.gdexport(Appearance.flags("Alpha", "Beta", "Gamma")).}
    : int
  int_with_export_flags_some_layers*: int # multiple exports below
  float_with_export_exp_easing* {.gdexport: Appearance.expEasing(positive_only).}: float = 2

  string_with_export_multiline* {.gdexport: Appearance.multiline.} : string = """
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT
MULTILINE-TEXT MULTILINE-TEXT MULTILINE-TEXT"""

  StringArray_with_export_multiline* {.gdexport: Appearance.multiline.}: TypedArray[String]
  PackedStringArray_with_export_multiline* {.gdexport: Appearance.multiline.}: PackedStringArray
  NodePath_with_export_node_path* {.gdexport.}: NodePath
  string_with_export_storage* {.gdexport: Appearance.storage.}: string = "with export_storage"

  int_with_export_strict_range*
    {.gdexport: Appearance.range(5, 20).}
    : int = 20
  int_with_export_range*
    {.gdexport: Appearance.range(min = 10, max = 100, step = 5, or_less, or_greater).}
    : int = 20
  radians_with_export_range_as_degrees*
    {.gdexport: Appearance.range(min = 0.0, max = 360.0, step = 0.01, radians_as_degrees).}
  : float = PI/4
  color_with_export* {.gdexport.}: Color = color(1, 1, 1, 0.5)
  color_with_export_no_alpha* {.gdexport: Appearance.colorNoAlpha.}: Color = color(1, 1, 1)

  node_ref* {.gdexport.}: Node
  node_path* {.gdexport(Appearance.nodePath("Node2D", "Node3D")).}: NodePath

PropTestNodePragmas.bind PropTestPragmasEnum

method onInit(self: PropTestNodePragmas) =
  self.StringArray_with_export_multiline = typedArray[String](1)
  self.string_array = typedArray[String]()
  self.texture2D_array = typedArray[Texture2D]()

method enterTree(self: PropTestNodePragmas) {.gdsync.} =
  self.icon = ResourceLoader.load("res://icon.png") as gdref Texture2D

proc get_string_with_export_through_proc(self: PropTestNodePragmas): string {.gdsync.} =
  self.string_with_export
proc set_string_with_export_through_proc(self: PropTestNodePragmas; value: string) {.gdsync.} =
  self.string_with_export = value
gdexport "string_with_export_through_proc",
    get_string_with_export_through_proc,
    set_string_with_export_through_proc

gdexport PropTestNodePragmas.int_with_export_flags_some_layers, alias "int_with_export_flags_2d_navigation", Appearance.flags2dNavigation
gdexport PropTestNodePragmas.int_with_export_flags_some_layers, alias "int_with_export_flags_2d_physics", Appearance.flags2dPhysics
gdexport PropTestNodePragmas.int_with_export_flags_some_layers, alias "int_with_export_flags_2d_render", Appearance.flags2dRender
gdexport PropTestNodePragmas.int_with_export_flags_some_layers, alias "int_with_export_flags_3d_navigation", Appearance.flags3dNavigation
gdexport PropTestNodePragmas.int_with_export_flags_some_layers, alias "int_with_export_flags_3d_physics", Appearance.flags3dPhysics
gdexport PropTestNodePragmas.int_with_export_flags_some_layers, alias "int_with_export_flags_3d_render", Appearance.flags3dRender
gdexport PropTestNodePragmas.int_with_export_flags_some_layers, alias "int_with_export_flags_avoidance", Appearance.flagsAvoidance
