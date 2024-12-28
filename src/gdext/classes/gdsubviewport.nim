{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdviewport; export gdviewport

proc setSize*(self: SubViewport; size: Vector2i): void =
  expandMethodBind(className SubViewport, "set_size", 1130785943)
  methodbind.ptrcall(self, [getPtr size])

proc getSize*(self: SubViewport): Vector2i =
  expandMethodBind(className SubViewport, "get_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc setSize2DOverride*(self: SubViewport; size: Vector2i): void =
  expandMethodBind(className SubViewport, "set_size_2d_override", 1130785943)
  methodbind.ptrcall(self, [getPtr size])

proc getSize2DOverride*(self: SubViewport): Vector2i =
  expandMethodBind(className SubViewport, "get_size_2d_override", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc setSize2DOverrideStretch*(self: SubViewport; enable: bool): void =
  expandMethodBind(className SubViewport, "set_size_2d_override_stretch", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isSize2DOverrideStretchEnabled*(self: SubViewport): bool =
  expandMethodBind(className SubViewport, "is_size_2d_override_stretch_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setUpdateMode*(self: SubViewport; mode: SubViewport_UpdateMode): void =
  expandMethodBind(className SubViewport, "set_update_mode", 1295690030)
  methodbind.ptrcall(self, [getPtr mode])

proc getUpdateMode*(self: SubViewport): SubViewport_UpdateMode =
  expandMethodBind(className SubViewport, "get_update_mode", 2980171553)
  var ret: encoded SubViewport_UpdateMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(SubViewport_UpdateMode)

proc setClearMode*(self: SubViewport; mode: SubViewport_ClearMode): void =
  expandMethodBind(className SubViewport, "set_clear_mode", 2834454712)
  methodbind.ptrcall(self, [getPtr mode])

proc getClearMode*(self: SubViewport): SubViewport_ClearMode =
  expandMethodBind(className SubViewport, "get_clear_mode", 331324495)
  var ret: encoded SubViewport_ClearMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(SubViewport_ClearMode)

template size*(self: SubViewport): untyped = self.getSize()
template `size=`*(self: SubViewport; value) = self.setSize(value)

template size2DOverride*(self: SubViewport): untyped = self.getSize2DOverride()
template `size2DOverride=`*(self: SubViewport; value) = self.setSize2DOverride(value)

template size2DOverrideStretch*(self: SubViewport): untyped = self.isSize2DOverrideStretchEnabled()
template `size2DOverrideStretch=`*(self: SubViewport; value) = self.setSize2DOverrideStretch(value)

template renderTargetClearMode*(self: SubViewport): untyped = self.getClearMode()
template `renderTargetClearMode=`*(self: SubViewport; value) = self.setClearMode(value)

template renderTargetUpdateMode*(self: SubViewport): untyped = self.getUpdateMode()
template `renderTargetUpdateMode=`*(self: SubViewport; value) = self.setUpdateMode(value)

const SubViewport_vmap =
  Viewport.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SubViewport]): Table[string, string] = SubViewport_vmap