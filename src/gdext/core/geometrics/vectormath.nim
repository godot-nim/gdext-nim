import gdext/buildconf
import ./typedef
import ./fmaps
import ./math
import ./interpolations

{.push, inline.}

# Vector commons
# ==============

# Constants
# ---------

template Zero*[N: static int; T: SomeNumber](_:typedesc[Vector[N,T]]): Vector[N,T] = <$>Vector[N,T]: 0
template One*[N: static int; T: SomeNumber](_:typedesc[Vector[N,T]]): Vector[N,T] = <$>Vector[N,T]: 1
template Inf*[N: static int; T: SomeFloat](_:typedesc[Vector[N,T]]): Vector[N,T] = <$>Vector[N,T]: Inf

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
func `<` *[N: static int; T: SomeNumber](left,right: Vector[N,T]): bool = all (left, right): a <  b
func `<=`*[N: static int; T: SomeNumber](left,right: Vector[N,T]): bool = all (left, right): a <= b

proc isEqualApprox*[N: static int; T: SomeFloat](left,right: Vector[N,T]): bool = all (left, right): isEqualApprox(a,b)
proc isZeroApprox*[N: static int; T: SomeFloat](self: Vector[N,T]): bool = all self: isZeroApprox(a)

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

func isFinite*[N: static int; T: SomeFloat](self: Vector[N,T]): bool = all self: a.isFinite
func clamp*[N: static int; T: SomeNumber](self, min, max: Vector[N,T]): Vector[N,T] = <$>(self, min, max): a.clamp(b, c)
func clamp*[N: static int; T: SomeNumber](self: Vector[N,T]; min, max: T): Vector[N,T] = <$>self: a.clamp(min, max)
func clamp01*[N: static int; T: SomeNumber](self: Vector[N,T]): Vector[N,T] = <$>self: clamp01 a
func sign*[N: static int; T: SomeNumber](self: Vector[N,T]): Vector[N,int] = fmap(self): sign a

# unary
template `+`*[N: static int; T: SomeNumber](left: Vector[N,T]): Vector[N,T] = left
func `-`*[N: static int; T: SomeNumber](left: Vector[N,T]): Vector[N,T] = <$>left: -a

when Extension.decimalPrecision == "float":
  func `+`(left: float32; right: float64): float32 = float32 system.`+`(left,right)
  func `-`(left: float32; right: float64): float32 = float32 system.`-`(left,right)
  func `*`(left: float32; right: float64): float32 = float32 system.`*`(left,right)
  func `/`(left: float32; right: float64): float32 = float32 system.`/`(left,right)

  func `+`(left: float64; right: float32): float32 = float32 system.`+`(left,right)
  func `-`(left: float64; right: float32): float32 = float32 system.`-`(left,right)
  func `*`(left: float64; right: float32): float32 = float32 system.`*`(left,right)
  func `/`(left: float64; right: float32): float32 = float32 system.`/`(left,right)

# basic
func `+`*[N: static int; T,S: SomeNumber](left: Vector[N,T]; right: Vector[N,S]): auto = <$>(left, right): a + b
func `-`*[N: static int; T,S: SomeNumber](left: Vector[N,T]; right: Vector[N,S]): auto = <$>(left, right): a - b
func `*`*[N: static int; T,S: SomeNumber](left: Vector[N,T]; right: Vector[N,S]): auto = <$>(left, right): a * b
func `/`*[N: static int; T,S: SomeNumber](left: Vector[N,T]; right: Vector[N,S]): auto = <$>(left, right): a / b

func `div`*[N: static int; T,S: SomeInteger](left: Vector[N,T]; right: Vector[N,S]): auto = <$>(left, right): a div b
func `mod`*[N: static int; T,S: SomeInteger](left: Vector[N,T]; right: Vector[N,S]): auto = <$>(left, right): a mod b

# with other norms
proc `+`*[N: static int; T,S: SomeNumber](left: Vector[N,T]; right: S): auto = <$>left: a + right
proc `+`*[N: static int; T,S: SomeNumber](left: T; right: Vector[N,S]): auto = <$>right: left + a

proc `-`*[N: static int; T,S: SomeNumber](left: Vector[N,T]; right: S): auto = <$>left: a - right
proc `-`*[N: static int; T,S: SomeNumber](left: T; right: Vector[N,S]): auto = <$>right: left - a

proc `*`*[N: static int; T,S: SomeNumber](left: Vector[N,T]; right: S): auto = <$>left: a * right
proc `*`*[N: static int; T,S: SomeNumber](left: T; right: Vector[N,S]): auto = <$>right: left * a

proc `/`*[N: static int; T,S: SomeNumber](left: Vector[N,T]; right: S): auto = <$>left: a / right
proc `/`*[N: static int; T,S: SomeNumber](left: T; right: Vector[N,S]): auto = <$>right: left / a

func `div`*[N: static int; T,S: SomeInteger](left: Vector[N,T]; right: S): auto = <$>left: a div right
func `div`*[N: static int; T,S: SomeInteger](left: T; right: Vector[N,S]): auto = <$>right: left div a

func `mod`*[N: static int; T,S: SomeInteger](left: Vector[N,T]; right: S): auto = <$>left: a mod right
func `mod`*[N: static int; T,S: SomeInteger](left: T; right: Vector[N,S]): auto = <$>right: left mod b

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
func abs  *[N: static int; T: SomeNumber](self: Vector[N,T]): Vector[N,T] = <$>self: abs a
func ceil *[N: static int; T: SomeFloat](self: Vector[N,T]): Vector[N,T] = <$>self: ceil a
func floor*[N: static int; T: SomeFloat](self: Vector[N,T]): Vector[N,T] = <$>self: floor a
func round*[N: static int; T: SomeFloat](self: Vector[N,T]): Vector[N,T] = <$>self: round a

func posmod*[N: static int; T: SomeFloat](x,y: Vector[N,T]): Vector[N,T] = <$>(x,y): posmod(a,b)
func posmod*[N: static int; T: SomeFloat](x: Vector[N,T]; y: T): Vector[N,T] = <$>(x): posmod(a,y)

# geometorics
func distanceTo *[N: static int; T: SomeFloat](self, to: Vector[N,T]): T = (to - self).length
func distanceSquaredTo *[N: static int; T: SomeFloat](self, to: Vector[N,T]): T = (to - self).lengthSquared
func directionTo*[N: static int; T: SomeFloat](self, to: Vector[N,T]): Vector[N,T] = (to - self).normalized

func slide*[N: static int; T: SomeFloat](self: Vector[N,T]; normal: NVector[N,T]): Vector[N,T] =
  self - normal * dot(self, normal)

func snapped*[N: static int; T: SomeNumber](self, step: Vector[N,T]): Vector[N,T] = <$>(self,step): a.snapped(b)
func snapped*[N: static int; T: SomeNumber](self: Vector[N,T]; step: T): Vector[N,T] = <$>self: a.snapped(step)

# interpolations
proc lerp*[N: static int; T: SomeFloat](x,y: Vector[N,T]; ratio: T): Vector[N,T] = <$>(x,y): lerp(a,b, ratio)
proc moveToward*[N: static int; T: SomeFloat](`from`,to: Vector[N,T]; delta: T): Vector[N,T] =
  let dist = to - `from`
  let len = dist.length
  if len <= delta or len < CMP_EPSILON: return to
  `from` + (dist/len) * delta

when isMainModule:
  let a = [1f, 0]
  echo a * a
