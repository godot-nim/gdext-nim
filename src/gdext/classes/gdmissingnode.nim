{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

proc setOriginalClass*(self: MissingNode; name: String): void =
  expandMethodBind(className MissingNode, "set_original_class", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc getOriginalClass*(self: MissingNode): String =
  expandMethodBind(className MissingNode, "get_original_class", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setOriginalScene*(self: MissingNode; name: String): void =
  expandMethodBind(className MissingNode, "set_original_scene", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc getOriginalScene*(self: MissingNode): String =
  expandMethodBind(className MissingNode, "get_original_scene", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setRecordingProperties*(self: MissingNode; enable: bool): void =
  expandMethodBind(className MissingNode, "set_recording_properties", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isRecordingProperties*(self: MissingNode): bool =
  expandMethodBind(className MissingNode, "is_recording_properties", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template originalClass*(self: MissingNode): untyped = self.getOriginalClass()
template `originalClass=`*(self: MissingNode; value) = self.setOriginalClass(value)

template originalScene*(self: MissingNode): untyped = self.getOriginalScene()
template `originalScene=`*(self: MissingNode; value) = self.setOriginalScene(value)

template recordingProperties*(self: MissingNode): untyped = self.isRecordingProperties()
template `recordingProperties=`*(self: MissingNode; value) = self.setRecordingProperties(value)

const MissingNode_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MissingNode]): Table[string, string] = MissingNode_vmap