{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(Input, Object)

proc isAnythingPressed*(self: Input): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "is_anything_pressed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isKeyPressed*(self: Input; keycode: Key): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "is_key_pressed", 1938909964)
  methodbind.ptrcall(self, [getPtr keycode], bool)

proc isPhysicalKeyPressed*(self: Input; keycode: Key): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "is_physical_key_pressed", 1938909964)
  methodbind.ptrcall(self, [getPtr keycode], bool)

proc isKeyLabelPressed*(self: Input; keycode: Key): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "is_key_label_pressed", 1938909964)
  methodbind.ptrcall(self, [getPtr keycode], bool)

proc isMouseButtonPressed*(self: Input; button: MouseButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "is_mouse_button_pressed", 1821097125)
  methodbind.ptrcall(self, [getPtr button], bool)

proc isJoyButtonPressed*(self: Input; device: int32; button: JoyButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "is_joy_button_pressed", 787208542)
  methodbind.ptrcall(self, [getPtr device, getPtr button], bool)

proc isActionPressed*(self: Input; action: StringName; exactMatch: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "is_action_pressed", 1558498928)
  methodbind.ptrcall(self, [getPtr action, getPtr exactMatch], bool)

proc isActionJustPressed*(self: Input; action: StringName; exactMatch: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "is_action_just_pressed", 1558498928)
  methodbind.ptrcall(self, [getPtr action, getPtr exactMatch], bool)

proc isActionJustReleased*(self: Input; action: StringName; exactMatch: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "is_action_just_released", 1558498928)
  methodbind.ptrcall(self, [getPtr action, getPtr exactMatch], bool)

proc isActionJustPressedByEvent*(self: Input; action: StringName; event: gdref InputEvent; exactMatch: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "is_action_just_pressed_by_event", 551972873)
  methodbind.ptrcall(self, [getPtr action, getPtr event, getPtr exactMatch], bool)

proc isActionJustReleasedByEvent*(self: Input; action: StringName; event: gdref InputEvent; exactMatch: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "is_action_just_released_by_event", 551972873)
  methodbind.ptrcall(self, [getPtr action, getPtr event, getPtr exactMatch], bool)

proc getActionStrength*(self: Input; action: StringName; exactMatch: bool = false): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_action_strength", 801543509)
  methodbind.ptrcall(self, [getPtr action, getPtr exactMatch], Float)

proc getActionRawStrength*(self: Input; action: StringName; exactMatch: bool = false): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_action_raw_strength", 801543509)
  methodbind.ptrcall(self, [getPtr action, getPtr exactMatch], Float)

proc getAxis*(self: Input; negativeAction: StringName; positiveAction: StringName): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_axis", 1958752504)
  methodbind.ptrcall(self, [getPtr negativeAction, getPtr positiveAction], Float)

proc getVector*(self: Input; negativeX: StringName; positiveX: StringName; negativeY: StringName; positiveY: StringName; deadzone: Float = -1.0): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_vector", 2479607902)
  methodbind.ptrcall(self, [getPtr negativeX, getPtr positiveX, getPtr negativeY, getPtr positiveY, getPtr deadzone], Vector2)

proc addJoyMapping*(self: Input; mapping: String; updateExisting: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "add_joy_mapping", 1168363258)
  methodbind.ptrcall(self, [getPtr mapping, getPtr updateExisting], void)

proc removeJoyMapping*(self: Input; guid: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "remove_joy_mapping", 83702148)
  methodbind.ptrcall(self, [getPtr guid], void)

proc isJoyKnown*(self: Input; device: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "is_joy_known", 3067735520)
  methodbind.ptrcall(self, [getPtr device], bool)

proc getJoyAxis*(self: Input; device: int32; axis: JoyAxis): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_joy_axis", 4063175957)
  methodbind.ptrcall(self, [getPtr device, getPtr axis], Float)

