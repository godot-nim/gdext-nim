{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

method updateProperty*(self: EditorProperty): void {.base.} = (discard)
proc updateProperty(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorProperty](p_instance).updateProperty()
template updateProperty_bind*(_: typedesc[EditorProperty]): ClassCallVirtual = updateProperty

method setReadOnly*(self: EditorProperty; readOnly: bool): void {.base.} = (discard)
proc setReadOnly(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorProperty](p_instance).setReadOnly(p_args[0].decode(bool))
template setReadOnly_bind*(_: typedesc[EditorProperty]): ClassCallVirtual = setReadOnly

proc setLabel*(self: EditorProperty; text: String): void =
  expandMethodBind(className EditorProperty, "set_label", 83702148)
  var `?param` = [getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLabel*(self: EditorProperty): String =
  expandMethodBind(className EditorProperty, "get_label", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setReadOnly*(self: EditorProperty; readOnly: bool): void =
  expandMethodBind(className EditorProperty, "set_read_only", 2586408642)
  var `?param` = [getPtr readOnly]
  methodbind.ptrcall(self, addr `?param`[0])

proc isReadOnly*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_read_only", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCheckable*(self: EditorProperty; checkable: bool): void =
  expandMethodBind(className EditorProperty, "set_checkable", 2586408642)
  var `?param` = [getPtr checkable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCheckable*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_checkable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setChecked*(self: EditorProperty; checked: bool): void =
  expandMethodBind(className EditorProperty, "set_checked", 2586408642)
  var `?param` = [getPtr checked]
  methodbind.ptrcall(self, addr `?param`[0])

proc isChecked*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_checked", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDrawWarning*(self: EditorProperty; drawWarning: bool): void =
  expandMethodBind(className EditorProperty, "set_draw_warning", 2586408642)
  var `?param` = [getPtr drawWarning]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDrawWarning*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_draw_warning", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setKeying*(self: EditorProperty; keying: bool): void =
  expandMethodBind(className EditorProperty, "set_keying", 2586408642)
  var `?param` = [getPtr keying]
  methodbind.ptrcall(self, addr `?param`[0])

proc isKeying*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_keying", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDeletable*(self: EditorProperty; deletable: bool): void =
  expandMethodBind(className EditorProperty, "set_deletable", 2586408642)
  var `?param` = [getPtr deletable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDeletable*(self: EditorProperty): bool =
  expandMethodBind(className EditorProperty, "is_deletable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getEditedProperty*(self: EditorProperty): StringName =
  expandMethodBind(className EditorProperty, "get_edited_property", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc getEditedObject*(self: EditorProperty): Object =
  expandMethodBind(className EditorProperty, "get_edited_object", 2050059866)
  var ret: encoded Object
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Object)

proc updateProperty*(self: EditorProperty): void =
  expandMethodBind(className EditorProperty, "update_property", 3218959716)
  methodbind.ptrcall(self, nil)

proc addFocusable*(self: EditorProperty; control: Control): void =
  expandMethodBind(className EditorProperty, "add_focusable", 1496901182)
  var `?param` = [getPtr control]
  methodbind.ptrcall(self, addr `?param`[0])

proc setBottomEditor*(self: EditorProperty; editor: Control): void =
  expandMethodBind(className EditorProperty, "set_bottom_editor", 1496901182)
  var `?param` = [getPtr editor]
  methodbind.ptrcall(self, addr `?param`[0])

proc emitChanged*(self: EditorProperty; property: StringName; value: Variant; field: StringName = stringName ""; changing: bool = false): void =
  expandMethodBind(className EditorProperty, "emit_changed", 3069422438)
  var `?param` = [getPtr property, getPtr value, getPtr field, getPtr changing]
  methodbind.ptrcall(self, addr `?param`[0])

template label*(self: EditorProperty): untyped = self.getLabel()
template `label=`*(self: EditorProperty; value) = self.setLabel(value)

template readOnly*(self: EditorProperty): untyped = self.isReadOnly()
template `readOnly=`*(self: EditorProperty; value) = self.setReadOnly(value)

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

const EditorProperty_vmap =
  Container.vmap.concat toTable {
    "updateproperty" : "_update_property",
    "setreadonly" : "_set_read_only",
    }
template vmap*(_: typedesc[EditorProperty]): Table[string, string] = EditorProperty_vmap

proc propertyChanged*(self: EditorProperty; property: Variant; value: Variant; field: Variant; changing: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_changed")
  let args = [property, value, field, changing]
  self.emitSignal(signalname, args)

proc multiplePropertiesChanged*(self: EditorProperty; properties: Variant; value: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("multiple_properties_changed")
  let args = [properties, value]
  self.emitSignal(signalname, args)

proc propertyKeyed*(self: EditorProperty; property: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_keyed")
  let args = [property]
  self.emitSignal(signalname, args)

proc propertyDeleted*(self: EditorProperty; property: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_deleted")
  let args = [property]
  self.emitSignal(signalname, args)

proc propertyKeyedWithValue*(self: EditorProperty; property: Variant; value: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_keyed_with_value")
  let args = [property, value]
  self.emitSignal(signalname, args)

proc propertyChecked*(self: EditorProperty; property: Variant; checked: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_checked")
  let args = [property, checked]
  self.emitSignal(signalname, args)

proc propertyPinned*(self: EditorProperty; property: Variant; pinned: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_pinned")
  let args = [property, pinned]
  self.emitSignal(signalname, args)

proc propertyCanRevertChanged*(self: EditorProperty; property: Variant; canRevert: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_can_revert_changed")
  let args = [property, canRevert]
  self.emitSignal(signalname, args)

proc resourceSelected*(self: EditorProperty; path: Variant; resource: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("resource_selected")
  let args = [path, resource]
  self.emitSignal(signalname, args)

proc objectIdSelected*(self: EditorProperty; property: Variant; id: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("object_id_selected")
  let args = [property, id]
  self.emitSignal(signalname, args)

proc selected*(self: EditorProperty; path: Variant; focusableIdx: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("selected")
  let args = [path, focusableIdx]
  self.emitSignal(signalname, args)