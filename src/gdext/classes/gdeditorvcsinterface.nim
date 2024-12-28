{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

method initialize*(self: EditorVCSInterface; projectPath: String): bool {.base.} = (discard)
proc initialize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).initialize(p_args[0].decode(String)).encode(r_ret)
template initialize_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = initialize

method setCredentials*(self: EditorVCSInterface; username: String; password: String; sshPublicKeyPath: String; sshPrivateKeyPath: String; sshPassphrase: String): void {.base.} = (discard)
proc setCredentials(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).setCredentials(p_args[0].decode(String), p_args[1].decode(String), p_args[2].decode(String), p_args[3].decode(String), p_args[4].decode(String))
template setCredentials_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = setCredentials

method getModifiedFilesData*(self: EditorVCSInterface): TypedArray[Dictionary] {.base.} = (discard)
proc getModifiedFilesData(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).getModifiedFilesData().encode(r_ret)
template getModifiedFilesData_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = getModifiedFilesData

method stageFile*(self: EditorVCSInterface; filePath: String): void {.base.} = (discard)
proc stageFile(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).stageFile(p_args[0].decode(String))
template stageFile_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = stageFile

method unstageFile*(self: EditorVCSInterface; filePath: String): void {.base.} = (discard)
proc unstageFile(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).unstageFile(p_args[0].decode(String))
template unstageFile_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = unstageFile

method discardFile*(self: EditorVCSInterface; filePath: String): void {.base.} = (discard)
proc discardFile(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).discardFile(p_args[0].decode(String))
template discardFile_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = discardFile

method commit*(self: EditorVCSInterface; msg: String): void {.base.} = (discard)
proc commit(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).commit(p_args[0].decode(String))
template commit_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = commit

method getDiff*(self: EditorVCSInterface; identifier: String; area: int32): TypedArray[Dictionary] {.base.} = (discard)
proc getDiff(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).getDiff(p_args[0].decode(String), p_args[1].decode(int32)).encode(r_ret)
template getDiff_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = getDiff

method shutDown*(self: EditorVCSInterface): bool {.base.} = (discard)
proc shutDown(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).shutDown().encode(r_ret)
template shutDown_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = shutDown

method getVcsName*(self: EditorVCSInterface): String {.base.} = (discard)
proc getVcsName(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).getVcsName().encode(r_ret)
template getVcsName_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = getVcsName

method getPreviousCommits*(self: EditorVCSInterface; maxCommits: int32): TypedArray[Dictionary] {.base.} = (discard)
proc getPreviousCommits(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).getPreviousCommits(p_args[0].decode(int32)).encode(r_ret)
template getPreviousCommits_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = getPreviousCommits

method getBranchList*(self: EditorVCSInterface): TypedArray[String] {.base.} = (discard)
proc getBranchList(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).getBranchList().encode(r_ret)
template getBranchList_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = getBranchList

method getRemotes*(self: EditorVCSInterface): TypedArray[String] {.base.} = (discard)
proc getRemotes(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).getRemotes().encode(r_ret)
template getRemotes_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = getRemotes

method createBranch*(self: EditorVCSInterface; branchName: String): void {.base.} = (discard)
proc createBranch(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).createBranch(p_args[0].decode(String))
template createBranch_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = createBranch

method removeBranch*(self: EditorVCSInterface; branchName: String): void {.base.} = (discard)
proc removeBranch(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).removeBranch(p_args[0].decode(String))
template removeBranch_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = removeBranch

method createRemote*(self: EditorVCSInterface; remoteName: String; remoteUrl: String): void {.base.} = (discard)
proc createRemote(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).createRemote(p_args[0].decode(String), p_args[1].decode(String))
template createRemote_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = createRemote

method removeRemote*(self: EditorVCSInterface; remoteName: String): void {.base.} = (discard)
proc removeRemote(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).removeRemote(p_args[0].decode(String))
template removeRemote_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = removeRemote

method getCurrentBranchName*(self: EditorVCSInterface): String {.base.} = (discard)
proc getCurrentBranchName(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).getCurrentBranchName().encode(r_ret)
template getCurrentBranchName_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = getCurrentBranchName

method checkoutBranch*(self: EditorVCSInterface; branchName: String): bool {.base.} = (discard)
proc checkoutBranch(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).checkoutBranch(p_args[0].decode(String)).encode(r_ret)
template checkoutBranch_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = checkoutBranch

method pull*(self: EditorVCSInterface; remote: String): void {.base.} = (discard)
proc pull(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).pull(p_args[0].decode(String))
template pull_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = pull

method push*(self: EditorVCSInterface; remote: String; force: bool): void {.base.} = (discard)
proc push(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).push(p_args[0].decode(String), p_args[1].decode(bool))
template push_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = push

