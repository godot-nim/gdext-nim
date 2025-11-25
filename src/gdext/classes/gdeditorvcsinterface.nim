{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(EditorVCSInterface, Object)

method initialize*(self: EditorVCSInterface; projectPath: String): bool {.base.} = (discard)
proc registerVirtual_initialize*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_initialize"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).initialize(p_args[0].decode(String)).encode(r_ret)

method setCredentials*(self: EditorVCSInterface; username: String; password: String; sshPublicKeyPath: String; sshPrivateKeyPath: String; sshPassphrase: String): void {.base.} = (discard)
proc registerVirtual_setCredentials*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_credentials"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).setCredentials(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(String), p_args[3].decode(String), p_args[4].decode(String))

method getModifiedFilesData*(self: EditorVCSInterface): Array[Dictionary[Variant, Variant]] {.base.} = (discard)
proc registerVirtual_getModifiedFilesData*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_modified_files_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).getModifiedFilesData().encode(r_ret)

method stageFile*(self: EditorVCSInterface; filePath: String): void {.base.} = (discard)
proc registerVirtual_stageFile*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_stage_file"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).stageFile(p_args[0].decode(String))

method unstageFile*(self: EditorVCSInterface; filePath: String): void {.base.} = (discard)
proc registerVirtual_unstageFile*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_unstage_file"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).unstageFile(p_args[0].decode(String))

method discardFile*(self: EditorVCSInterface; filePath: String): void {.base.} = (discard)
proc registerVirtual_discardFile*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_discard_file"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).discardFile(p_args[0].decode(String))

method commit*(self: EditorVCSInterface; msg: String): void {.base.} = (discard)
proc registerVirtual_commit*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_commit"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).commit(p_args[0].decode(String))

method getDiff*(self: EditorVCSInterface; identifier: String; area: int32): Array[Dictionary[Variant, Variant]] {.base.} = (discard)
proc registerVirtual_getDiff*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_diff"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).getDiff(p_args[0].decode(String), p_args[1].decode(int32)).encode(r_ret)

method shutDown*(self: EditorVCSInterface): bool {.base.} = (discard)
proc registerVirtual_shutDown*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_shut_down"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).shutDown().encode(r_ret)

method getVcsName*(self: EditorVCSInterface): String {.base.} = (discard)
proc registerVirtual_getVcsName*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_vcs_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).getVcsName().encode(r_ret)

method getPreviousCommits*(self: EditorVCSInterface; maxCommits: int32): Array[Dictionary[Variant, Variant]] {.base.} = (discard)
proc registerVirtual_getPreviousCommits*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_previous_commits"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).getPreviousCommits(p_args[0].decode(int32)).encode(r_ret)

method getBranchList*(self: EditorVCSInterface): Array[String] {.base.} = (discard)
proc registerVirtual_getBranchList*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_branch_list"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).getBranchList().encode(r_ret)

method getRemotes*(self: EditorVCSInterface): Array[String] {.base.} = (discard)
proc registerVirtual_getRemotes*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_remotes"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).getRemotes().encode(r_ret)

method createBranch*(self: EditorVCSInterface; branchName: String): void {.base.} = (discard)
proc registerVirtual_createBranch*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_create_branch"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).createBranch(p_args[0].decode(String))

method removeBranch*(self: EditorVCSInterface; branchName: String): void {.base.} = (discard)
proc registerVirtual_removeBranch*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_remove_branch"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).removeBranch(p_args[0].decode(String))

method createRemote*(self: EditorVCSInterface; remoteName: String; remoteUrl: String): void {.base.} = (discard)
proc registerVirtual_createRemote*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_create_remote"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).createRemote(p_args[0].decode(String), p_args[1].decode(String))

method removeRemote*(self: EditorVCSInterface; remoteName: String): void {.base.} = (discard)
proc registerVirtual_removeRemote*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_remove_remote"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).removeRemote(p_args[0].decode(String))

method getCurrentBranchName*(self: EditorVCSInterface): String {.base.} = (discard)
proc registerVirtual_getCurrentBranchName*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_current_branch_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).getCurrentBranchName().encode(r_ret)

