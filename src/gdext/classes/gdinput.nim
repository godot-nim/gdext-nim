{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc isAnythingPressed*(self: Input): bool =
  expandMethodBind(className Input, "is_anything_pressed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isKeyPressed*(self: Input; keycode: Key): bool =
  expandMethodBind(className Input, "is_key_pressed", 1938909964)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr keycode], addr ret)
  (addr ret).decode_result(bool)

proc isPhysicalKeyPressed*(self: Input; keycode: Key): bool =
  expandMethodBind(className Input, "is_physical_key_pressed", 1938909964)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr keycode], addr ret)
  (addr ret).decode_result(bool)

proc isKeyLabelPressed*(self: Input; keycode: Key): bool =
  expandMethodBind(className Input, "is_key_label_pressed", 1938909964)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr keycode], addr ret)
  (addr ret).decode_result(bool)

proc isMouseButtonPressed*(self: Input; button: MouseButton): bool =
  expandMethodBind(className Input, "is_mouse_button_pressed", 1821097125)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr button], addr ret)
  (addr ret).decode_result(bool)

proc isJoyButtonPressed*(self: Input; device: int32; button: JoyButton): bool =
  expandMethodBind(className Input, "is_joy_button_pressed", 787208542)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr device, getPtr button], addr ret)
  (addr ret).decode_result(bool)

proc isActionPressed*(self: Input; action: StringName; exactMatch: bool = false): bool =
  expandMethodBind(className Input, "is_action_pressed", 1558498928)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr action, getPtr exactMatch], addr ret)
  (addr ret).decode_result(bool)

proc isActionJustPressed*(self: Input; action: StringName; exactMatch: bool = false): bool =
  expandMethodBind(className Input, "is_action_just_pressed", 1558498928)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr action, getPtr exactMatch], addr ret)
  (addr ret).decode_result(bool)

proc isActionJustReleased*(self: Input; action: StringName; exactMatch: bool = false): bool =
  expandMethodBind(className Input, "is_action_just_released", 1558498928)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr action, getPtr exactMatch], addr ret)
  (addr ret).decode_result(bool)

proc getActionStrength*(self: Input; action: StringName; exactMatch: bool = false): Float =
  expandMethodBind(className Input, "get_action_strength", 801543509)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr action, getPtr exactMatch], addr ret)
  (addr ret).decode_result(Float)

proc getActionRawStrength*(self: Input; action: StringName; exactMatch: bool = false): Float =
  expandMethodBind(className Input, "get_action_raw_strength", 801543509)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr action, getPtr exactMatch], addr ret)
  (addr ret).decode_result(Float)

proc getAxis*(self: Input; negativeAction: StringName; positiveAction: StringName): Float =
  expandMethodBind(className Input, "get_axis", 1958752504)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr negativeAction, getPtr positiveAction], addr ret)
  (addr ret).decode_result(Float)

proc getVector*(self: Input; negativeX: StringName; positiveX: StringName; negativeY: StringName; positiveY: StringName; deadzone: Float = -1.0): Vector2 =
  expandMethodBind(className Input, "get_vector", 2479607902)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr negativeX, getPtr positiveX, getPtr negativeY, getPtr positiveY, getPtr deadzone], addr ret)
  (addr ret).decode_result(Vector2)

proc addJoyMapping*(self: Input; mapping: String; updateExisting: bool = false): void =
  expandMethodBind(className Input, "add_joy_mapping", 1168363258)
  methodbind.ptrcall(self, [getPtr mapping, getPtr updateExisting])

proc removeJoyMapping*(self: Input; guid: String): void =
  expandMethodBind(className Input, "remove_joy_mapping", 83702148)
  methodbind.ptrcall(self, [getPtr guid])

proc isJoyKnown*(self: Input; device: int32): bool =
  expandMethodBind(className Input, "is_joy_known", 3067735520)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr device], addr ret)
  (addr ret).decode_result(bool)

proc getJoyAxis*(self: Input; device: int32; axis: JoyAxis): Float =
  expandMethodBind(className Input, "get_joy_axis", 4063175957)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr device, getPtr axis], addr ret)
  (addr ret).decode_result(Float)

