{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(SkeletonModifier3D, Node3D)

method processModificationWithDelta*(self: SkeletonModifier3D; delta: float64): void {.base.} = (discard)
proc registerVirtual_processModificationWithDelta*[T: SkeletonModifier3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_process_modification_with_delta"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[SkeletonModifier3D](p_instance).processModificationWithDelta(p_args[0].decode(float64))

method processModification*(self: SkeletonModifier3D): void {.base.} = (discard)
proc registerVirtual_processModification*[T: SkeletonModifier3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_process_modification"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[SkeletonModifier3D](p_instance).processModification()

method skeletonChanged*(self: SkeletonModifier3D; oldSkeleton: Skeleton3D; newSkeleton: Skeleton3D): void {.base.} = (discard)
proc registerVirtual_skeletonChanged*[T: SkeletonModifier3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_skeleton_changed"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[SkeletonModifier3D](p_instance).skeletonChanged(p_args[0].decode(Skeleton3D), p_args[1].decode(Skeleton3D))

method validateBoneNames*(self: SkeletonModifier3D): void {.base.} = (discard)
proc registerVirtual_validateBoneNames*[T: SkeletonModifier3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_validate_bone_names"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[SkeletonModifier3D](p_instance).validateBoneNames()

proc getSkeleton*(self: SkeletonModifier3D): Skeleton3D =
  expandMethodBind(className SkeletonModifier3D, "get_skeleton", 1488626673)
  var ret: encoded Skeleton3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Skeleton3D)

proc setActive*(self: SkeletonModifier3D; active: bool): void =
  expandMethodBind(className SkeletonModifier3D, "set_active", 2586408642)
  methodbind.ptrcall(self, [getPtr active])

proc isActive*(self: SkeletonModifier3D): bool =
  expandMethodBind(className SkeletonModifier3D, "is_active", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setInfluence*(self: SkeletonModifier3D; influence: Float): void =
  expandMethodBind(className SkeletonModifier3D, "set_influence", 373806689)
  methodbind.ptrcall(self, [getPtr influence])

proc getInfluence*(self: SkeletonModifier3D): Float =
  expandMethodBind(className SkeletonModifier3D, "get_influence", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template active*(self: SkeletonModifier3D): untyped = self.isActive()
template `active=`*(self: SkeletonModifier3D; value) = self.setActive(value)

template influence*(self: SkeletonModifier3D): untyped = self.getInfluence()
template `influence=`*(self: SkeletonModifier3D; value) = self.setInfluence(value)
