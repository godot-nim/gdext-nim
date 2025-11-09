{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrange; export gdrange

expandOnClassImported(ScrollBar, Range)

proc setCustomStep*(self: ScrollBar; step: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollBar, "set_custom_step", 373806689)
  methodbind.ptrcall(self, [getPtr step], void)

proc getCustomStep*(self: ScrollBar): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScrollBar, "get_custom_step", 1740695150)
  methodbind.ptrcall(self, [], Float)

template customStep*(self: ScrollBar): untyped = self.getCustomStep()
template `customStep=`*(self: ScrollBar; value) = self.setCustomStep(value)
