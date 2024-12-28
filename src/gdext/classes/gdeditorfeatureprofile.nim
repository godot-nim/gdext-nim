{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setDisableClass*(self: EditorFeatureProfile; className: StringName; disable: bool): void =
  expandMethodBind(className EditorFeatureProfile, "set_disable_class", 2524380260)
  methodbind.ptrcall(self, [getPtr className, getPtr disable])

proc isClassDisabled*(self: EditorFeatureProfile; className: StringName): bool =
  expandMethodBind(className EditorFeatureProfile, "is_class_disabled", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr className], addr ret)
  (addr ret).decode_result(bool)

proc setDisableClassEditor*(self: EditorFeatureProfile; className: StringName; disable: bool): void =
  expandMethodBind(className EditorFeatureProfile, "set_disable_class_editor", 2524380260)
  methodbind.ptrcall(self, [getPtr className, getPtr disable])

proc isClassEditorDisabled*(self: EditorFeatureProfile; className: StringName): bool =
  expandMethodBind(className EditorFeatureProfile, "is_class_editor_disabled", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr className], addr ret)
  (addr ret).decode_result(bool)

proc setDisableClassProperty*(self: EditorFeatureProfile; className: StringName; property: StringName; disable: bool): void =
  expandMethodBind(className EditorFeatureProfile, "set_disable_class_property", 865197084)
  methodbind.ptrcall(self, [getPtr className, getPtr property, getPtr disable])

proc isClassPropertyDisabled*(self: EditorFeatureProfile; className: StringName; property: StringName): bool =
  expandMethodBind(className EditorFeatureProfile, "is_class_property_disabled", 471820014)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr className, getPtr property], addr ret)
  (addr ret).decode_result(bool)

proc setDisableFeature*(self: EditorFeatureProfile; feature: EditorFeatureProfile_Feature; disable: bool): void =
  expandMethodBind(className EditorFeatureProfile, "set_disable_feature", 1884871044)
  methodbind.ptrcall(self, [getPtr feature, getPtr disable])

proc isFeatureDisabled*(self: EditorFeatureProfile; feature: EditorFeatureProfile_Feature): bool =
  expandMethodBind(className EditorFeatureProfile, "is_feature_disabled", 2974403161)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr feature], addr ret)
  (addr ret).decode_result(bool)

proc getFeatureName*(self: EditorFeatureProfile; feature: EditorFeatureProfile_Feature): String =
  expandMethodBind(className EditorFeatureProfile, "get_feature_name", 3401335809)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr feature], addr ret)
  (addr ret).decode_result(String)

proc saveToFile*(self: EditorFeatureProfile; path: String): Error =
  expandMethodBind(className EditorFeatureProfile, "save_to_file", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc loadFromFile*(self: EditorFeatureProfile; path: String): Error =
  expandMethodBind(className EditorFeatureProfile, "load_from_file", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(Error)

const EditorFeatureProfile_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorFeatureProfile]): Table[string, string] = EditorFeatureProfile_vmap