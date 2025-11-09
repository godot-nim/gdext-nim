{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(ButtonGroup, Resource)

proc getPressedButton*(self: ButtonGroup): BaseButton =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ButtonGroup, "get_pressed_button", 3886434893)
  methodbind.ptrcall(self, [], BaseButton)

proc getButtons*(self: ButtonGroup): TypedArray[BaseButton] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ButtonGroup, "get_buttons", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[BaseButton])

proc setAllowUnpress*(self: ButtonGroup; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ButtonGroup, "set_allow_unpress", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isAllowUnpress*(self: ButtonGroup): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ButtonGroup, "is_allow_unpress", 2240911060)
  methodbind.ptrcall(self, [], bool)

template allowUnpress*(self: ButtonGroup): untyped = self.isAllowUnpress()
template `allowUnpress=`*(self: ButtonGroup; value) = self.setAllowUnpress(value)
