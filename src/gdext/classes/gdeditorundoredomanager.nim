{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc createAction*(self: EditorUndoRedoManager; name: String; mergeMode: UndoRedo_MergeMode = mergeDisable; customContext: Object = default Object; backwardUndoOps: bool = false): void =
  expandMethodBind(className EditorUndoRedoManager, "create_action", 2107025470)
  methodbind.ptrcall(self, [getPtr name, getPtr mergeMode, getPtr customContext, getPtr backwardUndoOps])

proc commitAction*(self: EditorUndoRedoManager; execute: bool = true): void =
  expandMethodBind(className EditorUndoRedoManager, "commit_action", 3216645846)
  methodbind.ptrcall(self, [getPtr execute])

proc isCommittingAction*(self: EditorUndoRedoManager): bool =
  expandMethodBind(className EditorUndoRedoManager, "is_committing_action", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc forceFixedHistory*(self: EditorUndoRedoManager): void =
  expandMethodBind(className EditorUndoRedoManager, "force_fixed_history", 3218959716)
  methodbind.ptrcall(self, [])

proc addDoMethod*(self: EditorUndoRedoManager; `object`: Variant; `method`: Variant; args: varargs[Variant]): void =
  expandMethodBind(className EditorUndoRedoManager, "add_do_method", 1517810467)
  var `?param` = newSeqOfCap[VariantPtr](2+args.len)
  `?param`.add [getTypedPtr `object`, getTypedPtr `method`]
  discard methodbind.call(self, `?param`, args)
template addDoMethod*(self: EditorUndoRedoManager; `object`: Object; `method`: StringName; args: varargs[Variant]): void =
  addDoMethod(self, variant `object`, variant `method`, args)

proc addUndoMethod*(self: EditorUndoRedoManager; `object`: Variant; `method`: Variant; args: varargs[Variant]): void =
  expandMethodBind(className EditorUndoRedoManager, "add_undo_method", 1517810467)
  var `?param` = newSeqOfCap[VariantPtr](2+args.len)
  `?param`.add [getTypedPtr `object`, getTypedPtr `method`]
  discard methodbind.call(self, `?param`, args)
template addUndoMethod*(self: EditorUndoRedoManager; `object`: Object; `method`: StringName; args: varargs[Variant]): void =
  addUndoMethod(self, variant `object`, variant `method`, args)

proc addDoProperty*(self: EditorUndoRedoManager; `object`: Object; property: StringName; value: Variant): void =
  expandMethodBind(className EditorUndoRedoManager, "add_do_property", 1017172818)
  methodbind.ptrcall(self, [getPtr `object`, getPtr property, getPtr value])

proc addUndoProperty*(self: EditorUndoRedoManager; `object`: Object; property: StringName; value: Variant): void =
  expandMethodBind(className EditorUndoRedoManager, "add_undo_property", 1017172818)
  methodbind.ptrcall(self, [getPtr `object`, getPtr property, getPtr value])

proc addDoReference*(self: EditorUndoRedoManager; `object`: Object): void =
  expandMethodBind(className EditorUndoRedoManager, "add_do_reference", 3975164845)
  methodbind.ptrcall(self, [getPtr `object`])

proc addUndoReference*(self: EditorUndoRedoManager; `object`: Object): void =
  expandMethodBind(className EditorUndoRedoManager, "add_undo_reference", 3975164845)
  methodbind.ptrcall(self, [getPtr `object`])

proc getObjectHistoryId*(self: EditorUndoRedoManager; `object`: Object): int32 =
  expandMethodBind(className EditorUndoRedoManager, "get_object_history_id", 1107568780)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr `object`], addr ret)
  (addr ret).decode_result(int32)

proc getHistoryUndoRedo*(self: EditorUndoRedoManager; id: int32): UndoRedo =
  expandMethodBind(className EditorUndoRedoManager, "get_history_undo_redo", 2417974513)
  var ret: encoded UndoRedo
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(UndoRedo)

const EditorUndoRedoManager_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorUndoRedoManager]): Table[string, string] = EditorUndoRedoManager_vmap

proc historyChanged*(self: EditorUndoRedoManager): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("history_changed")
  self.emitSignal(signalname)

proc versionChanged*(self: EditorUndoRedoManager): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("version_changed")
  self.emitSignal(signalname)