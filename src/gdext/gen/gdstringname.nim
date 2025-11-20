# `==(StringName Variant)`
# `!=(StringName Variant)`
var `%(StringName Variant)`: PtrOperatorEvaluator
var `not(StringName)`: PtrOperatorEvaluator
var `%(StringName bool)`: PtrOperatorEvaluator
var `%(StringName Int)`: PtrOperatorEvaluator
var `%(StringName Float)`: PtrOperatorEvaluator
var `==(StringName String)`: PtrOperatorEvaluator
# `!=(StringName String)`
var `+(StringName String)`: PtrOperatorEvaluator
var `%(StringName String)`: PtrOperatorEvaluator
# `in(StringName String)`
var `%(StringName Vector2)`: PtrOperatorEvaluator
var `%(StringName Vector2i)`: PtrOperatorEvaluator
var `%(StringName Rect2)`: PtrOperatorEvaluator
var `%(StringName Rect2i)`: PtrOperatorEvaluator
var `%(StringName Vector3)`: PtrOperatorEvaluator
var `%(StringName Vector3i)`: PtrOperatorEvaluator
var `%(StringName Transform2D)`: PtrOperatorEvaluator
var `%(StringName Vector4)`: PtrOperatorEvaluator
var `%(StringName Vector4i)`: PtrOperatorEvaluator
var `%(StringName Plane)`: PtrOperatorEvaluator
var `%(StringName Quaternion)`: PtrOperatorEvaluator
var `%(StringName AABB)`: PtrOperatorEvaluator
var `%(StringName Basis)`: PtrOperatorEvaluator
var `%(StringName Transform3D)`: PtrOperatorEvaluator
var `%(StringName Projection)`: PtrOperatorEvaluator
var `%(StringName Color)`: PtrOperatorEvaluator
var `==(StringName StringName)`: PtrOperatorEvaluator
# `!=(StringName StringName)`
var `<(StringName StringName)`: PtrOperatorEvaluator
var `<=(StringName StringName)`: PtrOperatorEvaluator
# `>(StringName StringName)`
# `>=(StringName StringName)`
var `+(StringName StringName)`: PtrOperatorEvaluator
var `%(StringName StringName)`: PtrOperatorEvaluator
# `in(StringName StringName)`
var `%(StringName NodePath)`: PtrOperatorEvaluator
var `%(StringName RID)`: PtrOperatorEvaluator
var `%(StringName Object)`: PtrOperatorEvaluator
# `in(StringName Object)`
var `%(StringName Callable)`: PtrOperatorEvaluator
var `%(StringName Signal)`: PtrOperatorEvaluator
var `%(StringName Dictionary)`: PtrOperatorEvaluator
# `in(StringName Dictionary)`
var `%(StringName Array)`: PtrOperatorEvaluator
# `in(StringName Array)`
var `%(StringName PackedByteArray)`: PtrOperatorEvaluator
var `%(StringName PackedInt32Array)`: PtrOperatorEvaluator
var `%(StringName PackedInt64Array)`: PtrOperatorEvaluator
var `%(StringName PackedFloat32Array)`: PtrOperatorEvaluator
var `%(StringName PackedFloat64Array)`: PtrOperatorEvaluator
var `%(StringName PackedStringArray)`: PtrOperatorEvaluator
# `in(StringName PackedStringArray)`
var `%(StringName PackedVector2Array)`: PtrOperatorEvaluator
var `%(StringName PackedVector3Array)`: PtrOperatorEvaluator
var `%(StringName PackedColorArray)`: PtrOperatorEvaluator
var `%(StringName PackedVector4Array)`: PtrOperatorEvaluator
func `%`*(left: StringName; right: Variant): String = {.noSideEffect.}: `%(StringName Variant)`(getPtr left, getPtr right, addr result)
func `not`*(left: StringName): bool = {.noSideEffect.}: `not(StringName)`(getPtr left, nil, addr result)
func `%`*(left: StringName; right: bool): String = {.noSideEffect.}: `%(StringName bool)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Int): String = {.noSideEffect.}: `%(StringName Int)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Float): String = {.noSideEffect.}: `%(StringName Float)`(getPtr left, getPtr right, addr result)
func `==`*(left: StringName; right: String): bool = {.noSideEffect.}: `==(StringName String)`(getPtr left, getPtr right, addr result)
func `+`*(left: StringName; right: String): String = {.noSideEffect.}: `+(StringName String)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: String): String = {.noSideEffect.}: `%(StringName String)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Vector2): String = {.noSideEffect.}: `%(StringName Vector2)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Vector2i): String = {.noSideEffect.}: `%(StringName Vector2i)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Rect2): String = {.noSideEffect.}: `%(StringName Rect2)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Rect2i): String = {.noSideEffect.}: `%(StringName Rect2i)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Vector3): String = {.noSideEffect.}: `%(StringName Vector3)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Vector3i): String = {.noSideEffect.}: `%(StringName Vector3i)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Transform2D): String = {.noSideEffect.}: `%(StringName Transform2D)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Vector4): String = {.noSideEffect.}: `%(StringName Vector4)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Vector4i): String = {.noSideEffect.}: `%(StringName Vector4i)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Plane): String = {.noSideEffect.}: `%(StringName Plane)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Quaternion): String = {.noSideEffect.}: `%(StringName Quaternion)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: AABB): String = {.noSideEffect.}: `%(StringName AABB)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Basis): String = {.noSideEffect.}: `%(StringName Basis)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Transform3D): String = {.noSideEffect.}: `%(StringName Transform3D)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Projection): String = {.noSideEffect.}: `%(StringName Projection)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Color): String = {.noSideEffect.}: `%(StringName Color)`(getPtr left, getPtr right, addr result)
func `==`*(left: StringName; right: StringName): bool = {.noSideEffect.}: `==(StringName StringName)`(getPtr left, getPtr right, addr result)
func `<`*(left: StringName; right: StringName): bool = {.noSideEffect.}: `<(StringName StringName)`(getPtr left, getPtr right, addr result)
func `<=`*(left: StringName; right: StringName): bool = {.noSideEffect.}: `<=(StringName StringName)`(getPtr left, getPtr right, addr result)
func `+`*(left: StringName; right: StringName): String = {.noSideEffect.}: `+(StringName StringName)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: StringName): String = {.noSideEffect.}: `%(StringName StringName)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: NodePath): String = {.noSideEffect.}: `%(StringName NodePath)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: RID): String = {.noSideEffect.}: `%(StringName RID)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Object): String = {.noSideEffect.}: `%(StringName Object)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Callable): String = {.noSideEffect.}: `%(StringName Callable)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Signal): String = {.noSideEffect.}: `%(StringName Signal)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Dictionary): String = {.noSideEffect.}:
  nilCheck right
  `%(StringName Dictionary)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: Array): String = {.noSideEffect.}:
  nilCheck right
  `%(StringName Array)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: PackedByteArray): String = {.noSideEffect.}: `%(StringName PackedByteArray)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: PackedInt32Array): String = {.noSideEffect.}: `%(StringName PackedInt32Array)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: PackedInt64Array): String = {.noSideEffect.}: `%(StringName PackedInt64Array)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: PackedFloat32Array): String = {.noSideEffect.}: `%(StringName PackedFloat32Array)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: PackedFloat64Array): String = {.noSideEffect.}: `%(StringName PackedFloat64Array)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: PackedStringArray): String = {.noSideEffect.}: `%(StringName PackedStringArray)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: PackedVector2Array): String = {.noSideEffect.}: `%(StringName PackedVector2Array)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: PackedVector3Array): String = {.noSideEffect.}: `%(StringName PackedVector3Array)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: PackedColorArray): String = {.noSideEffect.}: `%(StringName PackedColorArray)`(getPtr left, getPtr right, addr result)
