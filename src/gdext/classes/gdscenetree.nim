{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdmainloop; export gdmainloop

proc getRoot*(self: SceneTree): Window =
  expandMethodBind(className SceneTree, "get_root", 1757182445)
  var ret: encoded Window
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Window)

proc hasGroup*(self: SceneTree; name: StringName): bool =
  expandMethodBind(className SceneTree, "has_group", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isAutoAcceptQuit*(self: SceneTree): bool =
  expandMethodBind(className SceneTree, "is_auto_accept_quit", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAutoAcceptQuit*(self: SceneTree; enabled: bool): void =
  expandMethodBind(className SceneTree, "set_auto_accept_quit", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isQuitOnGoBack*(self: SceneTree): bool =
  expandMethodBind(className SceneTree, "is_quit_on_go_back", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setQuitOnGoBack*(self: SceneTree; enabled: bool): void =
  expandMethodBind(className SceneTree, "set_quit_on_go_back", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc setDebugCollisionsHint*(self: SceneTree; enable: bool): void =
  expandMethodBind(className SceneTree, "set_debug_collisions_hint", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDebuggingCollisionsHint*(self: SceneTree): bool =
  expandMethodBind(className SceneTree, "is_debugging_collisions_hint", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDebugPathsHint*(self: SceneTree; enable: bool): void =
  expandMethodBind(className SceneTree, "set_debug_paths_hint", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDebuggingPathsHint*(self: SceneTree): bool =
  expandMethodBind(className SceneTree, "is_debugging_paths_hint", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDebugNavigationHint*(self: SceneTree; enable: bool): void =
  expandMethodBind(className SceneTree, "set_debug_navigation_hint", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDebuggingNavigationHint*(self: SceneTree): bool =
  expandMethodBind(className SceneTree, "is_debugging_navigation_hint", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setEditedSceneRoot*(self: SceneTree; scene: Node): void =
  expandMethodBind(className SceneTree, "set_edited_scene_root", 1078189570)
  var `?param` = [getPtr scene]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEditedSceneRoot*(self: SceneTree): Node =
  expandMethodBind(className SceneTree, "get_edited_scene_root", 3160264692)
  var ret: encoded Node
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Node)

proc setPause*(self: SceneTree; enable: bool): void =
  expandMethodBind(className SceneTree, "set_pause", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPaused*(self: SceneTree): bool =
  expandMethodBind(className SceneTree, "is_paused", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc createTimer*(self: SceneTree; timeSec: float64; processAlways: bool = true; processInPhysics: bool = false; ignoreTimeScale: bool = false): gdref SceneTreeTimer =
  expandMethodBind(className SceneTree, "create_timer", 2709170273)
  var `?param` = [getPtr timeSec, getPtr processAlways, getPtr processInPhysics, getPtr ignoreTimeScale]
  var ret: encoded gdref SceneTreeTimer
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref SceneTreeTimer)

proc createTween*(self: SceneTree): gdref Tween =
  expandMethodBind(className SceneTree, "create_tween", 3426978995)
  var ret: encoded gdref Tween
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Tween)

proc getProcessedTweens*(self: SceneTree): gdref Tween =
  expandMethodBind(className SceneTree, "get_processed_tweens", 2915620761)
  var ret: encoded gdref Tween
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Tween)

proc getNodeCount*(self: SceneTree): int32 =
  expandMethodBind(className SceneTree, "get_node_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getFrame*(self: SceneTree): int64 =
  expandMethodBind(className SceneTree, "get_frame", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc quit*(self: SceneTree; exitCode: int32 = 0): void =
  expandMethodBind(className SceneTree, "quit", 1995695955)
  var `?param` = [getPtr exitCode]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPhysicsInterpolationEnabled*(self: SceneTree; enabled: bool): void =
  expandMethodBind(className SceneTree, "set_physics_interpolation_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPhysicsInterpolationEnabled*(self: SceneTree): bool =
  expandMethodBind(className SceneTree, "is_physics_interpolation_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc queueDelete*(self: SceneTree; obj: Object): void =
  expandMethodBind(className SceneTree, "queue_delete", 3975164845)
  var `?param` = [getPtr obj]
  methodbind.ptrcall(self, addr `?param`[0])

proc callGroupFlags*(self: SceneTree; flags: Variant; group: Variant; `method`: Variant; args: varargs[Variant]): void =
  expandMethodBind(className SceneTree, "call_group_flags", 1527739229)
  var `?param` = newSeqOfCap[VariantPtr](3+args.len)
  `?param`.add [getTypedPtr flags, getTypedPtr group, getTypedPtr `method`]
  discard methodbind.call(self, `?param`, args)
template callGroupFlags*(self: SceneTree; flags: Int; group: StringName; `method`: StringName; args: varargs[Variant]): void =
  callGroupFlags(self, variant flags, variant group, variant `method`, args)

proc notifyGroupFlags*(self: SceneTree; callFlags: uint32; group: StringName; notification: int32): void =
  expandMethodBind(className SceneTree, "notify_group_flags", 1245489420)
  var `?param` = [getPtr callFlags, getPtr group, getPtr notification]
  methodbind.ptrcall(self, addr `?param`[0])

proc setGroupFlags*(self: SceneTree; callFlags: uint32; group: StringName; property: String; value: Variant): void =
  expandMethodBind(className SceneTree, "set_group_flags", 3497599527)
  var `?param` = [getPtr callFlags, getPtr group, getPtr property, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc callGroup*(self: SceneTree; group: Variant; `method`: Variant; args: varargs[Variant]): void =
  expandMethodBind(className SceneTree, "call_group", 1257962832)
  var `?param` = newSeqOfCap[VariantPtr](2+args.len)
  `?param`.add [getTypedPtr group, getTypedPtr `method`]
  discard methodbind.call(self, `?param`, args)
template callGroup*(self: SceneTree; group: StringName; `method`: StringName; args: varargs[Variant]): void =
  callGroup(self, variant group, variant `method`, args)

proc notifyGroup*(self: SceneTree; group: StringName; notification: int32): void =
  expandMethodBind(className SceneTree, "notify_group", 2415702435)
  var `?param` = [getPtr group, getPtr notification]
  methodbind.ptrcall(self, addr `?param`[0])

proc setGroup*(self: SceneTree; group: StringName; property: String; value: Variant): void =
  expandMethodBind(className SceneTree, "set_group", 1279312029)
  var `?param` = [getPtr group, getPtr property, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNodesInGroup*(self: SceneTree; group: StringName): TypedArray[Node] =
  expandMethodBind(className SceneTree, "get_nodes_in_group", 689397652)
  var `?param` = [getPtr group]
  var ret: encoded TypedArray[Node]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Node])

proc getFirstNodeInGroup*(self: SceneTree; group: StringName): Node =
  expandMethodBind(className SceneTree, "get_first_node_in_group", 4071044623)
  var `?param` = [getPtr group]
  var ret: encoded Node
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Node)

proc getNodeCountInGroup*(self: SceneTree; group: StringName): int32 =
  expandMethodBind(className SceneTree, "get_node_count_in_group", 2458036349)
  var `?param` = [getPtr group]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setCurrentScene*(self: SceneTree; childNode: Node): void =
  expandMethodBind(className SceneTree, "set_current_scene", 1078189570)
  var `?param` = [getPtr childNode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCurrentScene*(self: SceneTree): Node =
  expandMethodBind(className SceneTree, "get_current_scene", 3160264692)
  var ret: encoded Node
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Node)

proc changeSceneToFile*(self: SceneTree; path: String): Error =
  expandMethodBind(className SceneTree, "change_scene_to_file", 166001499)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc changeSceneToPacked*(self: SceneTree; packedScene: gdref PackedScene): Error =
  expandMethodBind(className SceneTree, "change_scene_to_packed", 107349098)
  var `?param` = [getPtr packedScene]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc reloadCurrentScene*(self: SceneTree): Error =
  expandMethodBind(className SceneTree, "reload_current_scene", 166280745)
  var ret: encoded Error
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Error)

proc unloadCurrentScene*(self: SceneTree): void =
  expandMethodBind(className SceneTree, "unload_current_scene", 3218959716)
  methodbind.ptrcall(self, nil)

proc setMultiplayer*(self: SceneTree; multiplayer: gdref MultiplayerApi; rootPath: NodePath = nodePath()): void =
  expandMethodBind(className SceneTree, "set_multiplayer", 2385607013)
  var `?param` = [getPtr multiplayer, getPtr rootPath]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMultiplayer*(self: SceneTree; forPath: NodePath = nodePath()): gdref MultiplayerApi =
  expandMethodBind(className SceneTree, "get_multiplayer", 3453401404)
  var `?param` = [getPtr forPath]
  var ret: encoded gdref MultiplayerApi
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref MultiplayerApi)

proc setMultiplayerPollEnabled*(self: SceneTree; enabled: bool): void =
  expandMethodBind(className SceneTree, "set_multiplayer_poll_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isMultiplayerPollEnabled*(self: SceneTree): bool =
  expandMethodBind(className SceneTree, "is_multiplayer_poll_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template autoAcceptQuit*(self: SceneTree): untyped = self.isAutoAcceptQuit()
template `autoAcceptQuit=`*(self: SceneTree; value) = self.setAutoAcceptQuit(value)

template quitOnGoBack*(self: SceneTree): untyped = self.isQuitOnGoBack()
template `quitOnGoBack=`*(self: SceneTree; value) = self.setQuitOnGoBack(value)

template debugCollisionsHint*(self: SceneTree): untyped = self.isDebuggingCollisionsHint()
template `debugCollisionsHint=`*(self: SceneTree; value) = self.setDebugCollisionsHint(value)

template debugPathsHint*(self: SceneTree): untyped = self.isDebuggingPathsHint()
template `debugPathsHint=`*(self: SceneTree; value) = self.setDebugPathsHint(value)

template debugNavigationHint*(self: SceneTree): untyped = self.isDebuggingNavigationHint()
template `debugNavigationHint=`*(self: SceneTree; value) = self.setDebugNavigationHint(value)

template paused*(self: SceneTree): untyped = self.isPaused()
template `paused=`*(self: SceneTree; value) = self.setPause(value)

template editedSceneRoot*(self: SceneTree): untyped = self.getEditedSceneRoot()
template `editedSceneRoot=`*(self: SceneTree; value) = self.setEditedSceneRoot(value)

template currentScene*(self: SceneTree): untyped = self.getCurrentScene()
template `currentScene=`*(self: SceneTree; value) = self.setCurrentScene(value)

template root*(self: SceneTree): untyped = self.getRoot()

template multiplayerPoll*(self: SceneTree): untyped = self.isMultiplayerPollEnabled()
template `multiplayerPoll=`*(self: SceneTree; value) = self.setMultiplayerPollEnabled(value)

template physicsInterpolation*(self: SceneTree): untyped = self.isPhysicsInterpolationEnabled()
template `physicsInterpolation=`*(self: SceneTree; value) = self.setPhysicsInterpolationEnabled(value)

const SceneTree_vmap =
  MainLoop.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SceneTree]): Table[string, string] = SceneTree_vmap

proc treeChanged*(self: SceneTree): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tree_changed")
  self.emitSignal(signalname)

proc treeProcessModeChanged*(self: SceneTree): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tree_process_mode_changed")
  self.emitSignal(signalname)

proc nodeAdded*(self: SceneTree; node: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("node_added")
  let args = [node]
  self.emitSignal(signalname, args)

proc nodeRemoved*(self: SceneTree; node: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("node_removed")
  let args = [node]
  self.emitSignal(signalname, args)

proc nodeRenamed*(self: SceneTree; node: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("node_renamed")
  let args = [node]
  self.emitSignal(signalname, args)

proc nodeConfigurationWarningChanged*(self: SceneTree; node: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("node_configuration_warning_changed")
  let args = [node]
  self.emitSignal(signalname, args)

proc processFrame*(self: SceneTree): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("process_frame")
  self.emitSignal(signalname)

proc physicsFrame*(self: SceneTree): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("physics_frame")
  self.emitSignal(signalname)