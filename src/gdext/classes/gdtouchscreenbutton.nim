{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(TouchScreenButton, Node2D)

proc setTextureNormal*(self: TouchScreenButton; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "set_texture_normal", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getTextureNormal*(self: TouchScreenButton): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "get_texture_normal", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setTexturePressed*(self: TouchScreenButton; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "set_texture_pressed", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getTexturePressed*(self: TouchScreenButton): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "get_texture_pressed", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setBitmask*(self: TouchScreenButton; bitmask: gdref BitMap): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "set_bitmask", 698588216)
  methodbind.ptrcall(self, [getPtr bitmask], void)

proc getBitmask*(self: TouchScreenButton): gdref BitMap =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "get_bitmask", 2459671998)
  methodbind.ptrcall(self, [], gdref BitMap)

proc setShape*(self: TouchScreenButton; shape: gdref Shape2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "set_shape", 771364740)
  methodbind.ptrcall(self, [getPtr shape], void)

proc getShape*(self: TouchScreenButton): gdref Shape2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "get_shape", 522005891)
  methodbind.ptrcall(self, [], gdref Shape2D)

proc setShapeCentered*(self: TouchScreenButton; bool: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "set_shape_centered", 2586408642)
  methodbind.ptrcall(self, [getPtr bool], void)

proc isShapeCentered*(self: TouchScreenButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "is_shape_centered", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setShapeVisible*(self: TouchScreenButton; bool: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "set_shape_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr bool], void)

proc isShapeVisible*(self: TouchScreenButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "is_shape_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAction*(self: TouchScreenButton; action: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "set_action", 83702148)
  methodbind.ptrcall(self, [getPtr action], void)

proc getAction*(self: TouchScreenButton): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "get_action", 201670096)
  methodbind.ptrcall(self, [], String)

proc setVisibilityMode*(self: TouchScreenButton; mode: TouchScreenButton_VisibilityMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "set_visibility_mode", 3031128463)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getVisibilityMode*(self: TouchScreenButton): TouchScreenButton_VisibilityMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "get_visibility_mode", 2558996468)
  methodbind.ptrcall(self, [], TouchScreenButton_VisibilityMode)

proc setPassbyPress*(self: TouchScreenButton; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "set_passby_press", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isPassbyPressEnabled*(self: TouchScreenButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "is_passby_press_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isPressed*(self: TouchScreenButton): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TouchScreenButton, "is_pressed", 36873697)
  methodbind.ptrcall(self, [], bool)

template textureNormal*(self: TouchScreenButton): untyped = self.getTextureNormal()
template `textureNormal=`*(self: TouchScreenButton; value) = self.setTextureNormal(value)

template texturePressed*(self: TouchScreenButton): untyped = self.getTexturePressed()
template `texturePressed=`*(self: TouchScreenButton; value) = self.setTexturePressed(value)

template bitmask*(self: TouchScreenButton): untyped = self.getBitmask()
template `bitmask=`*(self: TouchScreenButton; value) = self.setBitmask(value)

template shape*(self: TouchScreenButton): untyped = self.getShape()
template `shape=`*(self: TouchScreenButton; value) = self.setShape(value)

template shapeCentered*(self: TouchScreenButton): untyped = self.isShapeCentered()
template `shapeCentered=`*(self: TouchScreenButton; value) = self.setShapeCentered(value)

template shapeVisible*(self: TouchScreenButton): untyped = self.isShapeVisible()
template `shapeVisible=`*(self: TouchScreenButton; value) = self.setShapeVisible(value)

template passbyPress*(self: TouchScreenButton): untyped = self.isPassbyPressEnabled()
template `passbyPress=`*(self: TouchScreenButton; value) = self.setPassbyPress(value)

template action*(self: TouchScreenButton): untyped = self.getAction()
template `action=`*(self: TouchScreenButton; value) = self.setAction(value)

template visibilityMode*(self: TouchScreenButton): untyped = self.getVisibilityMode()
template `visibilityMode=`*(self: TouchScreenButton; value) = self.setVisibilityMode(value)
