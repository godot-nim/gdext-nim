{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmainloop; export gdmainloop

expandOnClassImported(SceneTree, MainLoop)

proc getRoot*(self: SceneTree): Window =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "get_root", 1757182445)
  methodbind.ptrcall(self, [], Window)

proc hasGroup*(self: SceneTree; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "has_group", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc isAccessibilityEnabled*(self: SceneTree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "is_accessibility_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isAccessibilitySupported*(self: SceneTree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "is_accessibility_supported", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isAutoAcceptQuit*(self: SceneTree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "is_auto_accept_quit", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAutoAcceptQuit*(self: SceneTree; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "set_auto_accept_quit", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isQuitOnGoBack*(self: SceneTree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "is_quit_on_go_back", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setQuitOnGoBack*(self: SceneTree; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "set_quit_on_go_back", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc setDebugCollisionsHint*(self: SceneTree; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "set_debug_collisions_hint", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDebuggingCollisionsHint*(self: SceneTree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "is_debugging_collisions_hint", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDebugPathsHint*(self: SceneTree; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "set_debug_paths_hint", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDebuggingPathsHint*(self: SceneTree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "is_debugging_paths_hint", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDebugNavigationHint*(self: SceneTree; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "set_debug_navigation_hint", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isDebuggingNavigationHint*(self: SceneTree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "is_debugging_navigation_hint", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEditedSceneRoot*(self: SceneTree; scene: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "set_edited_scene_root", 1078189570)
  methodbind.ptrcall(self, [getPtr scene], void)

proc getEditedSceneRoot*(self: SceneTree): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "get_edited_scene_root", 3160264692)
  methodbind.ptrcall(self, [], Node)

proc setPause*(self: SceneTree; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "set_pause", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isPaused*(self: SceneTree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "is_paused", 36873697)
  methodbind.ptrcall(self, [], bool)

proc createTimer*(self: SceneTree; timeSec: float64; processAlways: bool = true; processInPhysics: bool = false; ignoreTimeScale: bool = false): gdref SceneTreeTimer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "create_timer", 2709170273)
  methodbind.ptrcall(self, [getPtr timeSec, getPtr processAlways, getPtr processInPhysics, getPtr ignoreTimeScale], gdref SceneTreeTimer)

proc createTween*(self: SceneTree): gdref Tween =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "create_tween", 3426978995)
  methodbind.ptrcall(self, [], gdref Tween)

proc getProcessedTweens*(self: SceneTree): TypedArray[gdref Tween] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "get_processed_tweens", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[gdref Tween])

proc getNodeCount*(self: SceneTree): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "get_node_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getFrame*(self: SceneTree): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "get_frame", 3905245786)
  methodbind.ptrcall(self, [], int64)

proc quit*(self: SceneTree; exitCode: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "quit", 1995695955)
  methodbind.ptrcall(self, [getPtr exitCode], void)

proc setPhysicsInterpolationEnabled*(self: SceneTree; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "set_physics_interpolation_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isPhysicsInterpolationEnabled*(self: SceneTree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "is_physics_interpolation_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc queueDelete*(self: SceneTree; obj: Object): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "queue_delete", 3975164845)
  methodbind.ptrcall(self, [getPtr obj], void)

proc callGroupFlags*(self: SceneTree; flags: Variant; group: Variant; `method`: Variant; args: varargs[Variant, variant]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "call_group_flags", 1527739229)
  var `?param` = newSeqOfCap[VariantPtr](3+args.len)
  `?param`.add [getTypedPtr flags, getTypedPtr group, getTypedPtr `method`]
  discard methodbind.call(self, `?param`, args)
template callGroupFlags*(self: SceneTree; flags: Int; group: StringName; `method`: StringName; args: varargs[Variant, variant]): void =
  callGroupFlags(self, variant flags, variant group, variant `method`, args)

proc notifyGroupFlags*(self: SceneTree; callFlags: uint32; group: StringName; notification: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "notify_group_flags", 1245489420)
  methodbind.ptrcall(self, [getPtr callFlags, getPtr group, getPtr notification], void)

proc setGroupFlags*(self: SceneTree; callFlags: uint32; group: StringName; property: String; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "set_group_flags", 3497599527)
  methodbind.ptrcall(self, [getPtr callFlags, getPtr group, getPtr property, getPtr value], void)

proc callGroup*(self: SceneTree; group: Variant; `method`: Variant; args: varargs[Variant, variant]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "call_group", 1257962832)
  var `?param` = newSeqOfCap[VariantPtr](2+args.len)
  `?param`.add [getTypedPtr group, getTypedPtr `method`]
  discard methodbind.call(self, `?param`, args)
template callGroup*(self: SceneTree; group: StringName; `method`: StringName; args: varargs[Variant, variant]): void =
  callGroup(self, variant group, variant `method`, args)

proc notifyGroup*(self: SceneTree; group: StringName; notification: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "notify_group", 2415702435)
  methodbind.ptrcall(self, [getPtr group, getPtr notification], void)

proc setGroup*(self: SceneTree; group: StringName; property: String; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "set_group", 1279312029)
  methodbind.ptrcall(self, [getPtr group, getPtr property, getPtr value], void)

proc getNodesInGroup*(self: SceneTree; group: StringName): TypedArray[Node] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "get_nodes_in_group", 689397652)
  methodbind.ptrcall(self, [getPtr group], TypedArray[Node])

proc getFirstNodeInGroup*(self: SceneTree; group: StringName): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "get_first_node_in_group", 4071044623)
  methodbind.ptrcall(self, [getPtr group], Node)

proc getNodeCountInGroup*(self: SceneTree; group: StringName): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "get_node_count_in_group", 2458036349)
  methodbind.ptrcall(self, [getPtr group], int32)

proc setCurrentScene*(self: SceneTree; childNode: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "set_current_scene", 1078189570)
  methodbind.ptrcall(self, [getPtr childNode], void)

proc getCurrentScene*(self: SceneTree): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "get_current_scene", 3160264692)
  methodbind.ptrcall(self, [], Node)

proc changeSceneToFile*(self: SceneTree; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "change_scene_to_file", 166001499)
  methodbind.ptrcall(self, [getPtr path], Error)

proc changeSceneToPacked*(self: SceneTree; packedScene: gdref PackedScene): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "change_scene_to_packed", 107349098)
  methodbind.ptrcall(self, [getPtr packedScene], Error)

proc reloadCurrentScene*(self: SceneTree): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "reload_current_scene", 166280745)
  methodbind.ptrcall(self, [], Error)

proc unloadCurrentScene*(self: SceneTree): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "unload_current_scene", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setMultiplayer*(self: SceneTree; multiplayer: gdref MultiplayerAPI; rootPath: NodePath = newNodePath()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "set_multiplayer", 2385607013)
  methodbind.ptrcall(self, [getPtr multiplayer, getPtr rootPath], void)

proc getMultiplayer*(self: SceneTree; forPath: NodePath = newNodePath()): gdref MultiplayerAPI =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "get_multiplayer", 3453401404)
  methodbind.ptrcall(self, [getPtr forPath], gdref MultiplayerAPI)

proc setMultiplayerPollEnabled*(self: SceneTree; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "set_multiplayer_poll_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isMultiplayerPollEnabled*(self: SceneTree): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneTree, "is_multiplayer_poll_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

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
