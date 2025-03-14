import std/strformat
import gdext/private/gdinterface
import gdext/private/staticevents
import gdext/builtinindex

proc color*(): Color = discard
proc color*(`from`: Color): Color = `from`
proc color*(`from`: Color; alpha: float32): Color =
  Color(r: `from`.r, g: `from`.g, b: `from`.b, a: alpha)
proc color*(r,g,b: float32): Color = Color(r: r, g: g, b: b, a: 1)
proc color*(r,g,b,a: float32): Color = Color(r: r, g: g, b: b, a: a)

include gdext/gen/gdcolorconstr
include gdext/gen/gdcolor

proc `[]`*(self: Color; index: int): float_elem =
  if index notin 0..3: raise newException(IndexDefect, &"index must be in [0..3]; but got {index}")
  cast[ptr array[4, float_elem]](addr self)[][index]
