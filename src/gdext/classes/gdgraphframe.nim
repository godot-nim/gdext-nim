{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgraphelement; export gdgraphelement

proc setTitle*(self: GraphFrame; title: String): void =
  expandMethodBind(className GraphFrame, "set_title", 83702148)
  methodbind.ptrcall(self, [getPtr title])

proc getTitle*(self: GraphFrame): String =
  expandMethodBind(className GraphFrame, "get_title", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getTitlebarHbox*(self: GraphFrame): HBoxContainer =
  expandMethodBind(className GraphFrame, "get_titlebar_hbox", 3590609951)
  var ret: encoded HBoxContainer
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(HBoxContainer)

proc setAutoshrinkEnabled*(self: GraphFrame; shrink: bool): void =
  expandMethodBind(className GraphFrame, "set_autoshrink_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr shrink])

proc isAutoshrinkEnabled*(self: GraphFrame): bool =
  expandMethodBind(className GraphFrame, "is_autoshrink_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setAutoshrinkMargin*(self: GraphFrame; autoshrinkMargin: int32): void =
  expandMethodBind(className GraphFrame, "set_autoshrink_margin", 1286410249)
  methodbind.ptrcall(self, [getPtr autoshrinkMargin])

proc getAutoshrinkMargin*(self: GraphFrame): int32 =
  expandMethodBind(className GraphFrame, "get_autoshrink_margin", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setDragMargin*(self: GraphFrame; dragMargin: int32): void =
  expandMethodBind(className GraphFrame, "set_drag_margin", 1286410249)
  methodbind.ptrcall(self, [getPtr dragMargin])

proc getDragMargin*(self: GraphFrame): int32 =
  expandMethodBind(className GraphFrame, "get_drag_margin", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setTintColorEnabled*(self: GraphFrame; enable: bool): void =
  expandMethodBind(className GraphFrame, "set_tint_color_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isTintColorEnabled*(self: GraphFrame): bool =
  expandMethodBind(className GraphFrame, "is_tint_color_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTintColor*(self: GraphFrame; color: Color): void =
  expandMethodBind(className GraphFrame, "set_tint_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getTintColor*(self: GraphFrame): Color =
  expandMethodBind(className GraphFrame, "get_tint_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

template title*(self: GraphFrame): untyped = self.getTitle()
template `title=`*(self: GraphFrame; value) = self.setTitle(value)

template autoshrinkEnabled*(self: GraphFrame): untyped = self.isAutoshrinkEnabled()
template `autoshrinkEnabled=`*(self: GraphFrame; value) = self.setAutoshrinkEnabled(value)

template autoshrinkMargin*(self: GraphFrame): untyped = self.getAutoshrinkMargin()
template `autoshrinkMargin=`*(self: GraphFrame; value) = self.setAutoshrinkMargin(value)

template dragMargin*(self: GraphFrame): untyped = self.getDragMargin()
template `dragMargin=`*(self: GraphFrame; value) = self.setDragMargin(value)

template tintColorEnabled*(self: GraphFrame): untyped = self.isTintColorEnabled()
template `tintColorEnabled=`*(self: GraphFrame; value) = self.setTintColorEnabled(value)

template tintColor*(self: GraphFrame): untyped = self.getTintColor()
template `tintColor=`*(self: GraphFrame; value) = self.setTintColor(value)

const GraphFrame_vmap =
  GraphElement.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GraphFrame]): Table[string, string] = GraphFrame_vmap

proc autoshrinkChanged*(self: GraphFrame): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("autoshrink_changed")
  self.emitSignal(signalname)