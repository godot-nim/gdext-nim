{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdconfirmationdialog; export gdconfirmationdialog

expandOnClassImported(FileDialog, ConfirmationDialog)

proc clearFilters*(self: FileDialog): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "clear_filters", 3218959716)
  methodbind.ptrcall(self, [], void)

proc addFilter*(self: FileDialog; filter: String; description: String = newGdString()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "add_filter", 3388804757)
  methodbind.ptrcall(self, [getPtr filter, getPtr description], void)

proc setFilters*(self: FileDialog; filters: PackedStringArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_filters", 4015028928)
  methodbind.ptrcall(self, [getPtr filters], void)

proc getFilters*(self: FileDialog): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_filters", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc clearFilenameFilter*(self: FileDialog): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "clear_filename_filter", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setFilenameFilter*(self: FileDialog; filter: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_filename_filter", 83702148)
  methodbind.ptrcall(self, [getPtr filter], void)

proc getFilenameFilter*(self: FileDialog): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_filename_filter", 201670096)
  methodbind.ptrcall(self, [], String)

proc getOptionName*(self: FileDialog; option: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_option_name", 844755477)
  methodbind.ptrcall(self, [getPtr option], String)

proc getOptionValues*(self: FileDialog; option: int32): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_option_values", 647634434)
  methodbind.ptrcall(self, [getPtr option], PackedStringArray)

proc getOptionDefault*(self: FileDialog; option: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_option_default", 923996154)
  methodbind.ptrcall(self, [getPtr option], int32)

proc setOptionName*(self: FileDialog; option: int32; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_option_name", 501894301)
  methodbind.ptrcall(self, [getPtr option, getPtr name], void)

proc setOptionValues*(self: FileDialog; option: int32; values: PackedStringArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_option_values", 3353661094)
  methodbind.ptrcall(self, [getPtr option, getPtr values], void)

proc setOptionDefault*(self: FileDialog; option: int32; defaultValueIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_option_default", 3937882851)
  methodbind.ptrcall(self, [getPtr option, getPtr defaultValueIndex], void)

proc setOptionCount*(self: FileDialog; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_option_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getOptionCount*(self: FileDialog): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_option_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc addOption*(self: FileDialog; name: String; values: PackedStringArray; defaultValueIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "add_option", 149592325)
  methodbind.ptrcall(self, [getPtr name, getPtr values, getPtr defaultValueIndex], void)

proc getSelectedOptions*(self: FileDialog): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_selected_options", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc getCurrentDir*(self: FileDialog): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_current_dir", 201670096)
  methodbind.ptrcall(self, [], String)

proc getCurrentFile*(self: FileDialog): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_current_file", 201670096)
  methodbind.ptrcall(self, [], String)

proc getCurrentPath*(self: FileDialog): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_current_path", 201670096)
  methodbind.ptrcall(self, [], String)

proc setCurrentDir*(self: FileDialog; dir: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_current_dir", 83702148)
  methodbind.ptrcall(self, [getPtr dir], void)

proc setCurrentFile*(self: FileDialog; file: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_current_file", 83702148)
  methodbind.ptrcall(self, [getPtr file], void)

proc setCurrentPath*(self: FileDialog; path: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_current_path", 83702148)
  methodbind.ptrcall(self, [getPtr path], void)

proc setModeOverridesTitle*(self: FileDialog; override: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_mode_overrides_title", 2586408642)
  methodbind.ptrcall(self, [getPtr override], void)

proc isModeOverridingTitle*(self: FileDialog): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "is_mode_overriding_title", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFileMode*(self: FileDialog; mode: FileDialog_FileMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_file_mode", 3654936397)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getFileMode*(self: FileDialog): FileDialog_FileMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_file_mode", 4074825319)
  methodbind.ptrcall(self, [], FileDialog_FileMode)

proc setDisplayMode*(self: FileDialog; mode: FileDialog_DisplayMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_display_mode", 2692197101)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getDisplayMode*(self: FileDialog): FileDialog_DisplayMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_display_mode", 1092104624)
  methodbind.ptrcall(self, [], FileDialog_DisplayMode)

proc getVbox*(self: FileDialog): VBoxContainer =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_vbox", 915758477)
  methodbind.ptrcall(self, [], VBoxContainer)

proc getLineEdit*(self: FileDialog): LineEdit =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_line_edit", 4071694264)
  methodbind.ptrcall(self, [], LineEdit)

proc setAccess*(self: FileDialog; access: FileDialog_Access): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_access", 4104413466)
  methodbind.ptrcall(self, [getPtr access], void)

proc getAccess*(self: FileDialog): FileDialog_Access =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_access", 3344081076)
  methodbind.ptrcall(self, [], FileDialog_Access)

proc setRootSubfolder*(self: FileDialog; dir: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_root_subfolder", 83702148)
  methodbind.ptrcall(self, [getPtr dir], void)

proc getRootSubfolder*(self: FileDialog): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_root_subfolder", 201670096)
  methodbind.ptrcall(self, [], String)

proc setShowHiddenFiles*(self: FileDialog; show: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_show_hidden_files", 2586408642)
  methodbind.ptrcall(self, [getPtr show], void)

proc isShowingHiddenFiles*(self: FileDialog): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "is_showing_hidden_files", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUseNativeDialog*(self: FileDialog; native: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_use_native_dialog", 2586408642)
  methodbind.ptrcall(self, [getPtr native], void)

proc getUseNativeDialog*(self: FileDialog): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "get_use_native_dialog", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCustomizationFlagEnabled*(self: FileDialog; flag: FileDialog_Customization; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "set_customization_flag_enabled", 3849177100)
  methodbind.ptrcall(self, [getPtr flag, getPtr enabled], void)

proc isCustomizationFlagEnabled*(self: FileDialog; flag: FileDialog_Customization): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "is_customization_flag_enabled", 3722277863)
  methodbind.ptrcall(self, [getPtr flag], bool)

proc deselectAll*(self: FileDialog): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "deselect_all", 3218959716)
  methodbind.ptrcall(self, [], void)

proc invalidate*(self: FileDialog): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FileDialog, "invalidate", 3218959716)
  methodbind.ptrcall(self, [], void)

template modeOverridesTitle*(self: FileDialog): untyped = self.isModeOverridingTitle()
template `modeOverridesTitle=`*(self: FileDialog; value) = self.setModeOverridesTitle(value)

template fileMode*(self: FileDialog): untyped = self.getFileMode()
template `fileMode=`*(self: FileDialog; value) = self.setFileMode(value)

template displayMode*(self: FileDialog): untyped = self.getDisplayMode()
template `displayMode=`*(self: FileDialog; value) = self.setDisplayMode(value)

template access*(self: FileDialog): untyped = self.getAccess()
template `access=`*(self: FileDialog; value) = self.setAccess(value)

template rootSubfolder*(self: FileDialog): untyped = self.getRootSubfolder()
template `rootSubfolder=`*(self: FileDialog; value) = self.setRootSubfolder(value)

template filters*(self: FileDialog): untyped = self.getFilters()
template `filters=`*(self: FileDialog; value) = self.setFilters(value)

template filenameFilter*(self: FileDialog): untyped = self.getFilenameFilter()
template `filenameFilter=`*(self: FileDialog; value) = self.setFilenameFilter(value)

template showHiddenFiles*(self: FileDialog): untyped = self.isShowingHiddenFiles()
template `showHiddenFiles=`*(self: FileDialog; value) = self.setShowHiddenFiles(value)

template useNativeDialog*(self: FileDialog): untyped = self.getUseNativeDialog()
template `useNativeDialog=`*(self: FileDialog; value) = self.setUseNativeDialog(value)

template optionCount*(self: FileDialog): untyped = self.getOptionCount()
template `optionCount=`*(self: FileDialog; value) = self.setOptionCount(value)

template hiddenFilesToggleEnabled*(self: FileDialog): untyped = self.isCustomizationFlagEnabled(FileDialog_Customization(0))
template `hiddenFilesToggleEnabled=`*(self: FileDialog; value) = self.setCustomizationFlagEnabled(FileDialog_Customization(0), value)

template fileFilterToggleEnabled*(self: FileDialog): untyped = self.isCustomizationFlagEnabled(FileDialog_Customization(2))
template `fileFilterToggleEnabled=`*(self: FileDialog; value) = self.setCustomizationFlagEnabled(FileDialog_Customization(2), value)

template fileSortOptionsEnabled*(self: FileDialog): untyped = self.isCustomizationFlagEnabled(FileDialog_Customization(3))
template `fileSortOptionsEnabled=`*(self: FileDialog; value) = self.setCustomizationFlagEnabled(FileDialog_Customization(3), value)

template folderCreationEnabled*(self: FileDialog): untyped = self.isCustomizationFlagEnabled(FileDialog_Customization(1))
template `folderCreationEnabled=`*(self: FileDialog; value) = self.setCustomizationFlagEnabled(FileDialog_Customization(1), value)

template favoritesEnabled*(self: FileDialog): untyped = self.isCustomizationFlagEnabled(FileDialog_Customization(4))
template `favoritesEnabled=`*(self: FileDialog; value) = self.setCustomizationFlagEnabled(FileDialog_Customization(4), value)

template recentListEnabled*(self: FileDialog): untyped = self.isCustomizationFlagEnabled(FileDialog_Customization(5))
template `recentListEnabled=`*(self: FileDialog; value) = self.setCustomizationFlagEnabled(FileDialog_Customization(5), value)

template layoutToggleEnabled*(self: FileDialog): untyped = self.isCustomizationFlagEnabled(FileDialog_Customization(6))
template `layoutToggleEnabled=`*(self: FileDialog; value) = self.setCustomizationFlagEnabled(FileDialog_Customization(6), value)

template currentDir*(self: FileDialog): untyped = self.getCurrentDir()
template `currentDir=`*(self: FileDialog; value) = self.setCurrentDir(value)

template currentFile*(self: FileDialog): untyped = self.getCurrentFile()
template `currentFile=`*(self: FileDialog; value) = self.setCurrentFile(value)

template currentPath*(self: FileDialog): untyped = self.getCurrentPath()
template `currentPath=`*(self: FileDialog; value) = self.setCurrentPath(value)
