{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdscrollcontainer; export gdscrollcontainer

expandOnClassImported(EditorInspector, ScrollContainer)

proc edit*(self: EditorInspector; `object`: Object): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInspector, "edit", 3975164845)
  methodbind.ptrcall(self, [getPtr `object`], void)

proc getSelectedPath*(self: EditorInspector): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInspector, "get_selected_path", 201670096)
  methodbind.ptrcall(self, [], String)

proc getEditedObject*(self: EditorInspector): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInspector, "get_edited_object", 2050059866)
  methodbind.ptrcall(self, [], Object)

proc instantiatePropertyEditor*(_: typedesc[EditorInspector]; `object`: Object; `type`: Variant_Type; path: String; hint: PropertyHint; hintText: String; usage: uint32; wide: bool = false): EditorProperty =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorInspector, "instantiate_property_editor", 1429914152)
  methodbind.ptrcall([getPtr `object`, getPtr `type`, getPtr path, getPtr hint, getPtr hintText, getPtr usage, getPtr wide], EditorProperty)