method checkoutBranch*(self: EditorVCSInterface; branchName: String): bool {.base.} = (discard)
proc registerVirtual_checkoutBranch*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_checkout_branch"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).checkoutBranch(p_args[0].decode(String)).encode(r_ret)

method pull*(self: EditorVCSInterface; remote: String): void {.base.} = (discard)
proc registerVirtual_pull*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_pull"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).pull(p_args[0].decode(String))

method push*(self: EditorVCSInterface; remote: String; force: bool): void {.base.} = (discard)
proc registerVirtual_push*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_push"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).push(p_args[0].decode(String), p_args[1].decode(bool))

method fetch*(self: EditorVCSInterface; remote: String): void {.base.} = (discard)
proc registerVirtual_fetch*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_fetch"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).fetch(p_args[0].decode(String))

method getLineDiff*(self: EditorVCSInterface; filePath: String; text: String): Array[Dictionary[Variant, Variant]] {.base.} = (discard)
proc registerVirtual_getLineDiff*[T: EditorVCSInterface](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_line_diff"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorVCSInterface](p_instance).getLineDiff(p_args[0].decode(String), p_args[1].decode(String)).encode(r_ret)

proc createDiffLine*(self: EditorVCSInterface; newLineNo: int32; oldLineNo: int32; content: String; status: String): Dictionary[Variant, Variant] =
  expandMethodBind(className EditorVCSInterface, "create_diff_line", 2901184053)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr newLineNo, getPtr oldLineNo, getPtr content, getPtr status], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc createDiffHunk*(self: EditorVCSInterface; oldStart: int32; newStart: int32; oldLines: int32; newLines: int32): Dictionary[Variant, Variant] =
  expandMethodBind(className EditorVCSInterface, "create_diff_hunk", 3784842090)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr oldStart, getPtr newStart, getPtr oldLines, getPtr newLines], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc createDiffFile*(self: EditorVCSInterface; newFile: String; oldFile: String): Dictionary[Variant, Variant] =
  expandMethodBind(className EditorVCSInterface, "create_diff_file", 2723227684)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr newFile, getPtr oldFile], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc createCommit*(self: EditorVCSInterface; msg: String; author: String; id: String; unixTimestamp: int64; offsetMinutes: int64): Dictionary[Variant, Variant] =
  expandMethodBind(className EditorVCSInterface, "create_commit", 1075983584)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr msg, getPtr author, getPtr id, getPtr unixTimestamp, getPtr offsetMinutes], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc createStatusFile*(self: EditorVCSInterface; filePath: String; changeType: EditorVCSInterface_ChangeType; area: EditorVCSInterface_TreeArea): Dictionary[Variant, Variant] =
  expandMethodBind(className EditorVCSInterface, "create_status_file", 1083471673)
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr filePath, getPtr changeType, getPtr area], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc addDiffHunksIntoDiffFile*(self: EditorVCSInterface; diffFile: Dictionary[Variant, Variant]; diffHunks: Array[Dictionary[Variant, Variant]]): Dictionary[Variant, Variant] =
  expandMethodBind(className EditorVCSInterface, "add_diff_hunks_into_diff_file", 4015243225)
  nilCheck diffFile
  nilCheck diffHunks
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr diffFile, getPtr diffHunks], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc addLineDiffsIntoDiffHunk*(self: EditorVCSInterface; diffHunk: Dictionary[Variant, Variant]; lineDiffs: Array[Dictionary[Variant, Variant]]): Dictionary[Variant, Variant] =
  expandMethodBind(className EditorVCSInterface, "add_line_diffs_into_diff_hunk", 4015243225)
  nilCheck diffHunk
  nilCheck lineDiffs
  var ret: encoded Dictionary[Variant, Variant]
  methodbind.ptrcall(self, [getPtr diffHunk, getPtr lineDiffs], addr ret)
  (addr ret).decode_result(Dictionary[Variant, Variant])

proc popupError*(self: EditorVCSInterface; msg: String): void =
  expandMethodBind(className EditorVCSInterface, "popup_error", 83702148)
  methodbind.ptrcall(self, [getPtr msg])
