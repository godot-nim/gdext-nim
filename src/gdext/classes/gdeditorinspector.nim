{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdscrollcontainer; export gdscrollcontainer
export EditorInspector

proc edit*(self: EditorInspector; `object`: Object): void =
  expandMethodBind(className EditorInspector, "edit", 3975164845)
  methodbind.ptrcall(self, [getPtr `object`])

proc getSelectedPath*(self: EditorInspector): String =
  expandMethodBind(className EditorInspector, "get_selected_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getEditedObject*(self: EditorInspector): Object =
  expandMethodBind(className EditorInspector, "get_edited_object", 2050059866)
  var ret: encoded Object
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Object)

proc instantiatePropertyEditor*(_: typedesc[EditorInspector]; `object`: Object; `type`: Variant_Type; path: String; hint: PropertyHint; hintText: String; usage: uint32; wide: bool = false): EditorProperty =
  expandMethodBind(className EditorInspector, "instantiate_property_editor", 1429914152)
  var ret: encoded EditorProperty
  methodbind.ptrcall([getPtr `object`, getPtr `type`, getPtr path, getPtr hint, getPtr hintText, getPtr usage, getPtr wide], addr ret)
  (addr ret).decode_result(EditorProperty)
