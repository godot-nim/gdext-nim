{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(Polygon2D, Node2D)

proc setPolygon*(self: Polygon2D; polygon: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_polygon", 1509147220)
  methodbind.ptrcall(self, [getPtr polygon], void)

proc getPolygon*(self: Polygon2D): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_polygon", 2961356807)
  methodbind.ptrcall(self, [], PackedVector2Array)

proc setUv*(self: Polygon2D; uv: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_uv", 1509147220)
  methodbind.ptrcall(self, [getPtr uv], void)

proc getUv*(self: Polygon2D): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_uv", 2961356807)
  methodbind.ptrcall(self, [], PackedVector2Array)

proc setColor*(self: Polygon2D; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getColor*(self: Polygon2D): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setPolygons*(self: Polygon2D; polygons: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_polygons", 381264803)
  methodbind.ptrcall(self, [getPtr polygons], void)

proc getPolygons*(self: Polygon2D): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_polygons", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc setVertexColors*(self: Polygon2D; vertexColors: PackedColorArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_vertex_colors", 3546319833)
  methodbind.ptrcall(self, [getPtr vertexColors], void)

proc getVertexColors*(self: Polygon2D): PackedColorArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_vertex_colors", 1392750486)
  methodbind.ptrcall(self, [], PackedColorArray)

proc setTexture*(self: Polygon2D; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getTexture*(self: Polygon2D): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setTextureOffset*(self: Polygon2D; textureOffset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_texture_offset", 743155724)
  methodbind.ptrcall(self, [getPtr textureOffset], void)

proc getTextureOffset*(self: Polygon2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_texture_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setTextureRotation*(self: Polygon2D; textureRotation: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_texture_rotation", 373806689)
  methodbind.ptrcall(self, [getPtr textureRotation], void)

proc getTextureRotation*(self: Polygon2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_texture_rotation", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTextureScale*(self: Polygon2D; textureScale: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_texture_scale", 743155724)
  methodbind.ptrcall(self, [getPtr textureScale], void)

proc getTextureScale*(self: Polygon2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_texture_scale", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setInvertEnabled*(self: Polygon2D; invert: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_invert_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr invert], void)

proc getInvertEnabled*(self: Polygon2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_invert_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAntialiased*(self: Polygon2D; antialiased: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_antialiased", 2586408642)
  methodbind.ptrcall(self, [getPtr antialiased], void)

proc getAntialiased*(self: Polygon2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_antialiased", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setInvertBorder*(self: Polygon2D; invertBorder: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_invert_border", 373806689)
  methodbind.ptrcall(self, [getPtr invertBorder], void)

proc getInvertBorder*(self: Polygon2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_invert_border", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setOffset*(self: Polygon2D; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getOffset*(self: Polygon2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc addBone*(self: Polygon2D; path: NodePath; weights: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "add_bone", 703042815)
  methodbind.ptrcall(self, [getPtr path, getPtr weights], void)

proc getBoneCount*(self: Polygon2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_bone_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getBonePath*(self: Polygon2D; index: int32): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_bone_path", 408788394)
  methodbind.ptrcall(self, [getPtr index], NodePath)

proc getBoneWeights*(self: Polygon2D; index: int32): PackedFloat32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_bone_weights", 1542882410)
  methodbind.ptrcall(self, [getPtr index], PackedFloat32Array)

proc eraseBone*(self: Polygon2D; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "erase_bone", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc clearBones*(self: Polygon2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "clear_bones", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setBonePath*(self: Polygon2D; index: int32; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_bone_path", 2761262315)
  methodbind.ptrcall(self, [getPtr index, getPtr path], void)

proc setBoneWeights*(self: Polygon2D; index: int32; weights: PackedFloat32Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_bone_weights", 1345852415)
  methodbind.ptrcall(self, [getPtr index, getPtr weights], void)

proc setSkeleton*(self: Polygon2D; skeleton: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_skeleton", 1348162250)
  methodbind.ptrcall(self, [getPtr skeleton], void)

proc getSkeleton*(self: Polygon2D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_skeleton", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setInternalVertexCount*(self: Polygon2D; internalVertexCount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "set_internal_vertex_count", 1286410249)
  methodbind.ptrcall(self, [getPtr internalVertexCount], void)

proc getInternalVertexCount*(self: Polygon2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Polygon2D, "get_internal_vertex_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

template color*(self: Polygon2D): untyped = self.getColor()
template `color=`*(self: Polygon2D; value) = self.setColor(value)

template offset*(self: Polygon2D): untyped = self.getOffset()
template `offset=`*(self: Polygon2D; value) = self.setOffset(value)

template antialiased*(self: Polygon2D): untyped = self.getAntialiased()
template `antialiased=`*(self: Polygon2D; value) = self.setAntialiased(value)

template texture*(self: Polygon2D): untyped = self.getTexture()
template `texture=`*(self: Polygon2D; value) = self.setTexture(value)

template textureOffset*(self: Polygon2D): untyped = self.getTextureOffset()
template `textureOffset=`*(self: Polygon2D; value) = self.setTextureOffset(value)

template textureScale*(self: Polygon2D): untyped = self.getTextureScale()
template `textureScale=`*(self: Polygon2D; value) = self.setTextureScale(value)

template textureRotation*(self: Polygon2D): untyped = self.getTextureRotation()
template `textureRotation=`*(self: Polygon2D; value) = self.setTextureRotation(value)

template skeleton*(self: Polygon2D): untyped = self.getSkeleton()
template `skeleton=`*(self: Polygon2D; value) = self.setSkeleton(value)

template invertEnabled*(self: Polygon2D): untyped = self.getInvertEnabled()
template `invertEnabled=`*(self: Polygon2D; value) = self.setInvertEnabled(value)

template invertBorder*(self: Polygon2D): untyped = self.getInvertBorder()
template `invertBorder=`*(self: Polygon2D; value) = self.setInvertBorder(value)

template polygon*(self: Polygon2D): untyped = self.getPolygon()
template `polygon=`*(self: Polygon2D; value) = self.setPolygon(value)

template uv*(self: Polygon2D): untyped = self.getUv()
template `uv=`*(self: Polygon2D; value) = self.setUv(value)

template vertexColors*(self: Polygon2D): untyped = self.getVertexColors()
template `vertexColors=`*(self: Polygon2D; value) = self.setVertexColors(value)

template polygons*(self: Polygon2D): untyped = self.getPolygons()
template `polygons=`*(self: Polygon2D; value) = self.setPolygons(value)

template bones*(self: Polygon2D): untyped = self.getBones()
template `bones=`*(self: Polygon2D; value) = self.setBones(value)

template internalVertexCount*(self: Polygon2D): untyped = self.getInternalVertexCount()
template `internalVertexCount=`*(self: Polygon2D; value) = self.setInternalVertexCount(value)
