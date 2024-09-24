import gdext/core/userclass/propertyinfo

type ExpEasingArgument* = enum
  attenuation, positive_only
type RangeArgument* {.pure.} = enum
  or_less, or_greater, exp, radians_as_degrees, degrees, hide_slider

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

template gdexport_enum*(cases: varargs[string]) {.pragma.}
template gdexport_flags*(flags: varargs[string]) {.pragma.}
template gdexport_exp_easing*(extra: ExpEasingArgument) {.pragma.}
# template gdexport_range*(min, max: SomeNumeric, extra: openarray[RangeArgument] = []) {.pragma.}

