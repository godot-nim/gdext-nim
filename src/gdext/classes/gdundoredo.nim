{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(UndoRedo, Object)

proc createAction*(self: UndoRedo; name: String; mergeMode: UndoRedo_MergeMode = mergeDisable; backwardUndoOps: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "create_action", 3171901514)
  methodbind.ptrcall(self, [getPtr name, getPtr mergeMode, getPtr backwardUndoOps], void)

proc commitAction*(self: UndoRedo; execute: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "commit_action", 3216645846)
  methodbind.ptrcall(self, [getPtr execute], void)

proc isCommittingAction*(self: UndoRedo): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "is_committing_action", 36873697)
  methodbind.ptrcall(self, [], bool)

proc addDoMethod*(self: UndoRedo; callable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "add_do_method", 1611583062)
  methodbind.ptrcall(self, [getPtr callable], void)

proc addUndoMethod*(self: UndoRedo; callable: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "add_undo_method", 1611583062)
  methodbind.ptrcall(self, [getPtr callable], void)

proc addDoProperty*(self: UndoRedo; `object`: Object; property: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "add_do_property", 1017172818)
  methodbind.ptrcall(self, [getPtr `object`, getPtr property, getPtr value], void)

proc addUndoProperty*(self: UndoRedo; `object`: Object; property: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "add_undo_property", 1017172818)
  methodbind.ptrcall(self, [getPtr `object`, getPtr property, getPtr value], void)

proc addDoReference*(self: UndoRedo; `object`: Object): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "add_do_reference", 3975164845)
  methodbind.ptrcall(self, [getPtr `object`], void)

proc addUndoReference*(self: UndoRedo; `object`: Object): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "add_undo_reference", 3975164845)
  methodbind.ptrcall(self, [getPtr `object`], void)

proc startForceKeepInMergeEnds*(self: UndoRedo): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "start_force_keep_in_merge_ends", 3218959716)
  methodbind.ptrcall(self, [], void)

proc endForceKeepInMergeEnds*(self: UndoRedo): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "end_force_keep_in_merge_ends", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getHistoryCount*(self: UndoRedo): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "get_history_count", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc getCurrentAction*(self: UndoRedo): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "get_current_action", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc getActionName*(self: UndoRedo; id: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "get_action_name", 990163283)
  methodbind.ptrcall(self, [getPtr id], String)

proc clearHistory*(self: UndoRedo; increaseVersion: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "clear_history", 3216645846)
  methodbind.ptrcall(self, [getPtr increaseVersion], void)

proc getCurrentActionName*(self: UndoRedo): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "get_current_action_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc hasUndo*(self: UndoRedo): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "has_undo", 36873697)
  methodbind.ptrcall(self, [], bool)

proc hasRedo*(self: UndoRedo): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "has_redo", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getVersion*(self: UndoRedo): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "get_version", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc setMaxSteps*(self: UndoRedo; maxSteps: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "set_max_steps", 1286410249)
  methodbind.ptrcall(self, [getPtr maxSteps], void)

proc getMaxSteps*(self: UndoRedo): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "get_max_steps", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc redo*(self: UndoRedo): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "redo", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc undo*(self: UndoRedo): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className UndoRedo, "undo", 2240911060)
  methodbind.ptrcall(self, [], bool)

template maxSteps*(self: UndoRedo): untyped = self.getMaxSteps()
template `maxSteps=`*(self: UndoRedo; value) = self.setMaxSteps(value)
