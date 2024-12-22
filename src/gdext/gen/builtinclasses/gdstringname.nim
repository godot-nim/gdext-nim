{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

var `==(StringName Variant)`: PtrOperatorEvaluator
var `!=(StringName Variant)`: PtrOperatorEvaluator
var `mod(StringName Variant)`: PtrOperatorEvaluator
var `not(StringName)`: PtrOperatorEvaluator
var `mod(StringName bool)`: PtrOperatorEvaluator
var `mod(StringName Int)`: PtrOperatorEvaluator
var `mod(StringName Float)`: PtrOperatorEvaluator
var `==(StringName String)`: PtrOperatorEvaluator
var `!=(StringName String)`: PtrOperatorEvaluator
var `+(StringName String)`: PtrOperatorEvaluator
var `mod(StringName String)`: PtrOperatorEvaluator
# `contains(StringName String)`
var `mod(StringName Vector2)`: PtrOperatorEvaluator
var `mod(StringName Vector2i)`: PtrOperatorEvaluator
var `mod(StringName Rect2)`: PtrOperatorEvaluator
var `mod(StringName Rect2i)`: PtrOperatorEvaluator
var `mod(StringName Vector3)`: PtrOperatorEvaluator
var `mod(StringName Vector3i)`: PtrOperatorEvaluator
var `mod(StringName Transform2D)`: PtrOperatorEvaluator
var `mod(StringName Vector4)`: PtrOperatorEvaluator
var `mod(StringName Vector4i)`: PtrOperatorEvaluator
var `mod(StringName Plane)`: PtrOperatorEvaluator
var `mod(StringName Quaternion)`: PtrOperatorEvaluator
var `mod(StringName AABB)`: PtrOperatorEvaluator
var `mod(StringName Basis)`: PtrOperatorEvaluator
var `mod(StringName Transform3D)`: PtrOperatorEvaluator
var `mod(StringName Projection)`: PtrOperatorEvaluator
var `mod(StringName Color)`: PtrOperatorEvaluator
var `==(StringName StringName)`: PtrOperatorEvaluator
var `!=(StringName StringName)`: PtrOperatorEvaluator
var `<(StringName StringName)`: PtrOperatorEvaluator
var `<=(StringName StringName)`: PtrOperatorEvaluator
var `>(StringName StringName)`: PtrOperatorEvaluator
var `>=(StringName StringName)`: PtrOperatorEvaluator
var `+(StringName StringName)`: PtrOperatorEvaluator
var `mod(StringName StringName)`: PtrOperatorEvaluator
var `contains(StringName StringName)`: PtrOperatorEvaluator
var `mod(StringName NodePath)`: PtrOperatorEvaluator
var `mod(StringName Object)`: PtrOperatorEvaluator
var `contains(StringName Object)`: PtrOperatorEvaluator
var `mod(StringName Callable)`: PtrOperatorEvaluator
var `mod(StringName Signal)`: PtrOperatorEvaluator
var `mod(StringName Dictionary)`: PtrOperatorEvaluator
var `contains(StringName Dictionary)`: PtrOperatorEvaluator
var `mod(StringName Array)`: PtrOperatorEvaluator
var `contains(StringName Array)`: PtrOperatorEvaluator
var `mod(StringName PackedByteArray)`: PtrOperatorEvaluator
var `mod(StringName PackedInt32Array)`: PtrOperatorEvaluator
var `mod(StringName PackedInt64Array)`: PtrOperatorEvaluator
var `mod(StringName PackedFloat32Array)`: PtrOperatorEvaluator
var `mod(StringName PackedFloat64Array)`: PtrOperatorEvaluator
var `mod(StringName PackedStringArray)`: PtrOperatorEvaluator
var `contains(StringName PackedStringArray)`: PtrOperatorEvaluator
var `mod(StringName PackedVector2Array)`: PtrOperatorEvaluator
var `mod(StringName PackedVector3Array)`: PtrOperatorEvaluator
var `mod(StringName PackedColorArray)`: PtrOperatorEvaluator
var `mod(StringName PackedVector4Array)`: PtrOperatorEvaluator
proc `==`*(left: StringName; right: Variant): bool = `==(StringName Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: StringName; right: Variant): bool = `!=(StringName Variant)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Variant): String = `mod(StringName Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: StringName): bool = `not(StringName)`(getPtr left, nil, addr result)
proc `mod`*(left: StringName; right: bool): String = `mod(StringName bool)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Int): String = `mod(StringName Int)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Float): String = `mod(StringName Float)`(getPtr left, getPtr right, addr result)
proc `==`*(left: StringName; right: String): bool = `==(StringName String)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: StringName; right: String): bool = `!=(StringName String)`(getPtr left, getPtr right, addr result)
proc `+`*(left: StringName; right: String): String = `+(StringName String)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: String): String = `mod(StringName String)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Vector2): String = `mod(StringName Vector2)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Vector2i): String = `mod(StringName Vector2i)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Rect2): String = `mod(StringName Rect2)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Rect2i): String = `mod(StringName Rect2i)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Vector3): String = `mod(StringName Vector3)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Vector3i): String = `mod(StringName Vector3i)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Transform2D): String = `mod(StringName Transform2D)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Vector4): String = `mod(StringName Vector4)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Vector4i): String = `mod(StringName Vector4i)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Plane): String = `mod(StringName Plane)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Quaternion): String = `mod(StringName Quaternion)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: AABB): String = `mod(StringName AABB)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Basis): String = `mod(StringName Basis)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Transform3D): String = `mod(StringName Transform3D)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Projection): String = `mod(StringName Projection)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Color): String = `mod(StringName Color)`(getPtr left, getPtr right, addr result)
proc `==`*(left: StringName; right: StringName): bool = `==(StringName StringName)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: StringName; right: StringName): bool = `!=(StringName StringName)`(getPtr left, getPtr right, addr result)
proc `<`*(left: StringName; right: StringName): bool = `<(StringName StringName)`(getPtr left, getPtr right, addr result)
proc `<=`*(left: StringName; right: StringName): bool = `<=(StringName StringName)`(getPtr left, getPtr right, addr result)
proc `>`*(left: StringName; right: StringName): bool = `>(StringName StringName)`(getPtr left, getPtr right, addr result)
proc `>=`*(left: StringName; right: StringName): bool = `>=(StringName StringName)`(getPtr left, getPtr right, addr result)
proc `+`*(left: StringName; right: StringName): String = `+(StringName StringName)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: StringName): String = `mod(StringName StringName)`(getPtr left, getPtr right, addr result)
proc contains*(left: StringName; right: StringName): bool = `contains(StringName StringName)`(getPtr right, getPtr left, addr result)
proc `mod`*(left: StringName; right: NodePath): String = `mod(StringName NodePath)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Object): String = `mod(StringName Object)`(getPtr left, getPtr right, addr result)
proc contains*(left: Object; right: StringName): bool = `contains(StringName Object)`(getPtr right, getPtr left, addr result)
proc `mod`*(left: StringName; right: Callable): String = `mod(StringName Callable)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Signal): String = `mod(StringName Signal)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: Dictionary): String = `mod(StringName Dictionary)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: StringName): bool = `contains(StringName Dictionary)`(getPtr right, getPtr left, addr result)
proc `mod`*(left: StringName; right: Array): String = `mod(StringName Array)`(getPtr left, getPtr right, addr result)
proc contains*(left: Array; right: StringName): bool = `contains(StringName Array)`(getPtr right, getPtr left, addr result)
proc `mod`*(left: StringName; right: PackedByteArray): String = `mod(StringName PackedByteArray)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: PackedInt32Array): String = `mod(StringName PackedInt32Array)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: PackedInt64Array): String = `mod(StringName PackedInt64Array)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: PackedFloat32Array): String = `mod(StringName PackedFloat32Array)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: PackedFloat64Array): String = `mod(StringName PackedFloat64Array)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: PackedStringArray): String = `mod(StringName PackedStringArray)`(getPtr left, getPtr right, addr result)
proc contains*(left: PackedStringArray; right: StringName): bool = `contains(StringName PackedStringArray)`(getPtr right, getPtr left, addr result)
proc `mod`*(left: StringName; right: PackedVector2Array): String = `mod(StringName PackedVector2Array)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: PackedVector3Array): String = `mod(StringName PackedVector3Array)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: PackedColorArray): String = `mod(StringName PackedColorArray)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: StringName; right: PackedVector4Array): String = `mod(StringName PackedVector4Array)`(getPtr left, getPtr right, addr result)
proc load_StringName_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(StringName Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_StringName, VariantType_Nil)
  `!=(StringName Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_StringName, VariantType_Nil)
  `mod(StringName Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Nil)
  `not(StringName)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_StringName, VariantType_Nil)
  `mod(StringName bool)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_bool)
  `mod(StringName Int)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Int)
  `mod(StringName Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Float)
  `==(StringName String)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_StringName, VariantType_String)
  `!=(StringName String)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_StringName, VariantType_String)
  `+(StringName String)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Add, VariantType_StringName, VariantType_String)
  `mod(StringName String)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_String)
  `mod(StringName Vector2)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Vector2)
  `mod(StringName Vector2i)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Vector2i)
  `mod(StringName Rect2)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Rect2)
  `mod(StringName Rect2i)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Rect2i)
  `mod(StringName Vector3)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Vector3)
  `mod(StringName Vector3i)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Vector3i)
  `mod(StringName Transform2D)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Transform2D)
  `mod(StringName Vector4)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Vector4)
  `mod(StringName Vector4i)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Vector4i)
  `mod(StringName Plane)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Plane)
  `mod(StringName Quaternion)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Quaternion)
  `mod(StringName AABB)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_AABB)
  `mod(StringName Basis)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Basis)
  `mod(StringName Transform3D)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Transform3D)
  `mod(StringName Projection)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Projection)
  `mod(StringName Color)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Color)
  `==(StringName StringName)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_StringName, VariantType_StringName)
  `!=(StringName StringName)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_StringName, VariantType_StringName)
  `<(StringName StringName)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Less, VariantType_StringName, VariantType_StringName)
  `<=(StringName StringName)` = interface_variantGetPtrOperatorEvaluator(VariantOP_LessEqual, VariantType_StringName, VariantType_StringName)
  `>(StringName StringName)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Greater, VariantType_StringName, VariantType_StringName)
  `>=(StringName StringName)` = interface_variantGetPtrOperatorEvaluator(VariantOP_GreaterEqual, VariantType_StringName, VariantType_StringName)
  `+(StringName StringName)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Add, VariantType_StringName, VariantType_StringName)
  `mod(StringName StringName)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_StringName)
  `contains(StringName StringName)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_StringName, VariantType_StringName)
  `mod(StringName NodePath)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_NodePath)
  `mod(StringName Object)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Object)
  `contains(StringName Object)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_StringName, VariantType_Object)
  `mod(StringName Callable)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Callable)
  `mod(StringName Signal)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Signal)
  `mod(StringName Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Dictionary)
  `contains(StringName Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_StringName, VariantType_Dictionary)
  `mod(StringName Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_Array)
  `contains(StringName Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_StringName, VariantType_Array)
  `mod(StringName PackedByteArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_PackedByteArray)
  `mod(StringName PackedInt32Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_PackedInt32Array)
  `mod(StringName PackedInt64Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_PackedInt64Array)
  `mod(StringName PackedFloat32Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_PackedFloat32Array)
  `mod(StringName PackedFloat64Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_PackedFloat64Array)
  `mod(StringName PackedStringArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_PackedStringArray)
  `contains(StringName PackedStringArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_StringName, VariantType_PackedStringArray)
  `mod(StringName PackedVector2Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_PackedVector2Array)
  `mod(StringName PackedVector3Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_PackedVector3Array)
  `mod(StringName PackedColorArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_PackedColorArray)
  `mod(StringName PackedVector4Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_StringName, VariantType_PackedVector4Array)

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
var `repeat(StringName Int)`: PtrBuiltinMethod
var `reverse(StringName)`: PtrBuiltinMethod
var `insert(StringName Int String)`: PtrBuiltinMethod
var `erase(StringName Int Int)`: PtrBuiltinMethod
var `capitalize(StringName)`: PtrBuiltinMethod
var `toCamelCase(StringName)`: PtrBuiltinMethod
var `toPascalCase(StringName)`: PtrBuiltinMethod
var `toSnakeCase(StringName)`: PtrBuiltinMethod
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
# `contains(StringName String)`
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
var `cEscape(StringName)`: PtrBuiltinMethod
var `cUnescape(StringName)`: PtrBuiltinMethod
var `jsonEscape(StringName)`: PtrBuiltinMethod
var `validateNodeName(StringName)`: PtrBuiltinMethod
var `validateFilename(StringName)`: PtrBuiltinMethod
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
var `hexDecode(StringName)`: PtrBuiltinMethod
var `toWcharBuffer(StringName)`: PtrBuiltinMethod
var `hash(StringName)`: PtrBuiltinMethod

