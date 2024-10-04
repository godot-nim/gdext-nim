{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setTextureNormal*(self: TouchScreenButton; texture: gdref Texture2D): void =
  expandMethodBind(className TouchScreenButton, "set_texture_normal", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureNormal*(self: TouchScreenButton): gdref Texture2D =
  expandMethodBind(className TouchScreenButton, "get_texture_normal", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setTexturePressed*(self: TouchScreenButton; texture: gdref Texture2D): void =
  expandMethodBind(className TouchScreenButton, "set_texture_pressed", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexturePressed*(self: TouchScreenButton): gdref Texture2D =
  expandMethodBind(className TouchScreenButton, "get_texture_pressed", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setBitmask*(self: TouchScreenButton; bitmask: gdref BitMap): void =
  expandMethodBind(className TouchScreenButton, "set_bitmask", 698588216)
  var `?param` = [getPtr bitmask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBitmask*(self: TouchScreenButton): gdref BitMap =
  expandMethodBind(className TouchScreenButton, "get_bitmask", 2459671998)
  var ret: encoded gdref BitMap
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref BitMap)

proc setShape*(self: TouchScreenButton; shape: gdref Shape2D): void =
  expandMethodBind(className TouchScreenButton, "set_shape", 771364740)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShape*(self: TouchScreenButton): gdref Shape2D =
  expandMethodBind(className TouchScreenButton, "get_shape", 522005891)
  var ret: encoded gdref Shape2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Shape2D)

proc setShapeCentered*(self: TouchScreenButton; bool: bool): void =
  expandMethodBind(className TouchScreenButton, "set_shape_centered", 2586408642)
  var `?param` = [getPtr bool]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShapeCentered*(self: TouchScreenButton): bool =
  expandMethodBind(className TouchScreenButton, "is_shape_centered", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setShapeVisible*(self: TouchScreenButton; bool: bool): void =
  expandMethodBind(className TouchScreenButton, "set_shape_visible", 2586408642)
  var `?param` = [getPtr bool]
  methodbind.ptrcall(self, addr `?param`[0])

proc isShapeVisible*(self: TouchScreenButton): bool =
  expandMethodBind(className TouchScreenButton, "is_shape_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAction*(self: TouchScreenButton; action: String): void =
  expandMethodBind(className TouchScreenButton, "set_action", 83702148)
  var `?param` = [getPtr action]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAction*(self: TouchScreenButton): String =
  expandMethodBind(className TouchScreenButton, "get_action", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setVisibilityMode*(self: TouchScreenButton; mode: TouchScreenButton_VisibilityMode): void =
  expandMethodBind(className TouchScreenButton, "set_visibility_mode", 3031128463)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVisibilityMode*(self: TouchScreenButton): TouchScreenButton_VisibilityMode =
  expandMethodBind(className TouchScreenButton, "get_visibility_mode", 2558996468)
  var ret: encoded TouchScreenButton_VisibilityMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TouchScreenButton_VisibilityMode)

proc setPassbyPress*(self: TouchScreenButton; enabled: bool): void =
  expandMethodBind(className TouchScreenButton, "set_passby_press", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPassbyPressEnabled*(self: TouchScreenButton): bool =
  expandMethodBind(className TouchScreenButton, "is_passby_press_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isPressed*(self: TouchScreenButton): bool =
  expandMethodBind(className TouchScreenButton, "is_pressed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

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

const TouchScreenButton_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TouchScreenButton]): Table[string, string] = TouchScreenButton_vmap

proc pressed*(self: TouchScreenButton): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("pressed")
  self.emitSignal(signalname)

proc released*(self: TouchScreenButton): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("released")
  self.emitSignal(signalname)