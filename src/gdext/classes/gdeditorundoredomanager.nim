{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(EditorUndoRedoManager, Object)

proc createAction*(self: EditorUndoRedoManager; name: String; mergeMode: UndoRedo_MergeMode = mergeDisable; customContext: Object = default Object; backwardUndoOps: bool = false; markUnsaved: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorUndoRedoManager, "create_action", 796197507)
  methodbind.ptrcall(self, [getPtr name, getPtr mergeMode, getPtr customContext, getPtr backwardUndoOps, getPtr markUnsaved], void)

proc commitAction*(self: EditorUndoRedoManager; execute: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorUndoRedoManager, "commit_action", 3216645846)
  methodbind.ptrcall(self, [getPtr execute], void)

proc isCommittingAction*(self: EditorUndoRedoManager): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorUndoRedoManager, "is_committing_action", 36873697)
  methodbind.ptrcall(self, [], bool)

proc forceFixedHistory*(self: EditorUndoRedoManager): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorUndoRedoManager, "force_fixed_history", 3218959716)
  methodbind.ptrcall(self, [], void)

proc addDoMethod*(self: EditorUndoRedoManager; `object`: Variant; `method`: Variant; args: varargs[Variant, variant]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorUndoRedoManager, "add_do_method", 1517810467)
  var `?param` = newSeqOfCap[VariantPtr](2+args.len)
  `?param`.add [getTypedPtr `object`, getTypedPtr `method`]
  discard methodbind.call(self, `?param`, args)
template addDoMethod*(self: EditorUndoRedoManager; `object`: Object; `method`: StringName; args: varargs[Variant, variant]): void =
  addDoMethod(self, variant `object`, variant `method`, args)

proc addUndoMethod*(self: EditorUndoRedoManager; `object`: Variant; `method`: Variant; args: varargs[Variant, variant]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorUndoRedoManager, "add_undo_method", 1517810467)
  var `?param` = newSeqOfCap[VariantPtr](2+args.len)
  `?param`.add [getTypedPtr `object`, getTypedPtr `method`]
  discard methodbind.call(self, `?param`, args)
template addUndoMethod*(self: EditorUndoRedoManager; `object`: Object; `method`: StringName; args: varargs[Variant, variant]): void =
  addUndoMethod(self, variant `object`, variant `method`, args)

proc addDoProperty*(self: EditorUndoRedoManager; `object`: Object; property: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorUndoRedoManager, "add_do_property", 1017172818)
  methodbind.ptrcall(self, [getPtr `object`, getPtr property, getPtr value], void)

proc addUndoProperty*(self: EditorUndoRedoManager; `object`: Object; property: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorUndoRedoManager, "add_undo_property", 1017172818)
  methodbind.ptrcall(self, [getPtr `object`, getPtr property, getPtr value], void)

proc addDoReference*(self: EditorUndoRedoManager; `object`: Object): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorUndoRedoManager, "add_do_reference", 3975164845)
  methodbind.ptrcall(self, [getPtr `object`], void)

proc addUndoReference*(self: EditorUndoRedoManager; `object`: Object): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorUndoRedoManager, "add_undo_reference", 3975164845)
  methodbind.ptrcall(self, [getPtr `object`], void)

proc getObjectHistoryId*(self: EditorUndoRedoManager; `object`: Object): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorUndoRedoManager, "get_object_history_id", 1107568780)
  methodbind.ptrcall(self, [getPtr `object`], int32)

proc getHistoryUndoRedo*(self: EditorUndoRedoManager; id: int32): UndoRedo =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorUndoRedoManager, "get_history_undo_redo", 2417974513)
  methodbind.ptrcall(self, [getPtr id], UndoRedo)

proc clearHistory*(self: EditorUndoRedoManager; id: int32 = -99; increaseVersion: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorUndoRedoManager, "clear_history", 2020603371)
  methodbind.ptrcall(self, [getPtr id, getPtr increaseVersion], void)
