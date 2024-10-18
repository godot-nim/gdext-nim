{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

method process*(self: Node; delta: float64): void {.base.} = (discard)
proc process(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Node](p_instance).process(p_args[0].decode(float64))
template process_bind*(_: typedesc[Node]): ClassCallVirtual = process

method physicsProcess*(self: Node; delta: float64): void {.base.} = (discard)
proc physicsProcess(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Node](p_instance).physicsProcess(p_args[0].decode(float64))
template physicsProcess_bind*(_: typedesc[Node]): ClassCallVirtual = physicsProcess

method enterTree*(self: Node): void {.base.} = (discard)
proc enterTree(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Node](p_instance).enterTree()
template enterTree_bind*(_: typedesc[Node]): ClassCallVirtual = enterTree

method exitTree*(self: Node): void {.base.} = (discard)
proc exitTree(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Node](p_instance).exitTree()
template exitTree_bind*(_: typedesc[Node]): ClassCallVirtual = exitTree

method ready*(self: Node): void {.base.} = (discard)
proc ready(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Node](p_instance).ready()
template ready_bind*(_: typedesc[Node]): ClassCallVirtual = ready

method getConfigurationWarnings*(self: Node): PackedStringArray {.base.} = (discard)
proc getConfigurationWarnings(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Node](p_instance).getConfigurationWarnings().encode(r_ret)
template getConfigurationWarnings_bind*(_: typedesc[Node]): ClassCallVirtual = getConfigurationWarnings

method input*(self: Node; event: gdref InputEvent): void {.base.} = (discard)
proc input(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Node](p_instance).input(p_args[0].decode(gdref InputEvent))
template input_bind*(_: typedesc[Node]): ClassCallVirtual = input

method shortcutInput*(self: Node; event: gdref InputEvent): void {.base.} = (discard)
proc shortcutInput(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Node](p_instance).shortcutInput(p_args[0].decode(gdref InputEvent))
template shortcutInput_bind*(_: typedesc[Node]): ClassCallVirtual = shortcutInput

method unhandledInput*(self: Node; event: gdref InputEvent): void {.base.} = (discard)
proc unhandledInput(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Node](p_instance).unhandledInput(p_args[0].decode(gdref InputEvent))
template unhandledInput_bind*(_: typedesc[Node]): ClassCallVirtual = unhandledInput

method unhandledKeyInput*(self: Node; event: gdref InputEvent): void {.base.} = (discard)
proc unhandledKeyInput(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Node](p_instance).unhandledKeyInput(p_args[0].decode(gdref InputEvent))
template unhandledKeyInput_bind*(_: typedesc[Node]): ClassCallVirtual = unhandledKeyInput

proc printOrphanNodes*(_: Node): void =
  expandMethodBind(className Node, "print_orphan_nodes", 3218959716)
  methodbind.ptrcall(nil)

proc addSibling*(self: Node; sibling: Node; forceReadableName: bool = false): void =
  expandMethodBind(className Node, "add_sibling", 2570952461)
  var `?param` = [getPtr sibling, getPtr forceReadableName]
  methodbind.ptrcall(self, addr `?param`[0])

proc setName*(self: Node; name: String): void =
  expandMethodBind(className Node, "set_name", 83702148)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getName*(self: Node): StringName =
  expandMethodBind(className Node, "get_name", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc addChild*(self: Node; node: Node; forceReadableName: bool = false; internal: Node_InternalMode = internalModeDisabled): void =
  expandMethodBind(className Node, "add_child", 3863233950)
  var `?param` = [getPtr node, getPtr forceReadableName, getPtr internal]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeChild*(self: Node; node: Node): void =
  expandMethodBind(className Node, "remove_child", 1078189570)
  var `?param` = [getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc reparent*(self: Node; newParent: Node; keepGlobalTransform: bool = true): void =
  expandMethodBind(className Node, "reparent", 3685795103)
  var `?param` = [getPtr newParent, getPtr keepGlobalTransform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getChildCount*(self: Node; includeInternal: bool = false): int32 =
  expandMethodBind(className Node, "get_child_count", 894402480)
  var `?param` = [getPtr includeInternal]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getChildren*(self: Node; includeInternal: bool = false): TypedArray[Node] =
  expandMethodBind(className Node, "get_children", 873284517)
  var `?param` = [getPtr includeInternal]
  var ret: encoded TypedArray[Node]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Node])

proc getChild*(self: Node; idx: int32; includeInternal: bool = false): Node =
  expandMethodBind(className Node, "get_child", 541253412)
  var `?param` = [getPtr idx, getPtr includeInternal]
  var ret: encoded Node
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Node)

proc hasNode*(self: Node; path: NodePath): bool =
  expandMethodBind(className Node, "has_node", 861721659)
  var `?param` = [getPtr path]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getNode*(self: Node; path: NodePath): Node =
  expandMethodBind(className Node, "get_node", 2734337346)
  var `?param` = [getPtr path]
  var ret: encoded Node
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Node)

