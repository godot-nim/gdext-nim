{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EditorFeatureProfile, RefCounted)

proc setDisableClass*(self: EditorFeatureProfile; className: StringName; disable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFeatureProfile, "set_disable_class", 2524380260)
  methodbind.ptrcall(self, [getPtr className, getPtr disable], void)

proc isClassDisabled*(self: EditorFeatureProfile; className: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFeatureProfile, "is_class_disabled", 2619796661)
  methodbind.ptrcall(self, [getPtr className], bool)

proc setDisableClassEditor*(self: EditorFeatureProfile; className: StringName; disable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFeatureProfile, "set_disable_class_editor", 2524380260)
  methodbind.ptrcall(self, [getPtr className, getPtr disable], void)

proc isClassEditorDisabled*(self: EditorFeatureProfile; className: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFeatureProfile, "is_class_editor_disabled", 2619796661)
  methodbind.ptrcall(self, [getPtr className], bool)

proc setDisableClassProperty*(self: EditorFeatureProfile; className: StringName; property: StringName; disable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFeatureProfile, "set_disable_class_property", 865197084)
  methodbind.ptrcall(self, [getPtr className, getPtr property, getPtr disable], void)

proc isClassPropertyDisabled*(self: EditorFeatureProfile; className: StringName; property: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFeatureProfile, "is_class_property_disabled", 471820014)
  methodbind.ptrcall(self, [getPtr className, getPtr property], bool)

proc setDisableFeature*(self: EditorFeatureProfile; feature: EditorFeatureProfile_Feature; disable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFeatureProfile, "set_disable_feature", 1884871044)
  methodbind.ptrcall(self, [getPtr feature, getPtr disable], void)

proc isFeatureDisabled*(self: EditorFeatureProfile; feature: EditorFeatureProfile_Feature): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFeatureProfile, "is_feature_disabled", 2974403161)
  methodbind.ptrcall(self, [getPtr feature], bool)

proc getFeatureName*(self: EditorFeatureProfile; feature: EditorFeatureProfile_Feature): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFeatureProfile, "get_feature_name", 3401335809)
  methodbind.ptrcall(self, [getPtr feature], String)

proc saveToFile*(self: EditorFeatureProfile; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFeatureProfile, "save_to_file", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc loadFromFile*(self: EditorFeatureProfile; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFeatureProfile, "load_from_file", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)
