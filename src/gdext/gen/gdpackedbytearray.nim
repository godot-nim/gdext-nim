# `==(PackedByteArray Variant)`
# `!=(PackedByteArray Variant)`
var `not(PackedByteArray)`: PtrOperatorEvaluator
# `in(PackedByteArray Dictionary)`
# `in(PackedByteArray Array)`
var `==(PackedByteArray PackedByteArray)`: PtrOperatorEvaluator
# `!=(PackedByteArray PackedByteArray)`
var `+(PackedByteArray PackedByteArray)`: PtrOperatorEvaluator
func `not`*(left: PackedByteArray): bool = {.noSideEffect.}: `not(PackedByteArray)`(getPtr left, nil, addr result)
func `==`*(left: PackedByteArray; right: PackedByteArray): bool = {.noSideEffect.}: `==(PackedByteArray PackedByteArray)`(getPtr left, getPtr right, addr result)
func `+`*(left: PackedByteArray; right: PackedByteArray): PackedByteArray = {.noSideEffect.}: `+(PackedByteArray PackedByteArray)`(getPtr left, getPtr right, addr result)
proc load_PackedByteArray_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `not(PackedByteArray)` = load(opNot, VariantType_PackedByteArray, VariantType_Nil)
  `==(PackedByteArray PackedByteArray)` = load(opEqual, VariantType_PackedByteArray, VariantType_PackedByteArray)
  `+(PackedByteArray PackedByteArray)` = load(opAdd, VariantType_PackedByteArray, VariantType_PackedByteArray)

var `get(PackedByteArray Int)`: PtrBuiltinMethod
var `set(PackedByteArray Int Int)`: PtrBuiltinMethod
var `size(PackedByteArray)`: PtrBuiltinMethod
var `isEmpty(PackedByteArray)`: PtrBuiltinMethod
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
var `erase(PackedByteArray Int)`: PtrBuiltinMethod
var `getStringFromAscii(PackedByteArray)`: PtrBuiltinMethod
var `getStringFromUtf8(PackedByteArray)`: PtrBuiltinMethod
var `getStringFromUtf16(PackedByteArray)`: PtrBuiltinMethod
var `getStringFromUtf32(PackedByteArray)`: PtrBuiltinMethod
var `getStringFromWchar(PackedByteArray)`: PtrBuiltinMethod
var `getStringFromMultibyteChar(PackedByteArray String)`: PtrBuiltinMethod
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
var `toVector2Array(PackedByteArray)`: PtrBuiltinMethod
var `toVector3Array(PackedByteArray)`: PtrBuiltinMethod
var `toVector4Array(PackedByteArray)`: PtrBuiltinMethod
var `toColorArray(PackedByteArray)`: PtrBuiltinMethod
var `bswap16(PackedByteArray Int Int)`: PtrBuiltinMethod
var `bswap32(PackedByteArray Int Int)`: PtrBuiltinMethod
var `bswap64(PackedByteArray Int Int)`: PtrBuiltinMethod
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

proc get*(self: PackedByteArray; index: Int): Int =
  `get(PackedByteArray Int)`.call(addr self, [getPtr index], addr result)
proc set*(self: var PackedByteArray; index: Int; value: Int): void =
  `set(PackedByteArray Int Int)`.call(addr self, [getPtr index, getPtr value])
proc size*(self: PackedByteArray): Int =
  `size(PackedByteArray)`.call(addr self, [], addr result)
proc isEmpty*(self: PackedByteArray): bool =
  `isEmpty(PackedByteArray)`.call(addr self, [], addr result)
proc pushBack*(self: var PackedByteArray; value: Int): bool =
  `pushBack(PackedByteArray Int)`.call(addr self, [getPtr value], addr result)
proc append*(self: var PackedByteArray; value: Int): bool =
  `append(PackedByteArray Int)`.call(addr self, [getPtr value], addr result)
proc appendArray*(self: var PackedByteArray; array: PackedByteArray): void =
  `appendArray(PackedByteArray PackedByteArray)`.call(addr self, [getPtr array])
proc removeAt*(self: var PackedByteArray; index: Int): void =
  `removeAt(PackedByteArray Int)`.call(addr self, [getPtr index])
proc insert*(self: var PackedByteArray; atIndex: Int; value: Int): Int =
  `insert(PackedByteArray Int Int)`.call(addr self, [getPtr atIndex, getPtr value], addr result)
