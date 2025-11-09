{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(MissingResource, Resource)

proc setOriginalClass*(self: MissingResource; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MissingResource, "set_original_class", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getOriginalClass*(self: MissingResource): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MissingResource, "get_original_class", 201670096)
  methodbind.ptrcall(self, [], String)

proc setRecordingProperties*(self: MissingResource; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MissingResource, "set_recording_properties", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isRecordingProperties*(self: MissingResource): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MissingResource, "is_recording_properties", 36873697)
  methodbind.ptrcall(self, [], bool)

template originalClass*(self: MissingResource): untyped = self.getOriginalClass()
template `originalClass=`*(self: MissingResource; value) = self.setOriginalClass(value)

template recordingProperties*(self: MissingResource): untyped = self.isRecordingProperties()
template `recordingProperties=`*(self: MissingResource; value) = self.setRecordingProperties(value)
