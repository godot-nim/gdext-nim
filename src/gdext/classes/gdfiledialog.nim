{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdconfirmationdialog; export gdconfirmationdialog

proc clearFilters*(self: FileDialog): void =
  expandMethodBind(className FileDialog, "clear_filters", 3218959716)
  methodbind.ptrcall(self, [])

proc addFilter*(self: FileDialog; filter: String; description: String = gdstring""): void =
  expandMethodBind(className FileDialog, "add_filter", 3388804757)
  methodbind.ptrcall(self, [getPtr filter, getPtr description])

proc setFilters*(self: FileDialog; filters: PackedStringArray): void =
  expandMethodBind(className FileDialog, "set_filters", 4015028928)
  methodbind.ptrcall(self, [getPtr filters])

proc getFilters*(self: FileDialog): PackedStringArray =
  expandMethodBind(className FileDialog, "get_filters", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getOptionName*(self: FileDialog; option: int32): String =
  expandMethodBind(className FileDialog, "get_option_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr option], addr ret)
  (addr ret).decode_result(String)

proc getOptionValues*(self: FileDialog; option: int32): PackedStringArray =
  expandMethodBind(className FileDialog, "get_option_values", 647634434)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr option], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getOptionDefault*(self: FileDialog; option: int32): int32 =
  expandMethodBind(className FileDialog, "get_option_default", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr option], addr ret)
  (addr ret).decode_result(int32)

proc setOptionName*(self: FileDialog; option: int32; name: String): void =
  expandMethodBind(className FileDialog, "set_option_name", 501894301)
  methodbind.ptrcall(self, [getPtr option, getPtr name])

proc setOptionValues*(self: FileDialog; option: int32; values: PackedStringArray): void =
  expandMethodBind(className FileDialog, "set_option_values", 3353661094)
  methodbind.ptrcall(self, [getPtr option, getPtr values])

proc setOptionDefault*(self: FileDialog; option: int32; defaultValueIndex: int32): void =
  expandMethodBind(className FileDialog, "set_option_default", 3937882851)
  methodbind.ptrcall(self, [getPtr option, getPtr defaultValueIndex])

proc setOptionCount*(self: FileDialog; count: int32): void =
  expandMethodBind(className FileDialog, "set_option_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count])

proc getOptionCount*(self: FileDialog): int32 =
  expandMethodBind(className FileDialog, "get_option_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc addOption*(self: FileDialog; name: String; values: PackedStringArray; defaultValueIndex: int32): void =
  expandMethodBind(className FileDialog, "add_option", 149592325)
  methodbind.ptrcall(self, [getPtr name, getPtr values, getPtr defaultValueIndex])

proc getSelectedOptions*(self: FileDialog): Dictionary =
  expandMethodBind(className FileDialog, "get_selected_options", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary)

proc getCurrentDir*(self: FileDialog): String =
  expandMethodBind(className FileDialog, "get_current_dir", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getCurrentFile*(self: FileDialog): String =
  expandMethodBind(className FileDialog, "get_current_file", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getCurrentPath*(self: FileDialog): String =
  expandMethodBind(className FileDialog, "get_current_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setCurrentDir*(self: FileDialog; dir: String): void =
  expandMethodBind(className FileDialog, "set_current_dir", 83702148)
  methodbind.ptrcall(self, [getPtr dir])

proc setCurrentFile*(self: FileDialog; file: String): void =
  expandMethodBind(className FileDialog, "set_current_file", 83702148)
  methodbind.ptrcall(self, [getPtr file])

proc setCurrentPath*(self: FileDialog; path: String): void =
  expandMethodBind(className FileDialog, "set_current_path", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc setModeOverridesTitle*(self: FileDialog; override: bool): void =
  expandMethodBind(className FileDialog, "set_mode_overrides_title", 2586408642)
  methodbind.ptrcall(self, [getPtr override])

proc isModeOverridingTitle*(self: FileDialog): bool =
  expandMethodBind(className FileDialog, "is_mode_overriding_title", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setFileMode*(self: FileDialog; mode: FileDialog_FileMode): void =
  expandMethodBind(className FileDialog, "set_file_mode", 3654936397)
  methodbind.ptrcall(self, [getPtr mode])

proc getFileMode*(self: FileDialog): FileDialog_FileMode =
  expandMethodBind(className FileDialog, "get_file_mode", 4074825319)
  var ret: encoded FileDialog_FileMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(FileDialog_FileMode)

proc getVbox*(self: FileDialog): VBoxContainer =
  expandMethodBind(className FileDialog, "get_vbox", 915758477)
  var ret: encoded VBoxContainer
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VBoxContainer)

proc getLineEdit*(self: FileDialog): LineEdit =
  expandMethodBind(className FileDialog, "get_line_edit", 4071694264)
  var ret: encoded LineEdit
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(LineEdit)

proc setAccess*(self: FileDialog; access: FileDialog_Access): void =
  expandMethodBind(className FileDialog, "set_access", 4104413466)
  methodbind.ptrcall(self, [getPtr access])

proc getAccess*(self: FileDialog): FileDialog_Access =
  expandMethodBind(className FileDialog, "get_access", 3344081076)
  var ret: encoded FileDialog_Access
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(FileDialog_Access)

proc setRootSubfolder*(self: FileDialog; dir: String): void =
  expandMethodBind(className FileDialog, "set_root_subfolder", 83702148)
  methodbind.ptrcall(self, [getPtr dir])

proc getRootSubfolder*(self: FileDialog): String =
  expandMethodBind(className FileDialog, "get_root_subfolder", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setShowHiddenFiles*(self: FileDialog; show: bool): void =
  expandMethodBind(className FileDialog, "set_show_hidden_files", 2586408642)
  methodbind.ptrcall(self, [getPtr show])

proc isShowingHiddenFiles*(self: FileDialog): bool =
  expandMethodBind(className FileDialog, "is_showing_hidden_files", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setUseNativeDialog*(self: FileDialog; native: bool): void =
  expandMethodBind(className FileDialog, "set_use_native_dialog", 2586408642)
  methodbind.ptrcall(self, [getPtr native])

proc getUseNativeDialog*(self: FileDialog): bool =
  expandMethodBind(className FileDialog, "get_use_native_dialog", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc deselectAll*(self: FileDialog): void =
  expandMethodBind(className FileDialog, "deselect_all", 3218959716)
  methodbind.ptrcall(self, [])

proc invalidate*(self: FileDialog): void =
  expandMethodBind(className FileDialog, "invalidate", 3218959716)
  methodbind.ptrcall(self, [])

template modeOverridesTitle*(self: FileDialog): untyped = self.isModeOverridingTitle()
template `modeOverridesTitle=`*(self: FileDialog; value) = self.setModeOverridesTitle(value)

template fileMode*(self: FileDialog): untyped = self.getFileMode()
template `fileMode=`*(self: FileDialog; value) = self.setFileMode(value)

template access*(self: FileDialog): untyped = self.getAccess()
template `access=`*(self: FileDialog; value) = self.setAccess(value)

template rootSubfolder*(self: FileDialog): untyped = self.getRootSubfolder()
template `rootSubfolder=`*(self: FileDialog; value) = self.setRootSubfolder(value)

template filters*(self: FileDialog): untyped = self.getFilters()
template `filters=`*(self: FileDialog; value) = self.setFilters(value)

template optionCount*(self: FileDialog): untyped = self.getOptionCount()
template `optionCount=`*(self: FileDialog; value) = self.setOptionCount(value)

template showHiddenFiles*(self: FileDialog): untyped = self.isShowingHiddenFiles()
template `showHiddenFiles=`*(self: FileDialog; value) = self.setShowHiddenFiles(value)

template useNativeDialog*(self: FileDialog): untyped = self.getUseNativeDialog()
template `useNativeDialog=`*(self: FileDialog; value) = self.setUseNativeDialog(value)

template currentDir*(self: FileDialog): untyped = self.getCurrentDir()
template `currentDir=`*(self: FileDialog; value) = self.setCurrentDir(value)

template currentFile*(self: FileDialog): untyped = self.getCurrentFile()
template `currentFile=`*(self: FileDialog; value) = self.setCurrentFile(value)

template currentPath*(self: FileDialog): untyped = self.getCurrentPath()
template `currentPath=`*(self: FileDialog; value) = self.setCurrentPath(value)

const FileDialog_vmap =
  ConfirmationDialog.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[FileDialog]): Table[string, string] = FileDialog_vmap

proc fileSelected*(self: FileDialog; path: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("file_selected")
  let args = [path]
  self.emitSignal(signalname, args)

proc filesSelected*(self: FileDialog; paths: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("files_selected")
  let args = [paths]
  self.emitSignal(signalname, args)

proc dirSelected*(self: FileDialog; dir: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("dir_selected")
  let args = [dir]
  self.emitSignal(signalname, args)