{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgraphelement; export gdgraphelement

method drawPort*(self: GraphNode; slotIndex: int32; position: Vector2i; left: bool; color: Color): void {.base.} = (discard)
proc drawPort(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[GraphNode](p_instance).drawPort(p_args[0].decode(int32), p_args[1].decode(Vector2i), p_args[2].decode(bool), p_args[3].decode(Color))
template drawPort_bind*(_: typedesc[GraphNode]): ClassCallVirtual = drawPort

proc setTitle*(self: GraphNode; title: String): void =
  expandMethodBind(className GraphNode, "set_title", 83702148)
  var `?param` = [getPtr title]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTitle*(self: GraphNode): String =
  expandMethodBind(className GraphNode, "get_title", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getTitlebarHbox*(self: GraphNode): HBoxContainer =
  expandMethodBind(className GraphNode, "get_titlebar_hbox", 3590609951)
  var ret: encoded HBoxContainer
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(HBoxContainer)

proc setSlot*(self: GraphNode; slotIndex: int32; enableLeftPort: bool; typeLeft: int32; colorLeft: Color; enableRightPort: bool; typeRight: int32; colorRight: Color; customIconLeft: gdref Texture2D = default gdref Texture2D; customIconRight: gdref Texture2D = default gdref Texture2D; drawStylebox: bool = true): void =
  expandMethodBind(className GraphNode, "set_slot", 2873310869)
  var `?param` = [getPtr slotIndex, getPtr enableLeftPort, getPtr typeLeft, getPtr colorLeft, getPtr enableRightPort, getPtr typeRight, getPtr colorRight, getPtr customIconLeft, getPtr customIconRight, getPtr drawStylebox]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearSlot*(self: GraphNode; slotIndex: int32): void =
  expandMethodBind(className GraphNode, "clear_slot", 1286410249)
  var `?param` = [getPtr slotIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearAllSlots*(self: GraphNode): void =
  expandMethodBind(className GraphNode, "clear_all_slots", 3218959716)
  methodbind.ptrcall(self, nil)

proc isSlotEnabledLeft*(self: GraphNode; slotIndex: int32): bool =
  expandMethodBind(className GraphNode, "is_slot_enabled_left", 1116898809)
  var `?param` = [getPtr slotIndex]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setSlotEnabledLeft*(self: GraphNode; slotIndex: int32; enable: bool): void =
  expandMethodBind(className GraphNode, "set_slot_enabled_left", 300928843)
  var `?param` = [getPtr slotIndex, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSlotTypeLeft*(self: GraphNode; slotIndex: int32; `type`: int32): void =
  expandMethodBind(className GraphNode, "set_slot_type_left", 3937882851)
  var `?param` = [getPtr slotIndex, getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSlotTypeLeft*(self: GraphNode; slotIndex: int32): int32 =
  expandMethodBind(className GraphNode, "get_slot_type_left", 923996154)
  var `?param` = [getPtr slotIndex]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setSlotColorLeft*(self: GraphNode; slotIndex: int32; color: Color): void =
  expandMethodBind(className GraphNode, "set_slot_color_left", 2878471219)
  var `?param` = [getPtr slotIndex, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSlotColorLeft*(self: GraphNode; slotIndex: int32): Color =
  expandMethodBind(className GraphNode, "get_slot_color_left", 3457211756)
  var `?param` = [getPtr slotIndex]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc setSlotCustomIconLeft*(self: GraphNode; slotIndex: int32; customIcon: gdref Texture2D): void =
  expandMethodBind(className GraphNode, "set_slot_custom_icon_left", 666127730)
  var `?param` = [getPtr slotIndex, getPtr customIcon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSlotCustomIconLeft*(self: GraphNode; slotIndex: int32): gdref Texture2D =
  expandMethodBind(className GraphNode, "get_slot_custom_icon_left", 3536238170)
  var `?param` = [getPtr slotIndex]
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc isSlotEnabledRight*(self: GraphNode; slotIndex: int32): bool =
  expandMethodBind(className GraphNode, "is_slot_enabled_right", 1116898809)
  var `?param` = [getPtr slotIndex]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setSlotEnabledRight*(self: GraphNode; slotIndex: int32; enable: bool): void =
  expandMethodBind(className GraphNode, "set_slot_enabled_right", 300928843)
  var `?param` = [getPtr slotIndex, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSlotTypeRight*(self: GraphNode; slotIndex: int32; `type`: int32): void =
  expandMethodBind(className GraphNode, "set_slot_type_right", 3937882851)
  var `?param` = [getPtr slotIndex, getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSlotTypeRight*(self: GraphNode; slotIndex: int32): int32 =
  expandMethodBind(className GraphNode, "get_slot_type_right", 923996154)
  var `?param` = [getPtr slotIndex]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setSlotColorRight*(self: GraphNode; slotIndex: int32; color: Color): void =
  expandMethodBind(className GraphNode, "set_slot_color_right", 2878471219)
  var `?param` = [getPtr slotIndex, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSlotColorRight*(self: GraphNode; slotIndex: int32): Color =
  expandMethodBind(className GraphNode, "get_slot_color_right", 3457211756)
  var `?param` = [getPtr slotIndex]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc setSlotCustomIconRight*(self: GraphNode; slotIndex: int32; customIcon: gdref Texture2D): void =
  expandMethodBind(className GraphNode, "set_slot_custom_icon_right", 666127730)
  var `?param` = [getPtr slotIndex, getPtr customIcon]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSlotCustomIconRight*(self: GraphNode; slotIndex: int32): gdref Texture2D =
  expandMethodBind(className GraphNode, "get_slot_custom_icon_right", 3536238170)
  var `?param` = [getPtr slotIndex]
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc isSlotDrawStylebox*(self: GraphNode; slotIndex: int32): bool =
  expandMethodBind(className GraphNode, "is_slot_draw_stylebox", 1116898809)
  var `?param` = [getPtr slotIndex]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setSlotDrawStylebox*(self: GraphNode; slotIndex: int32; enable: bool): void =
  expandMethodBind(className GraphNode, "set_slot_draw_stylebox", 300928843)
  var `?param` = [getPtr slotIndex, getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setIgnoreInvalidConnectionType*(self: GraphNode; ignore: bool): void =
  expandMethodBind(className GraphNode, "set_ignore_invalid_connection_type", 2586408642)
  var `?param` = [getPtr ignore]
  methodbind.ptrcall(self, addr `?param`[0])

proc isIgnoringValidConnectionType*(self: GraphNode): bool =
  expandMethodBind(className GraphNode, "is_ignoring_valid_connection_type", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getInputPortCount*(self: GraphNode): int32 =
  expandMethodBind(className GraphNode, "get_input_port_count", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getInputPortPosition*(self: GraphNode; portIdx: int32): Vector2 =
  expandMethodBind(className GraphNode, "get_input_port_position", 3114997196)
  var `?param` = [getPtr portIdx]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc getInputPortType*(self: GraphNode; portIdx: int32): int32 =
  expandMethodBind(className GraphNode, "get_input_port_type", 3744713108)
  var `?param` = [getPtr portIdx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getInputPortColor*(self: GraphNode; portIdx: int32): Color =
  expandMethodBind(className GraphNode, "get_input_port_color", 2624840992)
  var `?param` = [getPtr portIdx]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc getInputPortSlot*(self: GraphNode; portIdx: int32): int32 =
  expandMethodBind(className GraphNode, "get_input_port_slot", 3744713108)
  var `?param` = [getPtr portIdx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getOutputPortCount*(self: GraphNode): int32 =
  expandMethodBind(className GraphNode, "get_output_port_count", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getOutputPortPosition*(self: GraphNode; portIdx: int32): Vector2 =
  expandMethodBind(className GraphNode, "get_output_port_position", 3114997196)
  var `?param` = [getPtr portIdx]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc getOutputPortType*(self: GraphNode; portIdx: int32): int32 =
  expandMethodBind(className GraphNode, "get_output_port_type", 3744713108)
  var `?param` = [getPtr portIdx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getOutputPortColor*(self: GraphNode; portIdx: int32): Color =
  expandMethodBind(className GraphNode, "get_output_port_color", 2624840992)
  var `?param` = [getPtr portIdx]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc getOutputPortSlot*(self: GraphNode; portIdx: int32): int32 =
  expandMethodBind(className GraphNode, "get_output_port_slot", 3744713108)
  var `?param` = [getPtr portIdx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

template title*(self: GraphNode): untyped = self.getTitle()
template `title=`*(self: GraphNode; value) = self.setTitle(value)

template ignoreInvalidConnectionType*(self: GraphNode): untyped = self.isIgnoringValidConnectionType()
template `ignoreInvalidConnectionType=`*(self: GraphNode; value) = self.setIgnoreInvalidConnectionType(value)

const GraphNode_vmap =
  GraphElement.vmap.concat toTable {
    "drawport" : "_draw_port",
    }
template vmap*(_: typedesc[GraphNode]): Table[string, string] = GraphNode_vmap

proc slotUpdated*(self: GraphNode; slotIndex: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("slot_updated")
  let args = [slotIndex]
  self.emitSignal(signalname, args)