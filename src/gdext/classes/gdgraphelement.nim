{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

expandOnClassImported(GraphElement, Container)

proc setResizable*(self: GraphElement; resizable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphElement, "set_resizable", 2586408642)
  methodbind.ptrcall(self, [getPtr resizable], void)

proc isResizable*(self: GraphElement): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphElement, "is_resizable", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDraggable*(self: GraphElement; draggable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphElement, "set_draggable", 2586408642)
  methodbind.ptrcall(self, [getPtr draggable], void)

proc isDraggable*(self: GraphElement): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphElement, "is_draggable", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setSelectable*(self: GraphElement; selectable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphElement, "set_selectable", 2586408642)
  methodbind.ptrcall(self, [getPtr selectable], void)

proc isSelectable*(self: GraphElement): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphElement, "is_selectable", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setSelected*(self: GraphElement; selected: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphElement, "set_selected", 2586408642)
  methodbind.ptrcall(self, [getPtr selected], void)

proc isSelected*(self: GraphElement): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphElement, "is_selected", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setPositionOffset*(self: GraphElement; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphElement, "set_position_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getPositionOffset*(self: GraphElement): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphElement, "get_position_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

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