proc fill*(self: var PackedByteArray; value: Int): void =
  `fill(PackedByteArray Int)`.call(addr self, [getPtr value])
proc resize*(self: var PackedByteArray; newSize: Int): Int =
  `resize(PackedByteArray Int)`.call(addr self, [getPtr newSize], addr result)
proc clear*(self: var PackedByteArray): void =
  `clear(PackedByteArray)`.call(addr self, [])
proc has*(self: PackedByteArray; value: Int): bool =
  `has(PackedByteArray Int)`.call(addr self, [getPtr value], addr result)
proc reverse*(self: var PackedByteArray): void =
  `reverse(PackedByteArray)`.call(addr self, [])
proc slice*(self: PackedByteArray; begin: Int; `end`: Int = 2147483647): PackedByteArray =
  `slice(PackedByteArray Int Int)`.call(addr self, [getPtr begin, getPtr `end`], addr result)
proc sort*(self: var PackedByteArray): void =
  `sort(PackedByteArray)`.call(addr self, [])
proc bsearch*(self: var PackedByteArray; value: Int; before: bool = true): Int =
  `bsearch(PackedByteArray Int bool)`.call(addr self, [getPtr value, getPtr before], addr result)
proc duplicate*(self: var PackedByteArray): PackedByteArray =
  `duplicate(PackedByteArray)`.call(addr self, [], addr result)
proc find*(self: PackedByteArray; value: Int; `from`: Int = 0): Int =
  `find(PackedByteArray Int Int)`.call(addr self, [getPtr value, getPtr `from`], addr result)
proc rfind*(self: PackedByteArray; value: Int; `from`: Int = -1): Int =
  `rfind(PackedByteArray Int Int)`.call(addr self, [getPtr value, getPtr `from`], addr result)
proc count*(self: PackedByteArray; value: Int): Int =
  `count(PackedByteArray Int)`.call(addr self, [getPtr value], addr result)
proc erase*(self: var PackedByteArray; value: Int): bool =
  `erase(PackedByteArray Int)`.call(addr self, [getPtr value], addr result)
proc getStringFromAscii*(self: PackedByteArray): String =
  `getStringFromAscii(PackedByteArray)`.call(addr self, [], addr result)
proc getStringFromUtf8*(self: PackedByteArray): String =
  `getStringFromUtf8(PackedByteArray)`.call(addr self, [], addr result)
proc getStringFromUtf16*(self: PackedByteArray): String =
  `getStringFromUtf16(PackedByteArray)`.call(addr self, [], addr result)
proc getStringFromUtf32*(self: PackedByteArray): String =
  `getStringFromUtf32(PackedByteArray)`.call(addr self, [], addr result)
proc getStringFromWchar*(self: PackedByteArray): String =
  `getStringFromWchar(PackedByteArray)`.call(addr self, [], addr result)
proc getStringFromMultibyteChar*(self: PackedByteArray; encoding: String = newGdString()): String =
  `getStringFromMultibyteChar(PackedByteArray String)`.call(addr self, [getPtr encoding], addr result)
proc hexEncode*(self: PackedByteArray): String =
  `hexEncode(PackedByteArray)`.call(addr self, [], addr result)
proc compress*(self: PackedByteArray; compressionMode: Int = 0): PackedByteArray =
  `compress(PackedByteArray Int)`.call(addr self, [getPtr compressionMode], addr result)
proc decompress*(self: PackedByteArray; bufferSize: Int; compressionMode: Int = 0): PackedByteArray =
  `decompress(PackedByteArray Int Int)`.call(addr self, [getPtr bufferSize, getPtr compressionMode], addr result)
proc decompressDynamic*(self: PackedByteArray; maxOutputSize: Int; compressionMode: Int = 0): PackedByteArray =
  `decompressDynamic(PackedByteArray Int Int)`.call(addr self, [getPtr maxOutputSize, getPtr compressionMode], addr result)
proc decodeU8*(self: PackedByteArray; byteOffset: Int): Int =
  `decodeU8(PackedByteArray Int)`.call(addr self, [getPtr byteOffset], addr result)
proc decodeS8*(self: PackedByteArray; byteOffset: Int): Int =
  `decodeS8(PackedByteArray Int)`.call(addr self, [getPtr byteOffset], addr result)
proc decodeU16*(self: PackedByteArray; byteOffset: Int): Int =
  `decodeU16(PackedByteArray Int)`.call(addr self, [getPtr byteOffset], addr result)
