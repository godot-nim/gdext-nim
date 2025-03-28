import std/[math, importutils]

import gdext/private/native
import gdext/builtinindex
import gdext/stringtools

proc c_snprintf(buf: cstring, n: csize_t, frmt: cstring): cint {.header: "<stdio.h>",
                                    importc: "snprintf", varargs, noSideEffect.}

proc addNum(s: var string; num: float; decimals: int) =
  if num.isNaN:
    s.add "nan"
    return
  if num == Inf:
    s.add "inf"
    return
  if num == -Inf:
    s.add "-inf"
    return

  var decimals = decimals
  if decimals < 0:
    decimals = 14
    let absNum = abs num
    if absNum > 10:
      decimals -= int floor(log10(absNum))

  var fmt: array[7, char]
  fmt[0] = '%';
  fmt[1] = '.';
  if decimals < 0:
    fmt[1] = 'l'
    fmt[2] = 'f'
    fmt[3] = '\0'
  elif decimals < 10:
    fmt[2] = char '0'.ord + decimals
    fmt[3] = 'l'
    fmt[4] = 'f'
    fmt[5] = '\0'
  else:
    fmt[2] = char '0'.ord + (decimals div 10)
    fmt[3] = char '0'.ord + (decimals mod 10)
    fmt[4] = 'l'
    fmt[5] = 'f'
    fmt[6] = '\0'

  var buf: array[325, char]
  discard c_snprintf(cast[cstring](addr buf[0]), 325, cast[cstring](addr fmt[0]), num)
  buf[324] = '\0'

  block:
    var period = false
    var z = 0

    while buf[z] != '\0':
      if buf[z] == '.':
        period = true
      inc z

    if period:
      dec z
      while z > 0:
        if buf[z] == '0':
          buf[z] = '\0'
        elif buf[z] == '.':
          buf[z + 1] = '0'
          break
        else:
          break
        dec z

  s.add cast[cstring](addr buf[0])


proc addNumReal(s: var string; num: float, trailing: bool) =
  if num.isNaN or num == Inf or num == -Inf:
    s.addNum(num, 0)
    return

  if num == float int64 num:
    s.addInt int num
    if trailing:
      s.add ".0"
    return

  var decimals = 6
  let absNum = abs num
  if absNum > 10:
    decimals -= int floor(log10(absNum))
  s.addNum(num, decimals)

proc addVector(s: var string; v: VectorR) =
  s.add "("
  s.addNumReal v[0], true
  for i in 1..<v.len:
    s.add ", "
    s.addNumReal v[i], true
  s.add ")"

proc addVector(s: var string; v: VectorI) =
  s.add "("
  s.addInt v[0]
  for i in 1..<v.len:
    s.add ", "
    s.addInt v[i]
  s.add ")"

proc stringify(v: Variant): String =
  interfaceVariantStringify(addr v, addr result)

proc `$`*(v {.bycopy.}: Variant): string = $v.stringify

proc `$`*(v: Array): string =
  var variant: Variant
  variantFromType[VariantType_Array](addr variant, addr v)
  $variant
proc `$`*(v: TypedArray): string =
  $(v.Array)

proc `$`*[T](v: PackedArray[T]): string =
  var variant: Variant
  variantFromType[variantType PackedArray[T]](addr variant, addr v)
  $variant

proc `$`*(v: Dictionary): string =
  var variant: Variant
  variantFromType[VariantType_Dictionary](addr variant, addr v)
  $variant

proc `$`*(v: Callable): string =
  var variant: Variant
  variantFromType[VariantType_Callable](addr variant, addr v)
  $variant

proc `$`*(v: Signal): string =
  var variant: Variant
  variantFromType[VariantType_Signal](addr variant, addr v)
  $variant

proc `$`*(v: Color): string =
  const sample = "(0.0, 0.0, 0.0, 1.0)"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.add "("
  result.addNum v.r, 4
  result.add ", "
  result.addNum v.g, 4
  result.add ", "
  result.addNum v.b, 4
  result.add ", "
  result.addNum v.a, 4
  result.add ")"