proc getJoyName*(self: Input; device: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_joy_name", 990163283)
  methodbind.ptrcall(self, [getPtr device], String)

proc getJoyGuid*(self: Input; device: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_joy_guid", 844755477)
  methodbind.ptrcall(self, [getPtr device], String)

proc getJoyInfo*(self: Input; device: int32): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_joy_info", 3485342025)
  methodbind.ptrcall(self, [getPtr device], Dictionary)

proc shouldIgnoreDevice*(self: Input; vendorId: int32; productId: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "should_ignore_device", 2522259332)
  methodbind.ptrcall(self, [getPtr vendorId, getPtr productId], bool)

proc getConnectedJoypads*(self: Input): TypedArray[Int] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_connected_joypads", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[Int])

proc getJoyVibrationStrength*(self: Input; device: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_joy_vibration_strength", 3114997196)
  methodbind.ptrcall(self, [getPtr device], Vector2)

proc getJoyVibrationDuration*(self: Input; device: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_joy_vibration_duration", 4025615559)
  methodbind.ptrcall(self, [getPtr device], Float)

proc startJoyVibration*(self: Input; device: int32; weakMagnitude: Float; strongMagnitude: Float; duration: Float = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "start_joy_vibration", 2576575033)
  methodbind.ptrcall(self, [getPtr device, getPtr weakMagnitude, getPtr strongMagnitude, getPtr duration], void)

proc stopJoyVibration*(self: Input; device: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "stop_joy_vibration", 1286410249)
  methodbind.ptrcall(self, [getPtr device], void)

proc vibrateHandheld*(self: Input; durationMs: int32 = 500; amplitude: Float = -1.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "vibrate_handheld", 544894297)
  methodbind.ptrcall(self, [getPtr durationMs, getPtr amplitude], void)

proc getGravity*(self: Input): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_gravity", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getAccelerometer*(self: Input): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_accelerometer", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getMagnetometer*(self: Input): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_magnetometer", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getGyroscope*(self: Input): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_gyroscope", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setGravity*(self: Input; value: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "set_gravity", 3460891852)
  methodbind.ptrcall(self, [getPtr value], void)

proc setAccelerometer*(self: Input; value: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "set_accelerometer", 3460891852)
  methodbind.ptrcall(self, [getPtr value], void)

proc setMagnetometer*(self: Input; value: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "set_magnetometer", 3460891852)
  methodbind.ptrcall(self, [getPtr value], void)

proc setGyroscope*(self: Input; value: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "set_gyroscope", 3460891852)
  methodbind.ptrcall(self, [getPtr value], void)

proc getLastMouseVelocity*(self: Input): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_last_mouse_velocity", 1497962370)
  methodbind.ptrcall(self, [], Vector2)

proc getLastMouseScreenVelocity*(self: Input): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_last_mouse_screen_velocity", 1497962370)
  methodbind.ptrcall(self, [], Vector2)

proc getMouseButtonMask*(self: Input): set[MouseButtonMask] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_mouse_button_mask", 2512161324)
  methodbind.ptrcall(self, [], set[MouseButtonMask])

proc setMouseMode*(self: Input; mode: Input_MouseMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "set_mouse_mode", 2228490894)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getMouseMode*(self: Input): Input_MouseMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_mouse_mode", 965286182)
  methodbind.ptrcall(self, [], Input_MouseMode)

proc warpMouse*(self: Input; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "warp_mouse", 743155724)
  methodbind.ptrcall(self, [getPtr position], void)

proc actionPress*(self: Input; action: StringName; strength: Float = 1.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "action_press", 1713091165)
  methodbind.ptrcall(self, [getPtr action, getPtr strength], void)

proc actionRelease*(self: Input; action: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "action_release", 3304788590)
  methodbind.ptrcall(self, [getPtr action], void)

proc setDefaultCursorShape*(self: Input; shape: Input_CursorShape = cursorArrow): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "set_default_cursor_shape", 2124816902)
  methodbind.ptrcall(self, [getPtr shape], void)

proc getCurrentCursorShape*(self: Input): Input_CursorShape =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "get_current_cursor_shape", 3455658929)
  methodbind.ptrcall(self, [], Input_CursorShape)

proc setCustomMouseCursor*(self: Input; image: gdref Resource; shape: Input_CursorShape = cursorArrow; hotspot: Vector2 = vector2(0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "set_custom_mouse_cursor", 703945977)
  methodbind.ptrcall(self, [getPtr image, getPtr shape, getPtr hotspot], void)

proc parseInputEvent*(self: Input; event: gdref InputEvent): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "parse_input_event", 3754044979)
  methodbind.ptrcall(self, [getPtr event], void)

proc setUseAccumulatedInput*(self: Input; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "set_use_accumulated_input", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUsingAccumulatedInput*(self: Input): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "is_using_accumulated_input", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc flushBufferedEvents*(self: Input): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "flush_buffered_events", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setEmulateMouseFromTouch*(self: Input; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "set_emulate_mouse_from_touch", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isEmulatingMouseFromTouch*(self: Input): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "is_emulating_mouse_from_touch", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEmulateTouchFromMouse*(self: Input; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "set_emulate_touch_from_mouse", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isEmulatingTouchFromMouse*(self: Input): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Input, "is_emulating_touch_from_mouse", 36873697)
  methodbind.ptrcall(self, [], bool)

template mouseMode*(self: Input): untyped = self.getMouseMode()
template `mouseMode=`*(self: Input; value) = self.setMouseMode(value)

template useAccumulatedInput*(self: Input): untyped = self.isUsingAccumulatedInput()
template `useAccumulatedInput=`*(self: Input; value) = self.setUseAccumulatedInput(value)

template emulateMouseFromTouch*(self: Input): untyped = self.isEmulatingMouseFromTouch()
template `emulateMouseFromTouch=`*(self: Input; value) = self.setEmulateMouseFromTouch(value)

template emulateTouchFromMouse*(self: Input): untyped = self.isEmulatingTouchFromMouse()
template `emulateTouchFromMouse=`*(self: Input; value) = self.setEmulateTouchFromMouse(value)
