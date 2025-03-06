{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationnode; export gdanimationnode

method processAnimationNode*(self: AnimationNodeExtension; playbackInfo: PackedFloat64Array; testOnly: bool): PackedFloat32Array {.base.} = (discard)
proc processAnimationNode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AnimationNodeExtension](p_instance).processAnimationNode(p_args[0].decode(PackedFloat64Array), p_args[1].decode(bool)).encode(r_ret)
template processAnimationNode_bind*(_: typedesc[AnimationNodeExtension]): ClassCallVirtual = processAnimationNode

proc isLooping*(_: typedesc[AnimationNodeExtension]; nodeInfo: PackedFloat32Array): bool =
  expandMethodBind(className AnimationNodeExtension, "is_looping", 2035584311)
  var ret: encoded bool
  methodbind.ptrcall([getPtr nodeInfo], addr ret)
  (addr ret).decode_result(bool)

proc getRemainingTime*(_: typedesc[AnimationNodeExtension]; nodeInfo: PackedFloat32Array; breakLoop: bool): float64 =
  expandMethodBind(className AnimationNodeExtension, "get_remaining_time", 2851904656)
  var ret: encoded float64
  methodbind.ptrcall([getPtr nodeInfo, getPtr breakLoop], addr ret)
  (addr ret).decode_result(float64)

const AnimationNodeExtension_vmap =
  AnimationNode.vmap.concat toTable {
    "processanimationnode" : "_process_animation_node",
    }
template vmap*(_: typedesc[AnimationNodeExtension]): Table[string, string] = AnimationNodeExtension_vmap