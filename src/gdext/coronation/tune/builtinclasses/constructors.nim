import std/sequtils
import std/macros

import gdext/core/commandindex
import gdext/core/builtinindex
import gdext/core/extracommands

from gdext/core/geometrics/typedef {.all.} import makevec


macro vector*(exp: varargs[typed]): untyped =
  let res = makeVec(exp[0..^1])
  result = newStmtList()
  result.add res.lets
  result.add nnkBracket.newTree res.brackets.mapIt quote do: real_elem(`it`)
macro vectori*(exp: varargs[typed]): untyped =
  let res = makeVec(exp[0..^1])
  result = newStmtList()
  result.add res.lets
  result.add nnkBracket.newTree res.brackets.mapIt quote do: int_elem(`it`)

{.push, inline.}
proc vector2*(x, y: real_elem): Vector2 = [x, y]
proc vector3*(x, y, z: real_elem): Vector3 = [x, y, z]
proc vector4*(x, y, z, w: real_elem): Vector4 = [x, y, z, w]

proc vector2i*(x, y: int_elem): Vector2i = [x, y]
proc vector3i*(x, y, z: int_elem): Vector3i = [x, y, z]
proc vector4i*(x, y, z, w: int_elem): Vector4i = [x, y, z, w]
{.pop.}

export gdstring
export stringName

proc `&`*(str: string): StringName {.inline.} = stringName str

proc color*(): Color = Color(r: 0, g: 0, b: 0, a: 1)
proc color*(src: Color): Color = src
proc color*(src: Color; alpha: float32): Color = Color(r: src.r, g: src.g, b: src.b, a: alpha)
proc color*(r,g,b: float32): Color = Color(r: r, g: g, b: b, a: 1)
proc color*(r,g,b,a: float32): Color = Color(r: r, g: g, b: b, a: a)

proc quaternion*(x, y, z, w: real_elem): Quaternion =
  Quaternion(x: x, y: y, z: z, w: w)

proc basis*(xx, xy, xz, yx, yy, yz, zx, zy, zz: real_elem): Basis =
  Basis(
    x: [xx, xy, xz],
    y: [yx, yy, yz],
    z: [zx, zy, zz])

proc plane*(nx, ny, nz, d: real_elem): Plane =
  Plane(normal: [nx, ny, nz], d: d)

proc projection*(xx,xy,xz,xw, yx,yy,yz,yw, zx,zy,zz,zw, wx,wy,wz,ww: real_elem): Projection =
  Projection(
    x: [xx, xy, xz, xw],
    y: [yx, yy, yz, yw],
    z: [zx, zy, zz, zw],
    w: [wx, wy, wz, ww],
  )

proc transform2D*(xx, xy, yx, yy, ox, oy: real_elem): Transform2D =
  Transform2D(
    x: [xx, xy],
    y: [yx, yy],
    origin: [ox, oy])

proc transform3D*(xx, xy, xz, yx, yy, yz, zx, zy, zz, ox, oy, oz: real_elem): Transform3D =
  Transform3D(
    basis: Basis(
      x: [xx, xy, xz],
      y: [yx, yy, yz],
      z: [zx, zy, zz]),
    origin: [ox, oy, oz]
  )

proc variant*: Variant = interface_variantNewNil(addr result)
