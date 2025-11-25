## Array
## =====
##
## A standard collection of Variants provided by Godot that holds values of any type whose conversion to Variant is supported.
##
## PackedArray
## ===========
##
## A primitive dynamic array provided by Godot.

import gdext/private/gdinterface
import gdext/private/staticevents
import gdext/private/typeshift
import gdext/private/macros
import gdext/private/propertyinfo
import gdext/private/nilchecks
import gdext/builtinindex
import gdext/stringtools

import std/[sequtils, importutils, hashes]

proc setTyped(self: var Array; typ: VariantType; className: StringName; script: Variant) =
  interfaceArraySetTyped(addr self, typ, addr className, addr script)

template `^^*`(len, i: untyped): untyped =
  (when i is BackwardsIndex: len - int(i) else: int(i))

proc newPackedByteArray*(): PackedByteArray = (discard)
proc newPackedColorArray*(): PackedColorArray = (discard)
proc newPackedStringArray*(): PackedStringArray = (discard)
proc newPackedInt32Array*(): PackedInt32Array = (discard)
proc newPackedInt64Array*(): PackedInt64Array = (discard)
proc newPackedFloat32Array*(): PackedFloat32Array = (discard)
proc newPackedFloat64Array*(): PackedFloat64Array = (discard)
proc newPackedVector2Array*(): PackedVector2Array = (discard)
proc newPackedVector3Array*(): PackedVector3Array = (discard)
proc newPackedVector4Array*(): PackedVector4Array = (discard)

include gdext/gen/gdarrayconstr
include gdext/gen/gdpackedbytearrayconstr
include gdext/gen/gdpackedcolorarrayconstr
include gdext/gen/gdpackedstringarrayconstr
include gdext/gen/gdpackedint32arrayconstr
include gdext/gen/gdpackedint64arrayconstr
include gdext/gen/gdpackedfloat32arrayconstr
include gdext/gen/gdpackedfloat64arrayconstr
include gdext/gen/gdpackedvector2arrayconstr
include gdext/gen/gdpackedvector3arrayconstr
include gdext/gen/gdpackedvector4arrayconstr

include gdext/gen/gdarray
include gdext/gen/gdpackedbytearray
include gdext/gen/gdpackedcolorarray
include gdext/gen/gdpackedstringarray
include gdext/gen/gdpackedint32array
include gdext/gen/gdpackedint64array
include gdext/gen/gdpackedfloat32array
include gdext/gen/gdpackedfloat64array
include gdext/gen/gdpackedvector2array
include gdext/gen/gdpackedvector3array
include gdext/gen/gdpackedvector4array

proc wild[T](self: Array[T]): Array[Variant] =
  when T is Variant:
    return self
  else:
    return cast[ptr Array[Variant]](addr self)[]

proc wild[T](self: var Array[T]): var Array[Variant] =
  when T is Variant:
    return self
  else:
    return cast[ptr Array[Variant]](addr self)[]

proc specified[T](self: Array[Variant]; Type: typedesc[T]): Array[T] =
  when T is Variant:
    return self
  else:
    return cast[ptr Array[T]](addr self)[]

proc specified[T](self: var Array[Variant]; Type: typedesc[T]): var Array[T] =
  when T is Variant:
    return self
  else:
    return cast[ptr Array[T]](addr self)[]

template checkBounds[T](self: Array[T]; index: int) =
  let size = self.wild.size
  if size == 0:
    raise newException(IndexDefect, "index out of bounds, the container is empty")
  if size <= index:
    raise newException(IndexDefect, "index " & $index & " not in 0 .. " & $size.pred)
template checkBounds(self: PackedArray; index: int) =
  let size = self.size
  if size == 0:
    raise newException(IndexDefect, "index out of bounds, the container is empty")
  if size <= index:
    raise newException(IndexDefect, "index " & $index & " not in 0 .. " & $size.pred)

proc `[]`*[T](self: Array[T]; index: int): T =
  nilCheck self
  checkBounds self, index
  cast[ptr Variant](interface_Array_operatorIndexConst(addr self, index))[].get(T)

proc `[]`*[T: SomeBuiltins or Variant](self: var Array[T]; index: int): var T =
  nilCheck self
  checkBounds self, index
  when T is Variant:
    cast[ptr Variant](interface_Array_operatorIndex(addr self, index))[]
  else:
    cast[ptr Variant](interface_Array_operatorIndex(addr self, index))[].getAddr(T)[]

