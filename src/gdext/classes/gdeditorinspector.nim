{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdscrollcontainer; export gdscrollcontainer

proc getSelectedPath*(self: EditorInspector): String =
  expandMethodBind(className EditorInspector, "get_selected_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getEditedObject*(self: EditorInspector): Object =
  expandMethodBind(className EditorInspector, "get_edited_object", 2050059866)
  var ret: encoded Object
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Object)

const EditorInspector_vmap =
  ScrollContainer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorInspector]): Table[string, string] = EditorInspector_vmap

proc propertySelected*(self: EditorInspector; property: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_selected")
  let args = [property]
  self.emitSignal(signalname, args)

proc propertyKeyed*(self: EditorInspector; property: Variant; value: Variant; advance: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_keyed")
  let args = [property, value, advance]
  self.emitSignal(signalname, args)

proc propertyDeleted*(self: EditorInspector; property: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_deleted")
  let args = [property]
  self.emitSignal(signalname, args)

proc resourceSelected*(self: EditorInspector; resource: Variant; path: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("resource_selected")
  let args = [resource, path]
  self.emitSignal(signalname, args)

proc objectIdSelected*(self: EditorInspector; id: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("object_id_selected")
  let args = [id]
  self.emitSignal(signalname, args)

proc propertyEdited*(self: EditorInspector; property: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_edited")
  let args = [property]
  self.emitSignal(signalname, args)

proc propertyToggled*(self: EditorInspector; property: Variant; checked: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("property_toggled")
  let args = [property, checked]
  self.emitSignal(signalname, args)

proc editedObjectChanged*(self: EditorInspector): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("edited_object_changed")
  self.emitSignal(signalname)

proc restartRequested*(self: EditorInspector): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("restart_requested")
  self.emitSignal(signalname)