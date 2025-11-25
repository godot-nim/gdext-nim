import std/strformat
import std/genasts
import std/math as stdmath
from std/endians {.all.} import builtin_bswap16, builtin_bswap32, builtin_bswap64

import gdext/private/macros
import gdext/private/gdinterface
import gdext/private/staticevents
import gdext/builtinindex

export stdmath

export builtin_bswap16, builtin_bswap32, builtin_bswap64

macro genVecFieldAccess(): untyped =
  const fields = ["x", "y", "z", "w"]
  result = newStmtList()
  let # this makes the generated code look nicer
    vector = ident("vector")
    value = ident("value")
  for size in 2..4:
    for fidx, fkey in fields.pairs:
      if fidx >= size: break
      let field = ident(fkey)
      result.add genAst(size, fidx, field, vector, value) do:
        proc `field`*[T](vector: array[size, T]): T = system.`[]`(vector,fidx)
        proc `field`*[T](vector: var array[size, T]): var T = system.`[]`(vector, fidx)
        proc `field=`*[T](vector: var array[size, T], value: T) = system.`[]=`(vector, fidx, value)
{.push, inline.}
genVecFieldAccess()
{.pop.}

func makeVec(letSection: NimNode; components: seq[NimNode]): NimNode =
  result = newBracket()
  for i, e in components:
    case e.typeKind
    of ntyArray:
      case e.kind
      of nnkBracket:
        result.add e[0..^1]
      else:
        let alias = letSection.assigned e
        let high = e.getTypeImpl[1][2].intVal
        for i in 0..high:
          result.add nnkBracketExpr.newTree(alias, newlit i)
    else:
      result.add e
func makeVec(letSection: NimNode; typecast: typedesc; components: seq[NimNode]): NimNode =
  result = letSection.makeVec(components)
  let typ = typecast.getType
  for i in 0..<result.len:
    result[i] = typ.newcall result[i]

func makeKey(section: NimNode; component: Nimnode; N: int): NimNode =
  result = newBracket()
  case component.typeKind
  of ntyArray, ntyGenericInst:
    case component.kind
    of nnkBracket:
      result.add component[0..^1]
    of nnkSym:
      for i in 0..<N:
        result.add newBracketExpr(component, newlit i)
    else:
      let alias = section.assigned component
      for i in 0..<N:
        result.add newBracketExpr(alias, newlit i)
  else:
    for i in 0..<N:
      result.add component

macro extend_internal[T](value: T; N: static int): auto =
  result = newBracket()
  for i in 0..<N:
    result.add value

macro vec*(exp: varargs[typed]): Vector =
  ## ```nim
  ## proc gen: auto = vec(1, 2)
  ## vec(1, 2, 3) == [1, 2, 3]
  ## vec(1, 2) == [1, 2]
  ## vec([1, 2], 3) == [1, 2, 3]
  ## (let x = [1, 2]; vec(x, 3)) == [x[0], x[1], 3]
  ## vec(vec(1, 2), 3) == [1, 2, 3]
  ## vec(gen(), 3) == (let arg0 = gen(); [arg0[0], arg0[1], 3])
  ## ```
  let letSection = newLetSection()
  result = newStmtList(
    letSection,
    letSection.makeVec(exp[0..^1]))

macro vector*(exp: varargs[typed]): VectorR =
  let letstmt = newLetSection()
  result = newStmtList(
    letstmt,
    letstmt.makeVec(real_elem, exp[0..^1]))
macro vectori*(exp: varargs[typed]): VectorI =
  let letstmt = newLetSection()
  result = newStmtList(
    letstmt,
    letstmt.makeVec(int_elem, exp[0..^1]))

{.push, inline.}
proc vector2*(): Vector2 = [0, 0]
proc vector2*(`from`: Vector2): Vector2 = `from`
proc vector2*(`from`: Vector2i): Vector2 = [real_elem `from`[0], real_elem `from`[1]]
proc vector2*(x, y: real_elem): Vector2 = [x, y]

proc vector3*(): Vector3 = [0, 0, 0]
proc vector3*(`from`: Vector3): Vector3 = `from`
proc vector3*(`from`: Vector3i): Vector3 = [real_elem `from`[0], real_elem `from`[1], real_elem `from`[2]]
proc vector3*(x, y, z: real_elem): Vector3 = [x, y, z]

proc vector4*(): Vector4 = [0, 0, 0, 0]
proc vector4*(`from`: Vector4): Vector4 = `from`
proc vector4*(`from`: Vector4i): Vector4 = [real_elem `from`[0], real_elem `from`[1], real_elem `from`[2], real_elem `from`[3]]
proc vector4*(x, y, z, w: real_elem): Vector4 = [x, y, z, w]

proc vector2i*(): Vector2i = [0, 0]
proc vector2i*(`from`: Vector2i): Vector2i = `from`
proc vector2i*(`from`: Vector2): Vector2i = [int_elem `from`[0], int_elem `from`[1]]
proc vector2i*(x, y: int_elem): Vector2i = [x, y]

proc vector3i*(): Vector3i = [0, 0, 0]
proc vector3i*(`from`: Vector3i): Vector3i = `from`
proc vector3i*(`from`: Vector3): Vector3i = [int_elem `from`[0], int_elem `from`[1], int_elem `from`[2]]
proc vector3i*(x, y, z: int_elem): Vector3i = [x, y, z]

proc vector4i*(): Vector4i = [0, 0, 0, 0]
proc vector4i*(`from`: Vector4i): Vector4i = `from`
proc vector4i*(`from`: Vector4): Vector4i = [int_elem `from`[0], int_elem `from`[1], int_elem `from`[2], int_elem `from`[3]]
proc vector4i*(x, y, z, w: int_elem): Vector4i = [x, y, z, w]
{.pop.}

