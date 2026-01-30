{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdmargincontainer; export gdmargincontainer

expandOnClassImported(EditorDock, MarginContainer)

method updateLayout*(self: EditorDock; layout: int32): void {.base.} = (discard)
proc registerVirtual_updateLayout*[T: EditorDock](Self: typedesc[T]) =
  Self.vmethods[newStringName"_update_layout"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorDock](p_instance).updateLayout(p_args[0].decode(int32))

method saveLayoutToConfig*(self: EditorDock; config: gdref ConfigFile; section: String): void {.base.} = (discard)
proc registerVirtual_saveLayoutToConfig*[T: EditorDock](Self: typedesc[T]) =
  Self.vmethods[newStringName"_save_layout_to_config"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorDock](p_instance).saveLayoutToConfig(p_args[0].decode(gdref ConfigFile), p_args[1].decode(String))

method loadLayoutFromConfig*(self: EditorDock; config: gdref ConfigFile; section: String): void {.base.} = (discard)
proc registerVirtual_loadLayoutFromConfig*[T: EditorDock](Self: typedesc[T]) =
  Self.vmethods[newStringName"_load_layout_from_config"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorDock](p_instance).loadLayoutFromConfig(p_args[0].decode(gdref ConfigFile), p_args[1].decode(String))

proc open*(self: EditorDock): void =
  expandMethodBind(className EditorDock, "open", 3218959716)
  methodbind.ptrcall(self, [])

proc makeVisible*(self: EditorDock): void =
  expandMethodBind(className EditorDock, "make_visible", 3218959716)
  methodbind.ptrcall(self, [])

proc close*(self: EditorDock): void =
  expandMethodBind(className EditorDock, "close", 3218959716)
  methodbind.ptrcall(self, [])

proc setTitle*(self: EditorDock; title: String): void =
  expandMethodBind(className EditorDock, "set_title", 83702148)
  methodbind.ptrcall(self, [getPtr title])

proc getTitle*(self: EditorDock): String =
  expandMethodBind(className EditorDock, "get_title", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setLayoutKey*(self: EditorDock; layoutKey: String): void =
  expandMethodBind(className EditorDock, "set_layout_key", 83702148)
  methodbind.ptrcall(self, [getPtr layoutKey])

proc getLayoutKey*(self: EditorDock): String =
  expandMethodBind(className EditorDock, "get_layout_key", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setGlobal*(self: EditorDock; global: bool): void =
  expandMethodBind(className EditorDock, "set_global", 2586408642)
  methodbind.ptrcall(self, [getPtr global])

proc isGlobal*(self: EditorDock): bool =
  expandMethodBind(className EditorDock, "is_global", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTransient*(self: EditorDock; transient: bool): void =
  expandMethodBind(className EditorDock, "set_transient", 2586408642)
  methodbind.ptrcall(self, [getPtr transient])

proc isTransient*(self: EditorDock): bool =
  expandMethodBind(className EditorDock, "is_transient", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setClosable*(self: EditorDock; closable: bool): void =
  expandMethodBind(className EditorDock, "set_closable", 2586408642)
  methodbind.ptrcall(self, [getPtr closable])

proc isClosable*(self: EditorDock): bool =
  expandMethodBind(className EditorDock, "is_closable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setIconName*(self: EditorDock; iconName: StringName): void =
  expandMethodBind(className EditorDock, "set_icon_name", 3304788590)
  methodbind.ptrcall(self, [getPtr iconName])

proc getIconName*(self: EditorDock): StringName =
  expandMethodBind(className EditorDock, "get_icon_name", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc setDockIcon*(self: EditorDock; icon: gdref Texture2D): void =
  expandMethodBind(className EditorDock, "set_dock_icon", 4051416890)
  methodbind.ptrcall(self, [getPtr icon])

proc getDockIcon*(self: EditorDock): gdref Texture2D =
  expandMethodBind(className EditorDock, "get_dock_icon", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setForceShowIcon*(self: EditorDock; force: bool): void =
  expandMethodBind(className EditorDock, "set_force_show_icon", 2586408642)
  methodbind.ptrcall(self, [getPtr force])

proc getForceShowIcon*(self: EditorDock): bool =
  expandMethodBind(className EditorDock, "get_force_show_icon", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTitleColor*(self: EditorDock; color: Color): void =
  expandMethodBind(className EditorDock, "set_title_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getTitleColor*(self: EditorDock): Color =
  expandMethodBind(className EditorDock, "get_title_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setDockShortcut*(self: EditorDock; shortcut: gdref Shortcut): void =
  expandMethodBind(className EditorDock, "set_dock_shortcut", 857163497)
  methodbind.ptrcall(self, [getPtr shortcut])

proc getDockShortcut*(self: EditorDock): gdref Shortcut =
  expandMethodBind(className EditorDock, "get_dock_shortcut", 3415666916)
  var ret: encoded gdref Shortcut
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Shortcut)

proc setDefaultSlot*(self: EditorDock; slot: EditorDock_DockSlot): void =
  expandMethodBind(className EditorDock, "set_default_slot", 4142995464)
  methodbind.ptrcall(self, [getPtr slot])

proc getDefaultSlot*(self: EditorDock): EditorDock_DockSlot =
  expandMethodBind(className EditorDock, "get_default_slot", 3298961740)
  var ret: encoded EditorDock_DockSlot
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(EditorDock_DockSlot)

proc setAvailableLayouts*(self: EditorDock; layouts: set[EditorDock_DockLayout]): void =
  expandMethodBind(className EditorDock, "set_available_layouts", 3440531249)
  methodbind.ptrcall(self, [getPtr layouts])

proc getAvailableLayouts*(self: EditorDock): set[EditorDock_DockLayout] =
  expandMethodBind(className EditorDock, "get_available_layouts", 495015512)
  var ret: encoded set[EditorDock_DockLayout]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(set[EditorDock_DockLayout])

template title*(self: EditorDock): untyped = self.getTitle()
template `title=`*(self: EditorDock; value) = self.setTitle(value)

template layoutKey*(self: EditorDock): untyped = self.getLayoutKey()
template `layoutKey=`*(self: EditorDock; value) = self.setLayoutKey(value)

template global*(self: EditorDock): untyped = self.isGlobal()
template `global=`*(self: EditorDock; value) = self.setGlobal(value)

template transient*(self: EditorDock): untyped = self.isTransient()
template `transient=`*(self: EditorDock; value) = self.setTransient(value)

template closable*(self: EditorDock): untyped = self.isClosable()
template `closable=`*(self: EditorDock; value) = self.setClosable(value)

template iconName*(self: EditorDock): untyped = self.getIconName()
template `iconName=`*(self: EditorDock; value) = self.setIconName(value)

template dockIcon*(self: EditorDock): untyped = self.getDockIcon()
template `dockIcon=`*(self: EditorDock; value) = self.setDockIcon(value)

template forceShowIcon*(self: EditorDock): untyped = self.getForceShowIcon()
template `forceShowIcon=`*(self: EditorDock; value) = self.setForceShowIcon(value)

template titleColor*(self: EditorDock): untyped = self.getTitleColor()
template `titleColor=`*(self: EditorDock; value) = self.setTitleColor(value)

template dockShortcut*(self: EditorDock): untyped = self.getDockShortcut()
template `dockShortcut=`*(self: EditorDock; value) = self.setDockShortcut(value)

template defaultSlot*(self: EditorDock): untyped = self.getDefaultSlot()
template `defaultSlot=`*(self: EditorDock; value) = self.setDefaultSlot(value)

template availableLayouts*(self: EditorDock): untyped = self.getAvailableLayouts()
template `availableLayouts=`*(self: EditorDock; value) = self.setAvailableLayouts(value)
