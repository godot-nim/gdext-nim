{.warning[UnusedImport]:off.}

import gdext/coronation/header/utilityfuncs

# `sin(Float)`
# `cos(Float)`
# `tan(Float)`
# `sinh(Float)`
# `cosh(Float)`
# `tanh(Float)`
# `asin(Float)`
# `acos(Float)`
# `atan(Float)`
# `atan2(Float Float)`
var `asinh(Float)`: PtrUtilityFunction
var `acosh(Float)`: PtrUtilityFunction
var `atanh(Float)`: PtrUtilityFunction
# `sqrt(Float)`
# `fmod(Float Float)`
# `fposmod(Float Float)`
# `posmod(Int Int)`
var `floor(Variant)`: PtrUtilityFunction
# `floorf(Float)`
# `floori(Float)`
var `ceil(Variant)`: PtrUtilityFunction
# `ceilf(Float)`
# `ceili(Float)`
var `round(Variant)`: PtrUtilityFunction
# `roundf(Float)`
# `roundi(Float)`
var `abs(Variant)`: PtrUtilityFunction
# `absf(Float)`
# `absi(Int)`
var `sign(Variant)`: PtrUtilityFunction
# `signf(Float)`
# `signi(Int)`
var `snapped(Variant Variant)`: PtrUtilityFunction
# `snappedf(Float Float)`
# `snappedi(Float Int)`
# `pow(Float Float)`
# `log(Float)`
# `exp(Float)`
# `isNan(Float)`
# `isInf(Float)`
# `isEqualApprox(Float Float)`
# `isZeroApprox(Float)`
# `isFinite(Float)`
var `ease(Float Float)`: PtrUtilityFunction
var `stepDecimals(Float)`: PtrUtilityFunction
var `lerp(Variant Variant Variant)`: PtrUtilityFunction
var `lerpf(Float Float Float)`: PtrUtilityFunction
var `cubicInterpolate(Float Float Float Float Float)`: PtrUtilityFunction
var `cubicInterpolateAngle(Float Float Float Float Float)`: PtrUtilityFunction
var `cubicInterpolateInTime(Float Float Float Float Float Float Float Float)`: PtrUtilityFunction
var `cubicInterpolateAngleInTime(Float Float Float Float Float Float Float Float)`: PtrUtilityFunction
var `bezierInterpolate(Float Float Float Float Float)`: PtrUtilityFunction
var `bezierDerivative(Float Float Float Float Float)`: PtrUtilityFunction
var `angleDifference(Float Float)`: PtrUtilityFunction
var `lerpAngle(Float Float Float)`: PtrUtilityFunction
var `inverseLerp(Float Float Float)`: PtrUtilityFunction
var `remap(Float Float Float Float Float)`: PtrUtilityFunction
var `smoothstep(Float Float Float)`: PtrUtilityFunction
var `moveToward(Float Float Float)`: PtrUtilityFunction
var `rotateToward(Float Float Float)`: PtrUtilityFunction
var `degToRad(Float)`: PtrUtilityFunction
var `radToDeg(Float)`: PtrUtilityFunction
var `linearToDb(Float)`: PtrUtilityFunction
var `dbToLinear(Float)`: PtrUtilityFunction
var `wrap(Variant Variant Variant)`: PtrUtilityFunction
# `wrapi(Int Int Int)`
# `wrapf(Float Float Float)`
var `max(Variant Variant Variant)`: PtrUtilityFunction
# `maxi(Int Int)`
# `maxf(Float Float)`
var `min(Variant Variant Variant)`: PtrUtilityFunction
# `mini(Int Int)`
# `minf(Float Float)`
var `clamp(Variant Variant Variant)`: PtrUtilityFunction
# `clampi(Int Int Int)`
# `clampf(Float Float Float)`
var `nearestPo2(Int)`: PtrUtilityFunction
var `pingpong(Float Float)`: PtrUtilityFunction
var `randomize()`: PtrUtilityFunction
var `randi()`: PtrUtilityFunction
var `randf()`: PtrUtilityFunction
var `randiRange(Int Int)`: PtrUtilityFunction
var `randfRange(Float Float)`: PtrUtilityFunction
var `randfn(Float Float)`: PtrUtilityFunction
var `seed(Int)`: PtrUtilityFunction
var `randFromSeed(Int)`: PtrUtilityFunction
var `weakref(Variant)`: PtrUtilityFunction
var `typeof(Variant)`: PtrUtilityFunction
var `typeConvert(Variant Int)`: PtrUtilityFunction
var `str(Variant Variant)`: PtrUtilityFunction
var `errorString(Int)`: PtrUtilityFunction
var `typeString(Int)`: PtrUtilityFunction
var `print(Variant Variant)`: PtrUtilityFunction
var `printRich(Variant Variant)`: PtrUtilityFunction
var `printerr(Variant Variant)`: PtrUtilityFunction
var `printt(Variant Variant)`: PtrUtilityFunction
var `prints(Variant Variant)`: PtrUtilityFunction
var `printraw(Variant Variant)`: PtrUtilityFunction
var `printVerbose(Variant Variant)`: PtrUtilityFunction
var `pushError(Variant Variant)`: PtrUtilityFunction
var `pushWarning(Variant Variant)`: PtrUtilityFunction
var `varToStr(Variant)`: PtrUtilityFunction
var `strToVar(String)`: PtrUtilityFunction
var `varToBytes(Variant)`: PtrUtilityFunction
var `bytesToVar(PackedByteArray)`: PtrUtilityFunction
var `varToBytesWithObjects(Variant)`: PtrUtilityFunction
var `bytesToVarWithObjects(PackedByteArray)`: PtrUtilityFunction
# `hash(Variant)`
var `instanceFromId(Int)`: PtrUtilityFunction
var `isInstanceIdValid(Int)`: PtrUtilityFunction
var `isInstanceValid(Variant)`: PtrUtilityFunction
var `ridAllocateId()`: PtrUtilityFunction
var `ridFromInt64(Int)`: PtrUtilityFunction
var `isSame(Variant Variant)`: PtrUtilityFunction