proc quaternion*(): Quaternion = Quaternion()
proc quaternion*(`from`: Quaternion): Quaternion = `from`
proc quaternion*(x, y, z, w: real_elem): Quaternion =
  Quaternion(x: x, y: y, z: z, w: w)

proc aabb*(): AABB = AABB()
proc aabb*(`from`: AABB): AABB = `from`

proc basis*(): Basis = Basis()
proc basis*(`from`: Basis): Basis = `from`
proc basis*(xAxis, yAxis, zAxis: Vector3): Basis = Basis(x: xAxis, y: yAxis, z: zAxis)
proc basis*(xx, xy, xz, yx, yy, yz, zx, zy, zz: real_elem): Basis =
  Basis(
    x: [xx, xy, xz],
    y: [yx, yy, yz],
    z: [zx, zy, zz])

proc plane*(): Plane = Plane()
proc plane*(`from`: Plane): Plane = `from`
proc plane*(normal: Vector3; d: real_elem): Plane =
  Plane(normal: normal, d: d)
proc plane*(a, b, c, d: real_elem): Plane =
  Plane(normal: [a, b, c], d: d)

proc projection*(): Projection = Projection()
proc projection*(`from`: Projection): Projection = `from`
proc projection*(xAxis, yAxis, zAxis, wAxis: Vector4): Projection =
  Projection(x: xAxis, y: yAxis, z: zAxis, w: wAxis)
proc projection*(xx,xy,xz,xw, yx,yy,yz,yw, zx,zy,zz,zw, wx,wy,wz,ww: real_elem): Projection =
  Projection(
    x: [xx, xy, xz, xw],
    y: [yx, yy, yz, yw],
    z: [zx, zy, zz, zw],
    w: [wx, wy, wz, ww],
  )

proc transform2D*(): Transform2D = Transform2D()
proc transform2D*(`from`: Transform2D): Transform2D = `from`
proc transform2D*(xAxis, yAxis, origin: Vector2): Transform2D =
  Transform2D(x: xAxis, y: yAxis, origin: origin)
proc transform2D*(xx, xy, yx, yy, ox, oy: real_elem): Transform2D =
  Transform2D(
    x: [xx, xy],
    y: [yx, yy],
    origin: [ox, oy])

proc transform3D*(): Transform3D = Transform3D()
proc transform3D*(`from`: Transform3D): Transform3D = `from`
proc transform3D*(basis: Basis; origin: Vector3): Transform3D =
  Transform3D(basis: basis, origin: origin)
proc transform3D*(xAxis, yAxis, zAxis, origin: Vector3): Transform3D =
  Transform3D(basis: Basis(x: xAxis, y: yAxis, z: zAxis), origin: origin)
proc transform3D*(xx, xy, xz, yx, yy, yz, zx, zy, zz, ox, oy, oz: real_elem): Transform3D =
  Transform3D(
    basis: Basis(
      x: [xx, xy, xz],
      y: [yx, yy, yz],
      z: [zx, zy, zz]),
    origin: [ox, oy, oz]
  )

proc rect2*(): Rect2 = discard
proc rect2*(`from`: Rect2): Rect2 = `from`
proc rect2*(`from`: Rect2i): Rect2 =
  Rect2(position: vector2 `from`.position, size: vector2 `from`.size)
proc rect2*(position, size: Vector2): Rect2 =
  Rect2(position: position, size: size)
proc rect2*(x, y, width, height: real_elem): Rect2 =
  Rect2(position: [x, y], size: [width, height])

proc rect2i*(): Rect2i = discard
proc rect2i*(a: Rect2i): Rect2i = a
proc rect2i*(`from`: Rect2): Rect2i =
  Rect2i(position: vector2i `from`.position, size: vector2i `from`.size)
proc rect2i*(position, size: Vector2i): Rect2i =
  Rect2i(position: position, size: size)
proc rect2i*(x, y, width, height: int_elem): Rect2i =
  Rect2i(position: [x, y], size: [width, height])

include gdext/gen/gdaabbconstr
include gdext/gen/gdbasisconstr
include gdext/gen/gdplaneconstr
include gdext/gen/gdprojectionconstr
include gdext/gen/gdquaternionconstr
include gdext/gen/gdrect2constr
include gdext/gen/gdrect2iconstr
include gdext/gen/gdtransform2dconstr
include gdext/gen/gdtransform3dconstr

include gdext/gen/gdaabb
include gdext/gen/gdbasis
include gdext/gen/gdplane
include gdext/gen/gdprojection
include gdext/gen/gdquaternion
include gdext/gen/gdrect2
include gdext/gen/gdrect2i
include gdext/gen/gdtransform2d
include gdext/gen/gdtransform3d
include gdext/gen/gdvector2
include gdext/gen/gdvector2i
include gdext/gen/gdvector3
include gdext/gen/gdvector3i
include gdext/gen/gdvector4
include gdext/gen/gdvector4i

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

proc extend*[T](value: T; N: static int): array[N,T] =
  extend_internal(value, N)

macro fmap*[N: static int; T]( pred;
      v1: array[N,T];
    ): auto =
  let section = newLetSection()
  let a1 = section.makekey(v1, N)
  result = newBracket()
  for i in 0..<N:
    result.add pred.newcall(a1[i])
  result = newStmtList(section, result)

macro fmap*[N: static int; T1, T2]( pred;
      v1: array[N,T1] | T1;
      v2: array[N,T2] | T2;
    ): auto =
  let section = newLetSection()
  let a1 = section.makekey(v1, N)
  let a2 = section.makekey(v2, N)
  result = newBracket()
  for i in 0..<N:
    result.add pred.newcall(a1[i], a2[i])
  result = newStmtList(section, result)