func `%`*(left: StringName; right: PackedVector4Array): String = {.noSideEffect.}: `%(StringName PackedVector4Array)`(getPtr left, getPtr right, addr result)
proc load_StringName_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `%(StringName Variant)` = load(opModule, VariantType_StringName, VariantType_Nil)
  `not(StringName)` = load(opNot, VariantType_StringName, VariantType_Nil)
  `%(StringName bool)` = load(opModule, VariantType_StringName, VariantType_bool)
  `%(StringName Int)` = load(opModule, VariantType_StringName, VariantType_Int)
  `%(StringName Float)` = load(opModule, VariantType_StringName, VariantType_Float)
  `==(StringName String)` = load(opEqual, VariantType_StringName, VariantType_String)
  `+(StringName String)` = load(opAdd, VariantType_StringName, VariantType_String)
  `%(StringName String)` = load(opModule, VariantType_StringName, VariantType_String)
  `%(StringName Vector2)` = load(opModule, VariantType_StringName, VariantType_Vector2)
  `%(StringName Vector2i)` = load(opModule, VariantType_StringName, VariantType_Vector2i)
  `%(StringName Rect2)` = load(opModule, VariantType_StringName, VariantType_Rect2)
  `%(StringName Rect2i)` = load(opModule, VariantType_StringName, VariantType_Rect2i)
  `%(StringName Vector3)` = load(opModule, VariantType_StringName, VariantType_Vector3)
  `%(StringName Vector3i)` = load(opModule, VariantType_StringName, VariantType_Vector3i)
  `%(StringName Transform2D)` = load(opModule, VariantType_StringName, VariantType_Transform2D)
  `%(StringName Vector4)` = load(opModule, VariantType_StringName, VariantType_Vector4)
  `%(StringName Vector4i)` = load(opModule, VariantType_StringName, VariantType_Vector4i)
  `%(StringName Plane)` = load(opModule, VariantType_StringName, VariantType_Plane)
  `%(StringName Quaternion)` = load(opModule, VariantType_StringName, VariantType_Quaternion)
  `%(StringName AABB)` = load(opModule, VariantType_StringName, VariantType_AABB)
  `%(StringName Basis)` = load(opModule, VariantType_StringName, VariantType_Basis)
  `%(StringName Transform3D)` = load(opModule, VariantType_StringName, VariantType_Transform3D)
  `%(StringName Projection)` = load(opModule, VariantType_StringName, VariantType_Projection)
  `%(StringName Color)` = load(opModule, VariantType_StringName, VariantType_Color)
  `==(StringName StringName)` = load(opEqual, VariantType_StringName, VariantType_StringName)
  `<(StringName StringName)` = load(opLess, VariantType_StringName, VariantType_StringName)
  `<=(StringName StringName)` = load(opLessEqual, VariantType_StringName, VariantType_StringName)
  `+(StringName StringName)` = load(opAdd, VariantType_StringName, VariantType_StringName)
  `%(StringName StringName)` = load(opModule, VariantType_StringName, VariantType_StringName)
  `%(StringName NodePath)` = load(opModule, VariantType_StringName, VariantType_NodePath)
  `%(StringName RID)` = load(opModule, VariantType_StringName, VariantType_RID)
  `%(StringName Object)` = load(opModule, VariantType_StringName, VariantType_Object)
  `%(StringName Callable)` = load(opModule, VariantType_StringName, VariantType_Callable)
  `%(StringName Signal)` = load(opModule, VariantType_StringName, VariantType_Signal)
  `%(StringName Dictionary)` = load(opModule, VariantType_StringName, VariantType_Dictionary)
  `%(StringName Array)` = load(opModule, VariantType_StringName, VariantType_Array)
  `%(StringName PackedByteArray)` = load(opModule, VariantType_StringName, VariantType_PackedByteArray)
  `%(StringName PackedInt32Array)` = load(opModule, VariantType_StringName, VariantType_PackedInt32Array)
  `%(StringName PackedInt64Array)` = load(opModule, VariantType_StringName, VariantType_PackedInt64Array)
  `%(StringName PackedFloat32Array)` = load(opModule, VariantType_StringName, VariantType_PackedFloat32Array)
  `%(StringName PackedFloat64Array)` = load(opModule, VariantType_StringName, VariantType_PackedFloat64Array)
  `%(StringName PackedStringArray)` = load(opModule, VariantType_StringName, VariantType_PackedStringArray)
  `%(StringName PackedVector2Array)` = load(opModule, VariantType_StringName, VariantType_PackedVector2Array)
  `%(StringName PackedVector3Array)` = load(opModule, VariantType_StringName, VariantType_PackedVector3Array)
  `%(StringName PackedColorArray)` = load(opModule, VariantType_StringName, VariantType_PackedColorArray)
  `%(StringName PackedVector4Array)` = load(opModule, VariantType_StringName, VariantType_PackedVector4Array)

