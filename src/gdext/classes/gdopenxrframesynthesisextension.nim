{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrextensionwrapper; export gdopenxrextensionwrapper

expandOnClassImported(OpenXRFrameSynthesisExtension, OpenXRExtensionWrapper)

proc isAvailable*(self: OpenXRFrameSynthesisExtension): bool =
  expandMethodBind(className OpenXRFrameSynthesisExtension, "is_available", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isEnabled*(self: OpenXRFrameSynthesisExtension): bool =
  expandMethodBind(className OpenXRFrameSynthesisExtension, "is_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setEnabled*(self: OpenXRFrameSynthesisExtension; enable: bool): void =
  expandMethodBind(className OpenXRFrameSynthesisExtension, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc getRelaxFrameInterval*(self: OpenXRFrameSynthesisExtension): bool =
  expandMethodBind(className OpenXRFrameSynthesisExtension, "get_relax_frame_interval", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setRelaxFrameInterval*(self: OpenXRFrameSynthesisExtension; relaxFrameInterval: bool): void =
  expandMethodBind(className OpenXRFrameSynthesisExtension, "set_relax_frame_interval", 2586408642)
  methodbind.ptrcall(self, [getPtr relaxFrameInterval])

proc skipNextFrame*(self: OpenXRFrameSynthesisExtension): void =
  expandMethodBind(className OpenXRFrameSynthesisExtension, "skip_next_frame", 3218959716)
  methodbind.ptrcall(self, [])

template enabled*(self: OpenXRFrameSynthesisExtension): untyped = self.isEnabled()
template `enabled=`*(self: OpenXRFrameSynthesisExtension; value) = self.setEnabled(value)

template relaxFrameInterval*(self: OpenXRFrameSynthesisExtension): untyped = self.getRelaxFrameInterval()
template `relaxFrameInterval=`*(self: OpenXRFrameSynthesisExtension; value) = self.setRelaxFrameInterval(value)