macro fmap*[N: static int; T1, T2, T3]( pred;
      v1: array[N,T1] | T1;
      v2: array[N,T2] | T2;
      v3: array[N,T3] | T3;
    ): auto =
  let section = newLetSection()
  let a1 = section.makekey(v1, N)
  let a2 = section.makekey(v2, N)
  let a3 = section.makekey(v3, N)
  result = newBracket()
  for i in 0..<N:
    result.add pred.newcall(a1[i], a2[i], a3[i])
  result = newStmtList(section, result)


iterator couple[N: static int; T1, T2](v1: array[N, T1]; v2: array[N, T2]): (T1, T2) =
  bind `[]`
  for i in 0..<N:
    yield (v1[i], v2[i])
iterator couple[N: static int; T1, T2](v1: array[N, T1]; x2: T2): (T1, T2) =
  bind `[]`
  for i in 0..<N:
    yield (v1[i], x2)
iterator couple[N: static int; T1, T2](x1: T1; v2: array[N, T2]): (T1, T2) =
  bind `[]`
  for i in 0..<N:
    yield (x1, v2[i])

template all*[N: static int; T]( pred;
      v: array[N, T];
    ): bool =
  var result = true
  for x in v:
    if not pred(x):
      result = false
      break
  result
template all*[N: static int; T1, T2]( pred;
      v1: array[N, T1] | T1;
      v2: array[N, T2] | T2;
    ): bool =
  var result = true
  for x1, x2 in couple(v1, v2):
    if not pred(x1, x2):
      result = false
      break
  result

template any*[N: static int; T]( pred;
      v: array[N, T];
    ): bool =
  var result = false
  for x in v:
    if pred(x):
      result = true
      break
  result
template any*[N: static int; T1, T2]( pred;
      v1: array[N, T1] | T1;
      v2: array[N, T2] | T2;
    ): bool =
  var result = false
  for x1, x2 in couple(v1, v2):
    if pred(x1, x2):
      result = true
      break
  result

proc asNormalized*[N: static int; T: SomeFloat](vec: Vector[N,T]): NVector[N,T] {.inline.} = NVector[N,T](vec)

const SQRT12* = 0.7071067811865475244008443621048490
const SQRT2* = 1.4142135623730950488016887242
const LN2* = 0.6931471805599453094172321215

template `+`*[F: SomeFLoat; I: SomeInteger](f:F; i:I): F = f+F(i)
template `+`*[F: SomeFLoat; I: SomeInteger](i:I; f:F): F = F(i)+i
template `-`*[F: SomeFLoat; I: SomeInteger](f:F; i:I): F = f-F(i)
template `-`*[F: SomeFLoat; I: SomeInteger](i:I; f:F): F = F(i)-i
template `*`*[F: SomeFLoat; I: SomeInteger](f:F; i:I): F = f*F(i)
template `*`*[F: SomeFLoat; I: SomeInteger](i:I; f:F): F = F(i)*i
template `/`*[F: SomeFLoat; I: SomeInteger](f:F; i:I): F = f/F(i)
template `/`*[F: SomeFLoat; I: SomeInteger](i:I; f:F): F = F(i)/i

func min*[T](x: T; xs: varargs[T]): T =
  result = x
  for i in 0..high(xs):
    if xs[i] < result: result = xs[i]

func max*[T](x: T; xs: varargs[T]): T =
  result = x
  for i in 0..high(xs):
    if xs[i] > result: result = xs[i]

# constexpr function to find the floored log2 of a number
func floorLog2*[T: SomeOrdinal](x: T): T =
  if x < 2: x
  else: 1 + floorLog2(x shr 1)

# Get the number of bits needed to represent the number.
# IE, if you pass in 8, you will get 4.
# If you want to know how many bits are needed to store 8 values however, pass in (8 - 1).
func getNumBits*[T](x: T): T = floor_log2(x)

#========#
#  Math  #
#========#

# This epsilon should match the one used by Godot for consistency.
# Using `f` when `real_t` is float.
const CMP_EPSILON* = 0.00001f
# const CMP_EPSILON2 = (CMP_EPSILON * CMP_EPSILON)

# This epsilon is for values related to a unit size (scalar or vector len).
# const UNIT_EPSILON = 0.00001

# Functions reproduced as in Godot's source code `math_funcs.h`.
# Some are overloads to automatically support changing real_t into either double or float in the way Godot does.

func posmod*[T: SomeNumber](pX, pY: T): T {.inline.} =
  result =
    when T is SomeInteger: pX mod pY
    else: floorMod(pX, pY)
  if ((result < 0 and pY > 0) or (result > 0 and pY < 0)):
    return result + pY

func fposmodp*[T: SomeFloat](pX, pY: T): T {.inline.} =
  result = floorMod(pX, pY)
  if result < 0:
    return result + pY

{.push, inline.}
func sinc*[T: SomeFloat](pX: T): T = (if pX == 0: 1 else: sin(pX)/pX)

func sincn*[T: SomeFloat](pX: T): T = sinc(PI * pX)

{.pop.}

func isFinite*[T: SomeFloat](pX: T): bool = pX == NaN or pX == Inf or pX == NegInf