var `casecmpTo(StringName String)`: PtrBuiltinMethod
var `nocasecmpTo(StringName String)`: PtrBuiltinMethod
var `naturalcasecmpTo(StringName String)`: PtrBuiltinMethod
var `naturalnocasecmpTo(StringName String)`: PtrBuiltinMethod
var `filecasecmpTo(StringName String)`: PtrBuiltinMethod
var `filenocasecmpTo(StringName String)`: PtrBuiltinMethod
var `length(StringName)`: PtrBuiltinMethod
var `substr(StringName Int Int)`: PtrBuiltinMethod
var `getSlice(StringName String Int)`: PtrBuiltinMethod
var `getSlicec(StringName Int Int)`: PtrBuiltinMethod
var `getSliceCount(StringName String)`: PtrBuiltinMethod
var `find(StringName String Int)`: PtrBuiltinMethod
var `findn(StringName String Int)`: PtrBuiltinMethod
var `count(StringName String Int Int)`: PtrBuiltinMethod
var `countn(StringName String Int Int)`: PtrBuiltinMethod
var `rfind(StringName String Int)`: PtrBuiltinMethod
var `rfindn(StringName String Int)`: PtrBuiltinMethod
var `match(StringName String)`: PtrBuiltinMethod
var `matchn(StringName String)`: PtrBuiltinMethod
var `beginsWith(StringName String)`: PtrBuiltinMethod
var `endsWith(StringName String)`: PtrBuiltinMethod
var `isSubsequenceOf(StringName String)`: PtrBuiltinMethod
var `isSubsequenceOfn(StringName String)`: PtrBuiltinMethod
var `bigrams(StringName)`: PtrBuiltinMethod
var `similarity(StringName String)`: PtrBuiltinMethod
var `format(StringName Variant String)`: PtrBuiltinMethod
var `replace(StringName String String)`: PtrBuiltinMethod
var `replacen(StringName String String)`: PtrBuiltinMethod
var `replaceChar(StringName Int Int)`: PtrBuiltinMethod
var `replaceChars(StringName String Int)`: PtrBuiltinMethod
var `removeChar(StringName Int)`: PtrBuiltinMethod
var `removeChars(StringName String)`: PtrBuiltinMethod
var `repeat(StringName Int)`: PtrBuiltinMethod
var `reverse(StringName)`: PtrBuiltinMethod
var `insert(StringName Int String)`: PtrBuiltinMethod
var `erase(StringName Int Int)`: PtrBuiltinMethod
var `capitalize(StringName)`: PtrBuiltinMethod
var `toCamelCase(StringName)`: PtrBuiltinMethod
var `toPascalCase(StringName)`: PtrBuiltinMethod
var `toSnakeCase(StringName)`: PtrBuiltinMethod
var `toKebabCase(StringName)`: PtrBuiltinMethod
var `split(StringName String bool Int)`: PtrBuiltinMethod
var `rsplit(StringName String bool Int)`: PtrBuiltinMethod
var `splitFloats(StringName String bool)`: PtrBuiltinMethod
var `join(StringName PackedStringArray)`: PtrBuiltinMethod
var `toUpper(StringName)`: PtrBuiltinMethod
var `toLower(StringName)`: PtrBuiltinMethod
var `left(StringName Int)`: PtrBuiltinMethod
var `right(StringName Int)`: PtrBuiltinMethod
var `stripEdges(StringName bool bool)`: PtrBuiltinMethod
var `stripEscapes(StringName)`: PtrBuiltinMethod
var `lstrip(StringName String)`: PtrBuiltinMethod
var `rstrip(StringName String)`: PtrBuiltinMethod
var `getExtension(StringName)`: PtrBuiltinMethod
var `getBasename(StringName)`: PtrBuiltinMethod
var `pathJoin(StringName String)`: PtrBuiltinMethod
var `unicodeAt(StringName Int)`: PtrBuiltinMethod
var `indent(StringName String)`: PtrBuiltinMethod
var `dedent(StringName)`: PtrBuiltinMethod
var `md5Text(StringName)`: PtrBuiltinMethod
var `sha1Text(StringName)`: PtrBuiltinMethod
var `sha256Text(StringName)`: PtrBuiltinMethod
var `md5Buffer(StringName)`: PtrBuiltinMethod
var `sha1Buffer(StringName)`: PtrBuiltinMethod
var `sha256Buffer(StringName)`: PtrBuiltinMethod
var `isEmpty(StringName)`: PtrBuiltinMethod
var `contains(StringName String)`: PtrBuiltinMethod
var `containsn(StringName String)`: PtrBuiltinMethod
var `isAbsolutePath(StringName)`: PtrBuiltinMethod
var `isRelativePath(StringName)`: PtrBuiltinMethod
var `simplifyPath(StringName)`: PtrBuiltinMethod
var `getBaseDir(StringName)`: PtrBuiltinMethod
var `getFile(StringName)`: PtrBuiltinMethod
var `xmlEscape(StringName bool)`: PtrBuiltinMethod
var `xmlUnescape(StringName)`: PtrBuiltinMethod
var `uriEncode(StringName)`: PtrBuiltinMethod
var `uriDecode(StringName)`: PtrBuiltinMethod
var `uriFileDecode(StringName)`: PtrBuiltinMethod
var `cEscape(StringName)`: PtrBuiltinMethod
var `cUnescape(StringName)`: PtrBuiltinMethod
var `jsonEscape(StringName)`: PtrBuiltinMethod
var `validateNodeName(StringName)`: PtrBuiltinMethod
var `validateFilename(StringName)`: PtrBuiltinMethod
var `isValidAsciiIdentifier(StringName)`: PtrBuiltinMethod
var `isValidUnicodeIdentifier(StringName)`: PtrBuiltinMethod
var `isValidIdentifier(StringName)`: PtrBuiltinMethod
var `isValidInt(StringName)`: PtrBuiltinMethod
var `isValidFloat(StringName)`: PtrBuiltinMethod
var `isValidHexNumber(StringName bool)`: PtrBuiltinMethod
var `isValidHtmlColor(StringName)`: PtrBuiltinMethod
var `isValidIpAddress(StringName)`: PtrBuiltinMethod
var `isValidFilename(StringName)`: PtrBuiltinMethod
var `toInt(StringName)`: PtrBuiltinMethod
var `toFloat(StringName)`: PtrBuiltinMethod
var `hexToInt(StringName)`: PtrBuiltinMethod
var `binToInt(StringName)`: PtrBuiltinMethod
var `lpad(StringName Int String)`: PtrBuiltinMethod
var `rpad(StringName Int String)`: PtrBuiltinMethod
var `padDecimals(StringName Int)`: PtrBuiltinMethod
var `padZeros(StringName Int)`: PtrBuiltinMethod
var `trimPrefix(StringName String)`: PtrBuiltinMethod
var `trimSuffix(StringName String)`: PtrBuiltinMethod
var `toAsciiBuffer(StringName)`: PtrBuiltinMethod
var `toUtf8Buffer(StringName)`: PtrBuiltinMethod
var `toUtf16Buffer(StringName)`: PtrBuiltinMethod
var `toUtf32Buffer(StringName)`: PtrBuiltinMethod
var `toWcharBuffer(StringName)`: PtrBuiltinMethod
var `toMultibyteCharBuffer(StringName String)`: PtrBuiltinMethod
var `hexDecode(StringName)`: PtrBuiltinMethod
var `hash(StringName)`: PtrBuiltinMethod