proc `[]=`*[T](self: var Array[T]; index: int; value: sink T) =
  nilCheck self
  checkBounds self, index
  when T is Variant:
    cast[ptr Variant](interface_Array_operatorIndex(addr self, index))[] = value
  else:
    cast[ptr Variant](interface_Array_operatorIndex(addr self, index))[] = variant value

proc newArray*[T](): Array[T] =
  Array_constr[0](addr result, nil)
  when T isnot Variant:
    result.setTyped(T.variantType, T.className, Variant())

proc newArray*[T](`from`: Array[T]): Array[T] =
  let argArr = [getPtr `from`]
  Array_constr[1](addr result, addr argArr[0])

proc newArray*[T](arr: Array[Variant]): Array[T] =
  newArray(arr, Int T.variantType, T.className, Variant()).specified(T)

proc newArray*[T](len: int): Array[T] =
  result = newArray[T]()
  discard result.wild.resize(Int len)

proc newArray*[T](s: openArray[T]): Array[T] =
  result = newArray[T](s.len)
  for i in 0..<s.len:
    result[i] = s[i]

func `==`*[T, S](a: Array[T]; b: Array[S]): bool = a.wild == b.wild
func `<`*[T, S](a: Array[T]; b: Array[S]): bool = a.wild < b.wild
func `<=`*[T, S](a: Array[T]; b: Array[S]): bool = a.wild <= b.wild
func `+`*[T](a: Array[T]; b: Array[T]): Array[T] = a.wild + b.wild

proc `[]`*[T](self: PackedArray[T]; index: int): T =
  checkBounds self, index
  self.data_unsafe[index]
proc `[]`*[T](self: var PackedArray[T]; index: int): var T =
  checkBounds self, index
  self.data_unsafe[index]
proc `[]=`*[T](self: var PackedArray[T]; index: int; value: sink T) =
  checkBounds self, index
  self.data_unsafe[index] = value

# Array
# =====

iterator items*[T](arr: Array[T]): T =
  for i in 0..<arr.wild.size: yield arr[i]
iterator pairs*[T](arr: Array[T]): (int, T) =
  for i in 0..<arr.wild.size: yield (int i, arr[i])

iterator mitems*[T: SomeBuiltins or Variant](arr: var Array[T]): var T =
  for i in 0..<arr.wild.size: yield arr[i]
iterator mpairs*[T: SomeBuiltins or Variant](arr: var Array[T]): (int, var T) =
  for i in 0..<arr.wild.size: yield (int i, arr[i])

template toOpenArray*(arr: Array): openArray[Variant] =
  cast[UncheckedArray[Variant]](addr arr[0]).toOpenArray(0, arr.size-1)

proc size*[T](self: Array[T]): Int =
  nilCheck self
  self.wild.size()
proc isEmpty*[T](self: Array[T]): bool =
  nilCheck self
  self.wild.isEmpty()
proc clear*[T](self: var Array[T]): void =
  nilCheck self
  self.wild.clear()
proc hash*[T](self: Array[T]): Hash =
  nilCheck self
  self.wild.hash()
proc assign*[T,S](self: var Array[T]; other: Array[S]): void =
  nilCheck self
  nilCheck other
  self.wild.assign(other.wild)
proc assign*[T: not Variant; S: not T](self: var Array[T]; other: Array[S]): void {.error.}
proc get*[T](self: Array[T]; index: Int): T =
  nilCheck self
  self.wild.get(index).get(T)
proc set*[T](self: var Array[T]; index: Int; value: T): void =
  nilCheck self
  self.wild.set(index, variant value)
proc pushBack*[T](self: var Array[T]; value: T): void =
  nilCheck self
  self.wild.pushBack(variant value)
proc pushFront*[T](self: var Array[T]; value: T): void =
  nilCheck self
  self.wild.pushFront(variant value)
proc append*[T](self: var Array[T]; value: T): void =
  nilCheck self
  self.wild.append(variant value)
proc appendArray*[T, S](self: var Array[T]; array: Array[S]): void =
  nilCheck self
  nilCheck array
  self.wild.appendArray(array.wild)
proc appendArray*[T: not Variant; S: not T](self: var Array[T]; array: Array[S]): void {.error.}
proc resize*[T](self: var Array[T]; size: Int): Int =
  nilCheck self
  self.wild.resize(size)
proc insert*[T](self: var Array[T]; position: Int; value: T): Int =
  nilCheck self
  self.wild.insert(position, variant value)
proc removeAt*[T](self: var Array[T]; position: Int): void =
  nilCheck self
  self.wild.removeAt(position)