proc decodeS16*(self: PackedByteArray; byteOffset: Int): Int =
  `decodeS16(PackedByteArray Int)`.call(addr self, [getPtr byteOffset], addr result)
proc decodeU32*(self: PackedByteArray; byteOffset: Int): Int =
  `decodeU32(PackedByteArray Int)`.call(addr self, [getPtr byteOffset], addr result)
proc decodeS32*(self: PackedByteArray; byteOffset: Int): Int =
  `decodeS32(PackedByteArray Int)`.call(addr self, [getPtr byteOffset], addr result)
proc decodeU64*(self: PackedByteArray; byteOffset: Int): Int =
  `decodeU64(PackedByteArray Int)`.call(addr self, [getPtr byteOffset], addr result)
proc decodeS64*(self: PackedByteArray; byteOffset: Int): Int =
  `decodeS64(PackedByteArray Int)`.call(addr self, [getPtr byteOffset], addr result)
proc decodeHalf*(self: PackedByteArray; byteOffset: Int): Float =
  `decodeHalf(PackedByteArray Int)`.call(addr self, [getPtr byteOffset], addr result)
proc decodeFloat*(self: PackedByteArray; byteOffset: Int): Float =
  `decodeFloat(PackedByteArray Int)`.call(addr self, [getPtr byteOffset], addr result)
proc decodeDouble*(self: PackedByteArray; byteOffset: Int): Float =
  `decodeDouble(PackedByteArray Int)`.call(addr self, [getPtr byteOffset], addr result)
proc hasEncodedVar*(self: PackedByteArray; byteOffset: Int; allowObjects: bool = false): bool =
  `hasEncodedVar(PackedByteArray Int bool)`.call(addr self, [getPtr byteOffset, getPtr allowObjects], addr result)
proc decodeVar*(self: PackedByteArray; byteOffset: Int; allowObjects: bool = false): Variant =
  `decodeVar(PackedByteArray Int bool)`.call(addr self, [getPtr byteOffset, getPtr allowObjects], addr result)
proc decodeVarSize*(self: PackedByteArray; byteOffset: Int; allowObjects: bool = false): Int =
  `decodeVarSize(PackedByteArray Int bool)`.call(addr self, [getPtr byteOffset, getPtr allowObjects], addr result)
proc toInt32Array*(self: PackedByteArray): PackedInt32Array =
  `toInt32Array(PackedByteArray)`.call(addr self, [], addr result)
proc toInt64Array*(self: PackedByteArray): PackedInt64Array =
  `toInt64Array(PackedByteArray)`.call(addr self, [], addr result)
proc toFloat32Array*(self: PackedByteArray): PackedFloat32Array =
  `toFloat32Array(PackedByteArray)`.call(addr self, [], addr result)
proc toFloat64Array*(self: PackedByteArray): PackedFloat64Array =
  `toFloat64Array(PackedByteArray)`.call(addr self, [], addr result)
proc toVector2Array*(self: PackedByteArray): PackedVector2Array =
  `toVector2Array(PackedByteArray)`.call(addr self, [], addr result)
proc toVector3Array*(self: PackedByteArray): PackedVector3Array =
  `toVector3Array(PackedByteArray)`.call(addr self, [], addr result)
proc toVector4Array*(self: PackedByteArray): PackedVector4Array =
  `toVector4Array(PackedByteArray)`.call(addr self, [], addr result)
proc toColorArray*(self: PackedByteArray): PackedColorArray =
  `toColorArray(PackedByteArray)`.call(addr self, [], addr result)
proc bswap16*(self: var PackedByteArray; offset: Int = 0; count: Int = -1): void =
  `bswap16(PackedByteArray Int Int)`.call(addr self, [getPtr offset, getPtr count])
proc bswap32*(self: var PackedByteArray; offset: Int = 0; count: Int = -1): void =
  `bswap32(PackedByteArray Int Int)`.call(addr self, [getPtr offset, getPtr count])
proc bswap64*(self: var PackedByteArray; offset: Int = 0; count: Int = -1): void =
  `bswap64(PackedByteArray Int Int)`.call(addr self, [getPtr offset, getPtr count])
proc encodeU8*(self: var PackedByteArray; byteOffset: Int; value: Int): void =
  `encodeU8(PackedByteArray Int Int)`.call(addr self, [getPtr byteOffset, getPtr value])
