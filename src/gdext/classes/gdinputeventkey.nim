{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventwithmodifiers; export gdinputeventwithmodifiers

expandOnClassImported(InputEventKey, InputEventWithModifiers)

proc setPressed*(self: InputEventKey; pressed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "set_pressed", 2586408642)
  methodbind.ptrcall(self, [getPtr pressed], void)

proc setKeycode*(self: InputEventKey; keycode: Key): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "set_keycode", 888074362)
  methodbind.ptrcall(self, [getPtr keycode], void)

proc getKeycode*(self: InputEventKey): Key =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "get_keycode", 1585896689)
  methodbind.ptrcall(self, [], Key)

proc setPhysicalKeycode*(self: InputEventKey; physicalKeycode: Key): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "set_physical_keycode", 888074362)
  methodbind.ptrcall(self, [getPtr physicalKeycode], void)

proc getPhysicalKeycode*(self: InputEventKey): Key =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "get_physical_keycode", 1585896689)
  methodbind.ptrcall(self, [], Key)

proc setKeyLabel*(self: InputEventKey; keyLabel: Key): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "set_key_label", 888074362)
  methodbind.ptrcall(self, [getPtr keyLabel], void)

proc getKeyLabel*(self: InputEventKey): Key =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "get_key_label", 1585896689)
  methodbind.ptrcall(self, [], Key)

proc setUnicode*(self: InputEventKey; unicode: char32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "set_unicode", 1286410249)
  methodbind.ptrcall(self, [getPtr unicode], void)

proc getUnicode*(self: InputEventKey): char32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "get_unicode", 3905245786)
  methodbind.ptrcall(self, [], char32)

proc setLocation*(self: InputEventKey; location: KeyLocation): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "set_location", 634453155)
  methodbind.ptrcall(self, [getPtr location], void)

proc getLocation*(self: InputEventKey): KeyLocation =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "get_location", 211810873)
  methodbind.ptrcall(self, [], KeyLocation)

proc setEcho*(self: InputEventKey; echo: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "set_echo", 2586408642)
  methodbind.ptrcall(self, [getPtr echo], void)

proc getKeycodeWithModifiers*(self: InputEventKey): Key =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "get_keycode_with_modifiers", 1585896689)
  methodbind.ptrcall(self, [], Key)

proc getPhysicalKeycodeWithModifiers*(self: InputEventKey): Key =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "get_physical_keycode_with_modifiers", 1585896689)
  methodbind.ptrcall(self, [], Key)

proc getKeyLabelWithModifiers*(self: InputEventKey): Key =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "get_key_label_with_modifiers", 1585896689)
  methodbind.ptrcall(self, [], Key)

proc asTextKeycode*(self: InputEventKey): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "as_text_keycode", 201670096)
  methodbind.ptrcall(self, [], String)

proc asTextPhysicalKeycode*(self: InputEventKey): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "as_text_physical_keycode", 201670096)
  methodbind.ptrcall(self, [], String)

proc asTextKeyLabel*(self: InputEventKey): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "as_text_key_label", 201670096)
  methodbind.ptrcall(self, [], String)

proc asTextLocation*(self: InputEventKey): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className InputEventKey, "as_text_location", 201670096)
  methodbind.ptrcall(self, [], String)

template pressed*(self: InputEventKey): untyped = self.isPressed()
template `pressed=`*(self: InputEventKey; value) = self.setPressed(value)

template keycode*(self: InputEventKey): untyped = self.getKeycode()
template `keycode=`*(self: InputEventKey; value) = self.setKeycode(value)

template physicalKeycode*(self: InputEventKey): untyped = self.getPhysicalKeycode()
template `physicalKeycode=`*(self: InputEventKey; value) = self.setPhysicalKeycode(value)

template keyLabel*(self: InputEventKey): untyped = self.getKeyLabel()
template `keyLabel=`*(self: InputEventKey; value) = self.setKeyLabel(value)

template unicode*(self: InputEventKey): untyped = self.getUnicode()
template `unicode=`*(self: InputEventKey; value) = self.setUnicode(value)

template location*(self: InputEventKey): untyped = self.getLocation()
template `location=`*(self: InputEventKey; value) = self.setLocation(value)

template echo*(self: InputEventKey): untyped = self.isEcho()
template `echo=`*(self: InputEventKey; value) = self.setEcho(value)
