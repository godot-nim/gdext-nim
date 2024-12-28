{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

proc setResizable*(self: GraphElement; resizable: bool): void =
  expandMethodBind(className GraphElement, "set_resizable", 2586408642)
  methodbind.ptrcall(self, [getPtr resizable])

proc isResizable*(self: GraphElement): bool =
  expandMethodBind(className GraphElement, "is_resizable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDraggable*(self: GraphElement; draggable: bool): void =
  expandMethodBind(className GraphElement, "set_draggable", 2586408642)
  methodbind.ptrcall(self, [getPtr draggable])

proc isDraggable*(self: GraphElement): bool =
  expandMethodBind(className GraphElement, "is_draggable", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setSelectable*(self: GraphElement; selectable: bool): void =
  expandMethodBind(className GraphElement, "set_selectable", 2586408642)
  methodbind.ptrcall(self, [getPtr selectable])

proc isSelectable*(self: GraphElement): bool =
  expandMethodBind(className GraphElement, "is_selectable", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setSelected*(self: GraphElement; selected: bool): void =
  expandMethodBind(className GraphElement, "set_selected", 2586408642)
  methodbind.ptrcall(self, [getPtr selected])

proc isSelected*(self: GraphElement): bool =
  expandMethodBind(className GraphElement, "is_selected", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setPositionOffset*(self: GraphElement; offset: Vector2): void =
  expandMethodBind(className GraphElement, "set_position_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset])

proc getPositionOffset*(self: GraphElement): Vector2 =
  expandMethodBind(className GraphElement, "get_position_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

template positionOffset*(self: GraphElement): untyped = self.getPositionOffset()
template `positionOffset=`*(self: GraphElement; value) = self.setPositionOffset(value)

template resizable*(self: GraphElement): untyped = self.isResizable()
template `resizable=`*(self: GraphElement; value) = self.setResizable(value)

template draggable*(self: GraphElement): untyped = self.isDraggable()
template `draggable=`*(self: GraphElement; value) = self.setDraggable(value)

template selectable*(self: GraphElement): untyped = self.isSelectable()
template `selectable=`*(self: GraphElement; value) = self.setSelectable(value)

template selected*(self: GraphElement): untyped = self.isSelected()
template `selected=`*(self: GraphElement; value) = self.setSelected(value)

const GraphElement_vmap =
  Container.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GraphElement]): Table[string, string] = GraphElement_vmap

proc nodeSelected*(self: GraphElement): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("node_selected")
  self.emitSignal(signalname)

proc nodeDeselected*(self: GraphElement): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("node_deselected")
  self.emitSignal(signalname)

proc raiseRequest*(self: GraphElement): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("raise_request")
  self.emitSignal(signalname)

proc deleteRequest*(self: GraphElement): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("delete_request")
  self.emitSignal(signalname)

proc resizeRequest*(self: GraphElement; newSize: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("resize_request")
  let args = [newSize]
  self.emitSignal(signalname, args)

proc resizeEnd*(self: GraphElement; newSize: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("resize_end")
  let args = [newSize]
  self.emitSignal(signalname, args)

proc dragged*(self: GraphElement; `from`: Variant; to: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("dragged")
  let args = [`from`, to]
  self.emitSignal(signalname, args)

proc positionOffsetChanged*(self: GraphElement): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("position_offset_changed")
  self.emitSignal(signalname)