proc casecmpTo*(self: StringName; to: String): Int =
  `casecmpTo(StringName String)`.call(addr self, [getPtr to], addr result)
proc nocasecmpTo*(self: StringName; to: String): Int =
  `nocasecmpTo(StringName String)`.call(addr self, [getPtr to], addr result)
proc naturalcasecmpTo*(self: StringName; to: String): Int =
  `naturalcasecmpTo(StringName String)`.call(addr self, [getPtr to], addr result)
proc naturalnocasecmpTo*(self: StringName; to: String): Int =
  `naturalnocasecmpTo(StringName String)`.call(addr self, [getPtr to], addr result)
proc filecasecmpTo*(self: StringName; to: String): Int =
  `filecasecmpTo(StringName String)`.call(addr self, [getPtr to], addr result)
proc filenocasecmpTo*(self: StringName; to: String): Int =
  `filenocasecmpTo(StringName String)`.call(addr self, [getPtr to], addr result)
proc length*(self: StringName): Int =
  `length(StringName)`.call(addr self, [], addr result)
proc substr*(self: StringName; `from`: Int; len: Int = -1): String =
  `substr(StringName Int Int)`.call(addr self, [getPtr `from`, getPtr len], addr result)
proc getSlice*(self: StringName; delimiter: String; slice: Int): String =
  `getSlice(StringName String Int)`.call(addr self, [getPtr delimiter, getPtr slice], addr result)
proc getSlicec*(self: StringName; delimiter: Int; slice: Int): String =
  `getSlicec(StringName Int Int)`.call(addr self, [getPtr delimiter, getPtr slice], addr result)
proc getSliceCount*(self: StringName; delimiter: String): Int =
  `getSliceCount(StringName String)`.call(addr self, [getPtr delimiter], addr result)
proc find*(self: StringName; what: String; `from`: Int = 0): Int =
  `find(StringName String Int)`.call(addr self, [getPtr what, getPtr `from`], addr result)
proc findn*(self: StringName; what: String; `from`: Int = 0): Int =
  `findn(StringName String Int)`.call(addr self, [getPtr what, getPtr `from`], addr result)
proc count*(self: StringName; what: String; `from`: Int = 0; to: Int = 0): Int =
  `count(StringName String Int Int)`.call(addr self, [getPtr what, getPtr `from`, getPtr to], addr result)
proc countn*(self: StringName; what: String; `from`: Int = 0; to: Int = 0): Int =
  `countn(StringName String Int Int)`.call(addr self, [getPtr what, getPtr `from`, getPtr to], addr result)
proc rfind*(self: StringName; what: String; `from`: Int = -1): Int =
  `rfind(StringName String Int)`.call(addr self, [getPtr what, getPtr `from`], addr result)
proc rfindn*(self: StringName; what: String; `from`: Int = -1): Int =
  `rfindn(StringName String Int)`.call(addr self, [getPtr what, getPtr `from`], addr result)
proc match*(self: StringName; expr: String): bool =
  `match(StringName String)`.call(addr self, [getPtr expr], addr result)
proc matchn*(self: StringName; expr: String): bool =
  `matchn(StringName String)`.call(addr self, [getPtr expr], addr result)
proc beginsWith*(self: StringName; text: String): bool =
  `beginsWith(StringName String)`.call(addr self, [getPtr text], addr result)
