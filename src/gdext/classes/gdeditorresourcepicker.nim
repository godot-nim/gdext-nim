{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdhboxcontainer; export gdhboxcontainer

expandOnClassImported(EditorResourcePicker, HBoxContainer)

method setCreateOptions*(self: EditorResourcePicker; menuNode: Object): void {.base.} = (discard)
proc registerVirtual_setCreateOptions*[T: EditorResourcePicker](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_create_options"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorResourcePicker](p_instance).setCreateOptions(p_args[0].decode(Object))

method handleMenuSelected*(self: EditorResourcePicker; id: int32): bool {.base.} = (discard)
proc registerVirtual_handleMenuSelected*[T: EditorResourcePicker](Self: typedesc[T]) =
  Self.vmethods[newStringName"_handle_menu_selected"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorResourcePicker](p_instance).handleMenuSelected(p_args[0].decode(int32)).encode(r_ret)

proc setBaseType*(self: EditorResourcePicker; baseType: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorResourcePicker, "set_base_type", 83702148)
  methodbind.ptrcall(self, [getPtr baseType], void)

proc getBaseType*(self: EditorResourcePicker): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorResourcePicker, "get_base_type", 201670096)
  methodbind.ptrcall(self, [], String)

proc getAllowedTypes*(self: EditorResourcePicker): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorResourcePicker, "get_allowed_types", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setEditedResource*(self: EditorResourcePicker; resource: gdref Resource): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorResourcePicker, "set_edited_resource", 968641751)
  methodbind.ptrcall(self, [getPtr resource], void)

proc getEditedResource*(self: EditorResourcePicker): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorResourcePicker, "get_edited_resource", 2674603643)
  methodbind.ptrcall(self, [], gdref Resource)

proc setToggleMode*(self: EditorResourcePicker; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorResourcePicker, "set_toggle_mode", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isToggleMode*(self: EditorResourcePicker): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorResourcePicker, "is_toggle_mode", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTogglePressed*(self: EditorResourcePicker; pressed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorResourcePicker, "set_toggle_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed], void)

proc setEditable*(self: EditorResourcePicker; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorResourcePicker, "set_editable", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isEditable*(self: EditorResourcePicker): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorResourcePicker, "is_editable", 36873697)
  methodbind.ptrcall(self, [], bool)

template baseType*(self: EditorResourcePicker): untyped = self.getBaseType()
template `baseType=`*(self: EditorResourcePicker; value) = self.setBaseType(value)

template editedResource*(self: EditorResourcePicker): untyped = self.getEditedResource()
template `editedResource=`*(self: EditorResourcePicker; value) = self.setEditedResource(value)

template editable*(self: EditorResourcePicker): untyped = self.isEditable()
template `editable=`*(self: EditorResourcePicker; value) = self.setEditable(value)

template toggleMode*(self: EditorResourcePicker): untyped = self.isToggleMode()
template `toggleMode=`*(self: EditorResourcePicker; value) = self.setToggleMode(value)