#[
inline double cubic_interpolate_in_time(double p_from, double p_to, double p_pre, double p_post, double p_weight,
    double p_to_t, double p_pre_t, double p_post_t) {
  /* Barry-Goldman method */
  double t = Math::lerp(0.0, p_to_t, p_weight);
  double a1 = Math::lerp(p_pre, p_from, p_pre_t == 0 ? 0.0 : (t - p_pre_t) / -p_pre_t);
  double a2 = Math::lerp(p_from, p_to, p_to_t == 0 ? 0.5 : t / p_to_t);
  double a3 = Math::lerp(p_to, p_post, p_post_t - p_to_t == 0 ? 1.0 : (t - p_to_t) / (p_post_t - p_to_t));
  double b1 = Math::lerp(a1, a2, p_to_t - p_pre_t == 0 ? 0.0 : (t - p_pre_t) / (p_to_t - p_pre_t));
  double b2 = Math::lerp(a2, a3, p_post_t == 0 ? 1.0 : t / p_post_t);
  return Math::lerp(b1, b2, p_to_t == 0 ? 0.5 : t / p_to_t);
}

inline float cubic_interpolate_in_time(float p_from, float p_to, float p_pre, float p_post, float p_weight,
    float p_to_t, float p_pre_t, float p_post_t) {
  /* Barry-Goldman method */
  float t = Math::lerp(0.0f, p_to_t, p_weight);
  float a1 = Math::lerp(p_pre, p_from, p_pre_t == 0 ? 0.0f : (t - p_pre_t) / -p_pre_t);
  float a2 = Math::lerp(p_from, p_to, p_to_t == 0 ? 0.5f : t / p_to_t);
  float a3 = Math::lerp(p_to, p_post, p_post_t - p_to_t == 0 ? 1.0f : (t - p_to_t) / (p_post_t - p_to_t));
  float b1 = Math::lerp(a1, a2, p_to_t - p_pre_t == 0 ? 0.0f : (t - p_pre_t) / (p_to_t - p_pre_t));
  float b2 = Math::lerp(a2, a3, p_post_t == 0 ? 1.0f : t / p_post_t);
  return Math::lerp(b1, b2, p_to_t == 0 ? 0.5f : t / p_to_t);
}

inline double cubic_interpolate_angle_in_time(double p_from, double p_to, double p_pre, double p_post, double p_weight,
    double p_to_t, double p_pre_t, double p_post_t) {
  double from_rot = fmod(p_from, Math_TAU);

  double pre_diff = fmod(p_pre - from_rot, Math_TAU);
  double pre_rot = from_rot + fmod(2.0 * pre_diff, Math_TAU) - pre_diff;

  double to_diff = fmod(p_to - from_rot, Math_TAU);
  double to_rot = from_rot + fmod(2.0 * to_diff, Math_TAU) - to_diff;

  double post_diff = fmod(p_post - to_rot, Math_TAU);
  double post_rot = to_rot + fmod(2.0 * post_diff, Math_TAU) - post_diff;

  return cubic_interpolate_in_time(from_rot, to_rot, pre_rot, post_rot, p_weight, p_to_t, p_pre_t, p_post_t);
}

inline float cubic_interpolate_angle_in_time(float p_from, float p_to, float p_pre, float p_post, float p_weight,
    float p_to_t, float p_pre_t, float p_post_t) {
  float from_rot = fmod(p_from, (float)Math_TAU);

  float pre_diff = fmod(p_pre - from_rot, (float)Math_TAU);
  float pre_rot = from_rot + fmod(2.0f * pre_diff, (float)Math_TAU) - pre_diff;

  float to_diff = fmod(p_to - from_rot, (float)Math_TAU);
  float to_rot = from_rot + fmod(2.0f * to_diff, (float)Math_TAU) - to_diff;

  float post_diff = fmod(p_post - to_rot, (float)Math_TAU);
  float post_rot = to_rot + fmod(2.0f * post_diff, (float)Math_TAU) - post_diff;

  return cubic_interpolate_in_time(from_rot, to_rot, pre_rot, post_rot, p_weight, p_to_t, p_pre_t, p_post_t);
}

inline double bezier_interpolate(double p_start, double p_control_1, double p_control_2, double p_end, double p_t) {
  /* Formula from Wikipedia article on Bezier curves. */
  double omt = (1.0 - p_t);
  double omt2 = omt * omt;
  double omt3 = omt2 * omt;
  double t2 = p_t * p_t;
  double t3 = t2 * p_t;

  return p_start * omt3 + p_control_1 * omt2 * p_t * 3.0 + p_control_2 * omt * t2 * 3.0 + p_end * t3;
}

inline float bezier_interpolate(float p_start, float p_control_1, float p_control_2, float p_end, float p_t) {
  /* Formula from Wikipedia article on Bezier curves. */
  float omt = (1.0f - p_t);
  float omt2 = omt * omt;
  float omt3 = omt2 * omt;
  float t2 = p_t * p_t;
  float t3 = t2 * p_t;

  return p_start * omt3 + p_control_1 * omt2 * p_t * 3.0f + p_control_2 * omt * t2 * 3.0f + p_end * t3;
}
]#

func clamp01*[T: SomeFloat](x: T): T = x.clamp(0, 1)

#[
inline double inverse_lerp(double p_from, double p_to, double p_value) {
  return (p_value - p_from) / (p_to - p_from);
}
inline float inverse_lerp(float p_from, float p_to, float p_value) {
  return (p_value - p_from) / (p_to - p_from);
}

inline double remap(double p_value, double p_istart, double p_istop, double p_ostart, double p_ostop) {
  return Math::lerp(p_ostart, p_ostop, Math::inverse_lerp(p_istart, p_istop, p_value));
}
inline float remap(float p_value, float p_istart, float p_istop, float p_ostart, float p_ostop) {
  return Math::lerp(p_ostart, p_ostop, Math::inverse_lerp(p_istart, p_istop, p_value));
}
]#


