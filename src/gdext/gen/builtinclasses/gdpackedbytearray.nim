{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

proc `[]`*(self: PackedByteArray; index: int): PackedByteArray.Item = self.data_unsafe[index]
proc `[]`*(self: var PackedByteArray; index: int): var PackedByteArray.Item = self.data_unsafe[index]
proc `[]=`*(self: var PackedByteArray; index: int; value: PackedByteArray.Item) = self.data_unsafe[index] = value

var `==(PackedByteArray Variant)`: PtrOperatorEvaluator
var `!=(PackedByteArray Variant)`: PtrOperatorEvaluator
var `not(PackedByteArray)`: PtrOperatorEvaluator
var `contains(PackedByteArray Dictionary)`: PtrOperatorEvaluator
var `contains(PackedByteArray Array)`: PtrOperatorEvaluator
var `==(PackedByteArray PackedByteArray)`: PtrOperatorEvaluator
var `!=(PackedByteArray PackedByteArray)`: PtrOperatorEvaluator
var `+(PackedByteArray PackedByteArray)`: PtrOperatorEvaluator
proc `==`*(left: PackedByteArray; right: Variant): bool = `==(PackedByteArray Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: PackedByteArray; right: Variant): bool = `!=(PackedByteArray Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: PackedByteArray): bool = `not(PackedByteArray)`(getPtr left, nil, addr result)
proc contains*(left: Dictionary; right: PackedByteArray): bool = `contains(PackedByteArray Dictionary)`(getPtr right, getPtr left, addr result)
proc contains*(left: Array; right: PackedByteArray): bool = `contains(PackedByteArray Array)`(getPtr right, getPtr left, addr result)
proc `==`*(left: PackedByteArray; right: PackedByteArray): bool = `==(PackedByteArray PackedByteArray)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: PackedByteArray; right: PackedByteArray): bool = `!=(PackedByteArray PackedByteArray)`(getPtr left, getPtr right, addr result)
proc `+`*(left: PackedByteArray; right: PackedByteArray): PackedByteArray = `+(PackedByteArray PackedByteArray)`(getPtr left, getPtr right, addr result)
proc load_PackedByteArray_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(PackedByteArray Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_PackedByteArray, VariantType_Nil)
  `!=(PackedByteArray Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_PackedByteArray, VariantType_Nil)
  `not(PackedByteArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_PackedByteArray, VariantType_Nil)
  `contains(PackedByteArray Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_PackedByteArray, VariantType_Dictionary)
  `contains(PackedByteArray Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_PackedByteArray, VariantType_Array)
  `==(PackedByteArray PackedByteArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_PackedByteArray, VariantType_PackedByteArray)
  `!=(PackedByteArray PackedByteArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_PackedByteArray, VariantType_PackedByteArray)
  `+(PackedByteArray PackedByteArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Add, VariantType_PackedByteArray, VariantType_PackedByteArray)

var `size(PackedByteArray)`: PtrBuiltinMethod
var `isEmpty(PackedByteArray)`: PtrBuiltinMethod
var `set(PackedByteArray Int Int)`: PtrBuiltinMethod
var `pushBack(PackedByteArray Int)`: PtrBuiltinMethod
var `append(PackedByteArray Int)`: PtrBuiltinMethod
var `appendArray(PackedByteArray PackedByteArray)`: PtrBuiltinMethod
var `removeAt(PackedByteArray Int)`: PtrBuiltinMethod
var `insert(PackedByteArray Int Int)`: PtrBuiltinMethod
var `fill(PackedByteArray Int)`: PtrBuiltinMethod
var `resize(PackedByteArray Int)`: PtrBuiltinMethod
var `clear(PackedByteArray)`: PtrBuiltinMethod
var `has(PackedByteArray Int)`: PtrBuiltinMethod
var `reverse(PackedByteArray)`: PtrBuiltinMethod
var `slice(PackedByteArray Int Int)`: PtrBuiltinMethod
var `sort(PackedByteArray)`: PtrBuiltinMethod
var `bsearch(PackedByteArray Int bool)`: PtrBuiltinMethod
var `duplicate(PackedByteArray)`: PtrBuiltinMethod
var `find(PackedByteArray Int Int)`: PtrBuiltinMethod
var `rfind(PackedByteArray Int Int)`: PtrBuiltinMethod
var `count(PackedByteArray Int)`: PtrBuiltinMethod
var `getStringFromAscii(PackedByteArray)`: PtrBuiltinMethod
var `getStringFromUtf8(PackedByteArray)`: PtrBuiltinMethod
var `getStringFromUtf16(PackedByteArray)`: PtrBuiltinMethod
var `getStringFromUtf32(PackedByteArray)`: PtrBuiltinMethod
var `getStringFromWchar(PackedByteArray)`: PtrBuiltinMethod
var `hexEncode(PackedByteArray)`: PtrBuiltinMethod
var `compress(PackedByteArray Int)`: PtrBuiltinMethod
var `decompress(PackedByteArray Int Int)`: PtrBuiltinMethod
var `decompressDynamic(PackedByteArray Int Int)`: PtrBuiltinMethod
var `decodeU8(PackedByteArray Int)`: PtrBuiltinMethod
var `decodeS8(PackedByteArray Int)`: PtrBuiltinMethod
var `decodeU16(PackedByteArray Int)`: PtrBuiltinMethod
var `decodeS16(PackedByteArray Int)`: PtrBuiltinMethod
var `decodeU32(PackedByteArray Int)`: PtrBuiltinMethod
var `decodeS32(PackedByteArray Int)`: PtrBuiltinMethod
var `decodeU64(PackedByteArray Int)`: PtrBuiltinMethod
var `decodeS64(PackedByteArray Int)`: PtrBuiltinMethod
var `decodeHalf(PackedByteArray Int)`: PtrBuiltinMethod
var `decodeFloat(PackedByteArray Int)`: PtrBuiltinMethod
var `decodeDouble(PackedByteArray Int)`: PtrBuiltinMethod
var `hasEncodedVar(PackedByteArray Int bool)`: PtrBuiltinMethod
var `decodeVar(PackedByteArray Int bool)`: PtrBuiltinMethod
var `decodeVarSize(PackedByteArray Int bool)`: PtrBuiltinMethod
var `toInt32Array(PackedByteArray)`: PtrBuiltinMethod
var `toInt64Array(PackedByteArray)`: PtrBuiltinMethod
var `toFloat32Array(PackedByteArray)`: PtrBuiltinMethod
var `toFloat64Array(PackedByteArray)`: PtrBuiltinMethod
var `encodeU8(PackedByteArray Int Int)`: PtrBuiltinMethod
var `encodeS8(PackedByteArray Int Int)`: PtrBuiltinMethod
var `encodeU16(PackedByteArray Int Int)`: PtrBuiltinMethod
var `encodeS16(PackedByteArray Int Int)`: PtrBuiltinMethod
var `encodeU32(PackedByteArray Int Int)`: PtrBuiltinMethod
var `encodeS32(PackedByteArray Int Int)`: PtrBuiltinMethod
var `encodeU64(PackedByteArray Int Int)`: PtrBuiltinMethod
var `encodeS64(PackedByteArray Int Int)`: PtrBuiltinMethod
var `encodeHalf(PackedByteArray Int Float)`: PtrBuiltinMethod
var `encodeFloat(PackedByteArray Int Float)`: PtrBuiltinMethod
var `encodeDouble(PackedByteArray Int Float)`: PtrBuiltinMethod
var `encodeVar(PackedByteArray Int Variant bool)`: PtrBuiltinMethod

proc size*(self: PackedByteArray): Int =
  `size(PackedByteArray)`(addr self, nil, addr result, 0)
proc isEmpty*(self: PackedByteArray): bool =
  `isEmpty(PackedByteArray)`(addr self, nil, addr result, 0)
proc set*(self: var PackedByteArray; index: Int; value: Int): void =
  let argArr = [getPtr index, getPtr value]
  `set(PackedByteArray Int Int)`(addr self, addr argArr[0], nil, 2)
proc pushBack*(self: var PackedByteArray; value: Int): bool =
  let argArr = [getPtr value]
  `pushBack(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc append*(self: var PackedByteArray; value: Int): bool =
  let argArr = [getPtr value]
  `append(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc appendArray*(self: var PackedByteArray; array: PackedByteArray): void =
  let argArr = [getPtr array]
  `appendArray(PackedByteArray PackedByteArray)`(addr self, addr argArr[0], nil, 1)
proc removeAt*(self: var PackedByteArray; index: Int): void =
  let argArr = [getPtr index]
  `removeAt(PackedByteArray Int)`(addr self, addr argArr[0], nil, 1)
proc insert*(self: var PackedByteArray; atIndex: Int; value: Int): Int =
  let argArr = [getPtr atIndex, getPtr value]
  `insert(PackedByteArray Int Int)`(addr self, addr argArr[0], addr result, 2)
proc fill*(self: var PackedByteArray; value: Int): void =
  let argArr = [getPtr value]
  `fill(PackedByteArray Int)`(addr self, addr argArr[0], nil, 1)
proc resize*(self: var PackedByteArray; newSize: Int): Int =
  let argArr = [getPtr newSize]
  `resize(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc clear*(self: var PackedByteArray): void =
  `clear(PackedByteArray)`(addr self, nil, nil, 0)
proc has*(self: PackedByteArray; value: Int): bool =
  let argArr = [getPtr value]
  `has(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc reverse*(self: var PackedByteArray): void =
  `reverse(PackedByteArray)`(addr self, nil, nil, 0)
proc slice*(self: PackedByteArray; begin: Int; `end`: Int = 2147483647): PackedByteArray =
  let argArr = [getPtr begin, getPtr `end`]
  `slice(PackedByteArray Int Int)`(addr self, addr argArr[0], addr result, 2)
proc sort*(self: var PackedByteArray): void =
  `sort(PackedByteArray)`(addr self, nil, nil, 0)
proc bsearch*(self: var PackedByteArray; value: Int; before: bool = true): Int =
  let argArr = [getPtr value, getPtr before]
  `bsearch(PackedByteArray Int bool)`(addr self, addr argArr[0], addr result, 2)
proc duplicate*(self: var PackedByteArray): PackedByteArray =
  `duplicate(PackedByteArray)`(addr self, nil, addr result, 0)
proc find*(self: PackedByteArray; value: Int; `from`: Int = 0): Int =
  let argArr = [getPtr value, getPtr `from`]
  `find(PackedByteArray Int Int)`(addr self, addr argArr[0], addr result, 2)
proc rfind*(self: PackedByteArray; value: Int; `from`: Int = -1): Int =
  let argArr = [getPtr value, getPtr `from`]
  `rfind(PackedByteArray Int Int)`(addr self, addr argArr[0], addr result, 2)
proc count*(self: PackedByteArray; value: Int): Int =
  let argArr = [getPtr value]
  `count(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc getStringFromAscii*(self: PackedByteArray): String =
  `getStringFromAscii(PackedByteArray)`(addr self, nil, addr result, 0)
proc getStringFromUtf8*(self: PackedByteArray): String =
  `getStringFromUtf8(PackedByteArray)`(addr self, nil, addr result, 0)
proc getStringFromUtf16*(self: PackedByteArray): String =
  `getStringFromUtf16(PackedByteArray)`(addr self, nil, addr result, 0)
proc getStringFromUtf32*(self: PackedByteArray): String =
  `getStringFromUtf32(PackedByteArray)`(addr self, nil, addr result, 0)
proc getStringFromWchar*(self: PackedByteArray): String =
  `getStringFromWchar(PackedByteArray)`(addr self, nil, addr result, 0)
proc hexEncode*(self: PackedByteArray): String =
  `hexEncode(PackedByteArray)`(addr self, nil, addr result, 0)
proc compress*(self: PackedByteArray; compressionMode: Int = 0): PackedByteArray =
  let argArr = [getPtr compressionMode]
  `compress(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc decompress*(self: PackedByteArray; bufferSize: Int; compressionMode: Int = 0): PackedByteArray =
  let argArr = [getPtr bufferSize, getPtr compressionMode]
  `decompress(PackedByteArray Int Int)`(addr self, addr argArr[0], addr result, 2)
proc decompressDynamic*(self: PackedByteArray; maxOutputSize: Int; compressionMode: Int = 0): PackedByteArray =
  let argArr = [getPtr maxOutputSize, getPtr compressionMode]
  `decompressDynamic(PackedByteArray Int Int)`(addr self, addr argArr[0], addr result, 2)
proc decodeU8*(self: PackedByteArray; byteOffset: Int): Int =
  let argArr = [getPtr byteOffset]
  `decodeU8(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc decodeS8*(self: PackedByteArray; byteOffset: Int): Int =
  let argArr = [getPtr byteOffset]
  `decodeS8(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc decodeU16*(self: PackedByteArray; byteOffset: Int): Int =
  let argArr = [getPtr byteOffset]
  `decodeU16(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc decodeS16*(self: PackedByteArray; byteOffset: Int): Int =
  let argArr = [getPtr byteOffset]
  `decodeS16(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc decodeU32*(self: PackedByteArray; byteOffset: Int): Int =
  let argArr = [getPtr byteOffset]
  `decodeU32(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc decodeS32*(self: PackedByteArray; byteOffset: Int): Int =
  let argArr = [getPtr byteOffset]
  `decodeS32(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc decodeU64*(self: PackedByteArray; byteOffset: Int): Int =
  let argArr = [getPtr byteOffset]
  `decodeU64(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc decodeS64*(self: PackedByteArray; byteOffset: Int): Int =
  let argArr = [getPtr byteOffset]
  `decodeS64(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc decodeHalf*(self: PackedByteArray; byteOffset: Int): Float =
  let argArr = [getPtr byteOffset]
  `decodeHalf(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc decodeFloat*(self: PackedByteArray; byteOffset: Int): Float =
  let argArr = [getPtr byteOffset]
  `decodeFloat(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc decodeDouble*(self: PackedByteArray; byteOffset: Int): Float =
  let argArr = [getPtr byteOffset]
  `decodeDouble(PackedByteArray Int)`(addr self, addr argArr[0], addr result, 1)
proc hasEncodedVar*(self: PackedByteArray; byteOffset: Int; allowObjects: bool = false): bool =
  let argArr = [getPtr byteOffset, getPtr allowObjects]
  `hasEncodedVar(PackedByteArray Int bool)`(addr self, addr argArr[0], addr result, 2)
proc decodeVar*(self: PackedByteArray; byteOffset: Int; allowObjects: bool = false): Variant =
  let argArr = [getPtr byteOffset, getPtr allowObjects]
  `decodeVar(PackedByteArray Int bool)`(addr self, addr argArr[0], addr result, 2)
proc decodeVarSize*(self: PackedByteArray; byteOffset: Int; allowObjects: bool = false): Int =
  let argArr = [getPtr byteOffset, getPtr allowObjects]
  `decodeVarSize(PackedByteArray Int bool)`(addr self, addr argArr[0], addr result, 2)
proc toInt32Array*(self: PackedByteArray): PackedInt32Array =
  `toInt32Array(PackedByteArray)`(addr self, nil, addr result, 0)
proc toInt64Array*(self: PackedByteArray): PackedInt64Array =
  `toInt64Array(PackedByteArray)`(addr self, nil, addr result, 0)
proc toFloat32Array*(self: PackedByteArray): PackedFloat32Array =
  `toFloat32Array(PackedByteArray)`(addr self, nil, addr result, 0)
proc toFloat64Array*(self: PackedByteArray): PackedFloat64Array =
  `toFloat64Array(PackedByteArray)`(addr self, nil, addr result, 0)
proc encodeU8*(self: var PackedByteArray; byteOffset: Int; value: Int): void =
  let argArr = [getPtr byteOffset, getPtr value]
  `encodeU8(PackedByteArray Int Int)`(addr self, addr argArr[0], nil, 2)
proc encodeS8*(self: var PackedByteArray; byteOffset: Int; value: Int): void =
  let argArr = [getPtr byteOffset, getPtr value]
  `encodeS8(PackedByteArray Int Int)`(addr self, addr argArr[0], nil, 2)
proc encodeU16*(self: var PackedByteArray; byteOffset: Int; value: Int): void =
  let argArr = [getPtr byteOffset, getPtr value]
  `encodeU16(PackedByteArray Int Int)`(addr self, addr argArr[0], nil, 2)
proc encodeS16*(self: var PackedByteArray; byteOffset: Int; value: Int): void =
  let argArr = [getPtr byteOffset, getPtr value]
  `encodeS16(PackedByteArray Int Int)`(addr self, addr argArr[0], nil, 2)
proc encodeU32*(self: var PackedByteArray; byteOffset: Int; value: Int): void =
  let argArr = [getPtr byteOffset, getPtr value]
  `encodeU32(PackedByteArray Int Int)`(addr self, addr argArr[0], nil, 2)
proc encodeS32*(self: var PackedByteArray; byteOffset: Int; value: Int): void =
  let argArr = [getPtr byteOffset, getPtr value]
  `encodeS32(PackedByteArray Int Int)`(addr self, addr argArr[0], nil, 2)
proc encodeU64*(self: var PackedByteArray; byteOffset: Int; value: Int): void =
  let argArr = [getPtr byteOffset, getPtr value]
  `encodeU64(PackedByteArray Int Int)`(addr self, addr argArr[0], nil, 2)
proc encodeS64*(self: var PackedByteArray; byteOffset: Int; value: Int): void =
  let argArr = [getPtr byteOffset, getPtr value]
  `encodeS64(PackedByteArray Int Int)`(addr self, addr argArr[0], nil, 2)
proc encodeHalf*(self: var PackedByteArray; byteOffset: Int; value: Float): void =
  let argArr = [getPtr byteOffset, getPtr value]
  `encodeHalf(PackedByteArray Int Float)`(addr self, addr argArr[0], nil, 2)
proc encodeFloat*(self: var PackedByteArray; byteOffset: Int; value: Float): void =
  let argArr = [getPtr byteOffset, getPtr value]
  `encodeFloat(PackedByteArray Int Float)`(addr self, addr argArr[0], nil, 2)
proc encodeDouble*(self: var PackedByteArray; byteOffset: Int; value: Float): void =
  let argArr = [getPtr byteOffset, getPtr value]
  `encodeDouble(PackedByteArray Int Float)`(addr self, addr argArr[0], nil, 2)
proc encodeVar*(self: var PackedByteArray; byteOffset: Int; value: Variant; allowObjects: bool = false): Int =
  let argArr = [getPtr byteOffset, getPtr value, getPtr allowObjects]
  `encodeVar(PackedByteArray Int Variant bool)`(addr self, addr argArr[0], addr result, 3)

proc load_PackedByteArray_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `size(PackedByteArray)` = load(VariantType_PackedByteArray, "size", 3173160232)
  `isEmpty(PackedByteArray)` = load(VariantType_PackedByteArray, "is_empty", 3918633141)
  `set(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "set", 3638975848)
  `pushBack(PackedByteArray Int)` = load(VariantType_PackedByteArray, "push_back", 694024632)
  `append(PackedByteArray Int)` = load(VariantType_PackedByteArray, "append", 694024632)
  `appendArray(PackedByteArray PackedByteArray)` = load(VariantType_PackedByteArray, "append_array", 791097111)
  `removeAt(PackedByteArray Int)` = load(VariantType_PackedByteArray, "remove_at", 2823966027)
  `insert(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "insert", 1487112728)
  `fill(PackedByteArray Int)` = load(VariantType_PackedByteArray, "fill", 2823966027)
  `resize(PackedByteArray Int)` = load(VariantType_PackedByteArray, "resize", 848867239)
  `clear(PackedByteArray)` = load(VariantType_PackedByteArray, "clear", 3218959716)
  `has(PackedByteArray Int)` = load(VariantType_PackedByteArray, "has", 931488181)
  `reverse(PackedByteArray)` = load(VariantType_PackedByteArray, "reverse", 3218959716)
  `slice(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "slice", 2278869132)
  `sort(PackedByteArray)` = load(VariantType_PackedByteArray, "sort", 3218959716)
  `bsearch(PackedByteArray Int bool)` = load(VariantType_PackedByteArray, "bsearch", 3380005890)
  `duplicate(PackedByteArray)` = load(VariantType_PackedByteArray, "duplicate", 851781288)
  `find(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "find", 2984303840)
  `rfind(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "rfind", 2984303840)
  `count(PackedByteArray Int)` = load(VariantType_PackedByteArray, "count", 4103005248)
  `getStringFromAscii(PackedByteArray)` = load(VariantType_PackedByteArray, "get_string_from_ascii", 3942272618)
  `getStringFromUtf8(PackedByteArray)` = load(VariantType_PackedByteArray, "get_string_from_utf8", 3942272618)
  `getStringFromUtf16(PackedByteArray)` = load(VariantType_PackedByteArray, "get_string_from_utf16", 3942272618)
  `getStringFromUtf32(PackedByteArray)` = load(VariantType_PackedByteArray, "get_string_from_utf32", 3942272618)
  `getStringFromWchar(PackedByteArray)` = load(VariantType_PackedByteArray, "get_string_from_wchar", 3942272618)
  `hexEncode(PackedByteArray)` = load(VariantType_PackedByteArray, "hex_encode", 3942272618)
  `compress(PackedByteArray Int)` = load(VariantType_PackedByteArray, "compress", 1845905913)
  `decompress(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "decompress", 2278869132)
  `decompressDynamic(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "decompress_dynamic", 2278869132)
  `decodeU8(PackedByteArray Int)` = load(VariantType_PackedByteArray, "decode_u8", 4103005248)
  `decodeS8(PackedByteArray Int)` = load(VariantType_PackedByteArray, "decode_s8", 4103005248)
  `decodeU16(PackedByteArray Int)` = load(VariantType_PackedByteArray, "decode_u16", 4103005248)
  `decodeS16(PackedByteArray Int)` = load(VariantType_PackedByteArray, "decode_s16", 4103005248)
  `decodeU32(PackedByteArray Int)` = load(VariantType_PackedByteArray, "decode_u32", 4103005248)
  `decodeS32(PackedByteArray Int)` = load(VariantType_PackedByteArray, "decode_s32", 4103005248)
  `decodeU64(PackedByteArray Int)` = load(VariantType_PackedByteArray, "decode_u64", 4103005248)
  `decodeS64(PackedByteArray Int)` = load(VariantType_PackedByteArray, "decode_s64", 4103005248)
  `decodeHalf(PackedByteArray Int)` = load(VariantType_PackedByteArray, "decode_half", 1401583798)
  `decodeFloat(PackedByteArray Int)` = load(VariantType_PackedByteArray, "decode_float", 1401583798)
  `decodeDouble(PackedByteArray Int)` = load(VariantType_PackedByteArray, "decode_double", 1401583798)
  `hasEncodedVar(PackedByteArray Int bool)` = load(VariantType_PackedByteArray, "has_encoded_var", 2914632957)
  `decodeVar(PackedByteArray Int bool)` = load(VariantType_PackedByteArray, "decode_var", 1740420038)
  `decodeVarSize(PackedByteArray Int bool)` = load(VariantType_PackedByteArray, "decode_var_size", 954237325)
  `toInt32Array(PackedByteArray)` = load(VariantType_PackedByteArray, "to_int32_array", 3158844420)
  `toInt64Array(PackedByteArray)` = load(VariantType_PackedByteArray, "to_int64_array", 1961294120)
  `toFloat32Array(PackedByteArray)` = load(VariantType_PackedByteArray, "to_float32_array", 3575107827)
  `toFloat64Array(PackedByteArray)` = load(VariantType_PackedByteArray, "to_float64_array", 1627308337)
  `encodeU8(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "encode_u8", 3638975848)
  `encodeS8(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "encode_s8", 3638975848)
  `encodeU16(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "encode_u16", 3638975848)
  `encodeS16(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "encode_s16", 3638975848)
  `encodeU32(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "encode_u32", 3638975848)
  `encodeS32(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "encode_s32", 3638975848)
  `encodeU64(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "encode_u64", 3638975848)
  `encodeS64(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "encode_s64", 3638975848)
  `encodeHalf(PackedByteArray Int Float)` = load(VariantType_PackedByteArray, "encode_half", 1113000516)
  `encodeFloat(PackedByteArray Int Float)` = load(VariantType_PackedByteArray, "encode_float", 1113000516)
  `encodeDouble(PackedByteArray Int Float)` = load(VariantType_PackedByteArray, "encode_double", 1113000516)
  `encodeVar(PackedByteArray Int Variant bool)` = load(VariantType_PackedByteArray, "encode_var", 2604460497)