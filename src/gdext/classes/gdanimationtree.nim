{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationmixer; export gdanimationmixer

proc setTreeRoot*(self: AnimationTree; animationNode: gdref AnimationRootNode): void =
  expandMethodBind(className AnimationTree, "set_tree_root", 2581683800)
  methodbind.ptrcall(self, [getPtr animationNode])

proc getTreeRoot*(self: AnimationTree): gdref AnimationRootNode =
  expandMethodBind(className AnimationTree, "get_tree_root", 4110384712)
  var ret: encoded gdref AnimationRootNode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref AnimationRootNode)

proc setAdvanceExpressionBaseNode*(self: AnimationTree; path: NodePath): void =
  expandMethodBind(className AnimationTree, "set_advance_expression_base_node", 1348162250)
  methodbind.ptrcall(self, [getPtr path])

proc getAdvanceExpressionBaseNode*(self: AnimationTree): NodePath =
  expandMethodBind(className AnimationTree, "get_advance_expression_base_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setAnimationPlayer*(self: AnimationTree; path: NodePath): void =
  expandMethodBind(className AnimationTree, "set_animation_player", 1348162250)
  methodbind.ptrcall(self, [getPtr path])

proc getAnimationPlayer*(self: AnimationTree): NodePath =
  expandMethodBind(className AnimationTree, "get_animation_player", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setProcessCallback*(self: AnimationTree; mode: AnimationTree_AnimationProcessCallback): void =
  expandMethodBind(className AnimationTree, "set_process_callback", 1723352826)
  methodbind.ptrcall(self, [getPtr mode])

proc getProcessCallback*(self: AnimationTree): AnimationTree_AnimationProcessCallback =
  expandMethodBind(className AnimationTree, "get_process_callback", 891317132)
  var ret: encoded AnimationTree_AnimationProcessCallback
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AnimationTree_AnimationProcessCallback)

template treeRoot*(self: AnimationTree): untyped = self.getTreeRoot()
template `treeRoot=`*(self: AnimationTree; value) = self.setTreeRoot(value)

template advanceExpressionBaseNode*(self: AnimationTree): untyped = self.getAdvanceExpressionBaseNode()
template `advanceExpressionBaseNode=`*(self: AnimationTree; value) = self.setAdvanceExpressionBaseNode(value)

template animPlayer*(self: AnimationTree): untyped = self.getAnimationPlayer()
template `animPlayer=`*(self: AnimationTree; value) = self.setAnimationPlayer(value)

const AnimationTree_vmap =
  AnimationMixer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationTree]): Table[string, string] = AnimationTree_vmap

proc animationPlayerChanged*(self: AnimationTree): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_player_changed")
  self.emitSignal(signalname)