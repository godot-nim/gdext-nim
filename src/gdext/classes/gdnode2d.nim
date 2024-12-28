{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcanvasitem; export gdcanvasitem

proc setPosition*(self: Node2D; position: Vector2): void =
  expandMethodBind(className Node2D, "set_position", 743155724)
  methodbind.ptrcall(self, [getPtr position])

proc setRotation*(self: Node2D; radians: Float): void =
  expandMethodBind(className Node2D, "set_rotation", 373806689)
  methodbind.ptrcall(self, [getPtr radians])

proc setRotationDegrees*(self: Node2D; degrees: Float): void =
  expandMethodBind(className Node2D, "set_rotation_degrees", 373806689)
  methodbind.ptrcall(self, [getPtr degrees])

proc setSkew*(self: Node2D; radians: Float): void =
  expandMethodBind(className Node2D, "set_skew", 373806689)
  methodbind.ptrcall(self, [getPtr radians])

proc setScale*(self: Node2D; scale: Vector2): void =
  expandMethodBind(className Node2D, "set_scale", 743155724)
  methodbind.ptrcall(self, [getPtr scale])

proc getPosition*(self: Node2D): Vector2 =
  expandMethodBind(className Node2D, "get_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getRotation*(self: Node2D): Float =
  expandMethodBind(className Node2D, "get_rotation", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getRotationDegrees*(self: Node2D): Float =
  expandMethodBind(className Node2D, "get_rotation_degrees", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getSkew*(self: Node2D): Float =
  expandMethodBind(className Node2D, "get_skew", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getScale*(self: Node2D): Vector2 =
  expandMethodBind(className Node2D, "get_scale", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc rotate*(self: Node2D; radians: Float): void =
  expandMethodBind(className Node2D, "rotate", 373806689)
  methodbind.ptrcall(self, [getPtr radians])

proc moveLocalX*(self: Node2D; delta: Float; scaled: bool = false): void =
  expandMethodBind(className Node2D, "move_local_x", 2087892650)
  methodbind.ptrcall(self, [getPtr delta, getPtr scaled])

proc moveLocalY*(self: Node2D; delta: Float; scaled: bool = false): void =
  expandMethodBind(className Node2D, "move_local_y", 2087892650)
  methodbind.ptrcall(self, [getPtr delta, getPtr scaled])

proc translate*(self: Node2D; offset: Vector2): void =
  expandMethodBind(className Node2D, "translate", 743155724)
  methodbind.ptrcall(self, [getPtr offset])

proc globalTranslate*(self: Node2D; offset: Vector2): void =
  expandMethodBind(className Node2D, "global_translate", 743155724)
  methodbind.ptrcall(self, [getPtr offset])

proc applyScale*(self: Node2D; ratio: Vector2): void =
  expandMethodBind(className Node2D, "apply_scale", 743155724)
  methodbind.ptrcall(self, [getPtr ratio])

proc setGlobalPosition*(self: Node2D; position: Vector2): void =
  expandMethodBind(className Node2D, "set_global_position", 743155724)
  methodbind.ptrcall(self, [getPtr position])

proc getGlobalPosition*(self: Node2D): Vector2 =
  expandMethodBind(className Node2D, "get_global_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setGlobalRotation*(self: Node2D; radians: Float): void =
  expandMethodBind(className Node2D, "set_global_rotation", 373806689)
  methodbind.ptrcall(self, [getPtr radians])

proc setGlobalRotationDegrees*(self: Node2D; degrees: Float): void =
  expandMethodBind(className Node2D, "set_global_rotation_degrees", 373806689)
  methodbind.ptrcall(self, [getPtr degrees])

proc getGlobalRotation*(self: Node2D): Float =
  expandMethodBind(className Node2D, "get_global_rotation", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getGlobalRotationDegrees*(self: Node2D): Float =
  expandMethodBind(className Node2D, "get_global_rotation_degrees", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setGlobalSkew*(self: Node2D; radians: Float): void =
  expandMethodBind(className Node2D, "set_global_skew", 373806689)
  methodbind.ptrcall(self, [getPtr radians])

proc getGlobalSkew*(self: Node2D): Float =
  expandMethodBind(className Node2D, "get_global_skew", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setGlobalScale*(self: Node2D; scale: Vector2): void =
  expandMethodBind(className Node2D, "set_global_scale", 743155724)
  methodbind.ptrcall(self, [getPtr scale])

proc getGlobalScale*(self: Node2D): Vector2 =
  expandMethodBind(className Node2D, "get_global_scale", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setTransform*(self: Node2D; xform: Transform2D): void =
  expandMethodBind(className Node2D, "set_transform", 2761652528)
  methodbind.ptrcall(self, [getPtr xform])

proc setGlobalTransform*(self: Node2D; xform: Transform2D): void =
  expandMethodBind(className Node2D, "set_global_transform", 2761652528)
  methodbind.ptrcall(self, [getPtr xform])

proc lookAt*(self: Node2D; point: Vector2): void =
  expandMethodBind(className Node2D, "look_at", 743155724)
  methodbind.ptrcall(self, [getPtr point])

proc getAngleTo*(self: Node2D; point: Vector2): Float =
  expandMethodBind(className Node2D, "get_angle_to", 2276447920)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr point], addr ret)
  (addr ret).decode_result(Float)

proc toLocal*(self: Node2D; globalPoint: Vector2): Vector2 =
  expandMethodBind(className Node2D, "to_local", 2656412154)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr globalPoint], addr ret)
  (addr ret).decode_result(Vector2)

proc toGlobal*(self: Node2D; localPoint: Vector2): Vector2 =
  expandMethodBind(className Node2D, "to_global", 2656412154)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr localPoint], addr ret)
  (addr ret).decode_result(Vector2)

proc getRelativeTransformToParent*(self: Node2D; parent: Node): Transform2D =
  expandMethodBind(className Node2D, "get_relative_transform_to_parent", 904556875)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, [getPtr parent], addr ret)
  (addr ret).decode_result(Transform2D)

template position*(self: Node2D): untyped = self.getPosition()
template `position=`*(self: Node2D; value) = self.setPosition(value)

template rotation*(self: Node2D): untyped = self.getRotation()
template `rotation=`*(self: Node2D; value) = self.setRotation(value)

template rotationDegrees*(self: Node2D): untyped = self.getRotationDegrees()
template `rotationDegrees=`*(self: Node2D; value) = self.setRotationDegrees(value)

template scale*(self: Node2D): untyped = self.getScale()
template `scale=`*(self: Node2D; value) = self.setScale(value)

template skew*(self: Node2D): untyped = self.getSkew()
template `skew=`*(self: Node2D; value) = self.setSkew(value)

template transform*(self: Node2D): untyped = self.getTransform()
template `transform=`*(self: Node2D; value) = self.setTransform(value)

template globalPosition*(self: Node2D): untyped = self.getGlobalPosition()
template `globalPosition=`*(self: Node2D; value) = self.setGlobalPosition(value)

template globalRotation*(self: Node2D): untyped = self.getGlobalRotation()
template `globalRotation=`*(self: Node2D; value) = self.setGlobalRotation(value)

template globalRotationDegrees*(self: Node2D): untyped = self.getGlobalRotationDegrees()
template `globalRotationDegrees=`*(self: Node2D; value) = self.setGlobalRotationDegrees(value)

template globalScale*(self: Node2D): untyped = self.getGlobalScale()
template `globalScale=`*(self: Node2D; value) = self.setGlobalScale(value)

template globalSkew*(self: Node2D): untyped = self.getGlobalSkew()
template `globalSkew=`*(self: Node2D; value) = self.setGlobalSkew(value)

template globalTransform*(self: Node2D): untyped = self.getGlobalTransform()
template `globalTransform=`*(self: Node2D; value) = self.setGlobalTransform(value)

const Node2D_vmap =
  CanvasItem.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Node2D]): Table[string, string] = Node2D_vmap