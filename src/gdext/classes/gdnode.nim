{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(Node, Object)

const NotificationEnterTree* = 10
const NotificationExitTree* = 11
const NotificationMovedInParent* = 12
const NotificationReady* = 13
const NotificationPaused* = 14
const NotificationUnpaused* = 15
const NotificationPhysicsProcess* = 16
const NotificationProcess* = 17
const NotificationParented* = 18
const NotificationUnparented* = 19
const NotificationSceneInstantiated* = 20
const NotificationDragBegin* = 21
const NotificationDragEnd* = 22
const NotificationPathRenamed* = 23
const NotificationChildOrderChanged* = 24
const NotificationInternalProcess* = 25
const NotificationInternalPhysicsProcess* = 26
const NotificationPostEnterTree* = 27
const NotificationDisabled* = 28
const NotificationEnabled* = 29
const NotificationResetPhysicsInterpolation* = 2001
const NotificationEditorPreSave* = 9001
const NotificationEditorPostSave* = 9002
const NotificationWmMouseEnter* = 1002
const NotificationWmMouseExit* = 1003
const NotificationWmWindowFocusIn* = 1004
const NotificationWmWindowFocusOut* = 1005
const NotificationWmCloseRequest* = 1006
const NotificationWmGoBackRequest* = 1007
const NotificationWmSizeChanged* = 1008
const NotificationWmDpiChange* = 1009
const NotificationVpMouseEnter* = 1010
const NotificationVpMouseExit* = 1011
const NotificationWmPositionChanged* = 1012
const NotificationOsMemoryWarning* = 2009
const NotificationTranslationChanged* = 2010
const NotificationWmAbout* = 2011
const NotificationCrash* = 2012
const NotificationOsImeUpdate* = 2013
const NotificationApplicationResumed* = 2014
const NotificationApplicationPaused* = 2015
const NotificationApplicationFocusIn* = 2016
const NotificationApplicationFocusOut* = 2017
const NotificationTextServerChanged* = 2018
const NotificationAccessibilityUpdate* = 3000
const NotificationAccessibilityInvalidate* = 3001

method process*(self: Node; delta: float64): void {.base.} = (discard)
proc registerVirtual_process*[T: Node](Self: typedesc[T]) =
  Self.vmethods[newStringName"_process"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Node](p_instance).process(p_args[0].decode(float64))

method physicsProcess*(self: Node; delta: float64): void {.base.} = (discard)
proc registerVirtual_physicsProcess*[T: Node](Self: typedesc[T]) =
  Self.vmethods[newStringName"_physics_process"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Node](p_instance).physicsProcess(p_args[0].decode(float64))

method enterTree*(self: Node): void {.base.} = (discard)
proc registerVirtual_enterTree*[T: Node](Self: typedesc[T]) =
  Self.vmethods[newStringName"_enter_tree"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Node](p_instance).enterTree()

method exitTree*(self: Node): void {.base.} = (discard)
proc registerVirtual_exitTree*[T: Node](Self: typedesc[T]) =
  Self.vmethods[newStringName"_exit_tree"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Node](p_instance).exitTree()

method ready*(self: Node): void {.base.} = (discard)
proc registerVirtual_ready*[T: Node](Self: typedesc[T]) =
  Self.vmethods[newStringName"_ready"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Node](p_instance).ready()

method getConfigurationWarnings*(self: Node): PackedStringArray {.base.} = (discard)
proc registerVirtual_getConfigurationWarnings*[T: Node](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_configuration_warnings"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Node](p_instance).getConfigurationWarnings().encode(r_ret)

method getAccessibilityConfigurationWarnings*(self: Node): PackedStringArray {.base.} = (discard)
proc registerVirtual_getAccessibilityConfigurationWarnings*[T: Node](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_accessibility_configuration_warnings"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Node](p_instance).getAccessibilityConfigurationWarnings().encode(r_ret)

method input*(self: Node; event: gdref InputEvent): void {.base.} = (discard)
proc registerVirtual_input*[T: Node](Self: typedesc[T]) =
  Self.vmethods[newStringName"_input"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Node](p_instance).input(p_args[0].decode(gdref InputEvent))

method shortcutInput*(self: Node; event: gdref InputEvent): void {.base.} = (discard)
proc registerVirtual_shortcutInput*[T: Node](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shortcut_input"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Node](p_instance).shortcutInput(p_args[0].decode(gdref InputEvent))

method unhandledInput*(self: Node; event: gdref InputEvent): void {.base.} = (discard)
proc registerVirtual_unhandledInput*[T: Node](Self: typedesc[T]) =
  Self.vmethods[newStringName"_unhandled_input"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Node](p_instance).unhandledInput(p_args[0].decode(gdref InputEvent))

method unhandledKeyInput*(self: Node; event: gdref InputEvent): void {.base.} = (discard)
proc registerVirtual_unhandledKeyInput*[T: Node](Self: typedesc[T]) =
  Self.vmethods[newStringName"_unhandled_key_input"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Node](p_instance).unhandledKeyInput(p_args[0].decode(gdref InputEvent))

method getFocusedAccessibilityElement*(self: Node): RID {.base.} = (discard)
proc registerVirtual_getFocusedAccessibilityElement*[T: Node](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_focused_accessibility_element"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Node](p_instance).getFocusedAccessibilityElement().encode(r_ret)

proc printOrphanNodes*(_: typedesc[Node]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "print_orphan_nodes", 3218959716)
  methodbind.ptrcall([], void)

proc getOrphanNodeIds*(_: typedesc[Node]): TypedArray[Int] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_orphan_node_ids", 2915620761)
  methodbind.ptrcall([], TypedArray[Int])

proc addSibling*(self: Node; sibling: Node; forceReadableName: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "add_sibling", 2570952461)
  methodbind.ptrcall(self, [getPtr sibling, getPtr forceReadableName], void)

proc setName*(self: Node; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_name", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc getName*(self: Node): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_name", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc addChild*(self: Node; node: Node; forceReadableName: bool = false; internal: Node_InternalMode = internalModeDisabled): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "add_child", 3863233950)
  methodbind.ptrcall(self, [getPtr node, getPtr forceReadableName, getPtr internal], void)

proc removeChild*(self: Node; node: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "remove_child", 1078189570)
  methodbind.ptrcall(self, [getPtr node], void)

proc reparent*(self: Node; newParent: Node; keepGlobalTransform: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "reparent", 3685795103)
  methodbind.ptrcall(self, [getPtr newParent, getPtr keepGlobalTransform], void)

proc getChildCount*(self: Node; includeInternal: bool = false): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_child_count", 894402480)
  methodbind.ptrcall(self, [getPtr includeInternal], int32)

proc getChildren*(self: Node; includeInternal: bool = false): TypedArray[Node] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_children", 873284517)
  methodbind.ptrcall(self, [getPtr includeInternal], TypedArray[Node])

proc getChild*(self: Node; idx: int32; includeInternal: bool = false): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_child", 541253412)
  methodbind.ptrcall(self, [getPtr idx, getPtr includeInternal], Node)

proc hasNode*(self: Node; path: NodePath): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "has_node", 861721659)
  methodbind.ptrcall(self, [getPtr path], bool)

proc getNode*(self: Node; path: NodePath): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_node", 2734337346)
  methodbind.ptrcall(self, [getPtr path], Node)

proc getNodeOrNull*(self: Node; path: NodePath): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_node_or_null", 2734337346)
  methodbind.ptrcall(self, [getPtr path], Node)

proc getParent*(self: Node): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_parent", 3160264692)
  methodbind.ptrcall(self, [], Node)

proc findChild*(self: Node; pattern: String; recursive: bool = true; owned: bool = true): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "find_child", 2008217037)
  methodbind.ptrcall(self, [getPtr pattern, getPtr recursive, getPtr owned], Node)

proc findChildren*(self: Node; pattern: String; `type`: String = newGdString(); recursive: bool = true; owned: bool = true): TypedArray[Node] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "find_children", 2560337219)
  methodbind.ptrcall(self, [getPtr pattern, getPtr `type`, getPtr recursive, getPtr owned], TypedArray[Node])

proc findParent*(self: Node; pattern: String): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "find_parent", 1140089439)
  methodbind.ptrcall(self, [getPtr pattern], Node)

proc hasNodeAndResource*(self: Node; path: NodePath): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "has_node_and_resource", 861721659)
  methodbind.ptrcall(self, [getPtr path], bool)

