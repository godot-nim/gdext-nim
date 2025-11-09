{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationrootnode; export gdanimationrootnode

expandOnClassImported(AnimationNodeStateMachine, AnimationRootNode)

proc addNode*(self: AnimationNodeStateMachine; name: StringName; node: gdref AnimationNode; position: Vector2 = vector2(0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "add_node", 1980270704)
  methodbind.ptrcall(self, [getPtr name, getPtr node, getPtr position], void)

proc replaceNode*(self: AnimationNodeStateMachine; name: StringName; node: gdref AnimationNode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "replace_node", 2559412862)
  methodbind.ptrcall(self, [getPtr name, getPtr node], void)

proc getNode*(self: AnimationNodeStateMachine; name: StringName): gdref AnimationNode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "get_node", 625644256)
  methodbind.ptrcall(self, [getPtr name], gdref AnimationNode)

proc removeNode*(self: AnimationNodeStateMachine; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "remove_node", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc renameNode*(self: AnimationNodeStateMachine; name: StringName; newName: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "rename_node", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr newName], void)

proc hasNode*(self: AnimationNodeStateMachine; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "has_node", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc getNodeName*(self: AnimationNodeStateMachine; node: gdref AnimationNode): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "get_node_name", 739213945)
  methodbind.ptrcall(self, [getPtr node], StringName)

proc getNodeList*(self: AnimationNodeStateMachine): TypedArray[StringName] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "get_node_list", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[StringName])

proc setNodePosition*(self: AnimationNodeStateMachine; name: StringName; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "set_node_position", 1999414630)
  methodbind.ptrcall(self, [getPtr name, getPtr position], void)

proc getNodePosition*(self: AnimationNodeStateMachine; name: StringName): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "get_node_position", 3100822709)
  methodbind.ptrcall(self, [getPtr name], Vector2)

proc hasTransition*(self: AnimationNodeStateMachine; `from`: StringName; to: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "has_transition", 471820014)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to], bool)

proc addTransition*(self: AnimationNodeStateMachine; `from`: StringName; to: StringName; transition: gdref AnimationNodeStateMachineTransition): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "add_transition", 795486887)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to, getPtr transition], void)

proc getTransition*(self: AnimationNodeStateMachine; idx: int32): gdref AnimationNodeStateMachineTransition =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "get_transition", 4192381260)
  methodbind.ptrcall(self, [getPtr idx], gdref AnimationNodeStateMachineTransition)

proc getTransitionFrom*(self: AnimationNodeStateMachine; idx: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "get_transition_from", 659327637)
  methodbind.ptrcall(self, [getPtr idx], StringName)

proc getTransitionTo*(self: AnimationNodeStateMachine; idx: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "get_transition_to", 659327637)
  methodbind.ptrcall(self, [getPtr idx], StringName)

proc getTransitionCount*(self: AnimationNodeStateMachine): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "get_transition_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc removeTransitionByIndex*(self: AnimationNodeStateMachine; idx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "remove_transition_by_index", 1286410249)
  methodbind.ptrcall(self, [getPtr idx], void)

proc removeTransition*(self: AnimationNodeStateMachine; `from`: StringName; to: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "remove_transition", 3740211285)
  methodbind.ptrcall(self, [getPtr `from`, getPtr to], void)

proc setGraphOffset*(self: AnimationNodeStateMachine; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "set_graph_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getGraphOffset*(self: AnimationNodeStateMachine): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "get_graph_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setStateMachineType*(self: AnimationNodeStateMachine; stateMachineType: AnimationNodeStateMachine_StateMachineType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "set_state_machine_type", 2584759088)
  methodbind.ptrcall(self, [getPtr stateMachineType], void)

proc getStateMachineType*(self: AnimationNodeStateMachine): AnimationNodeStateMachine_StateMachineType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "get_state_machine_type", 1140726469)
  methodbind.ptrcall(self, [], AnimationNodeStateMachine_StateMachineType)

proc setAllowTransitionToSelf*(self: AnimationNodeStateMachine; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "set_allow_transition_to_self", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isAllowTransitionToSelf*(self: AnimationNodeStateMachine): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "is_allow_transition_to_self", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setResetEnds*(self: AnimationNodeStateMachine; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "set_reset_ends", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc areEndsReset*(self: AnimationNodeStateMachine): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeStateMachine, "are_ends_reset", 36873697)
  methodbind.ptrcall(self, [], bool)

template stateMachineType*(self: AnimationNodeStateMachine): untyped = self.getStateMachineType()
template `stateMachineType=`*(self: AnimationNodeStateMachine; value) = self.setStateMachineType(value)

template allowTransitionToSelf*(self: AnimationNodeStateMachine): untyped = self.isAllowTransitionToSelf()
template `allowTransitionToSelf=`*(self: AnimationNodeStateMachine; value) = self.setAllowTransitionToSelf(value)

template resetEnds*(self: AnimationNodeStateMachine): untyped = self.areEndsReset()
template `resetEnds=`*(self: AnimationNodeStateMachine; value) = self.setResetEnds(value)