proc `$`*(v: AABB): string =
  const sample = "[P: (0.0, 0.0, 0.0), S: (0.0, 0.0, 0.0)]"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.add "[P: "
  result.addVector v.position
  result.add ", S: "
  result.addVector v.size
  result.add "]"

proc `$`*(v: Basis): string =
  const sample = "[X: (1.0, 0.0, 0.0), Y: (0.0, 1.0, 0.0), Z: (0.0, 0.0, 1.0)]"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.add "[X: "
  result.addVector v.x
  result.add ", Y: "
  result.addVector v.y
  result.add ", Z: "
  result.addVector v.z
  result.add "]"

proc `$`*(v: Plane): string =
  const sample = "[N: (0.0, 0.0, 0.0), D: 0]"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.add "[N: "
  result.addVector v.normal
  result.add ", D: "
  result.addNumReal v.d, false
  result.add "]"

proc `$`*(v: Projection): string =
  const sample = "[X: (1.0, 0.0, 0.0, 0.0), Y: (0.0, 1.0, 0.0, 0.0), Z: (0.0, 0.0, 1.0, 0.0), W: (0.0, 0.0, 0.0, 1.0)]"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.add "[X: "
  result.addVector v.x
  result.add ", Y: "
  result.addVector v.y
  result.add ", Z: "
  result.addVector v.z
  result.add ", W: "
  result.addVector v.w
  result.add "]"

proc `$`*(v: Quaternion): string =
  const sample = "(0, 0, 0, 1)"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.add "("
  result.addNumReal v.x, false
  result.add ", "
  result.addNumReal v.y, false
  result.add ", "
  result.addNumReal v.z, false
  result.add ", "
  result.addNumReal v.w, false
  result.add ")"

proc `$`*(v: Rect2): string =
  const sample = "[P: (0.0, 0.0), S: (0.0, 0.0)]"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.add "[P: "
  result.addVector v.position
  result.add ", S: "
  result.addVector v.size
  result.add "]"

proc `$`*(v: Rect2i): string =
  const sample = "[P: (0, 0), S: (0, 0)]"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.add "[P: "
  result.addVector v.position
  result.add ", S: "
  result.addVector v.size
  result.add "]"

proc `$`*(v: Transform2D): string =
  const sample = "[X: (1.0, 0.0), Y: (0.0, 1.0), O: (0.0, 0.0)]"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.add "[X: "
  result.addVector v.x
  result.add ", Y: "
  result.addVector v.y
  result.add ", O: "
  result.addVector v.origin
  result.add "]"

proc `$`*(v: Transform3D): string =
  const sample = "[X: (1.0, 0.0, 0.0), Y: (0.0, 1.0, 0.0), Z: (0.0, 0.0, 1.0), O: (0.0, 0.0, 0.0)]"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.add "[X: "
  result.addVector v.basis.x
  result.add ", Y: "
  result.addVector v.basis.y
  result.add ", Z: "
  result.addVector v.basis.z
  result.add ", O: "
  result.addVector v.origin
  result.add "]"

proc `$`*(v: Vector2): string =
  const sample = "(0.0, 0.0)"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.addVector v

proc `$`*(v: Vector2i): string =
  const sample = "(0, 0)"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.addVector v

proc `$`*(v: Vector3): string =
  const sample = "(0.0, 0.0, 0.0)"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.addVector v

proc `$`*(v: Vector3i): string =
  const sample = "(0, 0, 0)"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.addVector v

proc `$`*(v: Vector4): string =
  const sample = "(0.0, 0.0, 0.0, 0.0)"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.addVector v

proc `$`*(v: Vector4i): string =
  const sample = "(0, 0, 0, 0)"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.addVector v

proc `$`*(v: RID): string =
  privateAccess RID
  const sample = "RID(1000)"
  const cap = int sample.len * 1.5
  result = newStringOfCap(cap)
  result.add "RID("
  result.addInt v.value
  result.add ")"
