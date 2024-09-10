import std/strformat
import gdext/core/builtinindex

proc `[]`*(self: Color; index: int): float_elem =
  if index notin 0..3: raise newException(IndexDefect, &"index must be in [0..3]; but got {index}")
  cast[ptr array[4, float_elem]](addr self)[][index]

proc `[]`*(self: Basis; index: int): Vector3 =
  if index notin 0..2: raise newException(IndexDefect, &"index must be in [0..2]; but got {index}")
  cast[ptr array[3, Vector3]](addr self)[][index]

proc `[]`*(self: Transform2D; index: int): Vector2 =
  if index notin 0..2: raise newException(IndexDefect, &"index must be in [0..2]; but got {index}")
  cast[ptr array[3, Vector2]](addr self)[][index]

proc `[]`*(self: Projection; index: int): Vector4 =
  if index notin 0..3: raise newException(IndexDefect, &"index must be in [0..3]; but got {index}")
  cast[ptr array[4, Vector4]](addr self)[][index]

proc `[]`*(self: Quaternion; index: int): real_elem =
  if index notin 0..3: raise newException(IndexDefect, &"index must be in [0..3]; but got {index}")
  cast[ptr array[4, real_elem]](addr self)[][index]