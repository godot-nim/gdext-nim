{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdinputeventwithmodifiers; export gdinputeventwithmodifiers

proc setPressed*(self: InputEventKey; pressed: bool): void =
  expandMethodBind(className InputEventKey, "set_pressed", 2586408642)
  var `?param` = [getPtr pressed]
  methodbind.ptrcall(self, addr `?param`[0])

proc setKeycode*(self: InputEventKey; keycode: Key): void =
  expandMethodBind(className InputEventKey, "set_keycode", 888074362)
  var `?param` = [getPtr keycode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getKeycode*(self: InputEventKey): Key =
  expandMethodBind(className InputEventKey, "get_keycode", 1585896689)
  var ret: encoded Key
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Key)

proc setPhysicalKeycode*(self: InputEventKey; physicalKeycode: Key): void =
  expandMethodBind(className InputEventKey, "set_physical_keycode", 888074362)
  var `?param` = [getPtr physicalKeycode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicalKeycode*(self: InputEventKey): Key =
  expandMethodBind(className InputEventKey, "get_physical_keycode", 1585896689)
  var ret: encoded Key
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Key)

proc setKeyLabel*(self: InputEventKey; keyLabel: Key): void =
  expandMethodBind(className InputEventKey, "set_key_label", 888074362)
  var `?param` = [getPtr keyLabel]
  methodbind.ptrcall(self, addr `?param`[0])

proc getKeyLabel*(self: InputEventKey): Key =
  expandMethodBind(className InputEventKey, "get_key_label", 1585896689)
  var ret: encoded Key
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Key)

proc setUnicode*(self: InputEventKey; unicode: Int): void =
  expandMethodBind(className InputEventKey, "set_unicode", 1286410249)
  var `?param` = [getPtr unicode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUnicode*(self: InputEventKey): Int =
  expandMethodBind(className InputEventKey, "get_unicode", 3905245786)
  var ret: encoded Int
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Int)

proc setLocation*(self: InputEventKey; location: KeyLocation): void =
  expandMethodBind(className InputEventKey, "set_location", 634453155)
  var `?param` = [getPtr location]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLocation*(self: InputEventKey): KeyLocation =
  expandMethodBind(className InputEventKey, "get_location", 211810873)
  var ret: encoded KeyLocation
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(KeyLocation)

proc setEcho*(self: InputEventKey; echo: bool): void =
  expandMethodBind(className InputEventKey, "set_echo", 2586408642)
  var `?param` = [getPtr echo]
  methodbind.ptrcall(self, addr `?param`[0])

proc getKeycodeWithModifiers*(self: InputEventKey): Key =
  expandMethodBind(className InputEventKey, "get_keycode_with_modifiers", 1585896689)
  var ret: encoded Key
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Key)

proc getPhysicalKeycodeWithModifiers*(self: InputEventKey): Key =
  expandMethodBind(className InputEventKey, "get_physical_keycode_with_modifiers", 1585896689)
  var ret: encoded Key
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Key)

proc getKeyLabelWithModifiers*(self: InputEventKey): Key =
  expandMethodBind(className InputEventKey, "get_key_label_with_modifiers", 1585896689)
  var ret: encoded Key
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Key)

proc asTextKeycode*(self: InputEventKey): String =
  expandMethodBind(className InputEventKey, "as_text_keycode", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc asTextPhysicalKeycode*(self: InputEventKey): String =
  expandMethodBind(className InputEventKey, "as_text_physical_keycode", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc asTextKeyLabel*(self: InputEventKey): String =
  expandMethodBind(className InputEventKey, "as_text_key_label", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc asTextLocation*(self: InputEventKey): String =
  expandMethodBind(className InputEventKey, "as_text_location", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

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

const InputEventKey_vmap =
  InputEventWithModifiers.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[InputEventKey]): Table[string, string] = InputEventKey_vmap