# Equalabilities
# --------------
template `~=`*(a, b: typed): bool = isEqualApprox(a, b)

proc isEqualApprox*[T: SomeFloat](a, b: T): bool {.inline.} =
  if a == b: return true
  let tolerance = max(T(CMP_EPSILON) * abs(a), T(CMP_EPSILON))
  abs(a - b) < tolerance

proc isEqualApprox*[T: SomeFloat](a, b, tolerance: T): bool {.inline.} =
  if a == b: return true
  abs(a - b) < tolerance

proc isZeroApprox*[T: SomeFloat](s: T): bool {.inline.} = abs(s) < T(CMP_EPSILON)

#[
inline double smoothstep(double p_from, double p_to, double p_weight) {
  if (is_equal_approx(static_cast<real_t>(p_from), static_cast<real_t>(p_to))) {
    return p_from;
  }
  double x = clamp((p_weight - p_from) / (p_to - p_from), 0.0, 1.0);
  return x * x * (3.0 - 2.0 * x);
}
inline float smoothstep(float p_from, float p_to, float p_weight) {
  if (is_equal_approx(p_from, p_to)) {
    return p_from;
  }
  float x = clamp((p_weight - p_from) / (p_to - p_from), 0.0f, 1.0f);
  return x * x * (3.0f - 2.0f * x);
}
]#
proc moveToward*[T: SomeFloat](`from`, to, delta: T): T =
  let dist = to - `from`
  if abs(dist) <= delta: return to
  `from` + sgn(dist) * delta

#[
inline double linear2db(double p_linear) {
  return log(p_linear) * 8.6858896380650365530225783783321;
}
inline float linear2db(float p_linear) {
  return log(p_linear) * 8.6858896380650365530225783783321f;
}

inline double db2linear(double p_db) {
  return exp(p_db * 0.11512925464970228420089957273422);
}
inline float db2linear(float p_db) {
  return exp(p_db * 0.11512925464970228420089957273422f);
}
]#

proc wrap*[T: SomeInteger](value, min, max: T): T =
  let range = max - min
  if range == 0: min
  else:
    min + ((((value - min) mod range) + range) mod range)

proc wrap*[T: SomeFloat](value, min, max: T): T =
  let range = max - min
  if is_zero_approx(range): min
  else: value - (range * floor((value - min) / range))

proc wrap*[T](value: T, bounds: Slice[T]): T = wrap(value, bounds.a, bounds.b)

#[
inline float fract(float value) {
  return value - floor(value);
}

inline double fract(double value) {
  return value - floor(value);
}

inline float pingpong(float value, float length) {
  return (length != 0.0f) ? abs(fract((value - length) / (length * 2.0f)) * length * 2.0f - length) : 0.0f;
}

inline double pingpong(double value, double length) {
  return (length != 0.0) ? abs(fract((value - length) / (length * 2.0)) * length * 2.0 - length) : 0.0;
}

# This function should be as fast as possible and rounding mode should not matter.
inline int fast_ftoi(float a) {
  static int b;

#if (defined(_WIN32_WINNT) && _WIN32_WINNT >= 0x0603) || WINAPI_FAMILY == WINAPI_FAMILY_PHONE_APP # windows 8 phone?
  b = (int)((a > 0.0) ? (a + 0.5) : (a - 0.5));

#elif defined(_MSC_VER) && _MSC_VER < 1800
  __asm fld a __asm fistp b
  /*#elif defined( __GNUC__ ) && ( defined( __i386__ ) || defined( __x86_64__ ) )
  # use AT&T inline assembly style, document that
  # we use memory as output (=m) and input (m)
  __asm__ __volatile__ (
  "flds %1        \n\t"
  "fistpl %0      \n\t"
  : "=m" (b)
  : "m" (a));*/

#else
  b = lrintf(a); # assuming everything but msvc 2012 or earlier has lrint
#endif
  return b;
}
]#
proc snapped*[T: SomeFloat; S: SomeNumber](value: T; step: S): S =
  if step == 0: return S value
  S floor(value / step + 0.5) * step
#[
inline float snap_scalar(float p_offset, float p_step, float p_target) {
  return p_step != 0 ? Math::snapped(p_target - p_offset, p_step) + p_offset : p_target;
}

inline float snap_scalar_separation(float p_offset, float p_step, float p_target, float p_separation) {
  if (p_step != 0) {
    float a = Math::snapped(p_target - p_offset, p_step + p_separation) + p_offset;
    float b = a;
    if (p_target >= 0) {
      b -= p_separation;
    } else {
      b += p_step;
    }
    return (Math::abs(p_target - a) < Math::abs(p_target - b)) ? a : b;
  }
  return p_target;
}
]#

func lerp*[T: SomeFloat](pFrom,pTo: T; t: T): T {.inline.} =
  pFrom + t * (pTo - pFrom)

func lerpAngle*[T: SomeFloat](pFrom,pTo: T; t: T): T {.inline.} =
  let
    difference: T = floorMod(T(pTo) - T(pFrom), TAU)
    distance: T = floorMod(T(2) * difference, TAU) - difference
  p_from + distance * t

func cubicInterpolate*[T: SomeFloat](pFrom, pTo, pPre, pPost, pWeight: T): T {.inline.} =
  0.5 * ((2*pFrom) +
    (-pPre + pTo) * pWeight +
    (2*pPre - 5*pFrom + 4*pTo - pPost) * (pWeight * pWeight) +
    (-pPre + 3*pFrom - 3*pTo + pPost) * (pWeight * pWeight * pWeight))