proc fill*[T](self: var Array[T]; value: T): void =
  nilCheck self
  self.wild.fill(variant value)
proc erase*[T; S: SomeProperty](self: var Array[T]; value: S): void =
  nilCheck self
  self.wild.erase(variant value)
proc front*[T](self: Array[T]): T =
  nilCheck self
  self.wild.front().get(T)
proc back*[T](self: Array[T]): T =
  nilCheck self
  self.wild.back().get(T)
proc pickRandom*[T](self: Array[T]): T =
  nilCheck self
  self.wild.pickRandom().get(T)
proc find*[T; S: SomeProperty](self: Array[T]; what: S; `from`: Int = 0): Int =
  nilCheck self
  self.wild.find(variant what, `from`)
proc findCustom*[T](self: Array[T]; `method`: Callable; `from`: Int = 0): Int =
  nilCheck self
  self.wild.findCustom(`method`, `from`)
proc rfind*[T; S: SomeProperty](self: Array[T]; what: S; `from`: Int = -1): Int =
  nilCheck self
  self.wild.rfind(variant what, `from`)
proc rfindCustom*[T](self: Array[T]; `method`: Callable; `from`: Int = -1): Int =
  nilCheck self
  self.wild.rfindCustom(`method`, `from`)
proc count*[T; S: SomeProperty](self: Array[T]; value: S): Int =
  nilCheck self
  self.wild.count(variant value)
proc has*[T; S: SomeProperty](self: Array[T]; value: S): bool =
  nilCheck self
  self.wild.has(variant value)
proc popBack*[T](self: var Array[T]): T =
  nilCheck self
  self.wild.popBack().get(T)
proc popFront*[T](self: var Array[T]): T =
  nilCheck self
  self.wild.popFront().get(T)
proc popAt*[T](self: var Array[T]; position: Int): T =
  nilCheck self
  self.wild.popAt(position).get(T)
proc sort*[T](self: var Array[T]): void =
  nilCheck self
  self.wild.sort()
proc sortCustom*[T](self: var Array[T]; `func`: Callable): void =
  nilCheck self
  self.wild.sortCustom(`func`)
proc shuffle*[T](self: var Array[T]): void =
  nilCheck self
  self.wild.shuffle()
proc bsearch*[T; S: SomeProperty](self: Array[T]; value: S; before: bool = true): Int =
  nilCheck self
  self.wild.bsearch(variant value, before)
proc bsearchCustom*[T; S: SomeProperty](self: Array[T]; value: S; `func`: Callable; before: bool = true): Int =
  nilCheck self
  self.wild.bsearchCustom(variant value, `func`, before)
proc reverse*[T](self: var Array[T]): void =
  nilCheck self
  self.wild.reverse()
proc duplicate*[T](self: Array[T]; deep: bool = false): Array[T] =
  nilCheck self
  self.wild.duplicate().specified(T)
proc duplicateDeep*[T](self: Array[T]; deepSubresourcesMode: Int = 1): Array[T] =
  nilCheck self
  self.wild.duplicateDeep(deepSubresourcesMode).specified(T)
proc slice*[T](self: Array[T]; begin: Int; `end`: Int = 2147483647; step: Int = 1; deep: bool = false): Array[T] =
  nilCheck self
  self.wild.slice(begin, `end`, step, deep).specified(T)
proc filter*[T](self: Array[T]; `method`: Callable): Array[T] =
  nilCheck self
  self.wild.filter(`method`).specified(T)
proc map*[T](self: Array[T]; `method`: Callable): Array[T] =
  nilCheck self
  self.wild.map(`method`).specified(T)
proc reduce*[T](self: Array[T]; `method`: Callable; accum: T = default(Variant)): T =
  nilCheck self
  self.wild.reduce(`method`, variant accum).get(T)
proc any*[T](self: Array[T]; `method`: Callable): bool =
  nilCheck self
  self.wild.any(`method`)
proc all*[T](self: Array[T]; `method`: Callable): bool =
  nilCheck self
  self.wild.all(`method`)
proc max*[T](self: Array[T]): T =
  nilCheck self
  self.wild.max().get(T)
proc min*[T](self: Array[T]): T =
  nilCheck self
  self.wild.min().get(T)
proc isTyped*[T](self: Array[T]): bool =
  nilCheck self
  self.wild.isTyped()
proc isSameTyped*[T,S](self: Array[T]; array: Array[S]): bool =
  nilCheck self
  nilCheck array
  self.wild.isSameTyped(array.wild)