proc endsWith*(self: StringName; text: String): bool =
  `endsWith(StringName String)`.call(addr self, [getPtr text], addr result)
proc isSubsequenceOf*(self: StringName; text: String): bool =
  `isSubsequenceOf(StringName String)`.call(addr self, [getPtr text], addr result)
proc isSubsequenceOfn*(self: StringName; text: String): bool =
  `isSubsequenceOfn(StringName String)`.call(addr self, [getPtr text], addr result)
proc bigrams*(self: StringName): PackedStringArray =
  `bigrams(StringName)`.call(addr self, [], addr result)
proc similarity*(self: StringName; text: String): Float =
  `similarity(StringName String)`.call(addr self, [getPtr text], addr result)
proc format*(self: StringName; values: Variant; placeholder: String = newGdString("{_}")): String =
  `format(StringName Variant String)`.call(addr self, [getPtr values, getPtr placeholder], addr result)
proc replace*(self: StringName; what: String; forwhat: String): String =
  `replace(StringName String String)`.call(addr self, [getPtr what, getPtr forwhat], addr result)
proc replacen*(self: StringName; what: String; forwhat: String): String =
  `replacen(StringName String String)`.call(addr self, [getPtr what, getPtr forwhat], addr result)
proc replaceChar*(self: StringName; key: Int; with: Int): String =
  `replaceChar(StringName Int Int)`.call(addr self, [getPtr key, getPtr with], addr result)
proc replaceChars*(self: StringName; keys: String; with: Int): String =
  `replaceChars(StringName String Int)`.call(addr self, [getPtr keys, getPtr with], addr result)
proc removeChar*(self: StringName; what: Int): String =
  `removeChar(StringName Int)`.call(addr self, [getPtr what], addr result)
proc removeChars*(self: StringName; chars: String): String =
  `removeChars(StringName String)`.call(addr self, [getPtr chars], addr result)
proc repeat*(self: StringName; count: Int): String =
  `repeat(StringName Int)`.call(addr self, [getPtr count], addr result)
proc reverse*(self: StringName): String =
  `reverse(StringName)`.call(addr self, [], addr result)
proc insert*(self: StringName; position: Int; what: String): String =
  `insert(StringName Int String)`.call(addr self, [getPtr position, getPtr what], addr result)
proc erase*(self: StringName; position: Int; chars: Int = 1): String =
  `erase(StringName Int Int)`.call(addr self, [getPtr position, getPtr chars], addr result)
proc capitalize*(self: StringName): String =
  `capitalize(StringName)`.call(addr self, [], addr result)
proc toCamelCase*(self: StringName): String =
  `toCamelCase(StringName)`.call(addr self, [], addr result)
proc toPascalCase*(self: StringName): String =
  `toPascalCase(StringName)`.call(addr self, [], addr result)
proc toSnakeCase*(self: StringName): String =
  `toSnakeCase(StringName)`.call(addr self, [], addr result)
proc toKebabCase*(self: StringName): String =
  `toKebabCase(StringName)`.call(addr self, [], addr result)
proc split*(self: StringName; delimiter: String = newGdString(); allowEmpty: bool = true; maxsplit: Int = 0): PackedStringArray =
  `split(StringName String bool Int)`.call(addr self, [getPtr delimiter, getPtr allowEmpty, getPtr maxsplit], addr result)
proc rsplit*(self: StringName; delimiter: String = newGdString(); allowEmpty: bool = true; maxsplit: Int = 0): PackedStringArray =
  `rsplit(StringName String bool Int)`.call(addr self, [getPtr delimiter, getPtr allowEmpty, getPtr maxsplit], addr result)
proc splitFloats*(self: StringName; delimiter: String; allowEmpty: bool = true): PackedFloat64Array =
  `splitFloats(StringName String bool)`.call(addr self, [getPtr delimiter, getPtr allowEmpty], addr result)
proc join*(self: StringName; parts: PackedStringArray): String =
  `join(StringName PackedStringArray)`.call(addr self, [getPtr parts], addr result)
proc toUpper*(self: StringName): String =
  `toUpper(StringName)`.call(addr self, [], addr result)
proc toLower*(self: StringName): String =
  `toLower(StringName)`.call(addr self, [], addr result)
proc left*(self: StringName; length: Int): String =
  `left(StringName Int)`.call(addr self, [getPtr length], addr result)
proc right*(self: StringName; length: Int): String =
  `right(StringName Int)`.call(addr self, [getPtr length], addr result)
proc stripEdges*(self: StringName; left: bool = true; right: bool = true): String =
  `stripEdges(StringName bool bool)`.call(addr self, [getPtr left, getPtr right], addr result)
proc stripEscapes*(self: StringName): String =
  `stripEscapes(StringName)`.call(addr self, [], addr result)
proc lstrip*(self: StringName; chars: String): String =
  `lstrip(StringName String)`.call(addr self, [getPtr chars], addr result)
proc rstrip*(self: StringName; chars: String): String =
  `rstrip(StringName String)`.call(addr self, [getPtr chars], addr result)
proc getExtension*(self: StringName): String =
  `getExtension(StringName)`.call(addr self, [], addr result)
proc getBasename*(self: StringName): String =
  `getBasename(StringName)`.call(addr self, [], addr result)
proc pathJoin*(self: StringName; path: String): String =
  `pathJoin(StringName String)`.call(addr self, [getPtr path], addr result)
proc unicodeAt*(self: StringName; at: Int): Int =
  `unicodeAt(StringName Int)`.call(addr self, [getPtr at], addr result)
proc indent*(self: StringName; prefix: String): String =
  `indent(StringName String)`.call(addr self, [getPtr prefix], addr result)
proc dedent*(self: StringName): String =
  `dedent(StringName)`.call(addr self, [], addr result)
proc md5Text*(self: StringName): String =
  `md5Text(StringName)`.call(addr self, [], addr result)
proc sha1Text*(self: StringName): String =
  `sha1Text(StringName)`.call(addr self, [], addr result)