func cubicInterpolateAngle*[T: SomeFloat](pFrom, pTo, pPre, pPost: T; pWeight: T): T {.inline.} =
  let
    fromRot = floorMod(T(pFrom), TAU)

    preDiff = floorMod(T(pPre) - fromRot, TAU)
    preRot = fromRot + floorMod(2.0 * preDiff, TAU) - preDiff

    toDiff = floorMod(T(pTo) - fromRot, TAU)
    toRot = fromRot + floorMod(2.0 * toDiff, TAU) - toDiff

    postDiff = floorMod(T(pPost) - toRot, TAU)
    postRot = toRot + floorMod(2.0 * postDiff, TAU) - postDiff

  cubicInterpolate(fromRot, toRot, preRot, postRot, pWeight)

{.push, inline.}

# Vector commons
# ==============

# Constants
# ---------

template Zero*[N: static int; T: SomeNumber](_:typedesc[Vector[N,T]]): Vector[N,T] = T(0).extend N
template One*[N: static int; T: SomeNumber](_:typedesc[Vector[N,T]]): Vector[N,T] = T(1).extend N

template Inf*[N: static int; T: SomeFloat](_:typedesc[Vector[N,T]]): Vector[N,T] = T(Inf).extend N

template Min*[N: static int; T: SomeInteger](_:typedesc[Vector[N,T]]): Vector[N,T] = (T.low).extend N
template Max*[N: static int; T: SomeInteger](_:typedesc[Vector[N,T]]): Vector[N,T] = (T.high).extend N

template Left *[T: SomeNumber](_:typedesc[NVector[2,T]]): NVector[2,T] = NVector[2,T] [T(-1),  0]
template Right*[T: SomeNumber](_:typedesc[NVector[2,T]]): NVector[2,T] = NVector[2,T] [T( 1),  0]
template Up   *[T: SomeNumber](_:typedesc[NVector[2,T]]): NVector[2,T] = NVector[2,T] [T( 0), -1]
template Down *[T: SomeNumber](_:typedesc[NVector[2,T]]): NVector[2,T] = NVector[2,T] [T( 0),  1]

template Left   *[T: SomeNumber](_:typedesc[NVector[3,T]]): NVector[3,T] = NVector[3,T] [T(-1),  0,  0]
template Right  *[T: SomeNumber](_:typedesc[NVector[3,T]]): NVector[3,T] = NVector[3,T] [T( 1),  0,  0]
template Up     *[T: SomeNumber](_:typedesc[NVector[3,T]]): NVector[3,T] = NVector[3,T] [T( 0),  1,  0]
template Down   *[T: SomeNumber](_:typedesc[NVector[3,T]]): NVector[3,T] = NVector[3,T] [T( 0), -1,  0]
template Forward*[T: SomeNumber](_:typedesc[NVector[3,T]]): NVector[3,T] = NVector[3,T] [T( 0),  0, -1]
template Back   *[T: SomeNumber](_:typedesc[NVector[3,T]]): NVector[3,T] = NVector[3,T] [T( 0),  0,  1]

# Operators
# ---------

# comp
func `<` *[N: static int; T: SomeNumber](left,right: Vector[N,T]): bool = `<`.all(left, right)
func `<=`*[N: static int; T: SomeNumber](left,right: Vector[N,T]): bool = `<=`.all(left, right)

proc isEqualApprox*[N: static int; T: SomeFloat](left,right: Vector[N,T]): bool = isEqualApprox.all(left, right)
proc isZeroApprox*[N: static int; T: SomeFloat](self: Vector[N,T]): bool = isZeroApprox.all(self)

func min*[N: static int; T: SomeNumber](self: Vector[N,T]): T =
  result = self[0]
  for x in self:
    if result > x: result = x
func max*[N: static int; T: SomeNumber](self: Vector[N,T]): T =
  result = self[0]
  for x in self:
    if result < x: result = x

proc minidx*[N: static int; T: SomeNumber](self:Vector[N,T]): int =
  for i, x in self:
    if self[result] > x: result = i
proc maxidx*[N: static int; T: SomeNumber](self:Vector[N,T]): int =
  for i, x in self:
    if self[result] < x: result = i

func isFinite*[N: static int; T: SomeFloat](self: Vector[N,T]): bool = isFinite.all(self)
func clamp*[N: static int; T: SomeNumber](self, min, max: Vector[N,T]): Vector[N,T] = system.clamp.fmap(self, min, max)
func clamp*[N: static int; T: SomeNumber](self: Vector[N,T]; min, max: T): Vector[N,T] = system.clamp.fmap(self, min, max)
func clamp01*[N: static int; T: SomeNumber](self: Vector[N,T]): Vector[N,T] = clamp01.fmap(self)
func sgn*[N: static int; T: SomeNumber](self: Vector[N,T]): Vector[N,int] = sgn.fmap(self)

# unary
template `+`*[N: static int; T: SomeNumber](left: Vector[N,T]): Vector[N,T] = left
func `-`*[N: static int; T: SomeNumber](left: Vector[N,T]): Vector[N,T] = `-`.fmap(left)

when real_elem is float32:
  func `+`(left: float32; right: float64): float32 = float32 system.`+`(left,right)
  func `-`(left: float32; right: float64): float32 = float32 system.`-`(left,right)
  func `*`(left: float32; right: float64): float32 = float32 system.`*`(left,right)
  func `/`(left: float32; right: float64): float32 = float32 system.`/`(left,right)

  func `+`(left: float64; right: float32): float32 = float32 system.`+`(left,right)
  func `-`(left: float64; right: float32): float32 = float32 system.`-`(left,right)
  func `*`(left: float64; right: float32): float32 = float32 system.`*`(left,right)
  func `/`(left: float64; right: float32): float32 = float32 system.`/`(left,right)

