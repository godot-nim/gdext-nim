{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdconfirmationdialog; export gdconfirmationdialog

proc clearFilters*(self: EditorFileDialog): void =
  expandMethodBind(className EditorFileDialog, "clear_filters", 3218959716)
  methodbind.ptrcall(self, nil)

proc addFilter*(self: EditorFileDialog; filter: String; description: String = gdstring""): void =
  expandMethodBind(className EditorFileDialog, "add_filter", 3388804757)
  var `?param` = [getPtr filter, getPtr description]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFilters*(self: EditorFileDialog; filters: PackedStringArray): void =
  expandMethodBind(className EditorFileDialog, "set_filters", 4015028928)
  var `?param` = [getPtr filters]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFilters*(self: EditorFileDialog): PackedStringArray =
  expandMethodBind(className EditorFileDialog, "get_filters", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getOptionName*(self: EditorFileDialog; option: int32): String =
  expandMethodBind(className EditorFileDialog, "get_option_name", 844755477)
  var `?param` = [getPtr option]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getOptionValues*(self: EditorFileDialog; option: int32): PackedStringArray =
  expandMethodBind(className EditorFileDialog, "get_option_values", 647634434)
  var `?param` = [getPtr option]
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getOptionDefault*(self: EditorFileDialog; option: int32): int32 =
  expandMethodBind(className EditorFileDialog, "get_option_default", 923996154)
  var `?param` = [getPtr option]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setOptionName*(self: EditorFileDialog; option: int32; name: String): void =
  expandMethodBind(className EditorFileDialog, "set_option_name", 501894301)
  var `?param` = [getPtr option, getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc setOptionValues*(self: EditorFileDialog; option: int32; values: PackedStringArray): void =
  expandMethodBind(className EditorFileDialog, "set_option_values", 3353661094)
  var `?param` = [getPtr option, getPtr values]
  methodbind.ptrcall(self, addr `?param`[0])

proc setOptionDefault*(self: EditorFileDialog; option: int32; defaultValueIndex: int32): void =
  expandMethodBind(className EditorFileDialog, "set_option_default", 3937882851)
  var `?param` = [getPtr option, getPtr defaultValueIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc setOptionCount*(self: EditorFileDialog; count: int32): void =
  expandMethodBind(className EditorFileDialog, "set_option_count", 1286410249)
  var `?param` = [getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOptionCount*(self: EditorFileDialog): int32 =
  expandMethodBind(className EditorFileDialog, "get_option_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc addOption*(self: EditorFileDialog; name: String; values: PackedStringArray; defaultValueIndex: int32): void =
  expandMethodBind(className EditorFileDialog, "add_option", 149592325)
  var `?param` = [getPtr name, getPtr values, getPtr defaultValueIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSelectedOptions*(self: EditorFileDialog): Dictionary =
  expandMethodBind(className EditorFileDialog, "get_selected_options", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getCurrentDir*(self: EditorFileDialog): String =
  expandMethodBind(className EditorFileDialog, "get_current_dir", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getCurrentFile*(self: EditorFileDialog): String =
  expandMethodBind(className EditorFileDialog, "get_current_file", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getCurrentPath*(self: EditorFileDialog): String =
  expandMethodBind(className EditorFileDialog, "get_current_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setCurrentDir*(self: EditorFileDialog; dir: String): void =
  expandMethodBind(className EditorFileDialog, "set_current_dir", 83702148)
  var `?param` = [getPtr dir]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCurrentFile*(self: EditorFileDialog; file: String): void =
  expandMethodBind(className EditorFileDialog, "set_current_file", 83702148)
  var `?param` = [getPtr file]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCurrentPath*(self: EditorFileDialog; path: String): void =
  expandMethodBind(className EditorFileDialog, "set_current_path", 83702148)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc setFileMode*(self: EditorFileDialog; mode: EditorFileDialog_FileMode): void =
  expandMethodBind(className EditorFileDialog, "set_file_mode", 274150415)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFileMode*(self: EditorFileDialog): EditorFileDialog_FileMode =
  expandMethodBind(className EditorFileDialog, "get_file_mode", 2681044145)
  var ret: encoded EditorFileDialog_FileMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(EditorFileDialog_FileMode)

proc getVbox*(self: EditorFileDialog): VBoxContainer =
  expandMethodBind(className EditorFileDialog, "get_vbox", 915758477)
  var ret: encoded VBoxContainer
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VBoxContainer)

proc getLineEdit*(self: EditorFileDialog): LineEdit =
  expandMethodBind(className EditorFileDialog, "get_line_edit", 4071694264)
  var ret: encoded LineEdit
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(LineEdit)

proc setAccess*(self: EditorFileDialog; access: EditorFileDialog_Access): void =
  expandMethodBind(className EditorFileDialog, "set_access", 3882893764)
  var `?param` = [getPtr access]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAccess*(self: EditorFileDialog): EditorFileDialog_Access =
  expandMethodBind(className EditorFileDialog, "get_access", 778734016)
  var ret: encoded EditorFileDialog_Access
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(EditorFileDialog_Access)

proc setShowHiddenFiles*(self: EditorFileDialog; show: bool): void =
  expandMethodBind(className EditorFileDialog, "set_show_hidden_files", 2586408642)
  var `?param` = [getPtr show]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShowingHiddenFiles*(self: EditorFileDialog): bool =
  expandMethodBind(className EditorFileDialog, "is_showing_hidden_files", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDisplayMode*(self: EditorFileDialog; mode: EditorFileDialog_DisplayMode): void =
  expandMethodBind(className EditorFileDialog, "set_display_mode", 3049004050)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDisplayMode*(self: EditorFileDialog): EditorFileDialog_DisplayMode =
  expandMethodBind(className EditorFileDialog, "get_display_mode", 3517174669)
  var ret: encoded EditorFileDialog_DisplayMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(EditorFileDialog_DisplayMode)

proc setDisableOverwriteWarning*(self: EditorFileDialog; disable: bool): void =
  expandMethodBind(className EditorFileDialog, "set_disable_overwrite_warning", 2586408642)
  var `?param` = [getPtr disable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isOverwriteWarningDisabled*(self: EditorFileDialog): bool =
  expandMethodBind(className EditorFileDialog, "is_overwrite_warning_disabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc addSideMenu*(self: EditorFileDialog; menu: Control; title: String = gdstring""): void =
  expandMethodBind(className EditorFileDialog, "add_side_menu", 402368861)
  var `?param` = [getPtr menu, getPtr title]
  methodbind.ptrcall(self, addr `?param`[0])

proc popupFileDialog*(self: EditorFileDialog): void =
  expandMethodBind(className EditorFileDialog, "popup_file_dialog", 3218959716)
  methodbind.ptrcall(self, nil)

proc invalidate*(self: EditorFileDialog): void =
  expandMethodBind(className EditorFileDialog, "invalidate", 3218959716)
  methodbind.ptrcall(self, nil)

template access*(self: EditorFileDialog): untyped = self.getAccess()
template `access=`*(self: EditorFileDialog; value) = self.setAccess(value)

template displayMode*(self: EditorFileDialog): untyped = self.getDisplayMode()
template `displayMode=`*(self: EditorFileDialog; value) = self.setDisplayMode(value)

template fileMode*(self: EditorFileDialog): untyped = self.getFileMode()
template `fileMode=`*(self: EditorFileDialog; value) = self.setFileMode(value)

template currentDir*(self: EditorFileDialog): untyped = self.getCurrentDir()
template `currentDir=`*(self: EditorFileDialog; value) = self.setCurrentDir(value)

template currentFile*(self: EditorFileDialog): untyped = self.getCurrentFile()
template `currentFile=`*(self: EditorFileDialog; value) = self.setCurrentFile(value)

template currentPath*(self: EditorFileDialog): untyped = self.getCurrentPath()
template `currentPath=`*(self: EditorFileDialog; value) = self.setCurrentPath(value)

template filters*(self: EditorFileDialog): untyped = self.getFilters()
template `filters=`*(self: EditorFileDialog; value) = self.setFilters(value)

template optionCount*(self: EditorFileDialog): untyped = self.getOptionCount()
template `optionCount=`*(self: EditorFileDialog; value) = self.setOptionCount(value)

template showHiddenFiles*(self: EditorFileDialog): untyped = self.isShowingHiddenFiles()
template `showHiddenFiles=`*(self: EditorFileDialog; value) = self.setShowHiddenFiles(value)

template disableOverwriteWarning*(self: EditorFileDialog): untyped = self.isOverwriteWarningDisabled()
template `disableOverwriteWarning=`*(self: EditorFileDialog; value) = self.setDisableOverwriteWarning(value)

const EditorFileDialog_vmap =
  ConfirmationDialog.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[EditorFileDialog]): Table[string, string] = EditorFileDialog_vmap

proc fileSelected*(self: EditorFileDialog; path: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("file_selected")
  let args = [path]
  self.emitSignal(signalname, args)

proc filesSelected*(self: EditorFileDialog; paths: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("files_selected")
  let args = [paths]
  self.emitSignal(signalname, args)

proc dirSelected*(self: EditorFileDialog; dir: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("dir_selected")
  let args = [dir]
  self.emitSignal(signalname, args)