proc asinh*(x: Float): Float =
  const argslen = cint 1
  let ptrargs = [getPtr x]
  `asinh(Float)`(getPtr result, addr ptrargs[0], argslen)

proc acosh*(x: Float): Float =
  const argslen = cint 1
  let ptrargs = [getPtr x]
  `acosh(Float)`(getPtr result, addr ptrargs[0], argslen)

proc atanh*(x: Float): Float =
  const argslen = cint 1
  let ptrargs = [getPtr x]
  `atanh(Float)`(getPtr result, addr ptrargs[0], argslen)

proc floor*(x: Variant): Variant =
  const argslen = cint 1
  let ptrargs = [getPtr x]
  `floor(Variant)`(getPtr result, addr ptrargs[0], argslen)

proc ceil*(x: Variant): Variant =
  const argslen = cint 1
  let ptrargs = [getPtr x]
  `ceil(Variant)`(getPtr result, addr ptrargs[0], argslen)

proc round*(x: Variant): Variant =
  const argslen = cint 1
  let ptrargs = [getPtr x]
  `round(Variant)`(getPtr result, addr ptrargs[0], argslen)

proc abs*(x: Variant): Variant =
  const argslen = cint 1
  let ptrargs = [getPtr x]
  `abs(Variant)`(getPtr result, addr ptrargs[0], argslen)

proc sign*(x: Variant): Variant =
  const argslen = cint 1
  let ptrargs = [getPtr x]
  `sign(Variant)`(getPtr result, addr ptrargs[0], argslen)

proc snapped*(x: Variant; step: Variant): Variant =
  const argslen = cint 2
  let ptrargs = [getPtr x, getPtr step]
  `snapped(Variant Variant)`(getPtr result, addr ptrargs[0], argslen)

