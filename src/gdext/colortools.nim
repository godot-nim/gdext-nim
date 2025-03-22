import std/strformat
import gdext/private/gdinterface
import gdext/private/staticevents
import gdext/builtinindex

proc color*(): Color = Color(r: 0, g: 0, b: 0, a: 1)
proc color*(src: Color): Color = src
proc color*(src: Color; alpha: float32): Color = Color(r: src.r, g: src.g, b: src.b, a: alpha)
proc color*(r,g,b: float32): Color = Color(r: r, g: g, b: b, a: 1)
proc color*(r,g,b,a: float32): Color = Color(r: r, g: g, b: b, a: a)

include gdext/gen/gdcolorconstr
include gdext/gen/gdcolor

proc `[]`*(self: Color; index: int): float_elem =
  if index notin 0..3: raise newException(IndexDefect, &"index must be in [0..3]; but got {index}")
  cast[ptr array[4, float_elem]](addr self)[][index]
