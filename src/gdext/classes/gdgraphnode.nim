{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgraphelement; export gdgraphelement

expandOnClassImported(GraphNode, GraphElement)

method drawPort*(self: GraphNode; slotIndex: int32; position: Vector2i; left: bool; color: Color): void {.base.} = (discard)
proc registerVirtual_drawPort*[T: GraphNode](Self: typedesc[T]) =
  Self.vmethods[newStringName"_draw_port"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[GraphNode](p_instance).drawPort(p_args[0].decode(int32), p_args[1].decode(Vector2i), p_args[2].decode(bool), p_args[3].decode(Color))

proc setTitle*(self: GraphNode; title: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "set_title", 83702148)
  methodbind.ptrcall(self, [getPtr title], void)

proc getTitle*(self: GraphNode): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_title", 201670096)
  methodbind.ptrcall(self, [], String)

proc getTitlebarHbox*(self: GraphNode): HBoxContainer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_titlebar_hbox", 3590609951)
  methodbind.ptrcall(self, [], HBoxContainer)

proc setSlot*(self: GraphNode; slotIndex: int32; enableLeftPort: bool; typeLeft: int32; colorLeft: Color; enableRightPort: bool; typeRight: int32; colorRight: Color; customIconLeft: gdref Texture2D = default gdref Texture2D; customIconRight: gdref Texture2D = default gdref Texture2D; drawStylebox: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "set_slot", 2873310869)
  methodbind.ptrcall(self, [getPtr slotIndex, getPtr enableLeftPort, getPtr typeLeft, getPtr colorLeft, getPtr enableRightPort, getPtr typeRight, getPtr colorRight, getPtr customIconLeft, getPtr customIconRight, getPtr drawStylebox], void)

proc clearSlot*(self: GraphNode; slotIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "clear_slot", 1286410249)
  methodbind.ptrcall(self, [getPtr slotIndex], void)

proc clearAllSlots*(self: GraphNode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "clear_all_slots", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isSlotEnabledLeft*(self: GraphNode; slotIndex: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "is_slot_enabled_left", 1116898809)
  methodbind.ptrcall(self, [getPtr slotIndex], bool)

proc setSlotEnabledLeft*(self: GraphNode; slotIndex: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "set_slot_enabled_left", 300928843)
  methodbind.ptrcall(self, [getPtr slotIndex, getPtr enable], void)

proc setSlotTypeLeft*(self: GraphNode; slotIndex: int32; `type`: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "set_slot_type_left", 3937882851)
  methodbind.ptrcall(self, [getPtr slotIndex, getPtr `type`], void)

proc getSlotTypeLeft*(self: GraphNode; slotIndex: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_slot_type_left", 923996154)
  methodbind.ptrcall(self, [getPtr slotIndex], int32)

proc setSlotColorLeft*(self: GraphNode; slotIndex: int32; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "set_slot_color_left", 2878471219)
  methodbind.ptrcall(self, [getPtr slotIndex, getPtr color], void)

proc getSlotColorLeft*(self: GraphNode; slotIndex: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_slot_color_left", 3457211756)
  methodbind.ptrcall(self, [getPtr slotIndex], Color)

proc setSlotCustomIconLeft*(self: GraphNode; slotIndex: int32; customIcon: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "set_slot_custom_icon_left", 666127730)
  methodbind.ptrcall(self, [getPtr slotIndex, getPtr customIcon], void)

proc getSlotCustomIconLeft*(self: GraphNode; slotIndex: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_slot_custom_icon_left", 3536238170)
  methodbind.ptrcall(self, [getPtr slotIndex], gdref Texture2D)

proc isSlotEnabledRight*(self: GraphNode; slotIndex: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "is_slot_enabled_right", 1116898809)
  methodbind.ptrcall(self, [getPtr slotIndex], bool)

proc setSlotEnabledRight*(self: GraphNode; slotIndex: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "set_slot_enabled_right", 300928843)
  methodbind.ptrcall(self, [getPtr slotIndex, getPtr enable], void)

proc setSlotTypeRight*(self: GraphNode; slotIndex: int32; `type`: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "set_slot_type_right", 3937882851)
  methodbind.ptrcall(self, [getPtr slotIndex, getPtr `type`], void)

proc getSlotTypeRight*(self: GraphNode; slotIndex: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_slot_type_right", 923996154)
  methodbind.ptrcall(self, [getPtr slotIndex], int32)

proc setSlotColorRight*(self: GraphNode; slotIndex: int32; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "set_slot_color_right", 2878471219)
  methodbind.ptrcall(self, [getPtr slotIndex, getPtr color], void)

proc getSlotColorRight*(self: GraphNode; slotIndex: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_slot_color_right", 3457211756)
  methodbind.ptrcall(self, [getPtr slotIndex], Color)

proc setSlotCustomIconRight*(self: GraphNode; slotIndex: int32; customIcon: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "set_slot_custom_icon_right", 666127730)
  methodbind.ptrcall(self, [getPtr slotIndex, getPtr customIcon], void)

proc getSlotCustomIconRight*(self: GraphNode; slotIndex: int32): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_slot_custom_icon_right", 3536238170)
  methodbind.ptrcall(self, [getPtr slotIndex], gdref Texture2D)

proc isSlotDrawStylebox*(self: GraphNode; slotIndex: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "is_slot_draw_stylebox", 1116898809)
  methodbind.ptrcall(self, [getPtr slotIndex], bool)

proc setSlotDrawStylebox*(self: GraphNode; slotIndex: int32; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "set_slot_draw_stylebox", 300928843)
  methodbind.ptrcall(self, [getPtr slotIndex, getPtr enable], void)

proc setIgnoreInvalidConnectionType*(self: GraphNode; ignore: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "set_ignore_invalid_connection_type", 2586408642)
  methodbind.ptrcall(self, [getPtr ignore], void)

proc isIgnoringValidConnectionType*(self: GraphNode): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "is_ignoring_valid_connection_type", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSlotsFocusMode*(self: GraphNode; focusMode: Control_FocusMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "set_slots_focus_mode", 3232914922)
  methodbind.ptrcall(self, [getPtr focusMode], void)

proc getSlotsFocusMode*(self: GraphNode): Control_FocusMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_slots_focus_mode", 2132829277)
  methodbind.ptrcall(self, [], Control_FocusMode)

proc getInputPortCount*(self: GraphNode): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_input_port_count", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc getInputPortPosition*(self: GraphNode; portIdx: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_input_port_position", 3114997196)
  methodbind.ptrcall(self, [getPtr portIdx], Vector2)

proc getInputPortType*(self: GraphNode; portIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_input_port_type", 3744713108)
  methodbind.ptrcall(self, [getPtr portIdx], int32)

proc getInputPortColor*(self: GraphNode; portIdx: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_input_port_color", 2624840992)
  methodbind.ptrcall(self, [getPtr portIdx], Color)

proc getInputPortSlot*(self: GraphNode; portIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_input_port_slot", 3744713108)
  methodbind.ptrcall(self, [getPtr portIdx], int32)

proc getOutputPortCount*(self: GraphNode): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_output_port_count", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc getOutputPortPosition*(self: GraphNode; portIdx: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_output_port_position", 3114997196)
  methodbind.ptrcall(self, [getPtr portIdx], Vector2)

proc getOutputPortType*(self: GraphNode; portIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_output_port_type", 3744713108)
  methodbind.ptrcall(self, [getPtr portIdx], int32)

proc getOutputPortColor*(self: GraphNode; portIdx: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_output_port_color", 2624840992)
  methodbind.ptrcall(self, [getPtr portIdx], Color)

proc getOutputPortSlot*(self: GraphNode; portIdx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GraphNode, "get_output_port_slot", 3744713108)
  methodbind.ptrcall(self, [getPtr portIdx], int32)

template title*(self: GraphNode): untyped = self.getTitle()
template `title=`*(self: GraphNode; value) = self.setTitle(value)

template ignoreInvalidConnectionType*(self: GraphNode): untyped = self.isIgnoringValidConnectionType()
template `ignoreInvalidConnectionType=`*(self: GraphNode; value) = self.setIgnoreInvalidConnectionType(value)

template slotsFocusMode*(self: GraphNode): untyped = self.getSlotsFocusMode()
template `slotsFocusMode=`*(self: GraphNode; value) = self.setSlotsFocusMode(value)