proc ease*(x: Float; curve: Float): Float =
  const argslen = cint 2
  let ptrargs = [getPtr x, getPtr curve]
  `ease(Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc stepDecimals*(x: Float): Int =
  const argslen = cint 1
  let ptrargs = [getPtr x]
  `stepDecimals(Float)`(getPtr result, addr ptrargs[0], argslen)

proc lerp*(`from`: Variant; to: Variant; weight: Variant): Variant =
  const argslen = cint 3
  let ptrargs = [getPtr `from`, getPtr to, getPtr weight]
  `lerp(Variant Variant Variant)`(getPtr result, addr ptrargs[0], argslen)

proc lerpf*(`from`: Float; to: Float; weight: Float): Float =
  const argslen = cint 3
  let ptrargs = [getPtr `from`, getPtr to, getPtr weight]
  `lerpf(Float Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc cubicInterpolate*(`from`: Float; to: Float; pre: Float; post: Float; weight: Float): Float =
  const argslen = cint 5
  let ptrargs = [getPtr `from`, getPtr to, getPtr pre, getPtr post, getPtr weight]
  `cubicInterpolate(Float Float Float Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc cubicInterpolateAngle*(`from`: Float; to: Float; pre: Float; post: Float; weight: Float): Float =
  const argslen = cint 5
  let ptrargs = [getPtr `from`, getPtr to, getPtr pre, getPtr post, getPtr weight]
  `cubicInterpolateAngle(Float Float Float Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc cubicInterpolateInTime*(`from`: Float; to: Float; pre: Float; post: Float; weight: Float; toT: Float; preT: Float; postT: Float): Float =
  const argslen = cint 8
  let ptrargs = [getPtr `from`, getPtr to, getPtr pre, getPtr post, getPtr weight, getPtr toT, getPtr preT, getPtr postT]
  `cubicInterpolateInTime(Float Float Float Float Float Float Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc cubicInterpolateAngleInTime*(`from`: Float; to: Float; pre: Float; post: Float; weight: Float; toT: Float; preT: Float; postT: Float): Float =
  const argslen = cint 8
  let ptrargs = [getPtr `from`, getPtr to, getPtr pre, getPtr post, getPtr weight, getPtr toT, getPtr preT, getPtr postT]
  `cubicInterpolateAngleInTime(Float Float Float Float Float Float Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc bezierInterpolate*(start: Float; control1: Float; control2: Float; `end`: Float; t: Float): Float =
  const argslen = cint 5
  let ptrargs = [getPtr start, getPtr control1, getPtr control2, getPtr `end`, getPtr t]
  `bezierInterpolate(Float Float Float Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc bezierDerivative*(start: Float; control1: Float; control2: Float; `end`: Float; t: Float): Float =
  const argslen = cint 5
  let ptrargs = [getPtr start, getPtr control1, getPtr control2, getPtr `end`, getPtr t]
  `bezierDerivative(Float Float Float Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc angleDifference*(`from`: Float; to: Float): Float =
  const argslen = cint 2
  let ptrargs = [getPtr `from`, getPtr to]
  `angleDifference(Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc lerpAngle*(`from`: Float; to: Float; weight: Float): Float =
  const argslen = cint 3
  let ptrargs = [getPtr `from`, getPtr to, getPtr weight]
  `lerpAngle(Float Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc inverseLerp*(`from`: Float; to: Float; weight: Float): Float =
  const argslen = cint 3
  let ptrargs = [getPtr `from`, getPtr to, getPtr weight]
  `inverseLerp(Float Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc remap*(value: Float; istart: Float; istop: Float; ostart: Float; ostop: Float): Float =
  const argslen = cint 5
  let ptrargs = [getPtr value, getPtr istart, getPtr istop, getPtr ostart, getPtr ostop]
  `remap(Float Float Float Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc smoothstep*(`from`: Float; to: Float; x: Float): Float =
  const argslen = cint 3
  let ptrargs = [getPtr `from`, getPtr to, getPtr x]
  `smoothstep(Float Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc moveToward*(`from`: Float; to: Float; delta: Float): Float =
  const argslen = cint 3
  let ptrargs = [getPtr `from`, getPtr to, getPtr delta]
  `moveToward(Float Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc rotateToward*(`from`: Float; to: Float; delta: Float): Float =
  const argslen = cint 3
  let ptrargs = [getPtr `from`, getPtr to, getPtr delta]
  `rotateToward(Float Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc degToRad*(deg: Float): Float =
  const argslen = cint 1
  let ptrargs = [getPtr deg]
  `degToRad(Float)`(getPtr result, addr ptrargs[0], argslen)

proc radToDeg*(rad: Float): Float =
  const argslen = cint 1
  let ptrargs = [getPtr rad]
  `radToDeg(Float)`(getPtr result, addr ptrargs[0], argslen)

proc linearToDb*(lin: Float): Float =
  const argslen = cint 1
  let ptrargs = [getPtr lin]
  `linearToDb(Float)`(getPtr result, addr ptrargs[0], argslen)

proc dbToLinear*(db: Float): Float =
  const argslen = cint 1
  let ptrargs = [getPtr db]
  `dbToLinear(Float)`(getPtr result, addr ptrargs[0], argslen)

proc wrap*(value: Variant; min: Variant; max: Variant): Variant =
  const argslen = cint 3
  let ptrargs = [getPtr value, getPtr min, getPtr max]
  `wrap(Variant Variant Variant)`(getPtr result, addr ptrargs[0], argslen)

proc max*(arg1: Variant; arg2: Variant; args: varargs[Variant]): Variant =
  let argslen = cint(2 + args.len)
  var ptrargs = newSeqOfCap[pointer](argslen)
  ptrargs.add [getPtr arg1, getPtr arg2]
  for arg in args:
    ptrargs.add getPtr arg
  `max(Variant Variant Variant)`(getPtr result, addr ptrargs[0], argslen)

proc min*(arg1: Variant; arg2: Variant; args: varargs[Variant]): Variant =
  let argslen = cint(2 + args.len)
  var ptrargs = newSeqOfCap[pointer](argslen)
  ptrargs.add [getPtr arg1, getPtr arg2]
  for arg in args:
    ptrargs.add getPtr arg
  `min(Variant Variant Variant)`(getPtr result, addr ptrargs[0], argslen)

proc clamp*(value: Variant; min: Variant; max: Variant): Variant =
  const argslen = cint 3
  let ptrargs = [getPtr value, getPtr min, getPtr max]
  `clamp(Variant Variant Variant)`(getPtr result, addr ptrargs[0], argslen)

proc nearestPo2*(value: Int): Int =
  const argslen = cint 1
  let ptrargs = [getPtr value]
  `nearestPo2(Int)`(getPtr result, addr ptrargs[0], argslen)

proc pingpong*(value: Float; length: Float): Float =
  const argslen = cint 2
  let ptrargs = [getPtr value, getPtr length]
  `pingpong(Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc randomize*(): void =
  const argslen = cint 0
  `randomize()`(nil, nil, argslen)

proc randi*(): Int =
  const argslen = cint 0
  `randi()`(getPtr result, nil, argslen)

proc randf*(): Float =
  const argslen = cint 0
  `randf()`(getPtr result, nil, argslen)

proc randiRange*(`from`: Int; to: Int): Int =
  const argslen = cint 2
  let ptrargs = [getPtr `from`, getPtr to]
  `randiRange(Int Int)`(getPtr result, addr ptrargs[0], argslen)

proc randfRange*(`from`: Float; to: Float): Float =
  const argslen = cint 2
  let ptrargs = [getPtr `from`, getPtr to]
  `randfRange(Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc randfn*(mean: Float; deviation: Float): Float =
  const argslen = cint 2
  let ptrargs = [getPtr mean, getPtr deviation]
  `randfn(Float Float)`(getPtr result, addr ptrargs[0], argslen)

proc seed*(base: Int): void =
  const argslen = cint 1
  let ptrargs = [getPtr base]
  `seed(Int)`(nil, addr ptrargs[0], argslen)

proc randFromSeed*(seed: Int): PackedInt64Array =
  const argslen = cint 1
  let ptrargs = [getPtr seed]
  `randFromSeed(Int)`(getPtr result, addr ptrargs[0], argslen)

proc weakref*(obj: Variant): Variant =
  const argslen = cint 1
  let ptrargs = [getPtr obj]
  `weakref(Variant)`(getPtr result, addr ptrargs[0], argslen)

proc typeof*(variable: Variant): Int =
  const argslen = cint 1
  let ptrargs = [getPtr variable]
  `typeof(Variant)`(getPtr result, addr ptrargs[0], argslen)

proc typeConvert*(variant: Variant; `type`: Int): Variant =
  const argslen = cint 2
  let ptrargs = [getPtr variant, getPtr `type`]
  `typeConvert(Variant Int)`(getPtr result, addr ptrargs[0], argslen)

proc str*(arg1: Variant; args: varargs[Variant]): String =
  let argslen = cint(1 + args.len)
  var ptrargs = newSeqOfCap[pointer](argslen)
  ptrargs.add [getPtr arg1]
  for arg in args:
    ptrargs.add getPtr arg
  `str(Variant Variant)`(getPtr result, addr ptrargs[0], argslen)

proc errorString*(error: Int): String =
  const argslen = cint 1
  let ptrargs = [getPtr error]
  `errorString(Int)`(getPtr result, addr ptrargs[0], argslen)

proc typeString*(`type`: Int): String =
  const argslen = cint 1
  let ptrargs = [getPtr `type`]
  `typeString(Int)`(getPtr result, addr ptrargs[0], argslen)

proc print*(arg1: Variant; args: varargs[Variant]): void =
  let argslen = cint(1 + args.len)
  var ptrargs = newSeqOfCap[pointer](argslen)
  ptrargs.add [getPtr arg1]
  for arg in args:
    ptrargs.add getPtr arg
  `print(Variant Variant)`(nil, addr ptrargs[0], argslen)

proc printRich*(arg1: Variant; args: varargs[Variant]): void =
  let argslen = cint(1 + args.len)
  var ptrargs = newSeqOfCap[pointer](argslen)
  ptrargs.add [getPtr arg1]
  for arg in args:
    ptrargs.add getPtr arg
  `printRich(Variant Variant)`(nil, addr ptrargs[0], argslen)

proc printerr*(arg1: Variant; args: varargs[Variant]): void =
  let argslen = cint(1 + args.len)
  var ptrargs = newSeqOfCap[pointer](argslen)
  ptrargs.add [getPtr arg1]
  for arg in args:
    ptrargs.add getPtr arg
  `printerr(Variant Variant)`(nil, addr ptrargs[0], argslen)

proc printt*(arg1: Variant; args: varargs[Variant]): void =
  let argslen = cint(1 + args.len)
  var ptrargs = newSeqOfCap[pointer](argslen)
  ptrargs.add [getPtr arg1]
  for arg in args:
    ptrargs.add getPtr arg
  `printt(Variant Variant)`(nil, addr ptrargs[0], argslen)

proc prints*(arg1: Variant; args: varargs[Variant]): void =
  let argslen = cint(1 + args.len)
  var ptrargs = newSeqOfCap[pointer](argslen)
  ptrargs.add [getPtr arg1]
  for arg in args:
    ptrargs.add getPtr arg
  `prints(Variant Variant)`(nil, addr ptrargs[0], argslen)

proc printraw*(arg1: Variant; args: varargs[Variant]): void =
  let argslen = cint(1 + args.len)
  var ptrargs = newSeqOfCap[pointer](argslen)
  ptrargs.add [getPtr arg1]
  for arg in args:
    ptrargs.add getPtr arg
  `printraw(Variant Variant)`(nil, addr ptrargs[0], argslen)

proc printVerbose*(arg1: Variant; args: varargs[Variant]): void =
  let argslen = cint(1 + args.len)
  var ptrargs = newSeqOfCap[pointer](argslen)
  ptrargs.add [getPtr arg1]
  for arg in args:
    ptrargs.add getPtr arg
  `printVerbose(Variant Variant)`(nil, addr ptrargs[0], argslen)

proc pushError*(arg1: Variant; args: varargs[Variant]): void =
  let argslen = cint(1 + args.len)
  var ptrargs = newSeqOfCap[pointer](argslen)
  ptrargs.add [getPtr arg1]
  for arg in args:
    ptrargs.add getPtr arg
  `pushError(Variant Variant)`(nil, addr ptrargs[0], argslen)

proc pushWarning*(arg1: Variant; args: varargs[Variant]): void =
  let argslen = cint(1 + args.len)
  var ptrargs = newSeqOfCap[pointer](argslen)
  ptrargs.add [getPtr arg1]
  for arg in args:
    ptrargs.add getPtr arg
  `pushWarning(Variant Variant)`(nil, addr ptrargs[0], argslen)

proc varToStr*(variable: Variant): String =
  const argslen = cint 1
  let ptrargs = [getPtr variable]
  `varToStr(Variant)`(getPtr result, addr ptrargs[0], argslen)

proc strToVar*(string: String): Variant =
  const argslen = cint 1
  let ptrargs = [getPtr string]
  `strToVar(String)`(getPtr result, addr ptrargs[0], argslen)

proc varToBytes*(variable: Variant): PackedByteArray =
  const argslen = cint 1
  let ptrargs = [getPtr variable]
  `varToBytes(Variant)`(getPtr result, addr ptrargs[0], argslen)

proc bytesToVar*(bytes: PackedByteArray): Variant =
  const argslen = cint 1
  let ptrargs = [getPtr bytes]
  `bytesToVar(PackedByteArray)`(getPtr result, addr ptrargs[0], argslen)

proc varToBytesWithObjects*(variable: Variant): PackedByteArray =
  const argslen = cint 1
  let ptrargs = [getPtr variable]
  `varToBytesWithObjects(Variant)`(getPtr result, addr ptrargs[0], argslen)

proc bytesToVarWithObjects*(bytes: PackedByteArray): Variant =
  const argslen = cint 1
  let ptrargs = [getPtr bytes]
  `bytesToVarWithObjects(PackedByteArray)`(getPtr result, addr ptrargs[0], argslen)

proc instanceFromId*(instanceId: Int): Object =
  const argslen = cint 1
  let ptrargs = [getPtr instanceId]
  `instanceFromId(Int)`(getPtr result, addr ptrargs[0], argslen)

proc isInstanceIdValid*(id: Int): bool =
  const argslen = cint 1
  let ptrargs = [getPtr id]
  `isInstanceIdValid(Int)`(getPtr result, addr ptrargs[0], argslen)

proc isInstanceValid*(instance: Variant): bool =
  const argslen = cint 1
  let ptrargs = [getPtr instance]
  `isInstanceValid(Variant)`(getPtr result, addr ptrargs[0], argslen)

proc ridAllocateId*(): Int =
  const argslen = cint 0
  `ridAllocateId()`(getPtr result, nil, argslen)

proc ridFromInt64*(base: Int): RID =
  const argslen = cint 1
  let ptrargs = [getPtr base]
  `ridFromInt64(Int)`(getPtr result, addr ptrargs[0], argslen)

proc isSame*(a: Variant; b: Variant): bool =
  const argslen = cint 2
  let ptrargs = [getPtr a, getPtr b]
  `isSame(Variant Variant)`(getPtr result, addr ptrargs[0], argslen)

proc load* =
  `asinh(Float)` = load("asinh", 2140049587)
  `acosh(Float)` = load("acosh", 2140049587)
  `atanh(Float)` = load("atanh", 2140049587)
  `floor(Variant)` = load("floor", 4776452)
  `ceil(Variant)` = load("ceil", 4776452)
  `round(Variant)` = load("round", 4776452)
  `abs(Variant)` = load("abs", 4776452)
  `sign(Variant)` = load("sign", 4776452)
  `snapped(Variant Variant)` = load("snapped", 459914704)
  `ease(Float Float)` = load("ease", 92296394)
  `stepDecimals(Float)` = load("step_decimals", 2780425386)
  `lerp(Variant Variant Variant)` = load("lerp", 3389874542)
  `lerpf(Float Float Float)` = load("lerpf", 998901048)
  `cubicInterpolate(Float Float Float Float Float)` = load("cubic_interpolate", 1090965791)
  `cubicInterpolateAngle(Float Float Float Float Float)` = load("cubic_interpolate_angle", 1090965791)
  `cubicInterpolateInTime(Float Float Float Float Float Float Float Float)` = load("cubic_interpolate_in_time", 388121036)
  `cubicInterpolateAngleInTime(Float Float Float Float Float Float Float Float)` = load("cubic_interpolate_angle_in_time", 388121036)
  `bezierInterpolate(Float Float Float Float Float)` = load("bezier_interpolate", 1090965791)
  `bezierDerivative(Float Float Float Float Float)` = load("bezier_derivative", 1090965791)
  `angleDifference(Float Float)` = load("angle_difference", 92296394)
  `lerpAngle(Float Float Float)` = load("lerp_angle", 998901048)
  `inverseLerp(Float Float Float)` = load("inverse_lerp", 998901048)
  `remap(Float Float Float Float Float)` = load("remap", 1090965791)
  `smoothstep(Float Float Float)` = load("smoothstep", 998901048)
  `moveToward(Float Float Float)` = load("move_toward", 998901048)
  `rotateToward(Float Float Float)` = load("rotate_toward", 998901048)
  `degToRad(Float)` = load("deg_to_rad", 2140049587)
  `radToDeg(Float)` = load("rad_to_deg", 2140049587)
  `linearToDb(Float)` = load("linear_to_db", 2140049587)
  `dbToLinear(Float)` = load("db_to_linear", 2140049587)
  `wrap(Variant Variant Variant)` = load("wrap", 3389874542)
  `max(Variant Variant Variant)` = load("max", 3896050336)
  `min(Variant Variant Variant)` = load("min", 3896050336)
  `clamp(Variant Variant Variant)` = load("clamp", 3389874542)
  `nearestPo2(Int)` = load("nearest_po2", 2157319888)
  `pingpong(Float Float)` = load("pingpong", 92296394)
  `randomize()` = load("randomize", 1691721052)
  `randi()` = load("randi", 701202648)
  `randf()` = load("randf", 2086227845)
  `randiRange(Int Int)` = load("randi_range", 3133453818)
  `randfRange(Float Float)` = load("randf_range", 92296394)
  `randfn(Float Float)` = load("randfn", 92296394)
  `seed(Int)` = load("seed", 382931173)
  `randFromSeed(Int)` = load("rand_from_seed", 1391063685)
  `weakref(Variant)` = load("weakref", 4776452)
  `typeof(Variant)` = load("typeof", 326422594)
  `typeConvert(Variant Int)` = load("type_convert", 2453062746)
  `str(Variant Variant)` = load("str", 32569176)
  `errorString(Int)` = load("error_string", 942708242)
  `typeString(Int)` = load("type_string", 942708242)
  `print(Variant Variant)` = load("print", 2648703342)
  `printRich(Variant Variant)` = load("print_rich", 2648703342)
  `printerr(Variant Variant)` = load("printerr", 2648703342)
  `printt(Variant Variant)` = load("printt", 2648703342)
  `prints(Variant Variant)` = load("prints", 2648703342)
  `printraw(Variant Variant)` = load("printraw", 2648703342)
  `printVerbose(Variant Variant)` = load("print_verbose", 2648703342)
  `pushError(Variant Variant)` = load("push_error", 2648703342)
  `pushWarning(Variant Variant)` = load("push_warning", 2648703342)
  `varToStr(Variant)` = load("var_to_str", 866625479)
  `strToVar(String)` = load("str_to_var", 1891498491)
  `varToBytes(Variant)` = load("var_to_bytes", 2947269930)
  `bytesToVar(PackedByteArray)` = load("bytes_to_var", 4249819452)
  `varToBytesWithObjects(Variant)` = load("var_to_bytes_with_objects", 2947269930)
  `bytesToVarWithObjects(PackedByteArray)` = load("bytes_to_var_with_objects", 4249819452)
  `instanceFromId(Int)` = load("instance_from_id", 1156694636)
  `isInstanceIdValid(Int)` = load("is_instance_id_valid", 2232439758)
  `isInstanceValid(Variant)` = load("is_instance_valid", 996128841)
  `ridAllocateId()` = load("rid_allocate_id", 701202648)
  `ridFromInt64(Int)` = load("rid_from_int64", 3426892196)
  `isSame(Variant Variant)` = load("is_same", 1409423524)