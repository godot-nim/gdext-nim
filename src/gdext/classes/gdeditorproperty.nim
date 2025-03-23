{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

method updateProperty*(self: EditorProperty): void {.base.} = (discard)
proc registerVirtual_updateProperty*[T: EditorProperty](Self: typedesc[T]) =
  Self.vmethods[stringName"_update_property"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorProperty](p_instance).updateProperty()

method setReadOnly*(self: EditorProperty; readOnly: bool): void {.base.} = (discard)
proc registerVirtual_setReadOnly*[T: EditorProperty](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_read_only"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorProperty](p_instance).setReadOnly(p_args[0].decode(bool))

proc setLabel*(self: EditorProperty; text: String): void =
  expandMethodBind(className EditorProperty, "set_label", 83702148)
  methodbind.ptrcall(self, [getPtr text])

proc getLabel*(self: EditorProperty): String =
  expandMethodBind(className EditorProperty, "get_label", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setReadOnly*(self: EditorProperty; readOnly: bool): void =
  expandMethodBind(className EditorProperty, "set_read_only", 2586408642)
  methodbind.ptrcall(self, [getPtr readOnly])

proc isReadOnly*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_read_only", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDrawLabel*(self: EditorProperty; drawLabel: bool): void =
  expandMethodBind(className EditorProperty, "set_draw_label", 2586408642)
  methodbind.ptrcall(self, [getPtr drawLabel])

proc isDrawLabel*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_draw_label", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDrawBackground*(self: EditorProperty; drawBackground: bool): void =
  expandMethodBind(className EditorProperty, "set_draw_background", 2586408642)
  methodbind.ptrcall(self, [getPtr drawBackground])

proc isDrawBackground*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_draw_background", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCheckable*(self: EditorProperty; checkable: bool): void =
  expandMethodBind(className EditorProperty, "set_checkable", 2586408642)
  methodbind.ptrcall(self, [getPtr checkable])

proc isCheckable*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_checkable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setChecked*(self: EditorProperty; checked: bool): void =
  expandMethodBind(className EditorProperty, "set_checked", 2586408642)
  methodbind.ptrcall(self, [getPtr checked])

proc isChecked*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_checked", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDrawWarning*(self: EditorProperty; drawWarning: bool): void =
  expandMethodBind(className EditorProperty, "set_draw_warning", 2586408642)
  methodbind.ptrcall(self, [getPtr drawWarning])

proc isDrawWarning*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_draw_warning", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setKeying*(self: EditorProperty; keying: bool): void =
  expandMethodBind(className EditorProperty, "set_keying", 2586408642)
  methodbind.ptrcall(self, [getPtr keying])

proc isKeying*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_keying", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDeletable*(self: EditorProperty; deletable: bool): void =
  expandMethodBind(className EditorProperty, "set_deletable", 2586408642)
  methodbind.ptrcall(self, [getPtr deletable])

proc isDeletable*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_deletable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getEditedProperty*(self: EditorProperty): StringName =
  expandMethodBind(className EditorProperty, "get_edited_property", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc getEditedObject*(self: EditorProperty): Object =
  expandMethodBind(className EditorProperty, "get_edited_object", 2050059866)
  var ret: encoded Object
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Object)

proc updateProperty*(self: EditorProperty): void =
  expandMethodBind(className EditorProperty, "update_property", 3218959716)
  methodbind.ptrcall(self, [])

proc addFocusable*(self: EditorProperty; control: Control): void =
  expandMethodBind(className EditorProperty, "add_focusable", 1496901182)
  methodbind.ptrcall(self, [getPtr control])

proc setBottomEditor*(self: EditorProperty; editor: Control): void =
  expandMethodBind(className EditorProperty, "set_bottom_editor", 1496901182)
  methodbind.ptrcall(self, [getPtr editor])

proc setSelectable*(self: EditorProperty; selectable: bool): void =
  expandMethodBind(className EditorProperty, "set_selectable", 2586408642)
  methodbind.ptrcall(self, [getPtr selectable])

proc isSelectable*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_selectable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setUseFolding*(self: EditorProperty; useFolding: bool): void =
  expandMethodBind(className EditorProperty, "set_use_folding", 2586408642)
  methodbind.ptrcall(self, [getPtr useFolding])

proc isUsingFolding*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_using_folding", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setNameSplitRatio*(self: EditorProperty; ratio: Float): void =
  expandMethodBind(className EditorProperty, "set_name_split_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio])

proc getNameSplitRatio*(self: EditorProperty): Float =
  expandMethodBind(className EditorProperty, "get_name_split_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc deselect*(self: EditorProperty): void =
  expandMethodBind(className EditorProperty, "deselect", 3218959716)
  methodbind.ptrcall(self, [])

proc isSelected*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_selected", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc select*(self: EditorProperty; focusable: int32 = -1): void =
  expandMethodBind(className EditorProperty, "select", 1025054187)
  methodbind.ptrcall(self, [getPtr focusable])

proc setObjectAndProperty*(self: EditorProperty; `object`: Object; property: StringName): void =
  expandMethodBind(className EditorProperty, "set_object_and_property", 4157606280)
  methodbind.ptrcall(self, [getPtr `object`, getPtr property])

proc setLabelReference*(self: EditorProperty; control: Control): void =
  expandMethodBind(className EditorProperty, "set_label_reference", 1496901182)
  methodbind.ptrcall(self, [getPtr control])

proc emitChanged*(self: EditorProperty; property: StringName; value: Variant; field: StringName = default(StringName); changing: bool = false): void =
  expandMethodBind(className EditorProperty, "emit_changed", 1822500399)
  methodbind.ptrcall(self, [getPtr property, getPtr value, getPtr field, getPtr changing])

template label*(self: EditorProperty): untyped = self.getLabel()
template `label=`*(self: EditorProperty; value) = self.setLabel(value)

template readOnly*(self: EditorProperty): untyped = self.isReadOnly()
template `readOnly=`*(self: EditorProperty; value) = self.setReadOnly(value)

template drawLabel*(self: EditorProperty): untyped = self.isDrawLabel()
template `drawLabel=`*(self: EditorProperty; value) = self.setDrawLabel(value)

template drawBackground*(self: EditorProperty): untyped = self.isDrawBackground()
template `drawBackground=`*(self: EditorProperty; value) = self.setDrawBackground(value)

template checkable*(self: EditorProperty): untyped = self.isCheckable()
template `checkable=`*(self: EditorProperty; value) = self.setCheckable(value)

template checked*(self: EditorProperty): untyped = self.isChecked()
template `checked=`*(self: EditorProperty; value) = self.setChecked(value)

template drawWarning*(self: EditorProperty): untyped = self.isDrawWarning()
template `drawWarning=`*(self: EditorProperty; value) = self.setDrawWarning(value)

template keying*(self: EditorProperty): untyped = self.isKeying()
template `keying=`*(self: EditorProperty; value) = self.setKeying(value)

template deletable*(self: EditorProperty): untyped = self.isDeletable()
template `deletable=`*(self: EditorProperty; value) = self.setDeletable(value)

template selectable*(self: EditorProperty): untyped = self.isSelectable()
template `selectable=`*(self: EditorProperty; value) = self.setSelectable(value)

template useFolding*(self: EditorProperty): untyped = self.isUsingFolding()
template `useFolding=`*(self: EditorProperty; value) = self.setUseFolding(value)

template nameSplitRatio*(self: EditorProperty): untyped = self.getNameSplitRatio()
template `nameSplitRatio=`*(self: EditorProperty; value) = self.setNameSplitRatio(value)

proc call_propertyChanged*(self: EditorProperty; property: Variant; value: Variant; field: Variant; changing: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_changed")
  let args = [property, value, field, changing]
  self.emitSignal(signalname, args)

proc call_multiplePropertiesChanged*(self: EditorProperty; properties: Variant; value: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("multiple_properties_changed")
  let args = [properties, value]
  self.emitSignal(signalname, args)

proc call_propertyKeyed*(self: EditorProperty; property: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_keyed")
  let args = [property]
  self.emitSignal(signalname, args)

proc call_propertyDeleted*(self: EditorProperty; property: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_deleted")
  let args = [property]
  self.emitSignal(signalname, args)

proc call_propertyKeyedWithValue*(self: EditorProperty; property: Variant; value: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_keyed_with_value")
  let args = [property, value]
  self.emitSignal(signalname, args)

proc call_propertyChecked*(self: EditorProperty; property: Variant; checked: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_checked")
  let args = [property, checked]
  self.emitSignal(signalname, args)

proc call_propertyFavorited*(self: EditorProperty; property: Variant; favorited: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_favorited")
  let args = [property, favorited]
  self.emitSignal(signalname, args)

proc call_propertyPinned*(self: EditorProperty; property: Variant; pinned: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_pinned")
  let args = [property, pinned]
  self.emitSignal(signalname, args)

proc call_propertyCanRevertChanged*(self: EditorProperty; property: Variant; canRevert: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_can_revert_changed")
  let args = [property, canRevert]
  self.emitSignal(signalname, args)

proc call_resourceSelected*(self: EditorProperty; path: Variant; resource: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("resource_selected")
  let args = [path, resource]
  self.emitSignal(signalname, args)

proc call_objectIdSelected*(self: EditorProperty; property: Variant; id: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("object_id_selected")
  let args = [property, id]
  self.emitSignal(signalname, args)

proc call_selected*(self: EditorProperty; path: Variant; focusableIdx: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("selected")
  let args = [path, focusableIdx]
  self.emitSignal(signalname, args)