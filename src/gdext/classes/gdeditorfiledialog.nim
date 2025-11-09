{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdconfirmationdialog; export gdconfirmationdialog

expandOnClassImported(EditorFileDialog, ConfirmationDialog)

proc clearFilters*(self: EditorFileDialog): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "clear_filters", 3218959716)
  methodbind.ptrcall(self, [], void)

proc addFilter*(self: EditorFileDialog; filter: String; description: String = newGdString()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "add_filter", 3388804757)
  methodbind.ptrcall(self, [getPtr filter, getPtr description], void)

proc setFilters*(self: EditorFileDialog; filters: PackedStringArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "set_filters", 4015028928)
  methodbind.ptrcall(self, [getPtr filters], void)

proc getFilters*(self: EditorFileDialog): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "get_filters", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getOptionName*(self: EditorFileDialog; option: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "get_option_name", 844755477)
  methodbind.ptrcall(self, [getPtr option], String)

proc getOptionValues*(self: EditorFileDialog; option: int32): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "get_option_values", 647634434)
  methodbind.ptrcall(self, [getPtr option], PackedStringArray)

proc getOptionDefault*(self: EditorFileDialog; option: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "get_option_default", 923996154)
  methodbind.ptrcall(self, [getPtr option], int32)

proc setOptionName*(self: EditorFileDialog; option: int32; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "set_option_name", 501894301)
  methodbind.ptrcall(self, [getPtr option, getPtr name], void)

proc setOptionValues*(self: EditorFileDialog; option: int32; values: PackedStringArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "set_option_values", 3353661094)
  methodbind.ptrcall(self, [getPtr option, getPtr values], void)

proc setOptionDefault*(self: EditorFileDialog; option: int32; defaultValueIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "set_option_default", 3937882851)
  methodbind.ptrcall(self, [getPtr option, getPtr defaultValueIndex], void)

proc setOptionCount*(self: EditorFileDialog; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "set_option_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getOptionCount*(self: EditorFileDialog): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "get_option_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc addOption*(self: EditorFileDialog; name: String; values: PackedStringArray; defaultValueIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "add_option", 149592325)
  methodbind.ptrcall(self, [getPtr name, getPtr values, getPtr defaultValueIndex], void)

proc getSelectedOptions*(self: EditorFileDialog): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "get_selected_options", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc clearFilenameFilter*(self: EditorFileDialog): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "clear_filename_filter", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setFilenameFilter*(self: EditorFileDialog; filter: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "set_filename_filter", 83702148)
  methodbind.ptrcall(self, [getPtr filter], void)

proc getFilenameFilter*(self: EditorFileDialog): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "get_filename_filter", 201670096)
  methodbind.ptrcall(self, [], String)

proc getCurrentDir*(self: EditorFileDialog): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "get_current_dir", 201670096)
  methodbind.ptrcall(self, [], String)

proc getCurrentFile*(self: EditorFileDialog): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "get_current_file", 201670096)
  methodbind.ptrcall(self, [], String)

proc getCurrentPath*(self: EditorFileDialog): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "get_current_path", 201670096)
  methodbind.ptrcall(self, [], String)

proc setCurrentDir*(self: EditorFileDialog; dir: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "set_current_dir", 83702148)
  methodbind.ptrcall(self, [getPtr dir], void)

proc setCurrentFile*(self: EditorFileDialog; file: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "set_current_file", 83702148)
  methodbind.ptrcall(self, [getPtr file], void)

proc setCurrentPath*(self: EditorFileDialog; path: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "set_current_path", 83702148)
  methodbind.ptrcall(self, [getPtr path], void)

proc setFileMode*(self: EditorFileDialog; mode: EditorFileDialog_FileMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "set_file_mode", 274150415)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getFileMode*(self: EditorFileDialog): EditorFileDialog_FileMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "get_file_mode", 2681044145)
  methodbind.ptrcall(self, [], EditorFileDialog_FileMode)

proc getVbox*(self: EditorFileDialog): VBoxContainer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "get_vbox", 915758477)
  methodbind.ptrcall(self, [], VBoxContainer)

proc getLineEdit*(self: EditorFileDialog): LineEdit =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "get_line_edit", 4071694264)
  methodbind.ptrcall(self, [], LineEdit)

proc setAccess*(self: EditorFileDialog; access: EditorFileDialog_Access): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "set_access", 3882893764)
  methodbind.ptrcall(self, [getPtr access], void)

proc getAccess*(self: EditorFileDialog): EditorFileDialog_Access =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "get_access", 778734016)
  methodbind.ptrcall(self, [], EditorFileDialog_Access)

proc setShowHiddenFiles*(self: EditorFileDialog; show: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "set_show_hidden_files", 2586408642)
  methodbind.ptrcall(self, [getPtr show], void)

proc isShowingHiddenFiles*(self: EditorFileDialog): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "is_showing_hidden_files", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDisplayMode*(self: EditorFileDialog; mode: EditorFileDialog_DisplayMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "set_display_mode", 3049004050)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getDisplayMode*(self: EditorFileDialog): EditorFileDialog_DisplayMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "get_display_mode", 3517174669)
  methodbind.ptrcall(self, [], EditorFileDialog_DisplayMode)

proc setDisableOverwriteWarning*(self: EditorFileDialog; disable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "set_disable_overwrite_warning", 2586408642)
  methodbind.ptrcall(self, [getPtr disable], void)

proc isOverwriteWarningDisabled*(self: EditorFileDialog): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "is_overwrite_warning_disabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc addSideMenu*(self: EditorFileDialog; menu: Control; title: String = newGdString()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "add_side_menu", 402368861)
  methodbind.ptrcall(self, [getPtr menu, getPtr title], void)

proc popupFileDialog*(self: EditorFileDialog): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "popup_file_dialog", 3218959716)
  methodbind.ptrcall(self, [], void)

proc invalidate*(self: EditorFileDialog): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorFileDialog, "invalidate", 3218959716)
  methodbind.ptrcall(self, [], void)

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
