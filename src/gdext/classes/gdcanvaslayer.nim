{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

proc setLayer*(self: CanvasLayer; layer: int32): void =
  expandMethodBind(className CanvasLayer, "set_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layer])

proc getLayer*(self: CanvasLayer): int32 =
  expandMethodBind(className CanvasLayer, "get_layer", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setVisible*(self: CanvasLayer; visible: bool): void =
  expandMethodBind(className CanvasLayer, "set_visible", 2586408642)
  methodbind.ptrcall(self, [getPtr visible])

proc isVisible*(self: CanvasLayer): bool =
  expandMethodBind(className CanvasLayer, "is_visible", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc show*(self: CanvasLayer): void =
  expandMethodBind(className CanvasLayer, "show", 3218959716)
  methodbind.ptrcall(self, [])

proc hide*(self: CanvasLayer): void =
  expandMethodBind(className CanvasLayer, "hide", 3218959716)
  methodbind.ptrcall(self, [])

proc setTransform*(self: CanvasLayer; transform: Transform2D): void =
  expandMethodBind(className CanvasLayer, "set_transform", 2761652528)
  methodbind.ptrcall(self, [getPtr transform])

proc getTransform*(self: CanvasLayer): Transform2D =
  expandMethodBind(className CanvasLayer, "get_transform", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Transform2D)

proc getFinalTransform*(self: CanvasLayer): Transform2D =
  expandMethodBind(className CanvasLayer, "get_final_transform", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Transform2D)

proc setOffset*(self: CanvasLayer; offset: Vector2): void =
  expandMethodBind(className CanvasLayer, "set_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset])

proc getOffset*(self: CanvasLayer): Vector2 =
  expandMethodBind(className CanvasLayer, "get_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setRotation*(self: CanvasLayer; radians: Float): void =
  expandMethodBind(className CanvasLayer, "set_rotation", 373806689)
  methodbind.ptrcall(self, [getPtr radians])

proc getRotation*(self: CanvasLayer): Float =
  expandMethodBind(className CanvasLayer, "get_rotation", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setScale*(self: CanvasLayer; scale: Vector2): void =
  expandMethodBind(className CanvasLayer, "set_scale", 743155724)
  methodbind.ptrcall(self, [getPtr scale])

proc getScale*(self: CanvasLayer): Vector2 =
  expandMethodBind(className CanvasLayer, "get_scale", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setFollowViewport*(self: CanvasLayer; enable: bool): void =
  expandMethodBind(className CanvasLayer, "set_follow_viewport", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isFollowingViewport*(self: CanvasLayer): bool =
  expandMethodBind(className CanvasLayer, "is_following_viewport", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setFollowViewportScale*(self: CanvasLayer; scale: Float): void =
  expandMethodBind(className CanvasLayer, "set_follow_viewport_scale", 373806689)
  methodbind.ptrcall(self, [getPtr scale])

proc getFollowViewportScale*(self: CanvasLayer): Float =
  expandMethodBind(className CanvasLayer, "get_follow_viewport_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setCustomViewport*(self: CanvasLayer; viewport: Node): void =
  expandMethodBind(className CanvasLayer, "set_custom_viewport", 1078189570)
  methodbind.ptrcall(self, [getPtr viewport])

proc getCustomViewport*(self: CanvasLayer): Node =
  expandMethodBind(className CanvasLayer, "get_custom_viewport", 3160264692)
  var ret: encoded Node
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Node)

proc getCanvas*(self: CanvasLayer): RID =
  expandMethodBind(className CanvasLayer, "get_canvas", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

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

const CanvasLayer_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CanvasLayer]): Table[string, string] = CanvasLayer_vmap

proc visibilityChanged*(self: CanvasLayer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("visibility_changed")
  self.emitSignal(signalname)