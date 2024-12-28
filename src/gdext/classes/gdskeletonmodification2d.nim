{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

method execute*(self: SkeletonModification2D; delta: float64): void {.base.} = (discard)
proc execute(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[SkeletonModification2D](p_instance).execute(p_args[0].decode(float64))
template execute_bind*(_: typedesc[SkeletonModification2D]): ClassCallVirtual = execute

method setupModification*(self: SkeletonModification2D; modificationStack: gdref SkeletonModificationStack2D): void {.base.} = (discard)
proc setupModification(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[SkeletonModification2D](p_instance).setupModification(p_args[0].decode(gdref SkeletonModificationStack2D))
template setupModification_bind*(_: typedesc[SkeletonModification2D]): ClassCallVirtual = setupModification

method drawEditorGizmo*(self: SkeletonModification2D): void {.base.} = (discard)
proc drawEditorGizmo(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[SkeletonModification2D](p_instance).drawEditorGizmo()
template drawEditorGizmo_bind*(_: typedesc[SkeletonModification2D]): ClassCallVirtual = drawEditorGizmo

proc setEnabled*(self: SkeletonModification2D; enabled: bool): void =
  expandMethodBind(className SkeletonModification2D, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getEnabled*(self: SkeletonModification2D): bool =
  expandMethodBind(className SkeletonModification2D, "get_enabled", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getModificationStack*(self: SkeletonModification2D): gdref SkeletonModificationStack2D =
  expandMethodBind(className SkeletonModification2D, "get_modification_stack", 2137761694)
  var ret: encoded gdref SkeletonModificationStack2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref SkeletonModificationStack2D)

proc setIsSetup*(self: SkeletonModification2D; isSetup: bool): void =
  expandMethodBind(className SkeletonModification2D, "set_is_setup", 2586408642)
  methodbind.ptrcall(self, [getPtr isSetup])

proc getIsSetup*(self: SkeletonModification2D): bool =
  expandMethodBind(className SkeletonModification2D, "get_is_setup", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setExecutionMode*(self: SkeletonModification2D; executionMode: int32): void =
  expandMethodBind(className SkeletonModification2D, "set_execution_mode", 1286410249)
  methodbind.ptrcall(self, [getPtr executionMode])

proc getExecutionMode*(self: SkeletonModification2D): int32 =
  expandMethodBind(className SkeletonModification2D, "get_execution_mode", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc clampAngle*(self: SkeletonModification2D; angle: Float; min: Float; max: Float; invert: bool): Float =
  expandMethodBind(className SkeletonModification2D, "clamp_angle", 1229502682)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr angle, getPtr min, getPtr max, getPtr invert], addr ret)
  (addr ret).decode_result(Float)

proc setEditorDrawGizmo*(self: SkeletonModification2D; drawGizmo: bool): void =
  expandMethodBind(className SkeletonModification2D, "set_editor_draw_gizmo", 2586408642)
  methodbind.ptrcall(self, [getPtr drawGizmo])

proc getEditorDrawGizmo*(self: SkeletonModification2D): bool =
  expandMethodBind(className SkeletonModification2D, "get_editor_draw_gizmo", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template enabled*(self: SkeletonModification2D): untyped = self.getEnabled()
template `enabled=`*(self: SkeletonModification2D; value) = self.setEnabled(value)

template executionMode*(self: SkeletonModification2D): untyped = self.getExecutionMode()
template `executionMode=`*(self: SkeletonModification2D; value) = self.setExecutionMode(value)

const SkeletonModification2D_vmap =
  Resource.vmap.concat toTable {
    "execute" : "_execute",
    "setupmodification" : "_setup_modification",
    "draweditorgizmo" : "_draw_editor_gizmo",
    }
template vmap*(_: typedesc[SkeletonModification2D]): Table[string, string] = SkeletonModification2D_vmap