method fetch*(self: EditorVCSInterface; remote: String): void {.base.} = (discard)
proc fetch(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).fetch(p_args[0].decode(String))
template fetch_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = fetch

method getLineDiff*(self: EditorVCSInterface; filePath: String; text: String): TypedArray[Dictionary] {.base.} = (discard)
proc getLineDiff(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorVCSInterface](p_instance).getLineDiff(p_args[0].decode(String), p_args[1].decode(String)).encode(r_ret)
template getLineDiff_bind*(_: typedesc[EditorVCSInterface]): ClassCallVirtual = getLineDiff

proc createDiffLine*(self: EditorVCSInterface; newLineNo: int32; oldLineNo: int32; content: String; status: String): Dictionary =
  expandMethodBind(className EditorVCSInterface, "create_diff_line", 2901184053)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr newLineNo, getPtr oldLineNo, getPtr content, getPtr status], addr ret)
  (addr ret).decode_result(Dictionary)

proc createDiffHunk*(self: EditorVCSInterface; oldStart: int32; newStart: int32; oldLines: int32; newLines: int32): Dictionary =
  expandMethodBind(className EditorVCSInterface, "create_diff_hunk", 3784842090)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr oldStart, getPtr newStart, getPtr oldLines, getPtr newLines], addr ret)
  (addr ret).decode_result(Dictionary)

proc createDiffFile*(self: EditorVCSInterface; newFile: String; oldFile: String): Dictionary =
  expandMethodBind(className EditorVCSInterface, "create_diff_file", 2723227684)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr newFile, getPtr oldFile], addr ret)
  (addr ret).decode_result(Dictionary)

proc createCommit*(self: EditorVCSInterface; msg: String; author: String; id: String; unixTimestamp: int64; offsetMinutes: int64): Dictionary =
  expandMethodBind(className EditorVCSInterface, "create_commit", 1075983584)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr msg, getPtr author, getPtr id, getPtr unixTimestamp, getPtr offsetMinutes], addr ret)
  (addr ret).decode_result(Dictionary)

proc createStatusFile*(self: EditorVCSInterface; filePath: String; changeType: EditorVCSInterface_ChangeType; area: EditorVCSInterface_TreeArea): Dictionary =
  expandMethodBind(className EditorVCSInterface, "create_status_file", 1083471673)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr filePath, getPtr changeType, getPtr area], addr ret)
  (addr ret).decode_result(Dictionary)

proc addDiffHunksIntoDiffFile*(self: EditorVCSInterface; diffFile: Dictionary; diffHunks: TypedArray[Dictionary]): Dictionary =
  expandMethodBind(className EditorVCSInterface, "add_diff_hunks_into_diff_file", 4015243225)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr diffFile, getPtr diffHunks], addr ret)
  (addr ret).decode_result(Dictionary)

proc addLineDiffsIntoDiffHunk*(self: EditorVCSInterface; diffHunk: Dictionary; lineDiffs: TypedArray[Dictionary]): Dictionary =
  expandMethodBind(className EditorVCSInterface, "add_line_diffs_into_diff_hunk", 4015243225)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr diffHunk, getPtr lineDiffs], addr ret)
  (addr ret).decode_result(Dictionary)

proc popupError*(self: EditorVCSInterface; msg: String): void =
  expandMethodBind(className EditorVCSInterface, "popup_error", 83702148)
  methodbind.ptrcall(self, [getPtr msg])

const EditorVCSInterface_vmap =
  Object.vmap.concat toTable {
    "initialize" : "_initialize",
    "setcredentials" : "_set_credentials",
    "getmodifiedfilesdata" : "_get_modified_files_data",
    "stagefile" : "_stage_file",
    "unstagefile" : "_unstage_file",
    "discardfile" : "_discard_file",
    "commit" : "_commit",
    "getdiff" : "_get_diff",
    "shutdown" : "_shut_down",
    "getvcsname" : "_get_vcs_name",
    "getpreviouscommits" : "_get_previous_commits",
    "getbranchlist" : "_get_branch_list",
    "getremotes" : "_get_remotes",
    "createbranch" : "_create_branch",
    "removebranch" : "_remove_branch",
    "createremote" : "_create_remote",
    "removeremote" : "_remove_remote",
    "getcurrentbranchname" : "_get_current_branch_name",
    "checkoutbranch" : "_checkout_branch",
    "pull" : "_pull",
    "push" : "_push",
    "fetch" : "_fetch",
    "getlinediff" : "_get_line_diff",
    }
template vmap*(_: typedesc[EditorVCSInterface]): Table[string, string] = EditorVCSInterface_vmap