{.warning[UnusedImport]:off.}

import ./constructors
import gdext/coronation/header/builtinclasses

proc `[]`*(self: String; index: int): String.Item = cast[ptr String.Item](interface_String_operatorIndexConst(addr self, index))[]
proc `[]`*(self: var String; index: int): var String.Item = cast[ptr String.Item](interface_String_operatorIndex(addr self, index))[]
proc `[]=`*(self: var String; index: int; value: String.Item) = cast[ptr String.Item](interface_String_operatorIndex(addr self, index))[] = value

var `==(String Variant)`: PtrOperatorEvaluator
var `!=(String Variant)`: PtrOperatorEvaluator
var `mod(String Variant)`: PtrOperatorEvaluator
var `not(String)`: PtrOperatorEvaluator
var `mod(String bool)`: PtrOperatorEvaluator
var `mod(String Int)`: PtrOperatorEvaluator
var `mod(String Float)`: PtrOperatorEvaluator
var `==(String String)`: PtrOperatorEvaluator
var `!=(String String)`: PtrOperatorEvaluator
var `<(String String)`: PtrOperatorEvaluator
var `<=(String String)`: PtrOperatorEvaluator
var `>(String String)`: PtrOperatorEvaluator
var `>=(String String)`: PtrOperatorEvaluator
var `+(String String)`: PtrOperatorEvaluator
var `mod(String String)`: PtrOperatorEvaluator
# `contains(String String)`
var `mod(String Vector2)`: PtrOperatorEvaluator
var `mod(String Vector2i)`: PtrOperatorEvaluator
var `mod(String Rect2)`: PtrOperatorEvaluator
var `mod(String Rect2i)`: PtrOperatorEvaluator
var `mod(String Vector3)`: PtrOperatorEvaluator
var `mod(String Vector3i)`: PtrOperatorEvaluator
var `mod(String Transform2D)`: PtrOperatorEvaluator
var `mod(String Vector4)`: PtrOperatorEvaluator
var `mod(String Vector4i)`: PtrOperatorEvaluator
var `mod(String Plane)`: PtrOperatorEvaluator
var `mod(String Quaternion)`: PtrOperatorEvaluator
var `mod(String Aabb)`: PtrOperatorEvaluator
var `mod(String Basis)`: PtrOperatorEvaluator
var `mod(String Transform3D)`: PtrOperatorEvaluator
var `mod(String Projection)`: PtrOperatorEvaluator
var `mod(String Color)`: PtrOperatorEvaluator
var `==(String StringName)`: PtrOperatorEvaluator
var `!=(String StringName)`: PtrOperatorEvaluator
var `+(String StringName)`: PtrOperatorEvaluator
var `mod(String StringName)`: PtrOperatorEvaluator
var `contains(String StringName)`: PtrOperatorEvaluator
var `mod(String NodePath)`: PtrOperatorEvaluator
var `mod(String Object)`: PtrOperatorEvaluator
var `contains(String Object)`: PtrOperatorEvaluator
var `mod(String Callable)`: PtrOperatorEvaluator
var `mod(String Signal)`: PtrOperatorEvaluator
var `mod(String Dictionary)`: PtrOperatorEvaluator
var `contains(String Dictionary)`: PtrOperatorEvaluator
var `mod(String Array)`: PtrOperatorEvaluator
var `contains(String Array)`: PtrOperatorEvaluator
var `mod(String PackedByteArray)`: PtrOperatorEvaluator
var `mod(String PackedInt32Array)`: PtrOperatorEvaluator
var `mod(String PackedInt64Array)`: PtrOperatorEvaluator
var `mod(String PackedFloat32Array)`: PtrOperatorEvaluator
var `mod(String PackedFloat64Array)`: PtrOperatorEvaluator
var `mod(String PackedStringArray)`: PtrOperatorEvaluator
var `contains(String PackedStringArray)`: PtrOperatorEvaluator
var `mod(String PackedVector2Array)`: PtrOperatorEvaluator
var `mod(String PackedVector3Array)`: PtrOperatorEvaluator
var `mod(String PackedColorArray)`: PtrOperatorEvaluator
var `mod(String PackedVector4Array)`: PtrOperatorEvaluator
proc `==`*(left: String; right: Variant): bool = `==(String Variant)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: String; right: Variant): bool = `!=(String Variant)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Variant): String = `mod(String Variant)`(getPtr left, getPtr right, addr result)
proc `not`*(left: String): bool = `not(String)`(getPtr left, nil, addr result)
proc `mod`*(left: String; right: bool): String = `mod(String bool)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Int): String = `mod(String Int)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Float): String = `mod(String Float)`(getPtr left, getPtr right, addr result)
proc `==`*(left: String; right: String): bool = `==(String String)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: String; right: String): bool = `!=(String String)`(getPtr left, getPtr right, addr result)
proc `<`*(left: String; right: String): bool = `<(String String)`(getPtr left, getPtr right, addr result)
proc `<=`*(left: String; right: String): bool = `<=(String String)`(getPtr left, getPtr right, addr result)
proc `>`*(left: String; right: String): bool = `>(String String)`(getPtr left, getPtr right, addr result)
proc `>=`*(left: String; right: String): bool = `>=(String String)`(getPtr left, getPtr right, addr result)
proc `+`*(left: String; right: String): String = `+(String String)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: String): String = `mod(String String)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Vector2): String = `mod(String Vector2)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Vector2i): String = `mod(String Vector2i)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Rect2): String = `mod(String Rect2)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Rect2i): String = `mod(String Rect2i)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Vector3): String = `mod(String Vector3)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Vector3i): String = `mod(String Vector3i)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Transform2D): String = `mod(String Transform2D)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Vector4): String = `mod(String Vector4)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Vector4i): String = `mod(String Vector4i)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Plane): String = `mod(String Plane)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Quaternion): String = `mod(String Quaternion)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Aabb): String = `mod(String Aabb)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Basis): String = `mod(String Basis)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Transform3D): String = `mod(String Transform3D)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Projection): String = `mod(String Projection)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Color): String = `mod(String Color)`(getPtr left, getPtr right, addr result)
proc `==`*(left: String; right: StringName): bool = `==(String StringName)`(getPtr left, getPtr right, addr result)
proc `!=`*(left: String; right: StringName): bool = `!=(String StringName)`(getPtr left, getPtr right, addr result)
proc `+`*(left: String; right: StringName): String = `+(String StringName)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: StringName): String = `mod(String StringName)`(getPtr left, getPtr right, addr result)
proc contains*(left: StringName; right: String): bool = `contains(String StringName)`(getPtr right, getPtr left, addr result)
proc `mod`*(left: String; right: NodePath): String = `mod(String NodePath)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Object): String = `mod(String Object)`(getPtr left, getPtr right, addr result)
proc contains*(left: Object; right: String): bool = `contains(String Object)`(getPtr right, getPtr left, addr result)
proc `mod`*(left: String; right: Callable): String = `mod(String Callable)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Signal): String = `mod(String Signal)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: Dictionary): String = `mod(String Dictionary)`(getPtr left, getPtr right, addr result)
proc contains*(left: Dictionary; right: String): bool = `contains(String Dictionary)`(getPtr right, getPtr left, addr result)
proc `mod`*(left: String; right: Array): String = `mod(String Array)`(getPtr left, getPtr right, addr result)
proc contains*(left: Array; right: String): bool = `contains(String Array)`(getPtr right, getPtr left, addr result)
proc `mod`*(left: String; right: PackedByteArray): String = `mod(String PackedByteArray)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: PackedInt32Array): String = `mod(String PackedInt32Array)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: PackedInt64Array): String = `mod(String PackedInt64Array)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: PackedFloat32Array): String = `mod(String PackedFloat32Array)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: PackedFloat64Array): String = `mod(String PackedFloat64Array)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: PackedStringArray): String = `mod(String PackedStringArray)`(getPtr left, getPtr right, addr result)
proc contains*(left: PackedStringArray; right: String): bool = `contains(String PackedStringArray)`(getPtr right, getPtr left, addr result)
proc `mod`*(left: String; right: PackedVector2Array): String = `mod(String PackedVector2Array)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: PackedVector3Array): String = `mod(String PackedVector3Array)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: PackedColorArray): String = `mod(String PackedColorArray)`(getPtr left, getPtr right, addr result)
proc `mod`*(left: String; right: PackedVector4Array): String = `mod(String PackedVector4Array)`(getPtr left, getPtr right, addr result)
proc load_String_operators {.execon: staticevents.init_engine.on_load_builtinclassOperator.} =
  `==(String Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_String, VariantType_Nil)
  `!=(String Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_String, VariantType_Nil)
  `mod(String Variant)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Nil)
  `not(String)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Not, VariantType_String, VariantType_Nil)
  `mod(String bool)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_bool)
  `mod(String Int)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Int)
  `mod(String Float)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Float)
  `==(String String)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_String, VariantType_String)
  `!=(String String)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_String, VariantType_String)
  `<(String String)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Less, VariantType_String, VariantType_String)
  `<=(String String)` = interface_variantGetPtrOperatorEvaluator(VariantOP_LessEqual, VariantType_String, VariantType_String)
  `>(String String)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Greater, VariantType_String, VariantType_String)
  `>=(String String)` = interface_variantGetPtrOperatorEvaluator(VariantOP_GreaterEqual, VariantType_String, VariantType_String)
  `+(String String)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Add, VariantType_String, VariantType_String)
  `mod(String String)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_String)
  `mod(String Vector2)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Vector2)
  `mod(String Vector2i)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Vector2i)
  `mod(String Rect2)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Rect2)
  `mod(String Rect2i)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Rect2i)
  `mod(String Vector3)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Vector3)
  `mod(String Vector3i)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Vector3i)
  `mod(String Transform2D)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Transform2D)
  `mod(String Vector4)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Vector4)
  `mod(String Vector4i)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Vector4i)
  `mod(String Plane)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Plane)
  `mod(String Quaternion)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Quaternion)
  `mod(String Aabb)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Aabb)
  `mod(String Basis)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Basis)
  `mod(String Transform3D)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Transform3D)
  `mod(String Projection)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Projection)
  `mod(String Color)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Color)
  `==(String StringName)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Equal, VariantType_String, VariantType_StringName)
  `!=(String StringName)` = interface_variantGetPtrOperatorEvaluator(VariantOP_NotEqual, VariantType_String, VariantType_StringName)
  `+(String StringName)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Add, VariantType_String, VariantType_StringName)
  `mod(String StringName)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_StringName)
  `contains(String StringName)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_String, VariantType_StringName)
  `mod(String NodePath)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_NodePath)
  `mod(String Object)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Object)
  `contains(String Object)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_String, VariantType_Object)
  `mod(String Callable)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Callable)
  `mod(String Signal)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Signal)
  `mod(String Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Dictionary)
  `contains(String Dictionary)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_String, VariantType_Dictionary)
  `mod(String Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_Array)
  `contains(String Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_String, VariantType_Array)
  `mod(String PackedByteArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_PackedByteArray)
  `mod(String PackedInt32Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_PackedInt32Array)
  `mod(String PackedInt64Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_PackedInt64Array)
  `mod(String PackedFloat32Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_PackedFloat32Array)
  `mod(String PackedFloat64Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_PackedFloat64Array)
  `mod(String PackedStringArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_PackedStringArray)
  `contains(String PackedStringArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_In, VariantType_String, VariantType_PackedStringArray)
  `mod(String PackedVector2Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_PackedVector2Array)
  `mod(String PackedVector3Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_PackedVector3Array)
  `mod(String PackedColorArray)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_PackedColorArray)
  `mod(String PackedVector4Array)` = interface_variantGetPtrOperatorEvaluator(VariantOP_Module, VariantType_String, VariantType_PackedVector4Array)

var `casecmpTo(String String)`: PtrBuiltinMethod
var `nocasecmpTo(String String)`: PtrBuiltinMethod
var `naturalcasecmpTo(String String)`: PtrBuiltinMethod
var `naturalnocasecmpTo(String String)`: PtrBuiltinMethod
var `filecasecmpTo(String String)`: PtrBuiltinMethod
var `filenocasecmpTo(String String)`: PtrBuiltinMethod
var `length(String)`: PtrBuiltinMethod
var `substr(String Int Int)`: PtrBuiltinMethod
var `getSlice(String String Int)`: PtrBuiltinMethod
var `getSlicec(String Int Int)`: PtrBuiltinMethod
var `getSliceCount(String String)`: PtrBuiltinMethod
var `find(String String Int)`: PtrBuiltinMethod
var `findn(String String Int)`: PtrBuiltinMethod
var `count(String String Int Int)`: PtrBuiltinMethod
var `countn(String String Int Int)`: PtrBuiltinMethod
var `rfind(String String Int)`: PtrBuiltinMethod
var `rfindn(String String Int)`: PtrBuiltinMethod
var `match(String String)`: PtrBuiltinMethod
var `matchn(String String)`: PtrBuiltinMethod
var `beginsWith(String String)`: PtrBuiltinMethod
var `endsWith(String String)`: PtrBuiltinMethod
var `isSubsequenceOf(String String)`: PtrBuiltinMethod
var `isSubsequenceOfn(String String)`: PtrBuiltinMethod
var `bigrams(String)`: PtrBuiltinMethod
var `similarity(String String)`: PtrBuiltinMethod
var `format(String Variant String)`: PtrBuiltinMethod
var `replace(String String String)`: PtrBuiltinMethod
var `replacen(String String String)`: PtrBuiltinMethod
var `repeat(String Int)`: PtrBuiltinMethod
var `reverse(String)`: PtrBuiltinMethod
var `insert(String Int String)`: PtrBuiltinMethod
var `erase(String Int Int)`: PtrBuiltinMethod
var `capitalize(String)`: PtrBuiltinMethod
var `toCamelCase(String)`: PtrBuiltinMethod
var `toPascalCase(String)`: PtrBuiltinMethod
var `toSnakeCase(String)`: PtrBuiltinMethod
var `split(String String bool Int)`: PtrBuiltinMethod
var `rsplit(String String bool Int)`: PtrBuiltinMethod
var `splitFloats(String String bool)`: PtrBuiltinMethod
var `join(String PackedStringArray)`: PtrBuiltinMethod
var `toUpper(String)`: PtrBuiltinMethod
var `toLower(String)`: PtrBuiltinMethod
var `left(String Int)`: PtrBuiltinMethod
var `right(String Int)`: PtrBuiltinMethod
var `stripEdges(String bool bool)`: PtrBuiltinMethod
var `stripEscapes(String)`: PtrBuiltinMethod
var `lstrip(String String)`: PtrBuiltinMethod
var `rstrip(String String)`: PtrBuiltinMethod
var `getExtension(String)`: PtrBuiltinMethod
var `getBasename(String)`: PtrBuiltinMethod
var `pathJoin(String String)`: PtrBuiltinMethod
var `unicodeAt(String Int)`: PtrBuiltinMethod
var `indent(String String)`: PtrBuiltinMethod
var `dedent(String)`: PtrBuiltinMethod
var `hash(String)`: PtrBuiltinMethod
var `md5Text(String)`: PtrBuiltinMethod
var `sha1Text(String)`: PtrBuiltinMethod
var `sha256Text(String)`: PtrBuiltinMethod
var `md5Buffer(String)`: PtrBuiltinMethod
var `sha1Buffer(String)`: PtrBuiltinMethod
var `sha256Buffer(String)`: PtrBuiltinMethod
var `isEmpty(String)`: PtrBuiltinMethod
# `contains(String String)`
var `containsn(String String)`: PtrBuiltinMethod
var `isAbsolutePath(String)`: PtrBuiltinMethod
var `isRelativePath(String)`: PtrBuiltinMethod
var `simplifyPath(String)`: PtrBuiltinMethod
var `getBaseDir(String)`: PtrBuiltinMethod
var `getFile(String)`: PtrBuiltinMethod
var `xmlEscape(String bool)`: PtrBuiltinMethod
var `xmlUnescape(String)`: PtrBuiltinMethod
var `uriEncode(String)`: PtrBuiltinMethod
var `uriDecode(String)`: PtrBuiltinMethod
var `cEscape(String)`: PtrBuiltinMethod
var `cUnescape(String)`: PtrBuiltinMethod
var `jsonEscape(String)`: PtrBuiltinMethod
var `validateNodeName(String)`: PtrBuiltinMethod
var `validateFilename(String)`: PtrBuiltinMethod
var `isValidIdentifier(String)`: PtrBuiltinMethod
var `isValidInt(String)`: PtrBuiltinMethod
var `isValidFloat(String)`: PtrBuiltinMethod
var `isValidHexNumber(String bool)`: PtrBuiltinMethod
var `isValidHtmlColor(String)`: PtrBuiltinMethod
var `isValidIpAddress(String)`: PtrBuiltinMethod
var `isValidFilename(String)`: PtrBuiltinMethod
var `toInt(String)`: PtrBuiltinMethod
var `toFloat(String)`: PtrBuiltinMethod
var `hexToInt(String)`: PtrBuiltinMethod
var `binToInt(String)`: PtrBuiltinMethod
var `lpad(String Int String)`: PtrBuiltinMethod
var `rpad(String Int String)`: PtrBuiltinMethod
var `padDecimals(String Int)`: PtrBuiltinMethod
var `padZeros(String Int)`: PtrBuiltinMethod
var `trimPrefix(String String)`: PtrBuiltinMethod
var `trimSuffix(String String)`: PtrBuiltinMethod
var `toAsciiBuffer(String)`: PtrBuiltinMethod
var `toUtf8Buffer(String)`: PtrBuiltinMethod
var `toUtf16Buffer(String)`: PtrBuiltinMethod
var `toUtf32Buffer(String)`: PtrBuiltinMethod
var `hexDecode(String)`: PtrBuiltinMethod
var `toWcharBuffer(String)`: PtrBuiltinMethod
var `numScientific(String Float)`: PtrBuiltinMethod
var `num(String Float Int)`: PtrBuiltinMethod
var `numInt64(String Int Int bool)`: PtrBuiltinMethod
var `numUint64(String Int Int bool)`: PtrBuiltinMethod
var `chr(String Int)`: PtrBuiltinMethod
var `humanizeSize(String Int)`: PtrBuiltinMethod

proc casecmpTo*(self: String; to: String): Int =
  let argArr = [getPtr to]
  `casecmpTo(String String)`(addr self, addr argArr[0], addr result, 1)
proc nocasecmpTo*(self: String; to: String): Int =
  let argArr = [getPtr to]
  `nocasecmpTo(String String)`(addr self, addr argArr[0], addr result, 1)
proc naturalcasecmpTo*(self: String; to: String): Int =
  let argArr = [getPtr to]
  `naturalcasecmpTo(String String)`(addr self, addr argArr[0], addr result, 1)
proc naturalnocasecmpTo*(self: String; to: String): Int =
  let argArr = [getPtr to]
  `naturalnocasecmpTo(String String)`(addr self, addr argArr[0], addr result, 1)
proc filecasecmpTo*(self: String; to: String): Int =
  let argArr = [getPtr to]
  `filecasecmpTo(String String)`(addr self, addr argArr[0], addr result, 1)
proc filenocasecmpTo*(self: String; to: String): Int =
  let argArr = [getPtr to]
  `filenocasecmpTo(String String)`(addr self, addr argArr[0], addr result, 1)
proc length*(self: String): Int =
  `length(String)`(addr self, nil, addr result, 0)
proc substr*(self: String; `from`: Int; len: Int = -1): String =
  let argArr = [getPtr `from`, getPtr len]
  `substr(String Int Int)`(addr self, addr argArr[0], addr result, 2)
proc getSlice*(self: String; delimiter: String; slice: Int): String =
  let argArr = [getPtr delimiter, getPtr slice]
  `getSlice(String String Int)`(addr self, addr argArr[0], addr result, 2)
proc getSlicec*(self: String; delimiter: Int; slice: Int): String =
  let argArr = [getPtr delimiter, getPtr slice]
  `getSlicec(String Int Int)`(addr self, addr argArr[0], addr result, 2)
proc getSliceCount*(self: String; delimiter: String): Int =
  let argArr = [getPtr delimiter]
  `getSliceCount(String String)`(addr self, addr argArr[0], addr result, 1)
proc find*(self: String; what: String; `from`: Int = 0): Int =
  let argArr = [getPtr what, getPtr `from`]
  `find(String String Int)`(addr self, addr argArr[0], addr result, 2)
proc findn*(self: String; what: String; `from`: Int = 0): Int =
  let argArr = [getPtr what, getPtr `from`]
  `findn(String String Int)`(addr self, addr argArr[0], addr result, 2)
proc count*(self: String; what: String; `from`: Int = 0; to: Int = 0): Int =
  let argArr = [getPtr what, getPtr `from`, getPtr to]
  `count(String String Int Int)`(addr self, addr argArr[0], addr result, 3)
proc countn*(self: String; what: String; `from`: Int = 0; to: Int = 0): Int =
  let argArr = [getPtr what, getPtr `from`, getPtr to]
  `countn(String String Int Int)`(addr self, addr argArr[0], addr result, 3)
proc rfind*(self: String; what: String; `from`: Int = -1): Int =
  let argArr = [getPtr what, getPtr `from`]
  `rfind(String String Int)`(addr self, addr argArr[0], addr result, 2)
proc rfindn*(self: String; what: String; `from`: Int = -1): Int =
  let argArr = [getPtr what, getPtr `from`]
  `rfindn(String String Int)`(addr self, addr argArr[0], addr result, 2)
proc match*(self: String; expr: String): bool =
  let argArr = [getPtr expr]
  `match(String String)`(addr self, addr argArr[0], addr result, 1)
proc matchn*(self: String; expr: String): bool =
  let argArr = [getPtr expr]
  `matchn(String String)`(addr self, addr argArr[0], addr result, 1)
proc beginsWith*(self: String; text: String): bool =
  let argArr = [getPtr text]
  `beginsWith(String String)`(addr self, addr argArr[0], addr result, 1)
proc endsWith*(self: String; text: String): bool =
  let argArr = [getPtr text]
  `endsWith(String String)`(addr self, addr argArr[0], addr result, 1)
proc isSubsequenceOf*(self: String; text: String): bool =
  let argArr = [getPtr text]
  `isSubsequenceOf(String String)`(addr self, addr argArr[0], addr result, 1)
proc isSubsequenceOfn*(self: String; text: String): bool =
  let argArr = [getPtr text]
  `isSubsequenceOfn(String String)`(addr self, addr argArr[0], addr result, 1)
proc bigrams*(self: String): PackedStringArray =
  `bigrams(String)`(addr self, nil, addr result, 0)
proc similarity*(self: String; text: String): Float =
  let argArr = [getPtr text]
  `similarity(String String)`(addr self, addr argArr[0], addr result, 1)
proc format*(self: String; values: Variant; placeholder: String = gdstring"{_}"): String =
  let argArr = [getPtr values, getPtr placeholder]
  `format(String Variant String)`(addr self, addr argArr[0], addr result, 2)
proc replace*(self: String; what: String; forwhat: String): String =
  let argArr = [getPtr what, getPtr forwhat]
  `replace(String String String)`(addr self, addr argArr[0], addr result, 2)
proc replacen*(self: String; what: String; forwhat: String): String =
  let argArr = [getPtr what, getPtr forwhat]
  `replacen(String String String)`(addr self, addr argArr[0], addr result, 2)
proc repeat*(self: String; count: Int): String =
  let argArr = [getPtr count]
  `repeat(String Int)`(addr self, addr argArr[0], addr result, 1)
proc reverse*(self: String): String =
  `reverse(String)`(addr self, nil, addr result, 0)
proc insert*(self: String; position: Int; what: String): String =
  let argArr = [getPtr position, getPtr what]
  `insert(String Int String)`(addr self, addr argArr[0], addr result, 2)
proc erase*(self: String; position: Int; chars: Int = 1): String =
  let argArr = [getPtr position, getPtr chars]
  `erase(String Int Int)`(addr self, addr argArr[0], addr result, 2)
proc capitalize*(self: String): String =
  `capitalize(String)`(addr self, nil, addr result, 0)
proc toCamelCase*(self: String): String =
  `toCamelCase(String)`(addr self, nil, addr result, 0)
proc toPascalCase*(self: String): String =
  `toPascalCase(String)`(addr self, nil, addr result, 0)
proc toSnakeCase*(self: String): String =
  `toSnakeCase(String)`(addr self, nil, addr result, 0)
proc split*(self: String; delimiter: String = gdstring""; allowEmpty: bool = true; maxsplit: Int = 0): PackedStringArray =
  let argArr = [getPtr delimiter, getPtr allowEmpty, getPtr maxsplit]
  `split(String String bool Int)`(addr self, addr argArr[0], addr result, 3)
proc rsplit*(self: String; delimiter: String = gdstring""; allowEmpty: bool = true; maxsplit: Int = 0): PackedStringArray =
  let argArr = [getPtr delimiter, getPtr allowEmpty, getPtr maxsplit]
  `rsplit(String String bool Int)`(addr self, addr argArr[0], addr result, 3)
proc splitFloats*(self: String; delimiter: String; allowEmpty: bool = true): PackedFloat64Array =
  let argArr = [getPtr delimiter, getPtr allowEmpty]
  `splitFloats(String String bool)`(addr self, addr argArr[0], addr result, 2)
proc join*(self: String; parts: PackedStringArray): String =
  let argArr = [getPtr parts]
  `join(String PackedStringArray)`(addr self, addr argArr[0], addr result, 1)
proc toUpper*(self: String): String =
  `toUpper(String)`(addr self, nil, addr result, 0)
proc toLower*(self: String): String =
  `toLower(String)`(addr self, nil, addr result, 0)
proc left*(self: String; length: Int): String =
  let argArr = [getPtr length]
  `left(String Int)`(addr self, addr argArr[0], addr result, 1)
proc right*(self: String; length: Int): String =
  let argArr = [getPtr length]
  `right(String Int)`(addr self, addr argArr[0], addr result, 1)
proc stripEdges*(self: String; left: bool = true; right: bool = true): String =
  let argArr = [getPtr left, getPtr right]
  `stripEdges(String bool bool)`(addr self, addr argArr[0], addr result, 2)
proc stripEscapes*(self: String): String =
  `stripEscapes(String)`(addr self, nil, addr result, 0)
proc lstrip*(self: String; chars: String): String =
  let argArr = [getPtr chars]
  `lstrip(String String)`(addr self, addr argArr[0], addr result, 1)
proc rstrip*(self: String; chars: String): String =
  let argArr = [getPtr chars]
  `rstrip(String String)`(addr self, addr argArr[0], addr result, 1)
proc getExtension*(self: String): String =
  `getExtension(String)`(addr self, nil, addr result, 0)
proc getBasename*(self: String): String =
  `getBasename(String)`(addr self, nil, addr result, 0)
proc pathJoin*(self: String; file: String): String =
  let argArr = [getPtr file]
  `pathJoin(String String)`(addr self, addr argArr[0], addr result, 1)
proc unicodeAt*(self: String; at: Int): Int =
  let argArr = [getPtr at]
  `unicodeAt(String Int)`(addr self, addr argArr[0], addr result, 1)
proc indent*(self: String; prefix: String): String =
  let argArr = [getPtr prefix]
  `indent(String String)`(addr self, addr argArr[0], addr result, 1)
proc dedent*(self: String): String =
  `dedent(String)`(addr self, nil, addr result, 0)
proc hash*(self: String): Int =
  `hash(String)`(addr self, nil, addr result, 0)
proc md5Text*(self: String): String =
  `md5Text(String)`(addr self, nil, addr result, 0)
proc sha1Text*(self: String): String =
  `sha1Text(String)`(addr self, nil, addr result, 0)
proc sha256Text*(self: String): String =
  `sha256Text(String)`(addr self, nil, addr result, 0)
proc md5Buffer*(self: String): PackedByteArray =
  `md5Buffer(String)`(addr self, nil, addr result, 0)
proc sha1Buffer*(self: String): PackedByteArray =
  `sha1Buffer(String)`(addr self, nil, addr result, 0)
proc sha256Buffer*(self: String): PackedByteArray =
  `sha256Buffer(String)`(addr self, nil, addr result, 0)
proc isEmpty*(self: String): bool =
  `isEmpty(String)`(addr self, nil, addr result, 0)
proc containsn*(self: String; what: String): bool =
  let argArr = [getPtr what]
  `containsn(String String)`(addr self, addr argArr[0], addr result, 1)
proc isAbsolutePath*(self: String): bool =
  `isAbsolutePath(String)`(addr self, nil, addr result, 0)
proc isRelativePath*(self: String): bool =
  `isRelativePath(String)`(addr self, nil, addr result, 0)
proc simplifyPath*(self: String): String =
  `simplifyPath(String)`(addr self, nil, addr result, 0)
proc getBaseDir*(self: String): String =
  `getBaseDir(String)`(addr self, nil, addr result, 0)
proc getFile*(self: String): String =
  `getFile(String)`(addr self, nil, addr result, 0)
proc xmlEscape*(self: String; escapeQuotes: bool = false): String =
  let argArr = [getPtr escapeQuotes]
  `xmlEscape(String bool)`(addr self, addr argArr[0], addr result, 1)
proc xmlUnescape*(self: String): String =
  `xmlUnescape(String)`(addr self, nil, addr result, 0)
proc uriEncode*(self: String): String =
  `uriEncode(String)`(addr self, nil, addr result, 0)
proc uriDecode*(self: String): String =
  `uriDecode(String)`(addr self, nil, addr result, 0)
proc cEscape*(self: String): String =
  `cEscape(String)`(addr self, nil, addr result, 0)
proc cUnescape*(self: String): String =
  `cUnescape(String)`(addr self, nil, addr result, 0)
proc jsonEscape*(self: String): String =
  `jsonEscape(String)`(addr self, nil, addr result, 0)
proc validateNodeName*(self: String): String =
  `validateNodeName(String)`(addr self, nil, addr result, 0)
proc validateFilename*(self: String): String =
  `validateFilename(String)`(addr self, nil, addr result, 0)
proc isValidIdentifier*(self: String): bool =
  `isValidIdentifier(String)`(addr self, nil, addr result, 0)
proc isValidInt*(self: String): bool =
  `isValidInt(String)`(addr self, nil, addr result, 0)
proc isValidFloat*(self: String): bool =
  `isValidFloat(String)`(addr self, nil, addr result, 0)
proc isValidHexNumber*(self: String; withPrefix: bool = false): bool =
  let argArr = [getPtr withPrefix]
  `isValidHexNumber(String bool)`(addr self, addr argArr[0], addr result, 1)
proc isValidHtmlColor*(self: String): bool =
  `isValidHtmlColor(String)`(addr self, nil, addr result, 0)
proc isValidIpAddress*(self: String): bool =
  `isValidIpAddress(String)`(addr self, nil, addr result, 0)
proc isValidFilename*(self: String): bool =
  `isValidFilename(String)`(addr self, nil, addr result, 0)
proc toInt*(self: String): Int =
  `toInt(String)`(addr self, nil, addr result, 0)
proc toFloat*(self: String): Float =
  `toFloat(String)`(addr self, nil, addr result, 0)
proc hexToInt*(self: String): Int =
  `hexToInt(String)`(addr self, nil, addr result, 0)
proc binToInt*(self: String): Int =
  `binToInt(String)`(addr self, nil, addr result, 0)
proc lpad*(self: String; minLength: Int; character: String = gdstring" "): String =
  let argArr = [getPtr minLength, getPtr character]
  `lpad(String Int String)`(addr self, addr argArr[0], addr result, 2)
proc rpad*(self: String; minLength: Int; character: String = gdstring" "): String =
  let argArr = [getPtr minLength, getPtr character]
  `rpad(String Int String)`(addr self, addr argArr[0], addr result, 2)
proc padDecimals*(self: String; digits: Int): String =
  let argArr = [getPtr digits]
  `padDecimals(String Int)`(addr self, addr argArr[0], addr result, 1)
proc padZeros*(self: String; digits: Int): String =
  let argArr = [getPtr digits]
  `padZeros(String Int)`(addr self, addr argArr[0], addr result, 1)
proc trimPrefix*(self: String; prefix: String): String =
  let argArr = [getPtr prefix]
  `trimPrefix(String String)`(addr self, addr argArr[0], addr result, 1)
proc trimSuffix*(self: String; suffix: String): String =
  let argArr = [getPtr suffix]
  `trimSuffix(String String)`(addr self, addr argArr[0], addr result, 1)
proc toAsciiBuffer*(self: String): PackedByteArray =
  `toAsciiBuffer(String)`(addr self, nil, addr result, 0)
proc toUtf8Buffer*(self: String): PackedByteArray =
  `toUtf8Buffer(String)`(addr self, nil, addr result, 0)
proc toUtf16Buffer*(self: String): PackedByteArray =
  `toUtf16Buffer(String)`(addr self, nil, addr result, 0)
proc toUtf32Buffer*(self: String): PackedByteArray =
  `toUtf32Buffer(String)`(addr self, nil, addr result, 0)
proc hexDecode*(self: String): PackedByteArray =
  `hexDecode(String)`(addr self, nil, addr result, 0)
proc toWcharBuffer*(self: String): PackedByteArray =
  `toWcharBuffer(String)`(addr self, nil, addr result, 0)
proc numScientific*(_: var String; number: Float): String =
  let argArr = [getPtr number]
  `numScientific(String Float)`(nil, addr argArr[0], addr result, 1)
proc num*(_: var String; number: Float; decimals: Int = -1): String =
  let argArr = [getPtr number, getPtr decimals]
  `num(String Float Int)`(nil, addr argArr[0], addr result, 2)
proc numInt64*(_: var String; number: Int; base: Int = 10; capitalizeHex: bool = false): String =
  let argArr = [getPtr number, getPtr base, getPtr capitalizeHex]
  `numInt64(String Int Int bool)`(nil, addr argArr[0], addr result, 3)
proc numUint64*(_: var String; number: Int; base: Int = 10; capitalizeHex: bool = false): String =
  let argArr = [getPtr number, getPtr base, getPtr capitalizeHex]
  `numUint64(String Int Int bool)`(nil, addr argArr[0], addr result, 3)
proc chr*(_: var String; char: Int): String =
  let argArr = [getPtr char]
  `chr(String Int)`(nil, addr argArr[0], addr result, 1)
proc humanizeSize*(_: var String; size: Int): String =
  let argArr = [getPtr size]
  `humanizeSize(String Int)`(nil, addr argArr[0], addr result, 1)

proc load_String_methods {.execon: staticevents.init_engine.on_load_builtinclassMethod.} =
  `casecmpTo(String String)` = load(VariantType_String, "casecmp_to", 2920860731)
  `nocasecmpTo(String String)` = load(VariantType_String, "nocasecmp_to", 2920860731)
  `naturalcasecmpTo(String String)` = load(VariantType_String, "naturalcasecmp_to", 2920860731)
  `naturalnocasecmpTo(String String)` = load(VariantType_String, "naturalnocasecmp_to", 2920860731)
  `filecasecmpTo(String String)` = load(VariantType_String, "filecasecmp_to", 2920860731)
  `filenocasecmpTo(String String)` = load(VariantType_String, "filenocasecmp_to", 2920860731)
  `length(String)` = load(VariantType_String, "length", 3173160232)
  `substr(String Int Int)` = load(VariantType_String, "substr", 787537301)
  `getSlice(String String Int)` = load(VariantType_String, "get_slice", 3535100402)
  `getSlicec(String Int Int)` = load(VariantType_String, "get_slicec", 787537301)
  `getSliceCount(String String)` = load(VariantType_String, "get_slice_count", 2920860731)
  `find(String String Int)` = load(VariantType_String, "find", 1760645412)
  `findn(String String Int)` = load(VariantType_String, "findn", 1760645412)
  `count(String String Int Int)` = load(VariantType_String, "count", 2343087891)
  `countn(String String Int Int)` = load(VariantType_String, "countn", 2343087891)
  `rfind(String String Int)` = load(VariantType_String, "rfind", 1760645412)
  `rfindn(String String Int)` = load(VariantType_String, "rfindn", 1760645412)
  `match(String String)` = load(VariantType_String, "match", 2566493496)
  `matchn(String String)` = load(VariantType_String, "matchn", 2566493496)
  `beginsWith(String String)` = load(VariantType_String, "begins_with", 2566493496)
  `endsWith(String String)` = load(VariantType_String, "ends_with", 2566493496)
  `isSubsequenceOf(String String)` = load(VariantType_String, "is_subsequence_of", 2566493496)
  `isSubsequenceOfn(String String)` = load(VariantType_String, "is_subsequence_ofn", 2566493496)
  `bigrams(String)` = load(VariantType_String, "bigrams", 747180633)
  `similarity(String String)` = load(VariantType_String, "similarity", 2697460964)
  `format(String Variant String)` = load(VariantType_String, "format", 3212199029)
  `replace(String String String)` = load(VariantType_String, "replace", 1340436205)
  `replacen(String String String)` = load(VariantType_String, "replacen", 1340436205)
  `repeat(String Int)` = load(VariantType_String, "repeat", 2162347432)
  `reverse(String)` = load(VariantType_String, "reverse", 3942272618)
  `insert(String Int String)` = load(VariantType_String, "insert", 248737229)
  `erase(String Int Int)` = load(VariantType_String, "erase", 787537301)
  `capitalize(String)` = load(VariantType_String, "capitalize", 3942272618)
  `toCamelCase(String)` = load(VariantType_String, "to_camel_case", 3942272618)
  `toPascalCase(String)` = load(VariantType_String, "to_pascal_case", 3942272618)
  `toSnakeCase(String)` = load(VariantType_String, "to_snake_case", 3942272618)
  `split(String String bool Int)` = load(VariantType_String, "split", 1252735785)
  `rsplit(String String bool Int)` = load(VariantType_String, "rsplit", 1252735785)
  `splitFloats(String String bool)` = load(VariantType_String, "split_floats", 2092079095)
  `join(String PackedStringArray)` = load(VariantType_String, "join", 3595973238)
  `toUpper(String)` = load(VariantType_String, "to_upper", 3942272618)
  `toLower(String)` = load(VariantType_String, "to_lower", 3942272618)
  `left(String Int)` = load(VariantType_String, "left", 2162347432)
  `right(String Int)` = load(VariantType_String, "right", 2162347432)
  `stripEdges(String bool bool)` = load(VariantType_String, "strip_edges", 907855311)
  `stripEscapes(String)` = load(VariantType_String, "strip_escapes", 3942272618)
  `lstrip(String String)` = load(VariantType_String, "lstrip", 3134094431)
  `rstrip(String String)` = load(VariantType_String, "rstrip", 3134094431)
  `getExtension(String)` = load(VariantType_String, "get_extension", 3942272618)
  `getBasename(String)` = load(VariantType_String, "get_basename", 3942272618)
  `pathJoin(String String)` = load(VariantType_String, "path_join", 3134094431)
  `unicodeAt(String Int)` = load(VariantType_String, "unicode_at", 4103005248)
  `indent(String String)` = load(VariantType_String, "indent", 3134094431)
  `dedent(String)` = load(VariantType_String, "dedent", 3942272618)
  `hash(String)` = load(VariantType_String, "hash", 3173160232)
  `md5Text(String)` = load(VariantType_String, "md5_text", 3942272618)
  `sha1Text(String)` = load(VariantType_String, "sha1_text", 3942272618)
  `sha256Text(String)` = load(VariantType_String, "sha256_text", 3942272618)
  `md5Buffer(String)` = load(VariantType_String, "md5_buffer", 247621236)
  `sha1Buffer(String)` = load(VariantType_String, "sha1_buffer", 247621236)
  `sha256Buffer(String)` = load(VariantType_String, "sha256_buffer", 247621236)
  `isEmpty(String)` = load(VariantType_String, "is_empty", 3918633141)
  `containsn(String String)` = load(VariantType_String, "containsn", 2566493496)
  `isAbsolutePath(String)` = load(VariantType_String, "is_absolute_path", 3918633141)
  `isRelativePath(String)` = load(VariantType_String, "is_relative_path", 3918633141)
  `simplifyPath(String)` = load(VariantType_String, "simplify_path", 3942272618)
  `getBaseDir(String)` = load(VariantType_String, "get_base_dir", 3942272618)
  `getFile(String)` = load(VariantType_String, "get_file", 3942272618)
  `xmlEscape(String bool)` = load(VariantType_String, "xml_escape", 3429816538)
  `xmlUnescape(String)` = load(VariantType_String, "xml_unescape", 3942272618)
  `uriEncode(String)` = load(VariantType_String, "uri_encode", 3942272618)
  `uriDecode(String)` = load(VariantType_String, "uri_decode", 3942272618)
  `cEscape(String)` = load(VariantType_String, "c_escape", 3942272618)
  `cUnescape(String)` = load(VariantType_String, "c_unescape", 3942272618)
  `jsonEscape(String)` = load(VariantType_String, "json_escape", 3942272618)
  `validateNodeName(String)` = load(VariantType_String, "validate_node_name", 3942272618)
  `validateFilename(String)` = load(VariantType_String, "validate_filename", 3942272618)
  `isValidIdentifier(String)` = load(VariantType_String, "is_valid_identifier", 3918633141)
  `isValidInt(String)` = load(VariantType_String, "is_valid_int", 3918633141)
  `isValidFloat(String)` = load(VariantType_String, "is_valid_float", 3918633141)
  `isValidHexNumber(String bool)` = load(VariantType_String, "is_valid_hex_number", 593672999)
  `isValidHtmlColor(String)` = load(VariantType_String, "is_valid_html_color", 3918633141)
  `isValidIpAddress(String)` = load(VariantType_String, "is_valid_ip_address", 3918633141)
  `isValidFilename(String)` = load(VariantType_String, "is_valid_filename", 3918633141)
  `toInt(String)` = load(VariantType_String, "to_int", 3173160232)
  `toFloat(String)` = load(VariantType_String, "to_float", 466405837)
  `hexToInt(String)` = load(VariantType_String, "hex_to_int", 3173160232)
  `binToInt(String)` = load(VariantType_String, "bin_to_int", 3173160232)
  `lpad(String Int String)` = load(VariantType_String, "lpad", 248737229)
  `rpad(String Int String)` = load(VariantType_String, "rpad", 248737229)
  `padDecimals(String Int)` = load(VariantType_String, "pad_decimals", 2162347432)
  `padZeros(String Int)` = load(VariantType_String, "pad_zeros", 2162347432)
  `trimPrefix(String String)` = load(VariantType_String, "trim_prefix", 3134094431)
  `trimSuffix(String String)` = load(VariantType_String, "trim_suffix", 3134094431)
  `toAsciiBuffer(String)` = load(VariantType_String, "to_ascii_buffer", 247621236)
  `toUtf8Buffer(String)` = load(VariantType_String, "to_utf8_buffer", 247621236)
  `toUtf16Buffer(String)` = load(VariantType_String, "to_utf16_buffer", 247621236)
  `toUtf32Buffer(String)` = load(VariantType_String, "to_utf32_buffer", 247621236)
  `hexDecode(String)` = load(VariantType_String, "hex_decode", 247621236)
  `toWcharBuffer(String)` = load(VariantType_String, "to_wchar_buffer", 247621236)
  `numScientific(String Float)` = load(VariantType_String, "num_scientific", 2710373411)
  `num(String Float Int)` = load(VariantType_String, "num", 1555901022)
  `numInt64(String Int Int bool)` = load(VariantType_String, "num_int64", 2111271071)
  `numUint64(String Int Int bool)` = load(VariantType_String, "num_uint64", 2111271071)
  `chr(String Int)` = load(VariantType_String, "chr", 897497541)
  `humanizeSize(String Int)` = load(VariantType_String, "humanize_size", 897497541)