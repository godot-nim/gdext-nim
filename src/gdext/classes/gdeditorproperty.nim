{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

expandOnClassImported(EditorProperty, Container)

method updateProperty*(self: EditorProperty): void {.base.} = (discard)
proc registerVirtual_updateProperty*[T: EditorProperty](Self: typedesc[T]) =
  Self.vmethods[newStringName"_update_property"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorProperty](p_instance).updateProperty()

method setReadOnly*(self: EditorProperty; readOnly: bool): void {.base.} = (discard)
proc registerVirtual_setReadOnly*[T: EditorProperty](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_read_only"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorProperty](p_instance).setReadOnly(p_args[0].decode(bool))

proc setLabel*(self: EditorProperty; text: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "set_label", 83702148)
  methodbind.ptrcall(self, [getPtr text], void)

proc getLabel*(self: EditorProperty): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "get_label", 201670096)
  methodbind.ptrcall(self, [], String)

proc setReadOnly*(self: EditorProperty; readOnly: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "set_read_only", 2586408642)
  methodbind.ptrcall(self, [getPtr readOnly], void)

proc isReadOnly*(self: EditorProperty): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "is_read_only", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDrawLabel*(self: EditorProperty; drawLabel: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "set_draw_label", 2586408642)
  methodbind.ptrcall(self, [getPtr drawLabel], void)

proc isDrawLabel*(self: EditorProperty): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "is_draw_label", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDrawBackground*(self: EditorProperty; drawBackground: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "set_draw_background", 2586408642)
  methodbind.ptrcall(self, [getPtr drawBackground], void)

proc isDrawBackground*(self: EditorProperty): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "is_draw_background", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCheckable*(self: EditorProperty; checkable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "set_checkable", 2586408642)
  methodbind.ptrcall(self, [getPtr checkable], void)

proc isCheckable*(self: EditorProperty): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "is_checkable", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setChecked*(self: EditorProperty; checked: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "set_checked", 2586408642)
  methodbind.ptrcall(self, [getPtr checked], void)

proc isChecked*(self: EditorProperty): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "is_checked", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDrawWarning*(self: EditorProperty; drawWarning: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "set_draw_warning", 2586408642)
  methodbind.ptrcall(self, [getPtr drawWarning], void)

proc isDrawWarning*(self: EditorProperty): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "is_draw_warning", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setKeying*(self: EditorProperty; keying: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "set_keying", 2586408642)
  methodbind.ptrcall(self, [getPtr keying], void)

proc isKeying*(self: EditorProperty): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "is_keying", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDeletable*(self: EditorProperty; deletable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "set_deletable", 2586408642)
  methodbind.ptrcall(self, [getPtr deletable], void)

proc isDeletable*(self: EditorProperty): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "is_deletable", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getEditedProperty*(self: EditorProperty): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "get_edited_property", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc getEditedObject*(self: EditorProperty): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "get_edited_object", 2050059866)
  methodbind.ptrcall(self, [], Object)

proc updateProperty*(self: EditorProperty): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "update_property", 3218959716)
  methodbind.ptrcall(self, [], void)

proc addFocusable*(self: EditorProperty; control: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "add_focusable", 1496901182)
  methodbind.ptrcall(self, [getPtr control], void)

proc setBottomEditor*(self: EditorProperty; editor: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "set_bottom_editor", 1496901182)
  methodbind.ptrcall(self, [getPtr editor], void)

proc setSelectable*(self: EditorProperty; selectable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "set_selectable", 2586408642)
  methodbind.ptrcall(self, [getPtr selectable], void)

proc isSelectable*(self: EditorProperty): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "is_selectable", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUseFolding*(self: EditorProperty; useFolding: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "set_use_folding", 2586408642)
  methodbind.ptrcall(self, [getPtr useFolding], void)

proc isUsingFolding*(self: EditorProperty): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "is_using_folding", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNameSplitRatio*(self: EditorProperty; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "set_name_split_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc getNameSplitRatio*(self: EditorProperty): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "get_name_split_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc deselect*(self: EditorProperty): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "deselect", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isSelected*(self: EditorProperty): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "is_selected", 36873697)
  methodbind.ptrcall(self, [], bool)

proc select*(self: EditorProperty; focusable: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "select", 1025054187)
  methodbind.ptrcall(self, [getPtr focusable], void)

proc setObjectAndProperty*(self: EditorProperty; `object`: Object; property: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "set_object_and_property", 4157606280)
  methodbind.ptrcall(self, [getPtr `object`, getPtr property], void)

proc setLabelReference*(self: EditorProperty; control: Control): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "set_label_reference", 1496901182)
  methodbind.ptrcall(self, [getPtr control], void)

proc emitChanged*(self: EditorProperty; property: StringName; value: Variant; field: StringName = default(StringName); changing: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorProperty, "emit_changed", 1822500399)
  methodbind.ptrcall(self, [getPtr property, getPtr value, getPtr field, getPtr changing], void)

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