when int_elem is int32:
  func `+`(left: int32; right: int64): int32 = int32 system.`+`(left,right)
  func `-`(left: int32; right: int64): int32 = int32 system.`-`(left,right)
  func `*`(left: int32; right: int64): int32 = int32 system.`*`(left,right)
  func `div`(left: int32; right: int64): int32 = int32 system.`div`(left,right)
  func `mod`(left: int32; right: int64): int32 = int32 system.`mod`(left,right)

  func `+`(left: int64; right: int32): int32 = int32 system.`+`(left,right)
  func `-`(left: int64; right: int32): int32 = int32 system.`-`(left,right)
  func `*`(left: int64; right: int32): int32 = int32 system.`*`(left,right)
  func `div`(left: int64; right: int32): int32 = int32 system.`div`(left,right)
  func `mod`(left: int64; right: int32): int32 = int32 system.`mod`(left,right)

# basic
func `+`*[N: static int; T,S: SomeNumber](left: Vector[N,T]; right: Vector[N,S]): auto = `+`.fmap(left, right)
func `-`*[N: static int; T,S: SomeNumber](left: Vector[N,T]; right: Vector[N,S]): auto = `-`.fmap(left, right)
func `*`*[N: static int; T,S: SomeNumber](left: Vector[N,T]; right: Vector[N,S]): auto = `*`.fmap(left, right)
func `/`*[N: static int; T,S: SomeNumber](left: Vector[N,T]; right: Vector[N,S]): auto = `/`.fmap(left, right)

func `div`*[N: static int; T,S: SomeInteger](left: Vector[N,T]; right: Vector[N,S]): auto = `div`.fmap(left, right)
func `mod`*[N: static int; T,S: SomeInteger](left: Vector[N,T]; right: Vector[N,S]): auto = `mod`.fmap(left, right)

# with other norms
proc `+`*[N: static int; T,S: SomeNumber](left: Vector[N,T]; right: S): auto = `+`.fmap(left, right)
proc `+`*[N: static int; T,S: SomeNumber](left: T; right: Vector[N,S]): auto = `+`.fmap(left, right)

proc `-`*[N: static int; T,S: SomeNumber](left: Vector[N,T]; right: S): auto = `-`.fmap(left, right)
proc `-`*[N: static int; T,S: SomeNumber](left: T; right: Vector[N,S]): auto = `-`.fmap(left, right)

proc `*`*[N: static int; T,S: SomeNumber](left: Vector[N,T]; right: S): auto = `*`.fmap(left, right)
proc `*`*[N: static int; T,S: SomeNumber](left: T; right: Vector[N,S]): auto = `*`.fmap(left, right)

proc `/`*[N: static int; T,S: SomeNumber](left: Vector[N,T]; right: S): auto = `/`.fmap(left, right)
proc `/`*[N: static int; T,S: SomeNumber](left: T; right: Vector[N,S]): auto = `/`.fmap(left, right)

func `div`*[N: static int; T,S: SomeInteger](left: Vector[N,T]; right: S): auto = `div`.fmap(left, right)
func `div`*[N: static int; T,S: SomeInteger](left: T; right: Vector[N,S]): auto = `div`.fmap(left, right)

func `mod`*[N: static int; T,S: SomeInteger](left: Vector[N,T]; right: S): auto = `mod`.fmap(left, right)
func `mod`*[N: static int; T,S: SomeInteger](left: T; right: Vector[N,S]): auto = `mod`.fmap(left, right)

# Functions
# ---------

# length
func dot*[N: static int; T: SomeNumber](left, right: Vector[N,T]): T = sum (left * right)
func lengthSquared*[N: static int; T: SomeNumber](self:Vector[N,T]): T = dot(self, self)
func length*[N: static int; T: SomeFloat](self: Vector[N,T]): T = sqrt self.lengthSquared
func length*[N: static int; T: SomeInteger](self: Vector[N,T]): float = sqrt float(self.lengthSquared)
converter unwrapped*[N: static int; T: SomeFloat](v: NVector[N,T]): Vector[N,T] = Vector[N,T](v)

func length*[N: static int; T: SomeFloat](self: NVector[N,T]): T =
  if unlikely(self.lengthSquared == 0): 0
  else: 1
func normalized*[N: static int; T: SomeFloat](self: Vector[N,T]): NVector[N,T] =
  let length2 = self.lengthSquared
  if unlikely(length2 == 0): return
  asNormalized(self / sqrt length2)

# math
func cross*[T](self: Vector[2, T]; with: Vector[2, T]): T =
  self.x * with.y - self.y * with.x;
func abs  *[N: static int; T: SomeNumber](self: Vector[N,T]): Vector[N,T] = abs.fmap(self)
func ceil *[N: static int; T: SomeFloat](self: Vector[N,T]): Vector[N,T] = ceil.fmap(self)
func floor*[N: static int; T: SomeFloat](self: Vector[N,T]): Vector[N,T] = floor.fmap(self)
func round*[N: static int; T: SomeFloat](self: Vector[N,T]): Vector[N,T] = round.fmap(self)

func posmod*[N: static int; T: SomeFloat](x,y: Vector[N,T]): Vector[N,T] = posmod.fmap(x, y)
func posmod*[N: static int; T: SomeFloat](x: Vector[N,T]; y: T): Vector[N,T] = posmod.fmap(x, y)

# geometorics
func distanceTo *[N: static int; T: SomeFloat](self, to: Vector[N,T]): T = (to - self).length
func distanceSquaredTo *[N: static int; T: SomeFloat](self, to: Vector[N,T]): T = (to - self).lengthSquared
func directionTo*[N: static int; T: SomeFloat](self, to: Vector[N,T]): Vector[N,T] = (to - self).normalized

