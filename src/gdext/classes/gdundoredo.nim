{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc createAction*(self: UndoRedo; name: String; mergeMode: UndoRedo_MergeMode = mergeDisable; backwardUndoOps: bool = false): void =
  expandMethodBind(className UndoRedo, "create_action", 3171901514)
  var `?param` = [getPtr name, getPtr mergeMode, getPtr backwardUndoOps]
  methodbind.ptrcall(self, addr `?param`[0])

proc commitAction*(self: UndoRedo; execute: bool = true): void =
  expandMethodBind(className UndoRedo, "commit_action", 3216645846)
  var `?param` = [getPtr execute]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCommittingAction*(self: UndoRedo): bool =
  expandMethodBind(className UndoRedo, "is_committing_action", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc addDoMethod*(self: UndoRedo; callable: Callable): void =
  expandMethodBind(className UndoRedo, "add_do_method", 1611583062)
  var `?param` = [getPtr callable]
  methodbind.ptrcall(self, addr `?param`[0])

proc addUndoMethod*(self: UndoRedo; callable: Callable): void =
  expandMethodBind(className UndoRedo, "add_undo_method", 1611583062)
  var `?param` = [getPtr callable]
  methodbind.ptrcall(self, addr `?param`[0])

proc addDoProperty*(self: UndoRedo; `object`: Object; property: StringName; value: Variant): void =
  expandMethodBind(className UndoRedo, "add_do_property", 1017172818)
  var `?param` = [getPtr `object`, getPtr property, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc addUndoProperty*(self: UndoRedo; `object`: Object; property: StringName; value: Variant): void =
  expandMethodBind(className UndoRedo, "add_undo_property", 1017172818)
  var `?param` = [getPtr `object`, getPtr property, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc addDoReference*(self: UndoRedo; `object`: Object): void =
  expandMethodBind(className UndoRedo, "add_do_reference", 3975164845)
  var `?param` = [getPtr `object`]
  methodbind.ptrcall(self, addr `?param`[0])

proc addUndoReference*(self: UndoRedo; `object`: Object): void =
  expandMethodBind(className UndoRedo, "add_undo_reference", 3975164845)
  var `?param` = [getPtr `object`]
  methodbind.ptrcall(self, addr `?param`[0])

proc startForceKeepInMergeEnds*(self: UndoRedo): void =
  expandMethodBind(className UndoRedo, "start_force_keep_in_merge_ends", 3218959716)
  methodbind.ptrcall(self, nil)

proc endForceKeepInMergeEnds*(self: UndoRedo): void =
  expandMethodBind(className UndoRedo, "end_force_keep_in_merge_ends", 3218959716)
  methodbind.ptrcall(self, nil)

proc getHistoryCount*(self: UndoRedo): int32 =
  expandMethodBind(className UndoRedo, "get_history_count", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getCurrentAction*(self: UndoRedo): int32 =
  expandMethodBind(className UndoRedo, "get_current_action", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getActionName*(self: UndoRedo; id: int32): String =
  expandMethodBind(className UndoRedo, "get_action_name", 990163283)
  var `?param` = [getPtr id]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc clearHistory*(self: UndoRedo; increaseVersion: bool = true): void =
  expandMethodBind(className UndoRedo, "clear_history", 3216645846)
  var `?param` = [getPtr increaseVersion]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCurrentActionName*(self: UndoRedo): String =
  expandMethodBind(className UndoRedo, "get_current_action_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc hasUndo*(self: UndoRedo): bool =
  expandMethodBind(className UndoRedo, "has_undo", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc hasRedo*(self: UndoRedo): bool =
  expandMethodBind(className UndoRedo, "has_redo", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getVersion*(self: UndoRedo): uint64 =
  expandMethodBind(className UndoRedo, "get_version", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc setMaxSteps*(self: UndoRedo; maxSteps: int32): void =
  expandMethodBind(className UndoRedo, "set_max_steps", 1286410249)
  var `?param` = [getPtr maxSteps]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxSteps*(self: UndoRedo): int32 =
  expandMethodBind(className UndoRedo, "get_max_steps", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc redo*(self: UndoRedo): bool =
  expandMethodBind(className UndoRedo, "redo", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc undo*(self: UndoRedo): bool =
  expandMethodBind(className UndoRedo, "undo", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template maxSteps*(self: UndoRedo): untyped = self.getMaxSteps()
template `maxSteps=`*(self: UndoRedo; value) = self.setMaxSteps(value)

const UndoRedo_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[UndoRedo]): Table[string, string] = UndoRedo_vmap

proc versionChanged*(self: UndoRedo): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("version_changed")
  self.emitSignal(signalname)