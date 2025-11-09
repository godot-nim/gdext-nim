{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(MissingNode, Node)

proc setOriginalClass*(self: MissingNode; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MissingNode, "set_original_class", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getOriginalClass*(self: MissingNode): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MissingNode, "get_original_class", 201670096)
  methodbind.ptrcall(self, [], String)

proc setOriginalScene*(self: MissingNode; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MissingNode, "set_original_scene", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getOriginalScene*(self: MissingNode): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MissingNode, "get_original_scene", 201670096)
  methodbind.ptrcall(self, [], String)

proc setRecordingProperties*(self: MissingNode; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MissingNode, "set_recording_properties", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isRecordingProperties*(self: MissingNode): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MissingNode, "is_recording_properties", 36873697)
  methodbind.ptrcall(self, [], bool)

template originalClass*(self: MissingNode): untyped = self.getOriginalClass()
template `originalClass=`*(self: MissingNode; value) = self.setOriginalClass(value)

template originalScene*(self: MissingNode): untyped = self.getOriginalScene()
template `originalScene=`*(self: MissingNode; value) = self.setOriginalScene(value)

template recordingProperties*(self: MissingNode): untyped = self.isRecordingProperties()
template `recordingProperties=`*(self: MissingNode; value) = self.setRecordingProperties(value)