proc encodeS8*(self: var PackedByteArray; byteOffset: Int; value: Int): void =
  `encodeS8(PackedByteArray Int Int)`.call(addr self, [getPtr byteOffset, getPtr value])
proc encodeU16*(self: var PackedByteArray; byteOffset: Int; value: Int): void =
  `encodeU16(PackedByteArray Int Int)`.call(addr self, [getPtr byteOffset, getPtr value])
proc encodeS16*(self: var PackedByteArray; byteOffset: Int; value: Int): void =
  `encodeS16(PackedByteArray Int Int)`.call(addr self, [getPtr byteOffset, getPtr value])
proc encodeU32*(self: var PackedByteArray; byteOffset: Int; value: Int): void =
  `encodeU32(PackedByteArray Int Int)`.call(addr self, [getPtr byteOffset, getPtr value])
proc encodeS32*(self: var PackedByteArray; byteOffset: Int; value: Int): void =
  `encodeS32(PackedByteArray Int Int)`.call(addr self, [getPtr byteOffset, getPtr value])
proc encodeU64*(self: var PackedByteArray; byteOffset: Int; value: Int): void =
  `encodeU64(PackedByteArray Int Int)`.call(addr self, [getPtr byteOffset, getPtr value])
proc encodeS64*(self: var PackedByteArray; byteOffset: Int; value: Int): void =
  `encodeS64(PackedByteArray Int Int)`.call(addr self, [getPtr byteOffset, getPtr value])
proc encodeHalf*(self: var PackedByteArray; byteOffset: Int; value: Float): void =
  `encodeHalf(PackedByteArray Int Float)`.call(addr self, [getPtr byteOffset, getPtr value])
proc encodeFloat*(self: var PackedByteArray; byteOffset: Int; value: Float): void =
  `encodeFloat(PackedByteArray Int Float)`.call(addr self, [getPtr byteOffset, getPtr value])
proc encodeDouble*(self: var PackedByteArray; byteOffset: Int; value: Float): void =
  `encodeDouble(PackedByteArray Int Float)`.call(addr self, [getPtr byteOffset, getPtr value])
proc encodeVar*(self: var PackedByteArray; byteOffset: Int; value: Variant; allowObjects: bool = false): Int =
  `encodeVar(PackedByteArray Int Variant bool)`.call(addr self, [getPtr byteOffset, getPtr value, getPtr allowObjects], addr result)

proc load_PackedByteArray_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `get(PackedByteArray Int)` = load(VariantType_PackedByteArray, "get", 4103005248)
  `set(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "set", 3638975848)
  `size(PackedByteArray)` = load(VariantType_PackedByteArray, "size", 3173160232)
  `isEmpty(PackedByteArray)` = load(VariantType_PackedByteArray, "is_empty", 3918633141)
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
  `erase(PackedByteArray Int)` = load(VariantType_PackedByteArray, "erase", 694024632)
  `getStringFromAscii(PackedByteArray)` = load(VariantType_PackedByteArray, "get_string_from_ascii", 3942272618)
  `getStringFromUtf8(PackedByteArray)` = load(VariantType_PackedByteArray, "get_string_from_utf8", 3942272618)
  `getStringFromUtf16(PackedByteArray)` = load(VariantType_PackedByteArray, "get_string_from_utf16", 3942272618)
  `getStringFromUtf32(PackedByteArray)` = load(VariantType_PackedByteArray, "get_string_from_utf32", 3942272618)
  `getStringFromWchar(PackedByteArray)` = load(VariantType_PackedByteArray, "get_string_from_wchar", 3942272618)
  `getStringFromMultibyteChar(PackedByteArray String)` = load(VariantType_PackedByteArray, "get_string_from_multibyte_char", 3134094431)
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
  `toVector2Array(PackedByteArray)` = load(VariantType_PackedByteArray, "to_vector2_array", 1660374357)
  `toVector3Array(PackedByteArray)` = load(VariantType_PackedByteArray, "to_vector3_array", 4171207452)
  `toVector4Array(PackedByteArray)` = load(VariantType_PackedByteArray, "to_vector4_array", 146203628)
  `toColorArray(PackedByteArray)` = load(VariantType_PackedByteArray, "to_color_array", 3072026941)
  `bswap16(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "bswap16", 3638975848)
  `bswap32(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "bswap32", 3638975848)
  `bswap64(PackedByteArray Int Int)` = load(VariantType_PackedByteArray, "bswap64", 3638975848)
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