proc casecmpTo*(self: StringName; to: String): Int =
  let argArr = [getPtr to]
  `casecmpTo(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc nocasecmpTo*(self: StringName; to: String): Int =
  let argArr = [getPtr to]
  `nocasecmpTo(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc naturalcasecmpTo*(self: StringName; to: String): Int =
  let argArr = [getPtr to]
  `naturalcasecmpTo(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc naturalnocasecmpTo*(self: StringName; to: String): Int =
  let argArr = [getPtr to]
  `naturalnocasecmpTo(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc filecasecmpTo*(self: StringName; to: String): Int =
  let argArr = [getPtr to]
  `filecasecmpTo(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc filenocasecmpTo*(self: StringName; to: String): Int =
  let argArr = [getPtr to]
  `filenocasecmpTo(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc length*(self: StringName): Int =
  `length(StringName)`(addr self, nil, addr result, 0)
proc substr*(self: StringName; `from`: Int; len: Int = -1): String =
  let argArr = [getPtr `from`, getPtr len]
  `substr(StringName Int Int)`(addr self, addr argArr[0], addr result, 2)
proc getSlice*(self: StringName; delimiter: String; slice: Int): String =
  let argArr = [getPtr delimiter, getPtr slice]
  `getSlice(StringName String Int)`(addr self, addr argArr[0], addr result, 2)
proc getSlicec*(self: StringName; delimiter: Int; slice: Int): String =
  let argArr = [getPtr delimiter, getPtr slice]
  `getSlicec(StringName Int Int)`(addr self, addr argArr[0], addr result, 2)
proc getSliceCount*(self: StringName; delimiter: String): Int =
  let argArr = [getPtr delimiter]
  `getSliceCount(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc find*(self: StringName; what: String; `from`: Int = 0): Int =
  let argArr = [getPtr what, getPtr `from`]
  `find(StringName String Int)`(addr self, addr argArr[0], addr result, 2)
proc findn*(self: StringName; what: String; `from`: Int = 0): Int =
  let argArr = [getPtr what, getPtr `from`]
  `findn(StringName String Int)`(addr self, addr argArr[0], addr result, 2)
proc count*(self: StringName; what: String; `from`: Int = 0; to: Int = 0): Int =
  let argArr = [getPtr what, getPtr `from`, getPtr to]
  `count(StringName String Int Int)`(addr self, addr argArr[0], addr result, 3)
proc countn*(self: StringName; what: String; `from`: Int = 0; to: Int = 0): Int =
  let argArr = [getPtr what, getPtr `from`, getPtr to]
  `countn(StringName String Int Int)`(addr self, addr argArr[0], addr result, 3)
proc rfind*(self: StringName; what: String; `from`: Int = -1): Int =
  let argArr = [getPtr what, getPtr `from`]
  `rfind(StringName String Int)`(addr self, addr argArr[0], addr result, 2)
proc rfindn*(self: StringName; what: String; `from`: Int = -1): Int =
  let argArr = [getPtr what, getPtr `from`]
  `rfindn(StringName String Int)`(addr self, addr argArr[0], addr result, 2)
proc match*(self: StringName; expr: String): bool =
  let argArr = [getPtr expr]
  `match(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc matchn*(self: StringName; expr: String): bool =
  let argArr = [getPtr expr]
  `matchn(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc beginsWith*(self: StringName; text: String): bool =
  let argArr = [getPtr text]
  `beginsWith(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc endsWith*(self: StringName; text: String): bool =
  let argArr = [getPtr text]
  `endsWith(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc isSubsequenceOf*(self: StringName; text: String): bool =
  let argArr = [getPtr text]
  `isSubsequenceOf(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc isSubsequenceOfn*(self: StringName; text: String): bool =
  let argArr = [getPtr text]
  `isSubsequenceOfn(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc bigrams*(self: StringName): PackedStringArray =
  `bigrams(StringName)`(addr self, nil, addr result, 0)
proc similarity*(self: StringName; text: String): Float =
  let argArr = [getPtr text]
  `similarity(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc format*(self: StringName; values: Variant; placeholder: String = gdstring"{_}"): String =
  let argArr = [getPtr values, getPtr placeholder]
  `format(StringName Variant String)`(addr self, addr argArr[0], addr result, 2)
proc replace*(self: StringName; what: String; forwhat: String): String =
  let argArr = [getPtr what, getPtr forwhat]
  `replace(StringName String String)`(addr self, addr argArr[0], addr result, 2)
proc replacen*(self: StringName; what: String; forwhat: String): String =
  let argArr = [getPtr what, getPtr forwhat]
  `replacen(StringName String String)`(addr self, addr argArr[0], addr result, 2)
proc repeat*(self: StringName; count: Int): String =
  let argArr = [getPtr count]
  `repeat(StringName Int)`(addr self, addr argArr[0], addr result, 1)
proc reverse*(self: StringName): String =
  `reverse(StringName)`(addr self, nil, addr result, 0)
proc insert*(self: StringName; position: Int; what: String): String =
  let argArr = [getPtr position, getPtr what]
  `insert(StringName Int String)`(addr self, addr argArr[0], addr result, 2)
proc erase*(self: StringName; position: Int; chars: Int = 1): String =
  let argArr = [getPtr position, getPtr chars]
  `erase(StringName Int Int)`(addr self, addr argArr[0], addr result, 2)
proc capitalize*(self: StringName): String =
  `capitalize(StringName)`(addr self, nil, addr result, 0)
proc toCamelCase*(self: StringName): String =
  `toCamelCase(StringName)`(addr self, nil, addr result, 0)
proc toPascalCase*(self: StringName): String =
  `toPascalCase(StringName)`(addr self, nil, addr result, 0)
proc toSnakeCase*(self: StringName): String =
  `toSnakeCase(StringName)`(addr self, nil, addr result, 0)
proc split*(self: StringName; delimiter: String = gdstring""; allowEmpty: bool = true; maxsplit: Int = 0): PackedStringArray =
  let argArr = [getPtr delimiter, getPtr allowEmpty, getPtr maxsplit]
  `split(StringName String bool Int)`(addr self, addr argArr[0], addr result, 3)
proc rsplit*(self: StringName; delimiter: String = gdstring""; allowEmpty: bool = true; maxsplit: Int = 0): PackedStringArray =
  let argArr = [getPtr delimiter, getPtr allowEmpty, getPtr maxsplit]
  `rsplit(StringName String bool Int)`(addr self, addr argArr[0], addr result, 3)
proc splitFloats*(self: StringName; delimiter: String; allowEmpty: bool = true): PackedFloat64Array =
  let argArr = [getPtr delimiter, getPtr allowEmpty]
  `splitFloats(StringName String bool)`(addr self, addr argArr[0], addr result, 2)
proc join*(self: StringName; parts: PackedStringArray): String =
  let argArr = [getPtr parts]
  `join(StringName PackedStringArray)`(addr self, addr argArr[0], addr result, 1)
proc toUpper*(self: StringName): String =
  `toUpper(StringName)`(addr self, nil, addr result, 0)
proc toLower*(self: StringName): String =
  `toLower(StringName)`(addr self, nil, addr result, 0)
proc left*(self: StringName; length: Int): String =
  let argArr = [getPtr length]
  `left(StringName Int)`(addr self, addr argArr[0], addr result, 1)
proc right*(self: StringName; length: Int): String =
  let argArr = [getPtr length]
  `right(StringName Int)`(addr self, addr argArr[0], addr result, 1)
proc stripEdges*(self: StringName; left: bool = true; right: bool = true): String =
  let argArr = [getPtr left, getPtr right]
  `stripEdges(StringName bool bool)`(addr self, addr argArr[0], addr result, 2)
proc stripEscapes*(self: StringName): String =
  `stripEscapes(StringName)`(addr self, nil, addr result, 0)
proc lstrip*(self: StringName; chars: String): String =
  let argArr = [getPtr chars]
  `lstrip(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc rstrip*(self: StringName; chars: String): String =
  let argArr = [getPtr chars]
  `rstrip(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc getExtension*(self: StringName): String =
  `getExtension(StringName)`(addr self, nil, addr result, 0)
proc getBasename*(self: StringName): String =
  `getBasename(StringName)`(addr self, nil, addr result, 0)
proc pathJoin*(self: StringName; file: String): String =
  let argArr = [getPtr file]
  `pathJoin(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc unicodeAt*(self: StringName; at: Int): Int =
  let argArr = [getPtr at]
  `unicodeAt(StringName Int)`(addr self, addr argArr[0], addr result, 1)
proc indent*(self: StringName; prefix: String): String =
  let argArr = [getPtr prefix]
  `indent(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc dedent*(self: StringName): String =
  `dedent(StringName)`(addr self, nil, addr result, 0)
proc md5Text*(self: StringName): String =
  `md5Text(StringName)`(addr self, nil, addr result, 0)
proc sha1Text*(self: StringName): String =
  `sha1Text(StringName)`(addr self, nil, addr result, 0)
proc sha256Text*(self: StringName): String =
  `sha256Text(StringName)`(addr self, nil, addr result, 0)
proc md5Buffer*(self: StringName): PackedByteArray =
  `md5Buffer(StringName)`(addr self, nil, addr result, 0)
proc sha1Buffer*(self: StringName): PackedByteArray =
  `sha1Buffer(StringName)`(addr self, nil, addr result, 0)
proc sha256Buffer*(self: StringName): PackedByteArray =
  `sha256Buffer(StringName)`(addr self, nil, addr result, 0)
proc isEmpty*(self: StringName): bool =
  `isEmpty(StringName)`(addr self, nil, addr result, 0)
proc containsn*(self: StringName; what: String): bool =
  let argArr = [getPtr what]
  `containsn(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc isAbsolutePath*(self: StringName): bool =
  `isAbsolutePath(StringName)`(addr self, nil, addr result, 0)
proc isRelativePath*(self: StringName): bool =
  `isRelativePath(StringName)`(addr self, nil, addr result, 0)
proc simplifyPath*(self: StringName): String =
  `simplifyPath(StringName)`(addr self, nil, addr result, 0)
proc getBaseDir*(self: StringName): String =
  `getBaseDir(StringName)`(addr self, nil, addr result, 0)
proc getFile*(self: StringName): String =
  `getFile(StringName)`(addr self, nil, addr result, 0)
proc xmlEscape*(self: StringName; escapeQuotes: bool = false): String =
  let argArr = [getPtr escapeQuotes]
  `xmlEscape(StringName bool)`(addr self, addr argArr[0], addr result, 1)
proc xmlUnescape*(self: StringName): String =
  `xmlUnescape(StringName)`(addr self, nil, addr result, 0)
proc uriEncode*(self: StringName): String =
  `uriEncode(StringName)`(addr self, nil, addr result, 0)
proc uriDecode*(self: StringName): String =
  `uriDecode(StringName)`(addr self, nil, addr result, 0)
proc cEscape*(self: StringName): String =
  `cEscape(StringName)`(addr self, nil, addr result, 0)
proc cUnescape*(self: StringName): String =
  `cUnescape(StringName)`(addr self, nil, addr result, 0)
proc jsonEscape*(self: StringName): String =
  `jsonEscape(StringName)`(addr self, nil, addr result, 0)
proc validateNodeName*(self: StringName): String =
  `validateNodeName(StringName)`(addr self, nil, addr result, 0)
proc validateFilename*(self: StringName): String =
  `validateFilename(StringName)`(addr self, nil, addr result, 0)
proc isValidIdentifier*(self: StringName): bool =
  `isValidIdentifier(StringName)`(addr self, nil, addr result, 0)
proc isValidInt*(self: StringName): bool =
  `isValidInt(StringName)`(addr self, nil, addr result, 0)
proc isValidFloat*(self: StringName): bool =
  `isValidFloat(StringName)`(addr self, nil, addr result, 0)
proc isValidHexNumber*(self: StringName; withPrefix: bool = false): bool =
  let argArr = [getPtr withPrefix]
  `isValidHexNumber(StringName bool)`(addr self, addr argArr[0], addr result, 1)
proc isValidHtmlColor*(self: StringName): bool =
  `isValidHtmlColor(StringName)`(addr self, nil, addr result, 0)
proc isValidIpAddress*(self: StringName): bool =
  `isValidIpAddress(StringName)`(addr self, nil, addr result, 0)
proc isValidFilename*(self: StringName): bool =
  `isValidFilename(StringName)`(addr self, nil, addr result, 0)
proc toInt*(self: StringName): Int =
  `toInt(StringName)`(addr self, nil, addr result, 0)
proc toFloat*(self: StringName): Float =
  `toFloat(StringName)`(addr self, nil, addr result, 0)
proc hexToInt*(self: StringName): Int =
  `hexToInt(StringName)`(addr self, nil, addr result, 0)
proc binToInt*(self: StringName): Int =
  `binToInt(StringName)`(addr self, nil, addr result, 0)
proc lpad*(self: StringName; minLength: Int; character: String = gdstring" "): String =
  let argArr = [getPtr minLength, getPtr character]
  `lpad(StringName Int String)`(addr self, addr argArr[0], addr result, 2)
proc rpad*(self: StringName; minLength: Int; character: String = gdstring" "): String =
  let argArr = [getPtr minLength, getPtr character]
  `rpad(StringName Int String)`(addr self, addr argArr[0], addr result, 2)
proc padDecimals*(self: StringName; digits: Int): String =
  let argArr = [getPtr digits]
  `padDecimals(StringName Int)`(addr self, addr argArr[0], addr result, 1)
proc padZeros*(self: StringName; digits: Int): String =
  let argArr = [getPtr digits]
  `padZeros(StringName Int)`(addr self, addr argArr[0], addr result, 1)
proc trimPrefix*(self: StringName; prefix: String): String =
  let argArr = [getPtr prefix]
  `trimPrefix(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc trimSuffix*(self: StringName; suffix: String): String =
  let argArr = [getPtr suffix]
  `trimSuffix(StringName String)`(addr self, addr argArr[0], addr result, 1)
proc toAsciiBuffer*(self: StringName): PackedByteArray =
  `toAsciiBuffer(StringName)`(addr self, nil, addr result, 0)
proc toUtf8Buffer*(self: StringName): PackedByteArray =
  `toUtf8Buffer(StringName)`(addr self, nil, addr result, 0)
proc toUtf16Buffer*(self: StringName): PackedByteArray =
  `toUtf16Buffer(StringName)`(addr self, nil, addr result, 0)
proc toUtf32Buffer*(self: StringName): PackedByteArray =
  `toUtf32Buffer(StringName)`(addr self, nil, addr result, 0)
proc hexDecode*(self: StringName): PackedByteArray =
  `hexDecode(StringName)`(addr self, nil, addr result, 0)
proc toWcharBuffer*(self: StringName): PackedByteArray =
  `toWcharBuffer(StringName)`(addr self, nil, addr result, 0)
proc hash*(self: StringName): Int =
  `hash(StringName)`(addr self, nil, addr result, 0)

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
  `repeat(StringName Int)` = load(VariantType_StringName, "repeat", 2162347432)
  `reverse(StringName)` = load(VariantType_StringName, "reverse", 3942272618)
  `insert(StringName Int String)` = load(VariantType_StringName, "insert", 248737229)
  `erase(StringName Int Int)` = load(VariantType_StringName, "erase", 787537301)
  `capitalize(StringName)` = load(VariantType_StringName, "capitalize", 3942272618)
  `toCamelCase(StringName)` = load(VariantType_StringName, "to_camel_case", 3942272618)
  `toPascalCase(StringName)` = load(VariantType_StringName, "to_pascal_case", 3942272618)
  `toSnakeCase(StringName)` = load(VariantType_StringName, "to_snake_case", 3942272618)
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
  `cEscape(StringName)` = load(VariantType_StringName, "c_escape", 3942272618)
  `cUnescape(StringName)` = load(VariantType_StringName, "c_unescape", 3942272618)
  `jsonEscape(StringName)` = load(VariantType_StringName, "json_escape", 3942272618)
  `validateNodeName(StringName)` = load(VariantType_StringName, "validate_node_name", 3942272618)
  `validateFilename(StringName)` = load(VariantType_StringName, "validate_filename", 3942272618)
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
  `hexDecode(StringName)` = load(VariantType_StringName, "hex_decode", 247621236)
  `toWcharBuffer(StringName)` = load(VariantType_StringName, "to_wchar_buffer", 247621236)
  `hash(StringName)` = load(VariantType_StringName, "hash", 3173160232)