proc getTypedBuiltin*[T](self: Array[T]): Int =
  nilCheck self
  self.wild.getTypedBuiltin()
proc getTypedClassName*[T](self: Array[T]): StringName =
  nilCheck self
  self.wild.getTypedClassName()
proc getTypedScript*[T](self: Array[T]): Variant =
  nilCheck self
  self.wild.getTypedScript()
proc makeReadOnly*[T](self: var Array[T]): void =
  nilCheck self
  self.wild.makeReadOnly()
proc isReadOnly*[T](self: Array[T]): bool =
  nilCheck self
  self.wild.isReadOnly()

# PackedArray
# ===========

proc newPackedByteArray*(size: int): PackedByteArray =
  discard result.resize(size)
proc newPackedColorArray*(size: int): PackedColorArray =
  discard result.resize(size)
proc newPackedStringArray*(size: int): PackedStringArray =
  discard result.resize(size)
proc newPackedInt32Array*(size: int): PackedInt32Array =
  discard result.resize(size)
proc newPackedInt64Array*(size: int): PackedInt64Array =
  discard result.resize(size)
proc newPackedFloat32Array*(size: int): PackedFloat32Array =
  discard result.resize(size)
proc newPackedFloat64Array*(size: int): PackedFloat64Array =
  discard result.resize(size)
proc newPackedVector2Array*(size: int): PackedVector2Array =
  discard result.resize(size)
proc newPackedVector3Array*(size: int): PackedVector3Array =
  discard result.resize(size)
proc newPackedVector4Array*(size: int): PackedVector4Array =
  discard result.resize(size)

proc newPackedArray*(s: openArray[byte]): PackedByteArray =
  result = newPackedByteArray(s.len)
  copyMem(addr result[0], addr s[0], sizeof(byte) * s.len)
proc newPackedArray*(s: openArray[Color]): PackedColorArray =
  result = newPackedColorArray(s.len)
  copyMem(addr result[0], addr s[0], sizeof(Color) * s.len)
proc newPackedArray*(s: openArray[String]): PackedStringArray =
  # Needs to call =copy since String do reference-counting.
  result = newPackedStringArray(s.len)
  for i in 0..<s.len:
    result[i] = s[i]
proc newPackedArray*(s: openArray[int32]): PackedInt32Array =
  result = newPackedInt32Array(s.len)
  copyMem(addr result[0], addr s[0], sizeof(int32) * s.len)
proc newPackedArray*(s: openArray[int64]): PackedInt64Array =
  result = newPackedInt64Array(s.len)
  copyMem(addr result[0], addr s[0], sizeof(int64) * s.len)
proc newPackedArray*(s: openArray[float32]): PackedFloat32Array =
  result = newPackedFloat32Array(s.len)
  copyMem(addr result[0], addr s[0], sizeof(float32) * s.len)
proc newPackedArray*(s: openArray[float64]): PackedFloat64Array =
  result = newPackedFloat64Array(s.len)
  copyMem(addr result[0], addr s[0], sizeof(float64) * s.len)
proc newPackedArray*(s: openArray[Vector2]): PackedVector2Array =
  result = newPackedVector2Array(s.len)
  copyMem(addr result[0], addr s[0], sizeof(Vector2) * s.len)
proc newPackedArray*(s: openArray[Vector3]): PackedVector3Array =
  result = newPackedVector3Array(s.len)
  copyMem(addr result[0], addr s[0], sizeof(Vector3) * s.len)
proc newPackedArray*(s: openArray[Vector4]): PackedVector4Array =
  result = newPackedVector4Array(s.len)
  copyMem(addr result[0], addr s[0], sizeof(Vector4) * s.len)

{.push, inline.}
proc newPackedByteArray*(s: openArray[byte]): PackedByteArray = newPackedArray(s)
proc newPackedColorArray*(s: openArray[Color]): PackedColorArray = newPackedArray(s)
proc newPackedStringArray*(s: openArray[String]): PackedStringArray = newPackedArray(s)
proc newPackedInt32Array*(s: openArray[int32]): PackedInt32Array = newPackedArray(s)
proc newPackedInt64Array*(s: openArray[int64]): PackedInt64Array = newPackedArray(s)
proc newPackedFloat32Array*(s: openArray[float32]): PackedFloat32Array = newPackedArray(s)
proc newPackedFloat64Array*(s: openArray[float64]): PackedFloat64Array = newPackedArray(s)
proc newPackedVector2Array*(s: openArray[Vector2]): PackedVector2Array = newPackedArray(s)
proc newPackedVector3Array*(s: openArray[Vector3]): PackedVector3Array = newPackedArray(s)
proc newPackedVector4Array*(s: openArray[Vector4]): PackedVector4Array = newPackedArray(s)
{.pop.}

