{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationnode; export gdanimationnode

expandOnClassImported(AnimationNodeExtension, AnimationNode)

method processAnimationNode*(self: AnimationNodeExtension; playbackInfo: PackedFloat64Array; testOnly: bool): PackedFloat32Array {.base.} = (discard)
proc registerVirtual_processAnimationNode*[T: AnimationNodeExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_process_animation_node"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AnimationNodeExtension](p_instance).processAnimationNode(p_args[0].decode(PackedFloat64Array), p_args[1].decode(bool)).encode(r_ret)

proc isLooping*(_: typedesc[AnimationNodeExtension]; nodeInfo: PackedFloat32Array): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeExtension, "is_looping", 2035584311)
  methodbind.ptrcall([getPtr nodeInfo], bool)

proc getRemainingTime*(_: typedesc[AnimationNodeExtension]; nodeInfo: PackedFloat32Array; breakLoop: bool): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeExtension, "get_remaining_time", 2851904656)
  methodbind.ptrcall([getPtr nodeInfo, getPtr breakLoop], float64)