proc sha256Text*(self: StringName): String =
  `sha256Text(StringName)`.call(addr self, [], addr result)
proc md5Buffer*(self: StringName): PackedByteArray =
  `md5Buffer(StringName)`.call(addr self, [], addr result)
proc sha1Buffer*(self: StringName): PackedByteArray =
  `sha1Buffer(StringName)`.call(addr self, [], addr result)
proc sha256Buffer*(self: StringName): PackedByteArray =
  `sha256Buffer(StringName)`.call(addr self, [], addr result)
proc isEmpty*(self: StringName): bool =
  `isEmpty(StringName)`.call(addr self, [], addr result)
proc contains*(self: StringName; what: String): bool =
  `contains(StringName String)`.call(addr self, [getPtr what], addr result)
proc containsn*(self: StringName; what: String): bool =
  `containsn(StringName String)`.call(addr self, [getPtr what], addr result)
proc isAbsolutePath*(self: StringName): bool =
  `isAbsolutePath(StringName)`.call(addr self, [], addr result)
proc isRelativePath*(self: StringName): bool =
  `isRelativePath(StringName)`.call(addr self, [], addr result)
proc simplifyPath*(self: StringName): String =
  `simplifyPath(StringName)`.call(addr self, [], addr result)
proc getBaseDir*(self: StringName): String =
  `getBaseDir(StringName)`.call(addr self, [], addr result)
proc getFile*(self: StringName): String =
  `getFile(StringName)`.call(addr self, [], addr result)
proc xmlEscape*(self: StringName; escapeQuotes: bool = false): String =
  `xmlEscape(StringName bool)`.call(addr self, [getPtr escapeQuotes], addr result)
proc xmlUnescape*(self: StringName): String =
  `xmlUnescape(StringName)`.call(addr self, [], addr result)
proc uriEncode*(self: StringName): String =
  `uriEncode(StringName)`.call(addr self, [], addr result)
proc uriDecode*(self: StringName): String =
  `uriDecode(StringName)`.call(addr self, [], addr result)
proc uriFileDecode*(self: StringName): String =
  `uriFileDecode(StringName)`.call(addr self, [], addr result)
proc cEscape*(self: StringName): String =
  `cEscape(StringName)`.call(addr self, [], addr result)
proc cUnescape*(self: StringName): String =
  `cUnescape(StringName)`.call(addr self, [], addr result)
proc jsonEscape*(self: StringName): String =
  `jsonEscape(StringName)`.call(addr self, [], addr result)
proc validateNodeName*(self: StringName): String =
  `validateNodeName(StringName)`.call(addr self, [], addr result)
proc validateFilename*(self: StringName): String =
  `validateFilename(StringName)`.call(addr self, [], addr result)
proc isValidAsciiIdentifier*(self: StringName): bool =
  `isValidAsciiIdentifier(StringName)`.call(addr self, [], addr result)
proc isValidUnicodeIdentifier*(self: StringName): bool =
  `isValidUnicodeIdentifier(StringName)`.call(addr self, [], addr result)
proc isValidIdentifier*(self: StringName): bool =
  `isValidIdentifier(StringName)`.call(addr self, [], addr result)
proc isValidInt*(self: StringName): bool =
  `isValidInt(StringName)`.call(addr self, [], addr result)
proc isValidFloat*(self: StringName): bool =
  `isValidFloat(StringName)`.call(addr self, [], addr result)
proc isValidHexNumber*(self: StringName; withPrefix: bool = false): bool =
  `isValidHexNumber(StringName bool)`.call(addr self, [getPtr withPrefix], addr result)
proc isValidHtmlColor*(self: StringName): bool =
  `isValidHtmlColor(StringName)`.call(addr self, [], addr result)
proc isValidIpAddress*(self: StringName): bool =
  `isValidIpAddress(StringName)`.call(addr self, [], addr result)
proc isValidFilename*(self: StringName): bool =
  `isValidFilename(StringName)`.call(addr self, [], addr result)
proc toInt*(self: StringName): Int =
  `toInt(StringName)`.call(addr self, [], addr result)
proc toFloat*(self: StringName): Float =
  `toFloat(StringName)`.call(addr self, [], addr result)
proc hexToInt*(self: StringName): Int =
  `hexToInt(StringName)`.call(addr self, [], addr result)
proc binToInt*(self: StringName): Int =
  `binToInt(StringName)`.call(addr self, [], addr result)
proc lpad*(self: StringName; minLength: Int; character: String = newGdString(" ")): String =
  `lpad(StringName Int String)`.call(addr self, [getPtr minLength, getPtr character], addr result)
proc rpad*(self: StringName; minLength: Int; character: String = newGdString(" ")): String =
  `rpad(StringName Int String)`.call(addr self, [getPtr minLength, getPtr character], addr result)
proc padDecimals*(self: StringName; digits: Int): String =
  `padDecimals(StringName Int)`.call(addr self, [getPtr digits], addr result)
proc padZeros*(self: StringName; digits: Int): String =
  `padZeros(StringName Int)`.call(addr self, [getPtr digits], addr result)
proc trimPrefix*(self: StringName; prefix: String): String =
  `trimPrefix(StringName String)`.call(addr self, [getPtr prefix], addr result)
proc trimSuffix*(self: StringName; suffix: String): String =
  `trimSuffix(StringName String)`.call(addr self, [getPtr suffix], addr result)
proc toAsciiBuffer*(self: StringName): PackedByteArray =
  `toAsciiBuffer(StringName)`.call(addr self, [], addr result)
proc toUtf8Buffer*(self: StringName): PackedByteArray =
  `toUtf8Buffer(StringName)`.call(addr self, [], addr result)
proc toUtf16Buffer*(self: StringName): PackedByteArray =
  `toUtf16Buffer(StringName)`.call(addr self, [], addr result)