iterator items*[T](arr: PackedArray[T]): T =
  for i in 0..<arr.size: yield arr[i]
iterator pairs*[T](arr: PackedArray[T]): (int, T) =
  for i in 0..<arr.size: yield (int i, arr[i])

iterator mitems*[T](arr: var PackedArray[T]): var T =
  for i in 0..<arr.size: yield arr[i]
iterator mpairs*[T](arr: var PackedArray[T]): (int, var T) =
  for i in 0..<arr.size: yield (int i, arr[i])

template toOpenArray*[T](arr: PackedArray[T]): openArray[T] =
  arr.dataUnsafe.toOpenArray(0, arr.size.int-1)
proc `@`*[T](arr: PackedArray[T]): seq[T] =
  @(arr.toOpenArray)

# seq integrations
# ================

# Aliases
# -------

{.push, inline.}

# `&`
func `&`*[T](x, y: Array[T]): Array[T] = x + y
func `&`*[T](x, y: PackedArray[T]) = x + y

# []
proc `[]`*[T](arr: Array[T]; index: BackwardsIndex): T =
  arr[arr.size - int(index)]
proc `[]`*[T](arr: PackedArray[T]; index: BackwardsIndex): T =
  arr[arr.size - int(index)]

# var []
proc `[]`*[T: SomeBuiltins or Variant](arr: var Array[T]; index: BackwardsIndex): var T =
  arr[arr.size - int(index)]
proc `[]`*[T](arr: var PackedArray[T]; index: BackwardsIndex): var T =
  arr[arr.size - int(index)]

# [] slice
proc `[]`*[T; U, V: Ordinal](arr: Array[T], x: HSlice[U, V]): Array[T] =
  when U is BackwardsIndex or V is BackwardsIndex:
    let size = arr.size
  arr.slice((size ^^* x.a), succ(size ^^* x.b))
proc `[]`*[T; U, V: Ordinal](arr: PackedArray[T], x: HSlice[U, V]): PackedArray[T] =
  when U is BackwardsIndex or V is BackwardsIndex:
    let size = arr.size
  arr.slice((size ^^* x.a), succ(size ^^* x.b))

# []=
proc `[]=`*[T](arr: var Array[T]; index: BackwardsIndex; value: T) =
  arr[arr.size - int(index)] = value
proc `[]=`*[T](arr: var PackedArray[T]; index: BackwardsIndex; value: T) =
  arr[arr.size - int(index)] = value

# contains
proc contains*[T](arr: Array[T]; value: T): bool =
  arr.has(value)
proc contains*[T](arr: PackedArray[T]; item: T): bool =
  arr.toOpenArray.contains item

# setLen
proc setLen*(arr: var Array; newlen: int) =
  discard arr.wild.resize(newlen)
proc setLen*(arr: var PackedArray; newlen: int) =
  discard arr.resize(newlen)

# len
proc len*(arr: Array): int = int arr.wild.size
proc len*(arr: PackedArray): int = int arr.size

# high
proc high*(arr: Array): int = int arr.wild.size.pred
proc high*(arr: PackedArray): int = int arr.size.pred

# low
proc low*(arr: Array): int = 0
proc low*(arr: PackedArray): int = 0

# add
proc add*[T](self: var Array[T]; value: T) =
  append(self, value)
proc add*[T](self: var Array[T]; array: Array[T]) =
  appendArray(self, array)

proc add*[T](self: var PackedArray[T]; value: T) =
  discard append(self, value)
  
proc add*[T](self: var PackedArray[T]; array: PackedArray[T]) =
  appendArray(self, array)

# delete
proc delete*(self: var Array; index: int) =
  self.removeAt(index)
proc delete*[T](self: var PackedArray[T]; index: int) =
  self.removeAt(index)

# pop
proc pop*[T](self: var Array[T]): T = self.popBack
proc pop*[T](self: var PackedArray[T]): T = self.popBack

# grow
# TODO: Port grow

# shrink
# TODO: Port shrink


{.pop.}

# Ports
# -----

proc newArray[T](s: var Array[T]; size: int) =
  clear s
  discard s.resize(size)

proc newPackedArray(s: var PackedArray; size: int) =
  clear s
  discard s.resize(size)


