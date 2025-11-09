{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(ClassDB, Object)

proc getClassList*(self: ClassDB): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "get_class_list", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getInheritersFromClass*(self: ClassDB; class: StringName): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "get_inheriters_from_class", 1761182771)
  methodbind.ptrcall(self, [getPtr class], PackedStringArray)

proc getParentClass*(self: ClassDB; class: StringName): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "get_parent_class", 1965194235)
  methodbind.ptrcall(self, [getPtr class], StringName)

proc classExists*(self: ClassDB; class: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_exists", 2619796661)
  methodbind.ptrcall(self, [getPtr class], bool)

proc isParentClass*(self: ClassDB; class: StringName; inherits: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "is_parent_class", 471820014)
  methodbind.ptrcall(self, [getPtr class, getPtr inherits], bool)

proc canInstantiate*(self: ClassDB; class: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "can_instantiate", 2619796661)
  methodbind.ptrcall(self, [getPtr class], bool)

proc instantiate*(self: ClassDB; class: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "instantiate", 2760726917)
  methodbind.ptrcall(self, [getPtr class], Variant)

proc classGetApiType*(self: ClassDB; class: StringName): ClassDB_APIType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_get_api_type", 2475317043)
  methodbind.ptrcall(self, [getPtr class], ClassDB_APIType)

proc classHasSignal*(self: ClassDB; class: StringName; signal: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_has_signal", 471820014)
  methodbind.ptrcall(self, [getPtr class, getPtr signal], bool)

proc classGetSignal*(self: ClassDB; class: StringName; signal: StringName): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_get_signal", 3061114238)
  methodbind.ptrcall(self, [getPtr class, getPtr signal], Dictionary)

proc classGetSignalList*(self: ClassDB; class: StringName; noInheritance: bool = false): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_get_signal_list", 3504980660)
  methodbind.ptrcall(self, [getPtr class, getPtr noInheritance], TypedArray[Dictionary])

proc classGetPropertyList*(self: ClassDB; class: StringName; noInheritance: bool = false): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_get_property_list", 3504980660)
  methodbind.ptrcall(self, [getPtr class, getPtr noInheritance], TypedArray[Dictionary])

proc classGetPropertyGetter*(self: ClassDB; class: StringName; property: StringName): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_get_property_getter", 3770832642)
  methodbind.ptrcall(self, [getPtr class, getPtr property], StringName)

proc classGetPropertySetter*(self: ClassDB; class: StringName; property: StringName): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_get_property_setter", 3770832642)
  methodbind.ptrcall(self, [getPtr class, getPtr property], StringName)

proc classGetProperty*(self: ClassDB; `object`: Object; property: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_get_property", 2498641674)
  methodbind.ptrcall(self, [getPtr `object`, getPtr property], Variant)

proc classSetProperty*(self: ClassDB; `object`: Object; property: StringName; value: Variant): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_set_property", 1690314931)
  methodbind.ptrcall(self, [getPtr `object`, getPtr property, getPtr value], Error)

proc classGetPropertyDefaultValue*(self: ClassDB; class: StringName; property: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_get_property_default_value", 2718203076)
  methodbind.ptrcall(self, [getPtr class, getPtr property], Variant)

proc classHasMethod*(self: ClassDB; class: StringName; `method`: StringName; noInheritance: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_has_method", 3860701026)
  methodbind.ptrcall(self, [getPtr class, getPtr `method`, getPtr noInheritance], bool)

proc classGetMethodArgumentCount*(self: ClassDB; class: StringName; `method`: StringName; noInheritance: bool = false): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_get_method_argument_count", 3885694822)
  methodbind.ptrcall(self, [getPtr class, getPtr `method`, getPtr noInheritance], int32)

proc classGetMethodList*(self: ClassDB; class: StringName; noInheritance: bool = false): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_get_method_list", 3504980660)
  methodbind.ptrcall(self, [getPtr class, getPtr noInheritance], TypedArray[Dictionary])

proc classCallStatic*(self: ClassDB; class: Variant; `method`: Variant; args: varargs[Variant, variant]): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_call_static", 3344196419)
  var `?param` = newSeqOfCap[VariantPtr](2+args.len)
  `?param`.add [getTypedPtr class, getTypedPtr `method`]
  methodbind.call(self, `?param`, args).get(Variant)
template classCallStatic*(self: ClassDB; class: StringName; `method`: StringName; args: varargs[Variant, variant]): Variant =
  classCallStatic(self, variant class, variant `method`, args)

proc classGetIntegerConstantList*(self: ClassDB; class: StringName; noInheritance: bool = false): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_get_integer_constant_list", 3031669221)
  methodbind.ptrcall(self, [getPtr class, getPtr noInheritance], PackedStringArray)

proc classHasIntegerConstant*(self: ClassDB; class: StringName; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_has_integer_constant", 471820014)
  methodbind.ptrcall(self, [getPtr class, getPtr name], bool)

proc classGetIntegerConstant*(self: ClassDB; class: StringName; name: StringName): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_get_integer_constant", 2419549490)
  methodbind.ptrcall(self, [getPtr class, getPtr name], int64)

proc classHasEnum*(self: ClassDB; class: StringName; name: StringName; noInheritance: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_has_enum", 3860701026)
  methodbind.ptrcall(self, [getPtr class, getPtr name, getPtr noInheritance], bool)

proc classGetEnumList*(self: ClassDB; class: StringName; noInheritance: bool = false): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_get_enum_list", 3031669221)
  methodbind.ptrcall(self, [getPtr class, getPtr noInheritance], PackedStringArray)

proc classGetEnumConstants*(self: ClassDB; class: StringName; `enum`: StringName; noInheritance: bool = false): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_get_enum_constants", 661528303)
  methodbind.ptrcall(self, [getPtr class, getPtr `enum`, getPtr noInheritance], PackedStringArray)

proc classGetIntegerConstantEnum*(self: ClassDB; class: StringName; name: StringName; noInheritance: bool = false): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "class_get_integer_constant_enum", 2457504236)
  methodbind.ptrcall(self, [getPtr class, getPtr name, getPtr noInheritance], StringName)

proc isClassEnumBitfield*(self: ClassDB; class: StringName; `enum`: StringName; noInheritance: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "is_class_enum_bitfield", 3860701026)
  methodbind.ptrcall(self, [getPtr class, getPtr `enum`, getPtr noInheritance], bool)

proc isClassEnabled*(self: ClassDB; class: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ClassDB, "is_class_enabled", 2619796661)
  methodbind.ptrcall(self, [getPtr class], bool)
