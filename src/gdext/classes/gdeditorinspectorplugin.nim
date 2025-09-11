{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EditorInspectorPlugin, RefCounted)

method canHandle*(self: EditorInspectorPlugin; `object`: Object): bool {.base.} = (discard)
proc registerVirtual_canHandle*[T: EditorInspectorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_can_handle"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorInspectorPlugin](p_instance).canHandle(p_args[0].decode(Object)).encode(r_ret)

method parseBegin*(self: EditorInspectorPlugin; `object`: Object): void {.base.} = (discard)
proc registerVirtual_parseBegin*[T: EditorInspectorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_parse_begin"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorInspectorPlugin](p_instance).parseBegin(p_args[0].decode(Object))

method parseCategory*(self: EditorInspectorPlugin; `object`: Object; category: String): void {.base.} = (discard)
proc registerVirtual_parseCategory*[T: EditorInspectorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_parse_category"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorInspectorPlugin](p_instance).parseCategory(p_args[0].decode(Object), p_args[1].decode(String))

method parseGroup*(self: EditorInspectorPlugin; `object`: Object; group: String): void {.base.} = (discard)
proc registerVirtual_parseGroup*[T: EditorInspectorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_parse_group"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorInspectorPlugin](p_instance).parseGroup(p_args[0].decode(Object), p_args[1].decode(String))

method parseProperty*(self: EditorInspectorPlugin; `object`: Object; `type`: Variant_Type; name: String; hintType: PropertyHint; hintString: String; usageFlags: set[PropertyUsageFlags]; wide: bool): bool {.base.} = (discard)
proc registerVirtual_parseProperty*[T: EditorInspectorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_parse_property"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorInspectorPlugin](p_instance).parseProperty(p_args[0].decode(Object), p_args[1].decode(Variant_Type), p_args[2].decode(String), p_args[3].decode(PropertyHint), p_args[4].decode(String), p_args[5].decode(set[PropertyUsageFlags]), p_args[6].decode(bool)).encode(r_ret)

method parseEnd*(self: EditorInspectorPlugin; `object`: Object): void {.base.} = (discard)
proc registerVirtual_parseEnd*[T: EditorInspectorPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_parse_end"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorInspectorPlugin](p_instance).parseEnd(p_args[0].decode(Object))

proc addCustomControl*(self: EditorInspectorPlugin; control: Control): void =
  expandMethodBind(className EditorInspectorPlugin, "add_custom_control", 1496901182)
  methodbind.ptrcall(self, [getPtr control])

proc addPropertyEditor*(self: EditorInspectorPlugin; property: String; editor: Control; addToEnd: bool = false; label: String = newGdString()): void =
  expandMethodBind(className EditorInspectorPlugin, "add_property_editor", 2042698479)
  methodbind.ptrcall(self, [getPtr property, getPtr editor, getPtr addToEnd, getPtr label])

proc addPropertyEditorForMultipleProperties*(self: EditorInspectorPlugin; label: String; properties: PackedStringArray; editor: Control): void =
  expandMethodBind(className EditorInspectorPlugin, "add_property_editor_for_multiple_properties", 788598683)
  methodbind.ptrcall(self, [getPtr label, getPtr properties, getPtr editor])