proc getNodeOrNull*(self: Node; path: NodePath): Node =
  expandMethodBind(className Node, "get_node_or_null", 2734337346)
  var `?param` = [getPtr path]
  var ret: encoded Node
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Node)

proc getParent*(self: Node): Node =
  expandMethodBind(className Node, "get_parent", 3160264692)
  var ret: encoded Node
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Node)

proc findChild*(self: Node; pattern: String; recursive: bool = true; owned: bool = true): Node =
  expandMethodBind(className Node, "find_child", 2008217037)
  var `?param` = [getPtr pattern, getPtr recursive, getPtr owned]
  var ret: encoded Node
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Node)

proc findChildren*(self: Node; pattern: String; `type`: String = gdstring""; recursive: bool = true; owned: bool = true): TypedArray[Node] =
  expandMethodBind(className Node, "find_children", 2560337219)
  var `?param` = [getPtr pattern, getPtr `type`, getPtr recursive, getPtr owned]
  var ret: encoded TypedArray[Node]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Node])

proc findParent*(self: Node; pattern: String): Node =
  expandMethodBind(className Node, "find_parent", 1140089439)
  var `?param` = [getPtr pattern]
  var ret: encoded Node
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Node)

proc hasNodeAndResource*(self: Node; path: NodePath): bool =
  expandMethodBind(className Node, "has_node_and_resource", 861721659)
  var `?param` = [getPtr path]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getNodeAndResource*(self: Node; path: NodePath): Array =
  expandMethodBind(className Node, "get_node_and_resource", 502563882)
  var `?param` = [getPtr path]
  var ret: encoded Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Array)

