{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getClassList*(self: ClassDB): PackedStringArray =
  expandMethodBind(className ClassDB, "get_class_list", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getInheritersFromClass*(self: ClassDB; class: StringName): PackedStringArray =
  expandMethodBind(className ClassDB, "get_inheriters_from_class", 1761182771)
  var `?param` = [getPtr class]
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getParentClass*(self: ClassDB; class: StringName): StringName =
  expandMethodBind(className ClassDB, "get_parent_class", 1965194235)
  var `?param` = [getPtr class]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc classExists*(self: ClassDB; class: StringName): bool =
  expandMethodBind(className ClassDB, "class_exists", 2619796661)
  var `?param` = [getPtr class]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isParentClass*(self: ClassDB; class: StringName; inherits: StringName): bool =
  expandMethodBind(className ClassDB, "is_parent_class", 471820014)
  var `?param` = [getPtr class, getPtr inherits]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc canInstantiate*(self: ClassDB; class: StringName): bool =
  expandMethodBind(className ClassDB, "can_instantiate", 2619796661)
  var `?param` = [getPtr class]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc instantiate*(self: ClassDB; class: StringName): Variant =
  expandMethodBind(className ClassDB, "instantiate", 2760726917)
  var `?param` = [getPtr class]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc classHasSignal*(self: ClassDB; class: StringName; signal: StringName): bool =
  expandMethodBind(className ClassDB, "class_has_signal", 471820014)
  var `?param` = [getPtr class, getPtr signal]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc classGetSignal*(self: ClassDB; class: StringName; signal: StringName): Dictionary =
  expandMethodBind(className ClassDB, "class_get_signal", 3061114238)
  var `?param` = [getPtr class, getPtr signal]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc classGetSignalList*(self: ClassDB; class: StringName; noInheritance: bool = false): TypedArray[Dictionary] =
  expandMethodBind(className ClassDB, "class_get_signal_list", 3504980660)
  var `?param` = [getPtr class, getPtr noInheritance]
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc classGetPropertyList*(self: ClassDB; class: StringName; noInheritance: bool = false): TypedArray[Dictionary] =
  expandMethodBind(className ClassDB, "class_get_property_list", 3504980660)
  var `?param` = [getPtr class, getPtr noInheritance]
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc classGetProperty*(self: ClassDB; `object`: Object; property: StringName): Variant =
  expandMethodBind(className ClassDB, "class_get_property", 2498641674)
  var `?param` = [getPtr `object`, getPtr property]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc classSetProperty*(self: ClassDB; `object`: Object; property: StringName; value: Variant): Error =
  expandMethodBind(className ClassDB, "class_set_property", 1690314931)
  var `?param` = [getPtr `object`, getPtr property, getPtr value]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc classGetPropertyDefaultValue*(self: ClassDB; class: StringName; property: StringName): Variant =
  expandMethodBind(className ClassDB, "class_get_property_default_value", 2718203076)
  var `?param` = [getPtr class, getPtr property]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc classHasMethod*(self: ClassDB; class: StringName; `method`: StringName; noInheritance: bool = false): bool =
  expandMethodBind(className ClassDB, "class_has_method", 3860701026)
  var `?param` = [getPtr class, getPtr `method`, getPtr noInheritance]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc classGetMethodArgumentCount*(self: ClassDB; class: StringName; `method`: StringName; noInheritance: bool = false): int32 =
  expandMethodBind(className ClassDB, "class_get_method_argument_count", 3885694822)
  var `?param` = [getPtr class, getPtr `method`, getPtr noInheritance]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc classGetMethodList*(self: ClassDB; class: StringName; noInheritance: bool = false): TypedArray[Dictionary] =
  expandMethodBind(className ClassDB, "class_get_method_list", 3504980660)
  var `?param` = [getPtr class, getPtr noInheritance]
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc classGetIntegerConstantList*(self: ClassDB; class: StringName; noInheritance: bool = false): PackedStringArray =
  expandMethodBind(className ClassDB, "class_get_integer_constant_list", 3031669221)
  var `?param` = [getPtr class, getPtr noInheritance]
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc classHasIntegerConstant*(self: ClassDB; class: StringName; name: StringName): bool =
  expandMethodBind(className ClassDB, "class_has_integer_constant", 471820014)
  var `?param` = [getPtr class, getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc classGetIntegerConstant*(self: ClassDB; class: StringName; name: StringName): int64 =
  expandMethodBind(className ClassDB, "class_get_integer_constant", 2419549490)
  var `?param` = [getPtr class, getPtr name]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc classHasEnum*(self: ClassDB; class: StringName; name: StringName; noInheritance: bool = false): bool =
  expandMethodBind(className ClassDB, "class_has_enum", 3860701026)
  var `?param` = [getPtr class, getPtr name, getPtr noInheritance]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc classGetEnumList*(self: ClassDB; class: StringName; noInheritance: bool = false): PackedStringArray =
  expandMethodBind(className ClassDB, "class_get_enum_list", 3031669221)
  var `?param` = [getPtr class, getPtr noInheritance]
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc classGetEnumConstants*(self: ClassDB; class: StringName; `enum`: StringName; noInheritance: bool = false): PackedStringArray =
  expandMethodBind(className ClassDB, "class_get_enum_constants", 661528303)
  var `?param` = [getPtr class, getPtr `enum`, getPtr noInheritance]
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc classGetIntegerConstantEnum*(self: ClassDB; class: StringName; name: StringName; noInheritance: bool = false): StringName =
  expandMethodBind(className ClassDB, "class_get_integer_constant_enum", 2457504236)
  var `?param` = [getPtr class, getPtr name, getPtr noInheritance]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc isClassEnumBitfield*(self: ClassDB; class: StringName; `enum`: StringName; noInheritance: bool = false): bool =
  expandMethodBind(className ClassDB, "is_class_enum_bitfield", 3860701026)
  var `?param` = [getPtr class, getPtr `enum`, getPtr noInheritance]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isClassEnabled*(self: ClassDB; class: StringName): bool =
  expandMethodBind(className ClassDB, "is_class_enabled", 2619796661)
  var `?param` = [getPtr class]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

const ClassDB_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ClassDB]): Table[string, string] = ClassDB_vmap