{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

expandOnClassImported(BoxContainer, Container)

proc addSpacer*(self: BoxContainer; begin: bool): Control =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxContainer, "add_spacer", 1326660695)
  methodbind.ptrcall(self, [getPtr begin], Control)

proc setAlignment*(self: BoxContainer; alignment: BoxContainer_AlignmentMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxContainer, "set_alignment", 2456745134)
  methodbind.ptrcall(self, [getPtr alignment], void)

proc getAlignment*(self: BoxContainer): BoxContainer_AlignmentMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxContainer, "get_alignment", 1915476527)
  methodbind.ptrcall(self, [], BoxContainer_AlignmentMode)

proc setVertical*(self: BoxContainer; vertical: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxContainer, "set_vertical", 2586408642)
  methodbind.ptrcall(self, [getPtr vertical], void)

proc isVertical*(self: BoxContainer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BoxContainer, "is_vertical", 36873697)
  methodbind.ptrcall(self, [], bool)

template alignment*(self: BoxContainer): untyped = self.getAlignment()
template `alignment=`*(self: BoxContainer; value) = self.setAlignment(value)

template vertical*(self: BoxContainer): untyped = self.isVertical()
template `vertical=`*(self: BoxContainer; value) = self.setVertical(value)
