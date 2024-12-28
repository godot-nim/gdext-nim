{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdhboxcontainer; export gdhboxcontainer

method setCreateOptions*(self: EditorResourcePicker; menuNode: Object): void {.base.} = (discard)
proc setCreateOptions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorResourcePicker](p_instance).setCreateOptions(p_args[0].decode(Object))
template setCreateOptions_bind*(_: typedesc[EditorResourcePicker]): ClassCallVirtual = setCreateOptions

method handleMenuSelected*(self: EditorResourcePicker; id: int32): bool {.base.} = (discard)
proc handleMenuSelected(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorResourcePicker](p_instance).handleMenuSelected(p_args[0].decode(int32)).encode(r_ret)
template handleMenuSelected_bind*(_: typedesc[EditorResourcePicker]): ClassCallVirtual = handleMenuSelected

proc setBaseType*(self: EditorResourcePicker; baseType: String): void =
  expandMethodBind(className EditorResourcePicker, "set_base_type", 83702148)
  methodbind.ptrcall(self, [getPtr baseType])

proc getBaseType*(self: EditorResourcePicker): String =
  expandMethodBind(className EditorResourcePicker, "get_base_type", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getAllowedTypes*(self: EditorResourcePicker): PackedStringArray =
  expandMethodBind(className EditorResourcePicker, "get_allowed_types", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setEditedResource*(self: EditorResourcePicker; resource: gdref Resource): void =
  expandMethodBind(className EditorResourcePicker, "set_edited_resource", 968641751)
  methodbind.ptrcall(self, [getPtr resource])

proc getEditedResource*(self: EditorResourcePicker): gdref Resource =
  expandMethodBind(className EditorResourcePicker, "get_edited_resource", 2674603643)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Resource)

proc setToggleMode*(self: EditorResourcePicker; enable: bool): void =
  expandMethodBind(className EditorResourcePicker, "set_toggle_mode", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isToggleMode*(self: EditorResourcePicker): bool =
  expandMethodBind(className EditorResourcePicker, "is_toggle_mode", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTogglePressed*(self: EditorResourcePicker; pressed: bool): void =
  expandMethodBind(className EditorResourcePicker, "set_toggle_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed])

proc setEditable*(self: EditorResourcePicker; enable: bool): void =
  expandMethodBind(className EditorResourcePicker, "set_editable", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isEditable*(self: EditorResourcePicker): bool =
  expandMethodBind(className EditorResourcePicker, "is_editable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template baseType*(self: EditorResourcePicker): untyped = self.getBaseType()
template `baseType=`*(self: EditorResourcePicker; value) = self.setBaseType(value)

template editedResource*(self: EditorResourcePicker): untyped = self.getEditedResource()
template `editedResource=`*(self: EditorResourcePicker; value) = self.setEditedResource(value)

template editable*(self: EditorResourcePicker): untyped = self.isEditable()
template `editable=`*(self: EditorResourcePicker; value) = self.setEditable(value)

template toggleMode*(self: EditorResourcePicker): untyped = self.isToggleMode()
template `toggleMode=`*(self: EditorResourcePicker; value) = self.setToggleMode(value)

const EditorResourcePicker_vmap =
  HBoxContainer.vmap.concat toTable {
    "setcreateoptions" : "_set_create_options",
    "handlemenuselected" : "_handle_menu_selected",
    }
template vmap*(_: typedesc[EditorResourcePicker]): Table[string, string] = EditorResourcePicker_vmap

proc resourceSelected*(self: EditorResourcePicker; resource: Variant; inspect: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("resource_selected")
  let args = [resource, inspect]
  self.emitSignal(signalname, args)

proc resourceChanged*(self: EditorResourcePicker; resource: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("resource_changed")
  let args = [resource]
  self.emitSignal(signalname, args)