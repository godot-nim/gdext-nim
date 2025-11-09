{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdjoint2d; export gdjoint2d

expandOnClassImported(GrooveJoint2D, Joint2D)

proc setLength*(self: GrooveJoint2D; length: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GrooveJoint2D, "set_length", 373806689)
  methodbind.ptrcall(self, [getPtr length], void)

proc getLength*(self: GrooveJoint2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GrooveJoint2D, "get_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setInitialOffset*(self: GrooveJoint2D; offset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GrooveJoint2D, "set_initial_offset", 373806689)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getInitialOffset*(self: GrooveJoint2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GrooveJoint2D, "get_initial_offset", 1740695150)
  methodbind.ptrcall(self, [], Float)

template length*(self: GrooveJoint2D): untyped = self.getLength()
template `length=`*(self: GrooveJoint2D; value) = self.setLength(value)

template initialOffset*(self: GrooveJoint2D): untyped = self.getInitialOffset()
template `initialOffset=`*(self: GrooveJoint2D; value) = self.setInitialOffset(value)
