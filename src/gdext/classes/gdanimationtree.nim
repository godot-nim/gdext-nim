{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationmixer; export gdanimationmixer

expandOnClassImported(AnimationTree, AnimationMixer)

proc setTreeRoot*(self: AnimationTree; animationNode: gdref AnimationRootNode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationTree, "set_tree_root", 2581683800)
  methodbind.ptrcall(self, [getPtr animationNode], void)

proc getTreeRoot*(self: AnimationTree): gdref AnimationRootNode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationTree, "get_tree_root", 4110384712)
  methodbind.ptrcall(self, [], gdref AnimationRootNode)

proc setAdvanceExpressionBaseNode*(self: AnimationTree; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationTree, "set_advance_expression_base_node", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getAdvanceExpressionBaseNode*(self: AnimationTree): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationTree, "get_advance_expression_base_node", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setAnimationPlayer*(self: AnimationTree; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationTree, "set_animation_player", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getAnimationPlayer*(self: AnimationTree): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationTree, "get_animation_player", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setProcessCallback*(self: AnimationTree; mode: AnimationTree_AnimationProcessCallback): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationTree, "set_process_callback", 1723352826)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getProcessCallback*(self: AnimationTree): AnimationTree_AnimationProcessCallback =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationTree, "get_process_callback", 891317132)
  methodbind.ptrcall(self, [], AnimationTree_AnimationProcessCallback)

template treeRoot*(self: AnimationTree): untyped = self.getTreeRoot()
template `treeRoot=`*(self: AnimationTree; value) = self.setTreeRoot(value)

template advanceExpressionBaseNode*(self: AnimationTree): untyped = self.getAdvanceExpressionBaseNode()
template `advanceExpressionBaseNode=`*(self: AnimationTree; value) = self.setAdvanceExpressionBaseNode(value)

template animPlayer*(self: AnimationTree): untyped = self.getAnimationPlayer()
template `animPlayer=`*(self: AnimationTree; value) = self.setAnimationPlayer(value)