proc isInsideTree*(self: Node): bool =
  expandMethodBind(className Node, "is_inside_tree", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isPartOfEditedScene*(self: Node): bool =
  expandMethodBind(className Node, "is_part_of_edited_scene", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isAncestorOf*(self: Node; node: Node): bool =
  expandMethodBind(className Node, "is_ancestor_of", 3093956946)
  var `?param` = [getPtr node]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isGreaterThan*(self: Node; node: Node): bool =
  expandMethodBind(className Node, "is_greater_than", 3093956946)
  var `?param` = [getPtr node]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getPath*(self: Node): NodePath =
  expandMethodBind(className Node, "get_path", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc getPathTo*(self: Node; node: Node; useUniquePath: bool = false): NodePath =
  expandMethodBind(className Node, "get_path_to", 498846349)
  var `?param` = [getPtr node, getPtr useUniquePath]
  var ret: encoded NodePath
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(NodePath)

proc addToGroup*(self: Node; group: StringName; persistent: bool = false): void =
  expandMethodBind(className Node, "add_to_group", 3683006648)
  var `?param` = [getPtr group, getPtr persistent]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeFromGroup*(self: Node; group: StringName): void =
  expandMethodBind(className Node, "remove_from_group", 3304788590)
  var `?param` = [getPtr group]
  methodbind.ptrcall(self, addr `?param`[0])

proc isInGroup*(self: Node; group: StringName): bool =
  expandMethodBind(className Node, "is_in_group", 2619796661)
  var `?param` = [getPtr group]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc moveChild*(self: Node; childNode: Node; toIndex: int32): void =
  expandMethodBind(className Node, "move_child", 3315886247)
  var `?param` = [getPtr childNode, getPtr toIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGroups*(self: Node): TypedArray[StringName] =
  expandMethodBind(className Node, "get_groups", 3995934104)
  var ret: encoded TypedArray[StringName]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[StringName])

proc setOwner*(self: Node; owner: Node): void =
  expandMethodBind(className Node, "set_owner", 1078189570)
  var `?param` = [getPtr owner]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOwner*(self: Node): Node =
  expandMethodBind(className Node, "get_owner", 3160264692)
  var ret: encoded Node
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Node)

proc getIndex*(self: Node; includeInternal: bool = false): int32 =
  expandMethodBind(className Node, "get_index", 894402480)
  var `?param` = [getPtr includeInternal]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc printTree*(self: Node): void =
  expandMethodBind(className Node, "print_tree", 3218959716)
  methodbind.ptrcall(self, nil)

proc printTreePretty*(self: Node): void =
  expandMethodBind(className Node, "print_tree_pretty", 3218959716)
  methodbind.ptrcall(self, nil)

proc getTreeString*(self: Node): String =
  expandMethodBind(className Node, "get_tree_string", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getTreeStringPretty*(self: Node): String =
  expandMethodBind(className Node, "get_tree_string_pretty", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setSceneFilePath*(self: Node; sceneFilePath: String): void =
  expandMethodBind(className Node, "set_scene_file_path", 83702148)
  var `?param` = [getPtr sceneFilePath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSceneFilePath*(self: Node): String =
  expandMethodBind(className Node, "get_scene_file_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc propagateNotification*(self: Node; what: int32): void =
  expandMethodBind(className Node, "propagate_notification", 1286410249)
  var `?param` = [getPtr what]
  methodbind.ptrcall(self, addr `?param`[0])

proc propagateCall*(self: Node; `method`: StringName; args: Array = gdarray(); parentFirst: bool = false): void =
  expandMethodBind(className Node, "propagate_call", 1871007965)
  var `?param` = [getPtr `method`, getPtr args, getPtr parentFirst]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPhysicsProcess*(self: Node; enable: bool): void =
  expandMethodBind(className Node, "set_physics_process", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicsProcessDeltaTime*(self: Node): float64 =
  expandMethodBind(className Node, "get_physics_process_delta_time", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc isPhysicsProcessing*(self: Node): bool =
  expandMethodBind(className Node, "is_physics_processing", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getProcessDeltaTime*(self: Node): float64 =
  expandMethodBind(className Node, "get_process_delta_time", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setProcess*(self: Node; enable: bool): void =
  expandMethodBind(className Node, "set_process", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc setProcessPriority*(self: Node; priority: int32): void =
  expandMethodBind(className Node, "set_process_priority", 1286410249)
  var `?param` = [getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProcessPriority*(self: Node): int32 =
  expandMethodBind(className Node, "get_process_priority", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setPhysicsProcessPriority*(self: Node; priority: int32): void =
  expandMethodBind(className Node, "set_physics_process_priority", 1286410249)
  var `?param` = [getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicsProcessPriority*(self: Node): int32 =
  expandMethodBind(className Node, "get_physics_process_priority", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc isProcessing*(self: Node): bool =
  expandMethodBind(className Node, "is_processing", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setProcessInput*(self: Node; enable: bool): void =
  expandMethodBind(className Node, "set_process_input", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isProcessingInput*(self: Node): bool =
  expandMethodBind(className Node, "is_processing_input", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setProcessShortcutInput*(self: Node; enable: bool): void =
  expandMethodBind(className Node, "set_process_shortcut_input", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isProcessingShortcutInput*(self: Node): bool =
  expandMethodBind(className Node, "is_processing_shortcut_input", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setProcessUnhandledInput*(self: Node; enable: bool): void =
  expandMethodBind(className Node, "set_process_unhandled_input", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isProcessingUnhandledInput*(self: Node): bool =
  expandMethodBind(className Node, "is_processing_unhandled_input", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setProcessUnhandledKeyInput*(self: Node; enable: bool): void =
  expandMethodBind(className Node, "set_process_unhandled_key_input", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isProcessingUnhandledKeyInput*(self: Node): bool =
  expandMethodBind(className Node, "is_processing_unhandled_key_input", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setProcessMode*(self: Node; mode: Node_ProcessMode): void =
  expandMethodBind(className Node, "set_process_mode", 1841290486)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProcessMode*(self: Node): Node_ProcessMode =
  expandMethodBind(className Node, "get_process_mode", 739966102)
  var ret: encoded Node_ProcessMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Node_ProcessMode)

proc canProcess*(self: Node): bool =
  expandMethodBind(className Node, "can_process", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setProcessThreadGroup*(self: Node; mode: Node_ProcessThreadGroup): void =
  expandMethodBind(className Node, "set_process_thread_group", 2275442745)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProcessThreadGroup*(self: Node): Node_ProcessThreadGroup =
  expandMethodBind(className Node, "get_process_thread_group", 1866404740)
  var ret: encoded Node_ProcessThreadGroup
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Node_ProcessThreadGroup)

proc setProcessThreadMessages*(self: Node; flags: set[Node_ProcessThreadMessages]): void =
  expandMethodBind(className Node, "set_process_thread_messages", 1357280998)
  var `?param` = [getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProcessThreadMessages*(self: Node): set[Node_ProcessThreadMessages] =
  expandMethodBind(className Node, "get_process_thread_messages", 4228993612)
  var ret: encoded set[Node_ProcessThreadMessages]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[Node_ProcessThreadMessages])

proc setProcessThreadGroupOrder*(self: Node; order: int32): void =
  expandMethodBind(className Node, "set_process_thread_group_order", 1286410249)
  var `?param` = [getPtr order]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProcessThreadGroupOrder*(self: Node): int32 =
  expandMethodBind(className Node, "get_process_thread_group_order", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setDisplayFolded*(self: Node; fold: bool): void =
  expandMethodBind(className Node, "set_display_folded", 2586408642)
  var `?param` = [getPtr fold]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDisplayedFolded*(self: Node): bool =
  expandMethodBind(className Node, "is_displayed_folded", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setProcessInternal*(self: Node; enable: bool): void =
  expandMethodBind(className Node, "set_process_internal", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isProcessingInternal*(self: Node): bool =
  expandMethodBind(className Node, "is_processing_internal", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPhysicsProcessInternal*(self: Node; enable: bool): void =
  expandMethodBind(className Node, "set_physics_process_internal", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPhysicsProcessingInternal*(self: Node): bool =
  expandMethodBind(className Node, "is_physics_processing_internal", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPhysicsInterpolationMode*(self: Node; mode: Node_PhysicsInterpolationMode): void =
  expandMethodBind(className Node, "set_physics_interpolation_mode", 3202404928)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicsInterpolationMode*(self: Node): Node_PhysicsInterpolationMode =
  expandMethodBind(className Node, "get_physics_interpolation_mode", 2920385216)
  var ret: encoded Node_PhysicsInterpolationMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Node_PhysicsInterpolationMode)

proc isPhysicsInterpolated*(self: Node): bool =
  expandMethodBind(className Node, "is_physics_interpolated", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isPhysicsInterpolatedAndEnabled*(self: Node): bool =
  expandMethodBind(className Node, "is_physics_interpolated_and_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc resetPhysicsInterpolation*(self: Node): void =
  expandMethodBind(className Node, "reset_physics_interpolation", 3218959716)
  methodbind.ptrcall(self, nil)

proc setAutoTranslateMode*(self: Node; mode: Node_AutoTranslateMode): void =
  expandMethodBind(className Node, "set_auto_translate_mode", 776149714)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAutoTranslateMode*(self: Node): Node_AutoTranslateMode =
  expandMethodBind(className Node, "get_auto_translate_mode", 2498906432)
  var ret: encoded Node_AutoTranslateMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Node_AutoTranslateMode)

proc getWindow*(self: Node): Window =
  expandMethodBind(className Node, "get_window", 1757182445)
  var ret: encoded Window
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Window)

proc getLastExclusiveWindow*(self: Node): Window =
  expandMethodBind(className Node, "get_last_exclusive_window", 1757182445)
  var ret: encoded Window
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Window)

proc getTree*(self: Node): SceneTree =
  expandMethodBind(className Node, "get_tree", 2958820483)
  var ret: encoded SceneTree
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(SceneTree)

proc createTween*(self: Node): gdref Tween =
  expandMethodBind(className Node, "create_tween", 3426978995)
  var ret: encoded gdref Tween
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Tween)

proc duplicate*(self: Node; flags: int32 = 15): Node =
  expandMethodBind(className Node, "duplicate", 3511555459)
  var `?param` = [getPtr flags]
  var ret: encoded Node
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Node)

proc replaceBy*(self: Node; node: Node; keepGroups: bool = false): void =
  expandMethodBind(className Node, "replace_by", 2570952461)
  var `?param` = [getPtr node, getPtr keepGroups]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSceneInstanceLoadPlaceholder*(self: Node; loadPlaceholder: bool): void =
  expandMethodBind(className Node, "set_scene_instance_load_placeholder", 2586408642)
  var `?param` = [getPtr loadPlaceholder]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSceneInstanceLoadPlaceholder*(self: Node): bool =
  expandMethodBind(className Node, "get_scene_instance_load_placeholder", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setEditableInstance*(self: Node; node: Node; isEditable: bool): void =
  expandMethodBind(className Node, "set_editable_instance", 2731852923)
  var `?param` = [getPtr node, getPtr isEditable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEditableInstance*(self: Node; node: Node): bool =
  expandMethodBind(className Node, "is_editable_instance", 3093956946)
  var `?param` = [getPtr node]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getViewport*(self: Node): Viewport =
  expandMethodBind(className Node, "get_viewport", 3596683776)
  var ret: encoded Viewport
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Viewport)

proc queueFree*(self: Node): void =
  expandMethodBind(className Node, "queue_free", 3218959716)
  methodbind.ptrcall(self, nil)

proc requestReady*(self: Node): void =
  expandMethodBind(className Node, "request_ready", 3218959716)
  methodbind.ptrcall(self, nil)

proc isNodeReady*(self: Node): bool =
  expandMethodBind(className Node, "is_node_ready", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMultiplayerAuthority*(self: Node; id: int32; recursive: bool = true): void =
  expandMethodBind(className Node, "set_multiplayer_authority", 972357352)
  var `?param` = [getPtr id, getPtr recursive]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMultiplayerAuthority*(self: Node): int32 =
  expandMethodBind(className Node, "get_multiplayer_authority", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc isMultiplayerAuthority*(self: Node): bool =
  expandMethodBind(className Node, "is_multiplayer_authority", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getMultiplayer*(self: Node): gdref MultiplayerApi =
  expandMethodBind(className Node, "get_multiplayer", 406750475)
  var ret: encoded gdref MultiplayerApi
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref MultiplayerApi)

proc rpcConfig*(self: Node; `method`: StringName; config: Variant): void =
  expandMethodBind(className Node, "rpc_config", 3776071444)
  var `?param` = [getPtr `method`, getPtr config]
  methodbind.ptrcall(self, addr `?param`[0])

proc setEditorDescription*(self: Node; editorDescription: String): void =
  expandMethodBind(className Node, "set_editor_description", 83702148)
  var `?param` = [getPtr editorDescription]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEditorDescription*(self: Node): String =
  expandMethodBind(className Node, "get_editor_description", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setUniqueNameInOwner*(self: Node; enable: bool): void =
  expandMethodBind(className Node, "set_unique_name_in_owner", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUniqueNameInOwner*(self: Node): bool =
  expandMethodBind(className Node, "is_unique_name_in_owner", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc atr*(self: Node; message: String; context: StringName = stringName ""): String =
  expandMethodBind(className Node, "atr", 3344478075)
  var `?param` = [getPtr message, getPtr context]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc atrN*(self: Node; message: String; pluralMessage: StringName; n: int32; context: StringName = stringName ""): String =
  expandMethodBind(className Node, "atr_n", 259354841)
  var `?param` = [getPtr message, getPtr pluralMessage, getPtr n, getPtr context]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc rpc*(self: Node; `method`: Variant; args: varargs[Variant]): Error =
  expandMethodBind(className Node, "rpc", 4047867050)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr `method`]
  methodbind.call(self, `?param`, args).get(Error)
template rpc*(self: Node; `method`: StringName; args: varargs[Variant]): Error =
  rpc(self, variant `method`, args)

proc rpcId*(self: Node; peerId: Variant; `method`: Variant; args: varargs[Variant]): Error =
  expandMethodBind(className Node, "rpc_id", 361499283)
  var `?param` = newSeqOfCap[VariantPtr](2+args.len)
  `?param`.add [getTypedPtr peerId, getTypedPtr `method`]
  methodbind.call(self, `?param`, args).get(Error)
template rpcId*(self: Node; peerId: Int; `method`: StringName; args: varargs[Variant]): Error =
  rpcId(self, variant peerId, variant `method`, args)

proc updateConfigurationWarnings*(self: Node): void =
  expandMethodBind(className Node, "update_configuration_warnings", 3218959716)
  methodbind.ptrcall(self, nil)

proc callDeferredThreadGroup*(self: Node; `method`: Variant; args: varargs[Variant]): Variant =
  expandMethodBind(className Node, "call_deferred_thread_group", 3400424181)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr `method`]
  methodbind.call(self, `?param`, args).get(Variant)
template callDeferredThreadGroup*(self: Node; `method`: StringName; args: varargs[Variant]): Variant =
  callDeferredThreadGroup(self, variant `method`, args)

proc setDeferredThreadGroup*(self: Node; property: StringName; value: Variant): void =
  expandMethodBind(className Node, "set_deferred_thread_group", 3776071444)
  var `?param` = [getPtr property, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc notifyDeferredThreadGroup*(self: Node; what: int32): void =
  expandMethodBind(className Node, "notify_deferred_thread_group", 1286410249)
  var `?param` = [getPtr what]
  methodbind.ptrcall(self, addr `?param`[0])

proc callThreadSafe*(self: Node; `method`: Variant; args: varargs[Variant]): Variant =
  expandMethodBind(className Node, "call_thread_safe", 3400424181)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr `method`]
  methodbind.call(self, `?param`, args).get(Variant)
template callThreadSafe*(self: Node; `method`: StringName; args: varargs[Variant]): Variant =
  callThreadSafe(self, variant `method`, args)

proc setThreadSafe*(self: Node; property: StringName; value: Variant): void =
  expandMethodBind(className Node, "set_thread_safe", 3776071444)
  var `?param` = [getPtr property, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc notifyThreadSafe*(self: Node; what: int32): void =
  expandMethodBind(className Node, "notify_thread_safe", 1286410249)
  var `?param` = [getPtr what]
  methodbind.ptrcall(self, addr `?param`[0])

template name*(self: Node): untyped = self.getName()
template `name=`*(self: Node; value) = self.setName(value)

template uniqueNameInOwner*(self: Node): untyped = self.isUniqueNameInOwner()
template `uniqueNameInOwner=`*(self: Node; value) = self.setUniqueNameInOwner(value)

template sceneFilePath*(self: Node): untyped = self.getSceneFilePath()
template `sceneFilePath=`*(self: Node; value) = self.setSceneFilePath(value)

template owner*(self: Node): untyped = self.getOwner()
template `owner=`*(self: Node; value) = self.setOwner(value)

template multiplayer*(self: Node): untyped = self.getMultiplayer()

template processMode*(self: Node): untyped = self.getProcessMode()
template `processMode=`*(self: Node; value) = self.setProcessMode(value)

template processPriority*(self: Node): untyped = self.getProcessPriority()
template `processPriority=`*(self: Node; value) = self.setProcessPriority(value)

template processPhysicsPriority*(self: Node): untyped = self.getPhysicsProcessPriority()
template `processPhysicsPriority=`*(self: Node; value) = self.setPhysicsProcessPriority(value)

template processThreadGroup*(self: Node): untyped = self.getProcessThreadGroup()
template `processThreadGroup=`*(self: Node; value) = self.setProcessThreadGroup(value)

template processThreadGroupOrder*(self: Node): untyped = self.getProcessThreadGroupOrder()
template `processThreadGroupOrder=`*(self: Node; value) = self.setProcessThreadGroupOrder(value)

template processThreadMessages*(self: Node): untyped = self.getProcessThreadMessages()
template `processThreadMessages=`*(self: Node; value) = self.setProcessThreadMessages(value)

template physicsInterpolationMode*(self: Node): untyped = self.getPhysicsInterpolationMode()
template `physicsInterpolationMode=`*(self: Node; value) = self.setPhysicsInterpolationMode(value)

template autoTranslateMode*(self: Node): untyped = self.getAutoTranslateMode()
template `autoTranslateMode=`*(self: Node; value) = self.setAutoTranslateMode(value)

template editorDescription*(self: Node): untyped = self.getEditorDescription()
template `editorDescription=`*(self: Node; value) = self.setEditorDescription(value)

const Node_vmap =
  Object.vmap.concat toTable {
    "process" : "_process",
    "physicsprocess" : "_physics_process",
    "entertree" : "_enter_tree",
    "exittree" : "_exit_tree",
    "ready" : "_ready",
    "getconfigurationwarnings" : "_get_configuration_warnings",
    "input" : "_input",
    "shortcutinput" : "_shortcut_input",
    "unhandledinput" : "_unhandled_input",
    "unhandledkeyinput" : "_unhandled_key_input",
    }
template vmap*(_: typedesc[Node]): Table[string, string] = Node_vmap

proc ready*(self: Node): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("ready")
  self.emitSignal(signalname)

proc renamed*(self: Node): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("renamed")
  self.emitSignal(signalname)

proc treeEntered*(self: Node): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tree_entered")
  self.emitSignal(signalname)

proc treeExiting*(self: Node): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tree_exiting")
  self.emitSignal(signalname)

proc treeExited*(self: Node): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tree_exited")
  self.emitSignal(signalname)

proc childEnteredTree*(self: Node; node: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("child_entered_tree")
  let args = [node]
  self.emitSignal(signalname, args)

proc childExitingTree*(self: Node; node: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("child_exiting_tree")
  let args = [node]
  self.emitSignal(signalname, args)

proc childOrderChanged*(self: Node): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("child_order_changed")
  self.emitSignal(signalname)

proc replacingBy*(self: Node; node: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("replacing_by")
  let args = [node]
  self.emitSignal(signalname, args)

proc editorDescriptionChanged*(self: Node; node: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("editor_description_changed")
  let args = [node]
  self.emitSignal(signalname, args)