func slide*[N: static int; T: SomeFloat](self: Vector[N,T]; normal: NVector[N,T]): Vector[N,T] =
  self - normal * dot(self, normal)

func snapped*[N: static int; T: SomeNumber](self, step: Vector[N,T]): Vector[N,T] = snapped.fmap(self, step)
func snapped*[N: static int; T: SomeNumber](self: Vector[N,T]; step: T): Vector[N,T] = snapped.fmap(self, step)

# interpolations
proc lerp*[N: static int; T: SomeFloat](x,y: Vector[N,T]; ratio: T): Vector[N,T] = lerp.fmap(x, y, ratio)
proc moveToward*[N: static int; T: SomeFloat](`from`,to: Vector[N,T]; delta: T): Vector[N,T] =
  let dist = to - `from`
  let len = dist.length
  if len <= delta or len < CMP_EPSILON: return to
  `from` + (dist/len) * delta

# angles
func fromAngle*[T: SomeFloat](_: typedesc[NVector[2, T]]; angle: T): NVector[2, T] =
  NVector[2, T] [cos angle, sin angle]

func angle*[T: SomeFloat](self: Vector[2, T]): T =
  arctan2(self.y, self.x)
func angleToPoint*[T](self, to: Vector[2, T]): T =
  angle (to - self)
func angleTo*[T: SomeFloat](self, to: Vector[2, T]): T =
  arctan2(self.cross(to), self.dot(to))

# others
func aspect*[T: SomeFloat](self: Vector[2, T]): T = self.x / self.y
func aspect*[T: SomeInteger](self: Vector[2, T]): float = self.x / self.y

# Godot-style aliases
# -------------------

template sign*[T](v: T): auto = sgn(v)
template asin*[T: SomeFloat](pX: T): T = arcsin pX
template acos*[T: SomeFloat](pX: T): T = arccos pX
template atan*[T: SomeFloat](pX: T): T = arctan pX
template atan2*[T: SomeFloat](pY, pX: T): T = arctan2(pY, pX)
template asinh*[T: SomeFloat](pX: T): T = arcsinh pX
template acosh*[T: SomeFloat](pX: T): T = arccosh pX
template atanh*[T: SomeFloat](pX: T): T = arctanh pX
template fmod*[T: SomeNumber](x, y: T): T = floorMod(x, y)
template fposmod*[T: SomeFloat](x, y: T): T = posmod(x, y)
template floorf*[T: SomeFloat](x: T): T = floor x
template floori*[T: SomeFloat](x: T): int = int floor x
template ceilf*[T: SomeFloat](x: T): T = ceil x
template ceili*[T: SomeFloat](x: T): int = int ceil x
template roundf*[T: SomeFloat](x: T): T = round x
template roundi*[T: SomeFloat](x: T): int = int round x
template absf*[T: SomeFloat](x: T): T = abs x
template absi*[T: SomeInteger](x: T): T = abs x
template signf*[T: SomeFloat](x: T): T = sgn(x)
template signi*[T: SomeInteger](x: T): T = sgn(x)
template snappedf*[T: SomeFloat; S: SomeFLoat](value: T; step: S): S = snapped(value, step)
template snappedi*[T: SomeFloat; S: SomeInteger](value: T; step: S): S = snapped(value, step)
template isInf*[T: SomeFloat](x: T): bool = x == Inf or x == NegInf
template wrapf*[T: SomeFloat](value, min, max: T): T = wrap(value, min, max)
template wrapi*[T: SomeInteger](value, min, max: T): T = wrap(value, min, max)
template maxf*[T: SomeFloat](a, b: T): T = max(a, b)
template maxi*[T: SomeInteger](a, b: T): T = max(a, b)
template minf*[T: SomeFloat](a, b: T): T = min(a, b)
template mini*[T: SomeInteger](a, b: T): T = min(a, b)
template clampf*[T: SomeFloat](value, min, max: T): T = clamp(value, min, max)
template clampi*[T: SomeInteger](value, min, max: T): T = clamp(value, min, max)
template lerpf*(`from`: Float; to: Float; weight: Float): Float = lerp(`from`, to, weight)
template nearestPo2*(value: Int): Int = Int nextPowerOfTwo(int value)

proc `+=`*[I, T, S](a: var Vector[I, T]; b: Vector[I, S]) {.inline.} = a = a + b
proc `+=`*[I, T, S](a: var Vector[I, T]; b: S) {.inline.} = a = a + b

proc `-=`*[I, T, S](a: var Vector[I, T]; b: Vector[I, S]) {.inline.} = a = a - b
proc `-=`*[I, T, S](a: var Vector[I, T]; b: S) {.inline.} = a = a - b

proc `*=`*[I, T, S](a: var Vector[I, T]; b: Vector[I, S]) {.inline.} = a = a * b
proc `*=`*[I, T, S](a: var Vector[I, T]; b: S) {.inline.} = a = a * b

proc `/=`*[I, T, S](a: var Vector[I, T]; b: Vector[I, S]) {.inline.} = a = a / b
proc `/=`*[I, T, S](a: var Vector[I, T]; b: S) {.inline.} = a = a / b

when isMainModule:
  let a = [1f, 0]
  echo a * a

  echo [0, 10, 20].clamp(5, 15)
  echo [0, 10, 20].clamp([5, 5, 5], [15, 15, 15])

  echo [0f, 0, 0].isFinite

  proc tmp(): auto = echo "SideEffect!"; [0f, 1, 2]
  echo isFinite.all tmp()
