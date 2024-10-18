{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method canHandle*(self: EditorInspectorPlugin; `object`: Object): bool {.base.} = (discard)
proc canHandle(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorInspectorPlugin](p_instance).canHandle(p_args[0].decode(Object)).encode(r_ret)
template canHandle_bind*(_: typedesc[EditorInspectorPlugin]): ClassCallVirtual = canHandle

method parseBegin*(self: EditorInspectorPlugin; `object`: Object): void {.base.} = (discard)
proc parseBegin(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorInspectorPlugin](p_instance).parseBegin(p_args[0].decode(Object))
template parseBegin_bind*(_: typedesc[EditorInspectorPlugin]): ClassCallVirtual = parseBegin

method parseCategory*(self: EditorInspectorPlugin; `object`: Object; category: String): void {.base.} = (discard)
proc parseCategory(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorInspectorPlugin](p_instance).parseCategory(p_args[0].decode(Object), p_args[1].decode(String))
template parseCategory_bind*(_: typedesc[EditorInspectorPlugin]): ClassCallVirtual = parseCategory

method parseGroup*(self: EditorInspectorPlugin; `object`: Object; group: String): void {.base.} = (discard)
proc parseGroup(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorInspectorPlugin](p_instance).parseGroup(p_args[0].decode(Object), p_args[1].decode(String))
template parseGroup_bind*(_: typedesc[EditorInspectorPlugin]): ClassCallVirtual = parseGroup

method parseProperty*(self: EditorInspectorPlugin; `object`: Object; `type`: Variant_Type; name: String; hintType: PropertyHint; hintString: String; usageFlags: set[PropertyUsageFlags]; wide: bool): bool {.base.} = (discard)
proc parseProperty(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorInspectorPlugin](p_instance).parseProperty(p_args[0].decode(Object), p_args[1].decode(Variant_Type), p_args[2].decode(String), p_args[3].decode(PropertyHint), p_args[4].decode(String), p_args[5].decode(set[PropertyUsageFlags]), p_args[6].decode(bool)).encode(r_ret)
template parseProperty_bind*(_: typedesc[EditorInspectorPlugin]): ClassCallVirtual = parseProperty

method parseEnd*(self: EditorInspectorPlugin; `object`: Object): void {.base.} = (discard)
proc parseEnd(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorInspectorPlugin](p_instance).parseEnd(p_args[0].decode(Object))
template parseEnd_bind*(_: typedesc[EditorInspectorPlugin]): ClassCallVirtual = parseEnd

proc addCustomControl*(self: EditorInspectorPlugin; control: Control): void =
  expandMethodBind(className EditorInspectorPlugin, "add_custom_control", 1496901182)
  var `?param` = [getPtr control]
  methodbind.ptrcall(self, addr `?param`[0])

proc addPropertyEditor*(self: EditorInspectorPlugin; property: String; editor: Control; addToEnd: bool = false; label: String = gdstring""): void =
  expandMethodBind(className EditorInspectorPlugin, "add_property_editor", 2042698479)
  var `?param` = [getPtr property, getPtr editor, getPtr addToEnd, getPtr label]
  methodbind.ptrcall(self, addr `?param`[0])

proc addPropertyEditorForMultipleProperties*(self: EditorInspectorPlugin; label: String; properties: PackedStringArray; editor: Control): void =
  expandMethodBind(className EditorInspectorPlugin, "add_property_editor_for_multiple_properties", 788598683)
  var `?param` = [getPtr label, getPtr properties, getPtr editor]
  methodbind.ptrcall(self, addr `?param`[0])

const EditorInspectorPlugin_vmap =
  RefCounted.vmap.concat toTable {
    "canhandle" : "_can_handle",
    "parsebegin" : "_parse_begin",
    "parsecategory" : "_parse_category",
    "parsegroup" : "_parse_group",
    "parseproperty" : "_parse_property",
    "parseend" : "_parse_end",
    }
template vmap*(_: typedesc[EditorInspectorPlugin]): Table[string, string] = EditorInspectorPlugin_vmap