proc getJoyName*(self: Input; device: int32): String =
  expandMethodBind(className Input, "get_joy_name", 990163283)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr device], addr ret)
  (addr ret).decode_result(String)

proc getJoyGuid*(self: Input; device: int32): String =
  expandMethodBind(className Input, "get_joy_guid", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr device], addr ret)
  (addr ret).decode_result(String)

proc getJoyInfo*(self: Input; device: int32): Dictionary =
  expandMethodBind(className Input, "get_joy_info", 3485342025)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr device], addr ret)
  (addr ret).decode_result(Dictionary)

proc shouldIgnoreDevice*(self: Input; vendorId: int32; productId: int32): bool =
  expandMethodBind(className Input, "should_ignore_device", 2522259332)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr vendorId, getPtr productId], addr ret)
  (addr ret).decode_result(bool)

proc getConnectedJoypads*(self: Input): TypedArray[Int] =
  expandMethodBind(className Input, "get_connected_joypads", 2915620761)
  var ret: encoded TypedArray[Int]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[Int])

proc getJoyVibrationStrength*(self: Input; device: int32): Vector2 =
  expandMethodBind(className Input, "get_joy_vibration_strength", 3114997196)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr device], addr ret)
  (addr ret).decode_result(Vector2)

proc getJoyVibrationDuration*(self: Input; device: int32): Float =
  expandMethodBind(className Input, "get_joy_vibration_duration", 4025615559)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr device], addr ret)
  (addr ret).decode_result(Float)

proc startJoyVibration*(self: Input; device: int32; weakMagnitude: Float; strongMagnitude: Float; duration: Float = 0): void =
  expandMethodBind(className Input, "start_joy_vibration", 2576575033)
  methodbind.ptrcall(self, [getPtr device, getPtr weakMagnitude, getPtr strongMagnitude, getPtr duration])

proc stopJoyVibration*(self: Input; device: int32): void =
  expandMethodBind(className Input, "stop_joy_vibration", 1286410249)
  methodbind.ptrcall(self, [getPtr device])

proc vibrateHandheld*(self: Input; durationMs: int32 = 500; amplitude: Float = -1.0): void =
  expandMethodBind(className Input, "vibrate_handheld", 544894297)
  methodbind.ptrcall(self, [getPtr durationMs, getPtr amplitude])

