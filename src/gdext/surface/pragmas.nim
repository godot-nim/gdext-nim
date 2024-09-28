import std/macros
import gdext/utils/macros
import gdext/core/userclass/propertyinfo
import gdext/surface/common

var exportPragmasClass* {.compileTime.}: seq[NimNode] = @[]
var exportPragmasField* {.compileTime.}: seq[NimNode] = @[]

macro defineExportPragmasClass(blk: typed): untyped =
  for node in blk:
    exportPragmasClass.add node.identifier
  blk

macro defineExportPragmasField(blk: typed): untyped =
  for node in blk:
    exportPragmasField.add node.identifier
  blk

defineExportPragmasClass:
  template gdexport_category*(name) {.pragma.}
  template gdexport_group*(name: string; prefix: string = "") {.pragma.}
  template gdexport_subgroup*(name: string; prefix: string = "") {.pragma.}

defineExportPragmasField:
  template gdexport*() {.pragma.}
  template gdexport_multiline*() {.pragma.}
  template gdexport_color_no_alpha*() {.pragma.}
  template gdexport_dir*() {.pragma.}
  template gdexport_global_dir*() {.pragma.}
  template gdexport_file*() {.pragma.}
  template gdexport_global_file*() {.pragma.}
  template gdexport_flags_2d_navigation*() {.pragma.}
  template gdexport_flags_2d_physics*() {.pragma.}
  template gdexport_flags_2d_render*() {.pragma.}
  template gdexport_flags_3d_navigation*() {.pragma.}
  template gdexport_flags_3d_physics*() {.pragma.}
  template gdexport_flags_3d_render*() {.pragma.}
  template gdexport_flags_avoidance*() {.pragma.}
  template gdexport_storage*() {.pragma.}
  template gdexport_exp_easing*() {.pragma.}

  template gdexport_placeholder*(placeholder: string) {.pragma.}
  template gdexport_enum*(cases: varargs[string]) {.pragma.}
  template gdexport_flags*(flags: varargs[string]) {.pragma.}
  template gdexport_exp_easing*(extra: ExpEasingArgument) {.pragma.}
  template gdexport_node_path*(validTypes: varargs[string]) {.pragma.}

  template gdexport_range*(min, max: SomeNumericProperty, extra: varargs[RangeArgument]) {.pragma.}
  template gdexport_range*(min, max, step: SomeNumericProperty, extra: varargs[RangeArgument]) {.pragma.}