proc toUtf32Buffer*(self: StringName): PackedByteArray =
  `toUtf32Buffer(StringName)`.call(addr self, [], addr result)
proc toWcharBuffer*(self: StringName): PackedByteArray =
  `toWcharBuffer(StringName)`.call(addr self, [], addr result)
proc toMultibyteCharBuffer*(self: StringName; encoding: String = newGdString()): PackedByteArray =
  `toMultibyteCharBuffer(StringName String)`.call(addr self, [getPtr encoding], addr result)
proc hexDecode*(self: StringName): PackedByteArray =
  `hexDecode(StringName)`.call(addr self, [], addr result)
proc hash*(self: StringName): Hash =
  `hash(StringName)`.call(addr self, [], addr result)

proc load_StringName_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `casecmpTo(StringName String)` = load(VariantType_StringName, "casecmp_to", 2920860731)
  `nocasecmpTo(StringName String)` = load(VariantType_StringName, "nocasecmp_to", 2920860731)
  `naturalcasecmpTo(StringName String)` = load(VariantType_StringName, "naturalcasecmp_to", 2920860731)
  `naturalnocasecmpTo(StringName String)` = load(VariantType_StringName, "naturalnocasecmp_to", 2920860731)
  `filecasecmpTo(StringName String)` = load(VariantType_StringName, "filecasecmp_to", 2920860731)
  `filenocasecmpTo(StringName String)` = load(VariantType_StringName, "filenocasecmp_to", 2920860731)
  `length(StringName)` = load(VariantType_StringName, "length", 3173160232)
  `substr(StringName Int Int)` = load(VariantType_StringName, "substr", 787537301)
  `getSlice(StringName String Int)` = load(VariantType_StringName, "get_slice", 3535100402)
  `getSlicec(StringName Int Int)` = load(VariantType_StringName, "get_slicec", 787537301)
  `getSliceCount(StringName String)` = load(VariantType_StringName, "get_slice_count", 2920860731)
  `find(StringName String Int)` = load(VariantType_StringName, "find", 1760645412)
  `findn(StringName String Int)` = load(VariantType_StringName, "findn", 1760645412)
  `count(StringName String Int Int)` = load(VariantType_StringName, "count", 2343087891)
  `countn(StringName String Int Int)` = load(VariantType_StringName, "countn", 2343087891)
  `rfind(StringName String Int)` = load(VariantType_StringName, "rfind", 1760645412)
  `rfindn(StringName String Int)` = load(VariantType_StringName, "rfindn", 1760645412)
  `match(StringName String)` = load(VariantType_StringName, "match", 2566493496)
  `matchn(StringName String)` = load(VariantType_StringName, "matchn", 2566493496)
  `beginsWith(StringName String)` = load(VariantType_StringName, "begins_with", 2566493496)
  `endsWith(StringName String)` = load(VariantType_StringName, "ends_with", 2566493496)
  `isSubsequenceOf(StringName String)` = load(VariantType_StringName, "is_subsequence_of", 2566493496)
  `isSubsequenceOfn(StringName String)` = load(VariantType_StringName, "is_subsequence_ofn", 2566493496)
  `bigrams(StringName)` = load(VariantType_StringName, "bigrams", 747180633)
  `similarity(StringName String)` = load(VariantType_StringName, "similarity", 2697460964)
  `format(StringName Variant String)` = load(VariantType_StringName, "format", 3212199029)
  `replace(StringName String String)` = load(VariantType_StringName, "replace", 1340436205)
  `replacen(StringName String String)` = load(VariantType_StringName, "replacen", 1340436205)
  `replaceChar(StringName Int Int)` = load(VariantType_StringName, "replace_char", 787537301)
  `replaceChars(StringName String Int)` = load(VariantType_StringName, "replace_chars", 3535100402)
  `removeChar(StringName Int)` = load(VariantType_StringName, "remove_char", 2162347432)
  `removeChars(StringName String)` = load(VariantType_StringName, "remove_chars", 3134094431)
  `repeat(StringName Int)` = load(VariantType_StringName, "repeat", 2162347432)
  `reverse(StringName)` = load(VariantType_StringName, "reverse", 3942272618)
  `insert(StringName Int String)` = load(VariantType_StringName, "insert", 248737229)
  `erase(StringName Int Int)` = load(VariantType_StringName, "erase", 787537301)
  `capitalize(StringName)` = load(VariantType_StringName, "capitalize", 3942272618)
  `toCamelCase(StringName)` = load(VariantType_StringName, "to_camel_case", 3942272618)
  `toPascalCase(StringName)` = load(VariantType_StringName, "to_pascal_case", 3942272618)
  `toSnakeCase(StringName)` = load(VariantType_StringName, "to_snake_case", 3942272618)
  `toKebabCase(StringName)` = load(VariantType_StringName, "to_kebab_case", 3942272618)
  `split(StringName String bool Int)` = load(VariantType_StringName, "split", 1252735785)
  `rsplit(StringName String bool Int)` = load(VariantType_StringName, "rsplit", 1252735785)
  `splitFloats(StringName String bool)` = load(VariantType_StringName, "split_floats", 2092079095)
  `join(StringName PackedStringArray)` = load(VariantType_StringName, "join", 3595973238)
  `toUpper(StringName)` = load(VariantType_StringName, "to_upper", 3942272618)
  `toLower(StringName)` = load(VariantType_StringName, "to_lower", 3942272618)
  `left(StringName Int)` = load(VariantType_StringName, "left", 2162347432)
  `right(StringName Int)` = load(VariantType_StringName, "right", 2162347432)
  `stripEdges(StringName bool bool)` = load(VariantType_StringName, "strip_edges", 907855311)
  `stripEscapes(StringName)` = load(VariantType_StringName, "strip_escapes", 3942272618)
  `lstrip(StringName String)` = load(VariantType_StringName, "lstrip", 3134094431)
  `rstrip(StringName String)` = load(VariantType_StringName, "rstrip", 3134094431)
  `getExtension(StringName)` = load(VariantType_StringName, "get_extension", 3942272618)
  `getBasename(StringName)` = load(VariantType_StringName, "get_basename", 3942272618)
  `pathJoin(StringName String)` = load(VariantType_StringName, "path_join", 3134094431)
  `unicodeAt(StringName Int)` = load(VariantType_StringName, "unicode_at", 4103005248)
  `indent(StringName String)` = load(VariantType_StringName, "indent", 3134094431)
  `dedent(StringName)` = load(VariantType_StringName, "dedent", 3942272618)
  `md5Text(StringName)` = load(VariantType_StringName, "md5_text", 3942272618)
  `sha1Text(StringName)` = load(VariantType_StringName, "sha1_text", 3942272618)
  `sha256Text(StringName)` = load(VariantType_StringName, "sha256_text", 3942272618)
  `md5Buffer(StringName)` = load(VariantType_StringName, "md5_buffer", 247621236)
  `sha1Buffer(StringName)` = load(VariantType_StringName, "sha1_buffer", 247621236)
  `sha256Buffer(StringName)` = load(VariantType_StringName, "sha256_buffer", 247621236)
  `isEmpty(StringName)` = load(VariantType_StringName, "is_empty", 3918633141)
  `contains(StringName String)` = load(VariantType_StringName, "contains", 2566493496)
  `containsn(StringName String)` = load(VariantType_StringName, "containsn", 2566493496)
  `isAbsolutePath(StringName)` = load(VariantType_StringName, "is_absolute_path", 3918633141)
  `isRelativePath(StringName)` = load(VariantType_StringName, "is_relative_path", 3918633141)
  `simplifyPath(StringName)` = load(VariantType_StringName, "simplify_path", 3942272618)
  `getBaseDir(StringName)` = load(VariantType_StringName, "get_base_dir", 3942272618)
  `getFile(StringName)` = load(VariantType_StringName, "get_file", 3942272618)
  `xmlEscape(StringName bool)` = load(VariantType_StringName, "xml_escape", 3429816538)
  `xmlUnescape(StringName)` = load(VariantType_StringName, "xml_unescape", 3942272618)
  `uriEncode(StringName)` = load(VariantType_StringName, "uri_encode", 3942272618)
  `uriDecode(StringName)` = load(VariantType_StringName, "uri_decode", 3942272618)
  `uriFileDecode(StringName)` = load(VariantType_StringName, "uri_file_decode", 3942272618)
  `cEscape(StringName)` = load(VariantType_StringName, "c_escape", 3942272618)
  `cUnescape(StringName)` = load(VariantType_StringName, "c_unescape", 3942272618)
  `jsonEscape(StringName)` = load(VariantType_StringName, "json_escape", 3942272618)
  `validateNodeName(StringName)` = load(VariantType_StringName, "validate_node_name", 3942272618)
  `validateFilename(StringName)` = load(VariantType_StringName, "validate_filename", 3942272618)
  `isValidAsciiIdentifier(StringName)` = load(VariantType_StringName, "is_valid_ascii_identifier", 3918633141)
  `isValidUnicodeIdentifier(StringName)` = load(VariantType_StringName, "is_valid_unicode_identifier", 3918633141)
  `isValidIdentifier(StringName)` = load(VariantType_StringName, "is_valid_identifier", 3918633141)
  `isValidInt(StringName)` = load(VariantType_StringName, "is_valid_int", 3918633141)
  `isValidFloat(StringName)` = load(VariantType_StringName, "is_valid_float", 3918633141)
  `isValidHexNumber(StringName bool)` = load(VariantType_StringName, "is_valid_hex_number", 593672999)
  `isValidHtmlColor(StringName)` = load(VariantType_StringName, "is_valid_html_color", 3918633141)
  `isValidIpAddress(StringName)` = load(VariantType_StringName, "is_valid_ip_address", 3918633141)
  `isValidFilename(StringName)` = load(VariantType_StringName, "is_valid_filename", 3918633141)
  `toInt(StringName)` = load(VariantType_StringName, "to_int", 3173160232)
  `toFloat(StringName)` = load(VariantType_StringName, "to_float", 466405837)
  `hexToInt(StringName)` = load(VariantType_StringName, "hex_to_int", 3173160232)
  `binToInt(StringName)` = load(VariantType_StringName, "bin_to_int", 3173160232)
  `lpad(StringName Int String)` = load(VariantType_StringName, "lpad", 248737229)
  `rpad(StringName Int String)` = load(VariantType_StringName, "rpad", 248737229)
  `padDecimals(StringName Int)` = load(VariantType_StringName, "pad_decimals", 2162347432)
  `padZeros(StringName Int)` = load(VariantType_StringName, "pad_zeros", 2162347432)
  `trimPrefix(StringName String)` = load(VariantType_StringName, "trim_prefix", 3134094431)
  `trimSuffix(StringName String)` = load(VariantType_StringName, "trim_suffix", 3134094431)
  `toAsciiBuffer(StringName)` = load(VariantType_StringName, "to_ascii_buffer", 247621236)
  `toUtf8Buffer(StringName)` = load(VariantType_StringName, "to_utf8_buffer", 247621236)
  `toUtf16Buffer(StringName)` = load(VariantType_StringName, "to_utf16_buffer", 247621236)
  `toUtf32Buffer(StringName)` = load(VariantType_StringName, "to_utf32_buffer", 247621236)
  `toWcharBuffer(StringName)` = load(VariantType_StringName, "to_wchar_buffer", 247621236)
  `toMultibyteCharBuffer(StringName String)` = load(VariantType_StringName, "to_multibyte_char_buffer", 3055765187)
  `hexDecode(StringName)` = load(VariantType_StringName, "hex_decode", 247621236)
  `hash(StringName)` = load(VariantType_StringName, "hash", 3173160232)
