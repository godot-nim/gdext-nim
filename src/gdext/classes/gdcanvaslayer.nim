{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(CanvasLayer, Node)

proc setLayer*(self: CanvasLayer; layer: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "set_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layer], void)

proc getLayer*(self: CanvasLayer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "get_layer", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setVisible*(self: CanvasLayer; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "set_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible], void)

proc isVisible*(self: CanvasLayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "is_visible", 36873697)
  methodbind.ptrcall(self, [], bool)

proc show*(self: CanvasLayer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "show", 3218959716)
  methodbind.ptrcall(self, [], void)

proc hide*(self: CanvasLayer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "hide", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setTransform*(self: CanvasLayer; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "set_transform", 2761652528)
  methodbind.ptrcall(self, [getPtr transform], void)

proc getTransform*(self: CanvasLayer): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "get_transform", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc getFinalTransform*(self: CanvasLayer): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "get_final_transform", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc setOffset*(self: CanvasLayer; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "set_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getOffset*(self: CanvasLayer): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "get_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setRotation*(self: CanvasLayer; radians: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "set_rotation", 373806689)
  methodbind.ptrcall(self, [getPtr radians], void)

proc getRotation*(self: CanvasLayer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "get_rotation", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setScale*(self: CanvasLayer; scale: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "set_scale", 743155724)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getScale*(self: CanvasLayer): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "get_scale", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setFollowViewport*(self: CanvasLayer; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "set_follow_viewport", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isFollowingViewport*(self: CanvasLayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "is_following_viewport", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFollowViewportScale*(self: CanvasLayer; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "set_follow_viewport_scale", 373806689)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getFollowViewportScale*(self: CanvasLayer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "get_follow_viewport_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setCustomViewport*(self: CanvasLayer; viewport: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "set_custom_viewport", 1078189570)
  methodbind.ptrcall(self, [getPtr viewport], void)

proc getCustomViewport*(self: CanvasLayer): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "get_custom_viewport", 3160264692)
  methodbind.ptrcall(self, [], Node)

proc getCanvas*(self: CanvasLayer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CanvasLayer, "get_canvas", 2944877500)
  methodbind.ptrcall(self, [], RID)

template layer*(self: CanvasLayer): untyped = self.getLayer()
template `layer=`*(self: CanvasLayer; value) = self.setLayer(value)

template visible*(self: CanvasLayer): untyped = self.isVisible()
template `visible=`*(self: CanvasLayer; value) = self.setVisible(value)

template offset*(self: CanvasLayer): untyped = self.getOffset()
template `offset=`*(self: CanvasLayer; value) = self.setOffset(value)

template rotation*(self: CanvasLayer): untyped = self.getRotation()
template `rotation=`*(self: CanvasLayer; value) = self.setRotation(value)

template scale*(self: CanvasLayer): untyped = self.getScale()
template `scale=`*(self: CanvasLayer; value) = self.setScale(value)

template transform*(self: CanvasLayer): untyped = self.getTransform()
template `transform=`*(self: CanvasLayer; value) = self.setTransform(value)

template customViewport*(self: CanvasLayer): untyped = self.getCustomViewport()
template `customViewport=`*(self: CanvasLayer; value) = self.setCustomViewport(value)

template followViewportEnabled*(self: CanvasLayer): untyped = self.isFollowingViewport()
template `followViewportEnabled=`*(self: CanvasLayer; value) = self.setFollowViewport(value)

template followViewportScale*(self: CanvasLayer): untyped = self.getFollowViewportScale()
template `followViewportScale=`*(self: CanvasLayer; value) = self.setFollowViewportScale(value)
