{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrange; export gdrange

expandOnClassImported(ScrollBar, Range)

proc setCustomStep*(self: ScrollBar; step: Float): void =
  expandMethodBind(className ScrollBar, "set_custom_step", 373806689)
  methodbind.ptrcall(self, [getPtr step])

proc getCustomStep*(self: ScrollBar): Float =
  expandMethodBind(className ScrollBar, "get_custom_step", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template customStep*(self: ScrollBar): untyped = self.getCustomStep()
template `customStep=`*(self: ScrollBar; value) = self.setCustomStep(value)
