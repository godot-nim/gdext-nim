{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationrootnode; export gdanimationrootnode

proc addNode*(self: AnimationNodeStateMachine; name: StringName; node: gdref AnimationNode; position: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className AnimationNodeStateMachine, "add_node", 1980270704)
  var `?param` = [getPtr name, getPtr node, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc replaceNode*(self: AnimationNodeStateMachine; name: StringName; node: gdref AnimationNode): void =
  expandMethodBind(className AnimationNodeStateMachine, "replace_node", 2559412862)
  var `?param` = [getPtr name, getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNode*(self: AnimationNodeStateMachine; name: StringName): gdref AnimationNode =
  expandMethodBind(className AnimationNodeStateMachine, "get_node", 625644256)
  var `?param` = [getPtr name]
  var ret: encoded gdref AnimationNode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref AnimationNode)

proc removeNode*(self: AnimationNodeStateMachine; name: StringName): void =
  expandMethodBind(className AnimationNodeStateMachine, "remove_node", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc renameNode*(self: AnimationNodeStateMachine; name: StringName; newName: StringName): void =
  expandMethodBind(className AnimationNodeStateMachine, "rename_node", 3740211285)
  var `?param` = [getPtr name, getPtr newName]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasNode*(self: AnimationNodeStateMachine; name: StringName): bool =
  expandMethodBind(className AnimationNodeStateMachine, "has_node", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getNodeName*(self: AnimationNodeStateMachine; node: gdref AnimationNode): StringName =
  expandMethodBind(className AnimationNodeStateMachine, "get_node_name", 739213945)
  var `?param` = [getPtr node]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc setNodePosition*(self: AnimationNodeStateMachine; name: StringName; position: Vector2): void =
  expandMethodBind(className AnimationNodeStateMachine, "set_node_position", 1999414630)
  var `?param` = [getPtr name, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNodePosition*(self: AnimationNodeStateMachine; name: StringName): Vector2 =
  expandMethodBind(className AnimationNodeStateMachine, "get_node_position", 3100822709)
  var `?param` = [getPtr name]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc hasTransition*(self: AnimationNodeStateMachine; `from`: StringName; to: StringName): bool =
  expandMethodBind(className AnimationNodeStateMachine, "has_transition", 471820014)
  var `?param` = [getPtr `from`, getPtr to]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc addTransition*(self: AnimationNodeStateMachine; `from`: StringName; to: StringName; transition: gdref AnimationNodeStateMachineTransition): void =
  expandMethodBind(className AnimationNodeStateMachine, "add_transition", 795486887)
  var `?param` = [getPtr `from`, getPtr to, getPtr transition]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTransition*(self: AnimationNodeStateMachine; idx: int32): gdref AnimationNodeStateMachineTransition =
  expandMethodBind(className AnimationNodeStateMachine, "get_transition", 4192381260)
  var `?param` = [getPtr idx]
  var ret: encoded gdref AnimationNodeStateMachineTransition
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref AnimationNodeStateMachineTransition)

proc getTransitionFrom*(self: AnimationNodeStateMachine; idx: int32): StringName =
  expandMethodBind(className AnimationNodeStateMachine, "get_transition_from", 659327637)
  var `?param` = [getPtr idx]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc getTransitionTo*(self: AnimationNodeStateMachine; idx: int32): StringName =
  expandMethodBind(className AnimationNodeStateMachine, "get_transition_to", 659327637)
  var `?param` = [getPtr idx]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc getTransitionCount*(self: AnimationNodeStateMachine): int32 =
  expandMethodBind(className AnimationNodeStateMachine, "get_transition_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc removeTransitionByIndex*(self: AnimationNodeStateMachine; idx: int32): void =
  expandMethodBind(className AnimationNodeStateMachine, "remove_transition_by_index", 1286410249)
  var `?param` = [getPtr idx]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeTransition*(self: AnimationNodeStateMachine; `from`: StringName; to: StringName): void =
  expandMethodBind(className AnimationNodeStateMachine, "remove_transition", 3740211285)
  var `?param` = [getPtr `from`, getPtr to]
  methodbind.ptrcall(self, addr `?param`[0])

proc setGraphOffset*(self: AnimationNodeStateMachine; offset: Vector2): void =
  expandMethodBind(className AnimationNodeStateMachine, "set_graph_offset", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGraphOffset*(self: AnimationNodeStateMachine): Vector2 =
  expandMethodBind(className AnimationNodeStateMachine, "get_graph_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setStateMachineType*(self: AnimationNodeStateMachine; stateMachineType: AnimationNodeStateMachine_StateMachineType): void =
  expandMethodBind(className AnimationNodeStateMachine, "set_state_machine_type", 2584759088)
  var `?param` = [getPtr stateMachineType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStateMachineType*(self: AnimationNodeStateMachine): AnimationNodeStateMachine_StateMachineType =
  expandMethodBind(className AnimationNodeStateMachine, "get_state_machine_type", 1140726469)
  var ret: encoded AnimationNodeStateMachine_StateMachineType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AnimationNodeStateMachine_StateMachineType)

proc setAllowTransitionToSelf*(self: AnimationNodeStateMachine; enable: bool): void =
  expandMethodBind(className AnimationNodeStateMachine, "set_allow_transition_to_self", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAllowTransitionToSelf*(self: AnimationNodeStateMachine): bool =
  expandMethodBind(className AnimationNodeStateMachine, "is_allow_transition_to_self", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setResetEnds*(self: AnimationNodeStateMachine; enable: bool): void =
  expandMethodBind(className AnimationNodeStateMachine, "set_reset_ends", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc areEndsReset*(self: AnimationNodeStateMachine): bool =
  expandMethodBind(className AnimationNodeStateMachine, "are_ends_reset", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template stateMachineType*(self: AnimationNodeStateMachine): untyped = self.getStateMachineType()
template `stateMachineType=`*(self: AnimationNodeStateMachine; value) = self.setStateMachineType(value)

template allowTransitionToSelf*(self: AnimationNodeStateMachine): untyped = self.isAllowTransitionToSelf()
template `allowTransitionToSelf=`*(self: AnimationNodeStateMachine; value) = self.setAllowTransitionToSelf(value)

template resetEnds*(self: AnimationNodeStateMachine): untyped = self.areEndsReset()
template `resetEnds=`*(self: AnimationNodeStateMachine; value) = self.setResetEnds(value)

const AnimationNodeStateMachine_vmap =
  AnimationRootNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationNodeStateMachine]): Table[string, string] = AnimationNodeStateMachine_vmap