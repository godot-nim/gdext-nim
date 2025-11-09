{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

expandOnClassImported(ReferenceRect, Control)

proc getBorderColor*(self: ReferenceRect): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReferenceRect, "get_border_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setBorderColor*(self: ReferenceRect; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReferenceRect, "set_border_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getBorderWidth*(self: ReferenceRect): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReferenceRect, "get_border_width", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setBorderWidth*(self: ReferenceRect; width: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReferenceRect, "set_border_width", 373806689)
  methodbind.ptrcall(self, [getPtr width], void)

proc getEditorOnly*(self: ReferenceRect): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReferenceRect, "get_editor_only", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEditorOnly*(self: ReferenceRect; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ReferenceRect, "set_editor_only", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

template borderColor*(self: ReferenceRect): untyped = self.getBorderColor()
template `borderColor=`*(self: ReferenceRect; value) = self.setBorderColor(value)

template borderWidth*(self: ReferenceRect): untyped = self.getBorderWidth()
template `borderWidth=`*(self: ReferenceRect; value) = self.setBorderWidth(value)

template editorOnly*(self: ReferenceRect): untyped = self.getEditorOnly()
template `editorOnly=`*(self: ReferenceRect; value) = self.setEditorOnly(value)
