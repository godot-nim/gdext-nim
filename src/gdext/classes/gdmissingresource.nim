{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setOriginalClass*(self: MissingResource; name: String): void =
  expandMethodBind(className MissingResource, "set_original_class", 83702148)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOriginalClass*(self: MissingResource): String =
  expandMethodBind(className MissingResource, "get_original_class", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setRecordingProperties*(self: MissingResource; enable: bool): void =
  expandMethodBind(className MissingResource, "set_recording_properties", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isRecordingProperties*(self: MissingResource): bool =
  expandMethodBind(className MissingResource, "is_recording_properties", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template originalClass*(self: MissingResource): untyped = self.getOriginalClass()
template `originalClass=`*(self: MissingResource; value) = self.setOriginalClass(value)

template recordingProperties*(self: MissingResource): untyped = self.isRecordingProperties()
template `recordingProperties=`*(self: MissingResource; value) = self.setRecordingProperties(value)

const MissingResource_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MissingResource]): Table[string, string] = MissingResource_vmap