proc getGravity*(self: Input): Vector3 =
  expandMethodBind(className Input, "get_gravity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc getAccelerometer*(self: Input): Vector3 =
  expandMethodBind(className Input, "get_accelerometer", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc getMagnetometer*(self: Input): Vector3 =
  expandMethodBind(className Input, "get_magnetometer", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc getGyroscope*(self: Input): Vector3 =
  expandMethodBind(className Input, "get_gyroscope", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setGravity*(self: Input; value: Vector3): void =
  expandMethodBind(className Input, "set_gravity", 3460891852)
  methodbind.ptrcall(self, [getPtr value])

proc setAccelerometer*(self: Input; value: Vector3): void =
  expandMethodBind(className Input, "set_accelerometer", 3460891852)
  methodbind.ptrcall(self, [getPtr value])

proc setMagnetometer*(self: Input; value: Vector3): void =
  expandMethodBind(className Input, "set_magnetometer", 3460891852)
  methodbind.ptrcall(self, [getPtr value])

proc setGyroscope*(self: Input; value: Vector3): void =
  expandMethodBind(className Input, "set_gyroscope", 3460891852)
  methodbind.ptrcall(self, [getPtr value])

proc getLastMouseVelocity*(self: Input): Vector2 =
  expandMethodBind(className Input, "get_last_mouse_velocity", 1497962370)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getLastMouseScreenVelocity*(self: Input): Vector2 =
  expandMethodBind(className Input, "get_last_mouse_screen_velocity", 1497962370)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getMouseButtonMask*(self: Input): set[MouseButtonMask] =
  expandMethodBind(className Input, "get_mouse_button_mask", 2512161324)
  var ret: encoded set[MouseButtonMask]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(set[MouseButtonMask])

proc setMouseMode*(self: Input; mode: Input_MouseMode): void =
  expandMethodBind(className Input, "set_mouse_mode", 2228490894)
  methodbind.ptrcall(self, [getPtr mode])

proc getMouseMode*(self: Input): Input_MouseMode =
  expandMethodBind(className Input, "get_mouse_mode", 965286182)
  var ret: encoded Input_MouseMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Input_MouseMode)

proc warpMouse*(self: Input; position: Vector2): void =
  expandMethodBind(className Input, "warp_mouse", 743155724)
  methodbind.ptrcall(self, [getPtr position])

proc actionPress*(self: Input; action: StringName; strength: Float = 1.0): void =
  expandMethodBind(className Input, "action_press", 1713091165)
  methodbind.ptrcall(self, [getPtr action, getPtr strength])

proc actionRelease*(self: Input; action: StringName): void =
  expandMethodBind(className Input, "action_release", 3304788590)
  methodbind.ptrcall(self, [getPtr action])

proc setDefaultCursorShape*(self: Input; shape: Input_CursorShape = cursorArrow): void =
  expandMethodBind(className Input, "set_default_cursor_shape", 2124816902)
  methodbind.ptrcall(self, [getPtr shape])

proc getCurrentCursorShape*(self: Input): Input_CursorShape =
  expandMethodBind(className Input, "get_current_cursor_shape", 3455658929)
  var ret: encoded Input_CursorShape
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Input_CursorShape)

proc setCustomMouseCursor*(self: Input; image: gdref Resource; shape: Input_CursorShape = cursorArrow; hotspot: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className Input, "set_custom_mouse_cursor", 703945977)
  methodbind.ptrcall(self, [getPtr image, getPtr shape, getPtr hotspot])

proc parseInputEvent*(self: Input; event: gdref InputEvent): void =
  expandMethodBind(className Input, "parse_input_event", 3754044979)
  methodbind.ptrcall(self, [getPtr event])

proc setUseAccumulatedInput*(self: Input; enable: bool): void =
  expandMethodBind(className Input, "set_use_accumulated_input", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isUsingAccumulatedInput*(self: Input): bool =
  expandMethodBind(className Input, "is_using_accumulated_input", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc flushBufferedEvents*(self: Input): void =
  expandMethodBind(className Input, "flush_buffered_events", 3218959716)
  methodbind.ptrcall(self, [])

proc setEmulateMouseFromTouch*(self: Input; enable: bool): void =
  expandMethodBind(className Input, "set_emulate_mouse_from_touch", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isEmulatingMouseFromTouch*(self: Input): bool =
  expandMethodBind(className Input, "is_emulating_mouse_from_touch", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setEmulateTouchFromMouse*(self: Input; enable: bool): void =
  expandMethodBind(className Input, "set_emulate_touch_from_mouse", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isEmulatingTouchFromMouse*(self: Input): bool =
  expandMethodBind(className Input, "is_emulating_touch_from_mouse", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template mouseMode*(self: Input): untyped = self.getMouseMode()
template `mouseMode=`*(self: Input; value) = self.setMouseMode(value)

template useAccumulatedInput*(self: Input): untyped = self.isUsingAccumulatedInput()
template `useAccumulatedInput=`*(self: Input; value) = self.setUseAccumulatedInput(value)

template emulateMouseFromTouch*(self: Input): untyped = self.isEmulatingMouseFromTouch()
template `emulateMouseFromTouch=`*(self: Input; value) = self.setEmulateMouseFromTouch(value)

template emulateTouchFromMouse*(self: Input): untyped = self.isEmulatingTouchFromMouse()
template `emulateTouchFromMouse=`*(self: Input; value) = self.setEmulateTouchFromMouse(value)

const Input_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Input]): Table[string, string] = Input_vmap

proc joyConnectionChanged*(self: Input; device: Variant; connected: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("joy_connection_changed")
  let args = [device, connected]
  self.emitSignal(signalname, args)