proc getNodeAndResource*(self: Node; path: NodePath): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_node_and_resource", 502563882)
  methodbind.ptrcall(self, [getPtr path], Array)

proc isInsideTree*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_inside_tree", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isPartOfEditedScene*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_part_of_edited_scene", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isAncestorOf*(self: Node; node: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_ancestor_of", 3093956946)
  methodbind.ptrcall(self, [getPtr node], bool)

proc isGreaterThan*(self: Node; node: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_greater_than", 3093956946)
  methodbind.ptrcall(self, [getPtr node], bool)

proc getPath*(self: Node): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_path", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc getPathTo*(self: Node; node: Node; useUniquePath: bool = false): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_path_to", 498846349)
  methodbind.ptrcall(self, [getPtr node, getPtr useUniquePath], NodePath)

proc addToGroup*(self: Node; group: StringName; persistent: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "add_to_group", 3683006648)
  methodbind.ptrcall(self, [getPtr group, getPtr persistent], void)

proc removeFromGroup*(self: Node; group: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "remove_from_group", 3304788590)
  methodbind.ptrcall(self, [getPtr group], void)

proc isInGroup*(self: Node; group: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_in_group", 2619796661)
  methodbind.ptrcall(self, [getPtr group], bool)

proc moveChild*(self: Node; childNode: Node; toIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "move_child", 3315886247)
  methodbind.ptrcall(self, [getPtr childNode, getPtr toIndex], void)

proc getGroups*(self: Node): TypedArray[StringName] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_groups", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[StringName])

proc setOwner*(self: Node; owner: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_owner", 1078189570)
  methodbind.ptrcall(self, [getPtr owner], void)

proc getOwner*(self: Node): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_owner", 3160264692)
  methodbind.ptrcall(self, [], Node)

proc getIndex*(self: Node; includeInternal: bool = false): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_index", 894402480)
  methodbind.ptrcall(self, [getPtr includeInternal], int32)

proc printTree*(self: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "print_tree", 3218959716)
  methodbind.ptrcall(self, [], void)

proc printTreePretty*(self: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "print_tree_pretty", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getTreeString*(self: Node): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_tree_string", 2841200299)
  methodbind.ptrcall(self, [], String)

proc getTreeStringPretty*(self: Node): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_tree_string_pretty", 2841200299)
  methodbind.ptrcall(self, [], String)

proc setSceneFilePath*(self: Node; sceneFilePath: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_scene_file_path", 83702148)
  methodbind.ptrcall(self, [getPtr sceneFilePath], void)

proc getSceneFilePath*(self: Node): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_scene_file_path", 201670096)
  methodbind.ptrcall(self, [], String)

proc propagateNotification*(self: Node; what: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "propagate_notification", 1286410249)
  methodbind.ptrcall(self, [getPtr what], void)

proc propagateCall*(self: Node; `method`: StringName; args: Array = newArray(); parentFirst: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "propagate_call", 1871007965)
  methodbind.ptrcall(self, [getPtr `method`, getPtr args, getPtr parentFirst], void)

proc setPhysicsProcess*(self: Node; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_physics_process", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getPhysicsProcessDeltaTime*(self: Node): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_physics_process_delta_time", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc isPhysicsProcessing*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_physics_processing", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getProcessDeltaTime*(self: Node): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_process_delta_time", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setProcess*(self: Node; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_process", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc setProcessPriority*(self: Node; priority: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_process_priority", 1286410249)
  methodbind.ptrcall(self, [getPtr priority], void)

proc getProcessPriority*(self: Node): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_process_priority", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPhysicsProcessPriority*(self: Node; priority: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_physics_process_priority", 1286410249)
  methodbind.ptrcall(self, [getPtr priority], void)

proc getPhysicsProcessPriority*(self: Node): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_physics_process_priority", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc isProcessing*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_processing", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setProcessInput*(self: Node; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_process_input", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isProcessingInput*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_processing_input", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setProcessShortcutInput*(self: Node; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_process_shortcut_input", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isProcessingShortcutInput*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_processing_shortcut_input", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setProcessUnhandledInput*(self: Node; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_process_unhandled_input", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isProcessingUnhandledInput*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_processing_unhandled_input", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setProcessUnhandledKeyInput*(self: Node; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_process_unhandled_key_input", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isProcessingUnhandledKeyInput*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_processing_unhandled_key_input", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setProcessMode*(self: Node; mode: Node_ProcessMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_process_mode", 1841290486)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getProcessMode*(self: Node): Node_ProcessMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_process_mode", 739966102)
  methodbind.ptrcall(self, [], Node_ProcessMode)

proc canProcess*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "can_process", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setProcessThreadGroup*(self: Node; mode: Node_ProcessThreadGroup): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_process_thread_group", 2275442745)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getProcessThreadGroup*(self: Node): Node_ProcessThreadGroup =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_process_thread_group", 1866404740)
  methodbind.ptrcall(self, [], Node_ProcessThreadGroup)

proc setProcessThreadMessages*(self: Node; flags: set[Node_ProcessThreadMessages]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_process_thread_messages", 1357280998)
  methodbind.ptrcall(self, [getPtr flags], void)

proc getProcessThreadMessages*(self: Node): set[Node_ProcessThreadMessages] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_process_thread_messages", 4228993612)
  methodbind.ptrcall(self, [], set[Node_ProcessThreadMessages])

proc setProcessThreadGroupOrder*(self: Node; order: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_process_thread_group_order", 1286410249)
  methodbind.ptrcall(self, [getPtr order], void)

proc getProcessThreadGroupOrder*(self: Node): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_process_thread_group_order", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc queueAccessibilityUpdate*(self: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "queue_accessibility_update", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getAccessibilityElement*(self: Node): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_accessibility_element", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setDisplayFolded*(self: Node; fold: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_display_folded", 2586408642)
  methodbind.ptrcall(self, [getPtr fold], void)

proc isDisplayedFolded*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_displayed_folded", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setProcessInternal*(self: Node; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_process_internal", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isProcessingInternal*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_processing_internal", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPhysicsProcessInternal*(self: Node; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_physics_process_internal", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isPhysicsProcessingInternal*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_physics_processing_internal", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPhysicsInterpolationMode*(self: Node; mode: Node_PhysicsInterpolationMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_physics_interpolation_mode", 3202404928)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getPhysicsInterpolationMode*(self: Node): Node_PhysicsInterpolationMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_physics_interpolation_mode", 2920385216)
  methodbind.ptrcall(self, [], Node_PhysicsInterpolationMode)

proc isPhysicsInterpolated*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_physics_interpolated", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isPhysicsInterpolatedAndEnabled*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_physics_interpolated_and_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc resetPhysicsInterpolation*(self: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "reset_physics_interpolation", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setAutoTranslateMode*(self: Node; mode: Node_AutoTranslateMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_auto_translate_mode", 776149714)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getAutoTranslateMode*(self: Node): Node_AutoTranslateMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_auto_translate_mode", 2498906432)
  methodbind.ptrcall(self, [], Node_AutoTranslateMode)

proc canAutoTranslate*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "can_auto_translate", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTranslationDomainInherited*(self: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_translation_domain_inherited", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getWindow*(self: Node): Window =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_window", 1757182445)
  methodbind.ptrcall(self, [], Window)

proc getLastExclusiveWindow*(self: Node): Window =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_last_exclusive_window", 1757182445)
  methodbind.ptrcall(self, [], Window)

proc getTree*(self: Node): SceneTree =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_tree", 2958820483)
  methodbind.ptrcall(self, [], SceneTree)

proc createTween*(self: Node): gdref Tween =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "create_tween", 3426978995)
  methodbind.ptrcall(self, [], gdref Tween)

proc duplicate*(self: Node; flags: int32 = 15): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "duplicate", 3511555459)
  methodbind.ptrcall(self, [getPtr flags], Node)

proc replaceBy*(self: Node; node: Node; keepGroups: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "replace_by", 2570952461)
  methodbind.ptrcall(self, [getPtr node, getPtr keepGroups], void)

proc setSceneInstanceLoadPlaceholder*(self: Node; loadPlaceholder: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_scene_instance_load_placeholder", 2586408642)
  methodbind.ptrcall(self, [getPtr loadPlaceholder], void)

proc getSceneInstanceLoadPlaceholder*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_scene_instance_load_placeholder", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEditableInstance*(self: Node; node: Node; isEditable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_editable_instance", 2731852923)
  methodbind.ptrcall(self, [getPtr node, getPtr isEditable], void)

proc isEditableInstance*(self: Node; node: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_editable_instance", 3093956946)
  methodbind.ptrcall(self, [getPtr node], bool)

proc getViewport*(self: Node): Viewport =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_viewport", 3596683776)
  methodbind.ptrcall(self, [], Viewport)

proc queueFree*(self: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "queue_free", 3218959716)
  methodbind.ptrcall(self, [], void)

proc requestReady*(self: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "request_ready", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isNodeReady*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_node_ready", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMultiplayerAuthority*(self: Node; id: int32; recursive: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_multiplayer_authority", 972357352)
  methodbind.ptrcall(self, [getPtr id, getPtr recursive], void)

proc getMultiplayerAuthority*(self: Node): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_multiplayer_authority", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc isMultiplayerAuthority*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_multiplayer_authority", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getMultiplayer*(self: Node): gdref MultiplayerAPI =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_multiplayer", 406750475)
  methodbind.ptrcall(self, [], gdref MultiplayerAPI)

proc rpcConfig*(self: Node; `method`: StringName; config: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "rpc_config", 3776071444)
  methodbind.ptrcall(self, [getPtr `method`, getPtr config], void)

proc getNodeRpcConfig*(self: Node): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_node_rpc_config", 1214101251)
  methodbind.ptrcall(self, [], Variant)

proc setEditorDescription*(self: Node; editorDescription: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_editor_description", 83702148)
  methodbind.ptrcall(self, [getPtr editorDescription], void)

proc getEditorDescription*(self: Node): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "get_editor_description", 201670096)
  methodbind.ptrcall(self, [], String)

proc setUniqueNameInOwner*(self: Node; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_unique_name_in_owner", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUniqueNameInOwner*(self: Node): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "is_unique_name_in_owner", 36873697)
  methodbind.ptrcall(self, [], bool)

proc atr*(self: Node; message: String; context: StringName = default(StringName)): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "atr", 3344478075)
  methodbind.ptrcall(self, [getPtr message, getPtr context], String)

proc atrN*(self: Node; message: String; pluralMessage: StringName; n: int32; context: StringName = default(StringName)): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "atr_n", 259354841)
  methodbind.ptrcall(self, [getPtr message, getPtr pluralMessage, getPtr n, getPtr context], String)

proc rpc*(self: Node; `method`: Variant; args: varargs[Variant, variant]): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "rpc", 4047867050)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr `method`]
  methodbind.call(self, `?param`, args).get(Error)
template rpc*(self: Node; `method`: StringName; args: varargs[Variant, variant]): Error =
  rpc(self, variant `method`, args)

proc rpcId*(self: Node; peerId: Variant; `method`: Variant; args: varargs[Variant, variant]): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "rpc_id", 361499283)
  var `?param` = newSeqOfCap[VariantPtr](2+args.len)
  `?param`.add [getTypedPtr peerId, getTypedPtr `method`]
  methodbind.call(self, `?param`, args).get(Error)
template rpcId*(self: Node; peerId: Int; `method`: StringName; args: varargs[Variant, variant]): Error =
  rpcId(self, variant peerId, variant `method`, args)

proc updateConfigurationWarnings*(self: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "update_configuration_warnings", 3218959716)
  methodbind.ptrcall(self, [], void)

proc callDeferredThreadGroup*(self: Node; `method`: Variant; args: varargs[Variant, variant]): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "call_deferred_thread_group", 3400424181)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr `method`]
  methodbind.call(self, `?param`, args).get(Variant)
template callDeferredThreadGroup*(self: Node; `method`: StringName; args: varargs[Variant, variant]): Variant =
  callDeferredThreadGroup(self, variant `method`, args)

proc setDeferredThreadGroup*(self: Node; property: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_deferred_thread_group", 3776071444)
  methodbind.ptrcall(self, [getPtr property, getPtr value], void)

proc notifyDeferredThreadGroup*(self: Node; what: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "notify_deferred_thread_group", 1286410249)
  methodbind.ptrcall(self, [getPtr what], void)

proc callThreadSafe*(self: Node; `method`: Variant; args: varargs[Variant, variant]): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "call_thread_safe", 3400424181)
  var `?param` = newSeqOfCap[VariantPtr](1+args.len)
  `?param`.add [getTypedPtr `method`]
  methodbind.call(self, `?param`, args).get(Variant)
template callThreadSafe*(self: Node; `method`: StringName; args: varargs[Variant, variant]): Variant =
  callThreadSafe(self, variant `method`, args)

proc setThreadSafe*(self: Node; property: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "set_thread_safe", 3776071444)
  methodbind.ptrcall(self, [getPtr property, getPtr value], void)

proc notifyThreadSafe*(self: Node; what: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Node, "notify_thread_safe", 1286410249)
  methodbind.ptrcall(self, [getPtr what], void)

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
