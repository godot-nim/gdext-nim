{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(AnimationNodeStateMachinePlayback, Resource)

proc travel*(self: AnimationNodeStateMachinePlayback; toNode: StringName; resetOnTeleport: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachinePlayback, "travel", 3823612587)
  methodbind.ptrcall(self, [getPtr toNode, getPtr resetOnTeleport], void)

proc start*(self: AnimationNodeStateMachinePlayback; node: StringName; reset: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachinePlayback, "start", 3823612587)
  methodbind.ptrcall(self, [getPtr node, getPtr reset], void)

proc next*(self: AnimationNodeStateMachinePlayback): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachinePlayback, "next", 3218959716)
  methodbind.ptrcall(self, [], void)

proc stop*(self: AnimationNodeStateMachinePlayback): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachinePlayback, "stop", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isPlaying*(self: AnimationNodeStateMachinePlayback): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachinePlayback, "is_playing", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getCurrentNode*(self: AnimationNodeStateMachinePlayback): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachinePlayback, "get_current_node", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc getCurrentPlayPosition*(self: AnimationNodeStateMachinePlayback): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachinePlayback, "get_current_play_position", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getCurrentLength*(self: AnimationNodeStateMachinePlayback): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachinePlayback, "get_current_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getFadingFromNode*(self: AnimationNodeStateMachinePlayback): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachinePlayback, "get_fading_from_node", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc getTravelPath*(self: AnimationNodeStateMachinePlayback): TypedArray[StringName] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachinePlayback, "get_travel_path", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[StringName])
