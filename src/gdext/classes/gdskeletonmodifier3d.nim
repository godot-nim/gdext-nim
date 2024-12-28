{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

method processModification*(self: SkeletonModifier3D): void {.base.} = (discard)
proc processModification(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[SkeletonModifier3D](p_instance).processModification()
template processModification_bind*(_: typedesc[SkeletonModifier3D]): ClassCallVirtual = processModification

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

const SkeletonModifier3D_vmap =
  Node3D.vmap.concat toTable {
    "processmodification" : "_process_modification",
    }
template vmap*(_: typedesc[SkeletonModifier3D]): Table[string, string] = SkeletonModifier3D_vmap

proc modificationProcessed*(self: SkeletonModifier3D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("modification_processed")
  self.emitSignal(signalname)