proc `&`*[T](x: Array[T]; y: T): Array[T] =
  let size = x.size
  newArray[T](result, size + 1)
  for i in 0..<size:
    result[i] = x[i]
  result[size] = y
proc `&`*[T](x: T; y: Array[T]): Array[T] =
  let size = y.size
  newArray[T](result, size + 1)
  result[0] = x
  for i in 0..<size:
    result[1+i] = y[i]

proc `&`*[T](x: PackedArray; y: T): PackedArray[T] =
  let size = x.size
  newPackedArray(result, size + 1)
  for i in 0..<size:
    result[i] = x[i]
  result[size] = y
proc `&`*[T](x: T; y: PackedArray): PackedArray[T] =
  let size = y.size
  newPackedArray(result, size + 1)
  result[0] = x
  for i in 0..<size:
    result[1+i] = y[i]

template `^^`(s, i: untyped): untyped =
  (when i is BackwardsIndex: s.len - int(i) else: int(i))
template spliceImpl(s, a, L, b: typed): untyped =
  bind `[]=`
  # make room for additional elements or cut:
  var shift = b.len - max(0,L)  # ignore negative slice size
  var newLen = s.len + shift
  if shift > 0:
    # enlarge:
    setLen(s, newLen)
    for i in countdown(newLen-1, a+b.len): s[i] = s[i-shift]
  else:
    for i in countup(a+b.len, newLen-1): s[i] = s[i-shift]
    # for i in countup(a+b.len, newLen-1): s.set(i, s.get(i-shift))
    # cut down:
    setLen(s, newLen)
  # fill the hole:
  for i in 0 ..< b.len: s[a+i] = b[i]
  # for i in 1 ..< b.len: s.set(a+i, b.get(i))

proc `[]=`*[T; U, V: Ordinal](s: var Array[T]; x: HSlice[U, V]; b: Array[T]) =
  let a = s ^^ x.a
  let L = (s ^^ x.b) - a + 1
  if L == b.len:
    for i in 0 ..< L: s[i+a] = b[i]
  else:
    spliceImpl(s, a, L, b)

proc `[]=`*[T; U, V: Ordinal](s: var PackedArray[T]; x: HSlice[U, V]; b: PackedArray[T]) =
  let a = s ^^ x.a
  let L = (s ^^ x.b) - a + 1
  if L == b.len:
    for i in 0 ..< L: s[i+a] = b[i]
  else:
    spliceImpl(s, a, L, b)

# Backward compatibility
# ======================

template gdArray*(args: varargs[untyped]): untyped {.deprecated: "use newArray instead".} = unpackVarargs(newArray, args)
template packedByteArray*(args: varargs[untyped]): untyped {.deprecated: "use newPackedByteArray instead".} = unpackVarargs(newPackedByteArray, args)
template packedColorArray*(args: varargs[untyped]): untyped {.deprecated: "use newPackedColorArray instead".} = unpackVarargs(newPackedColorArray, args)
template packedStringArray*(args: varargs[untyped]): untyped {.deprecated: "use newPackedStringArray instead".} = unpackVarargs(newPackedStringArray, args)
template packedInt32Array*(args: varargs[untyped]): untyped {.deprecated: "use newPackedInt32Array instead".} = unpackVarargs(newPackedInt32Array, args)
template packedInt64Array*(args: varargs[untyped]): untyped {.deprecated: "use newPackedInt64Array instead".} = unpackVarargs(newPackedInt64Array, args)
template packedFloat32Array*(args: varargs[untyped]): untyped {.deprecated: "use newPackedFloat32Array instead".} = unpackVarargs(newPackedFloat32Array, args)
template packedFloat64Array*(args: varargs[untyped]): untyped {.deprecated: "use newPackedFloat64Array instead".} = unpackVarargs(newPackedFloat64Array, args)
template packedVector2Array*(args: varargs[untyped]): untyped {.deprecated: "use newPackedVector2Array instead".} = unpackVarargs(newPackedVector2Array, args)
template packedVector3Array*(args: varargs[untyped]): untyped {.deprecated: "use newPackedVector3Array instead".} = unpackVarargs(newPackedVector3Array, args)
template packedVector4Array*(args: varargs[untyped]): untyped {.deprecated: "use newPackedVector4Array instead".} = unpackVarargs(newPackedVector4Array, args)

template toSeq*[T](arr: PackedArray[T]): seq[T] {.deprecated: "use `@` instead".} = @arr
