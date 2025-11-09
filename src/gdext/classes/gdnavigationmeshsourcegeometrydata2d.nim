{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(NavigationMeshSourceGeometryData2D, Resource)

proc clear*(self: NavigationMeshSourceGeometryData2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData2D, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc hasData*(self: NavigationMeshSourceGeometryData2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData2D, "has_data", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setTraversableOutlines*(self: NavigationMeshSourceGeometryData2D; traversableOutlines: TypedArray[PackedVector2Array]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData2D, "set_traversable_outlines", 381264803)
  methodbind.ptrcall(self, [getPtr traversableOutlines], void)

proc getTraversableOutlines*(self: NavigationMeshSourceGeometryData2D): TypedArray[PackedVector2Array] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData2D, "get_traversable_outlines", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[PackedVector2Array])

proc setObstructionOutlines*(self: NavigationMeshSourceGeometryData2D; obstructionOutlines: TypedArray[PackedVector2Array]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData2D, "set_obstruction_outlines", 381264803)
  methodbind.ptrcall(self, [getPtr obstructionOutlines], void)

proc getObstructionOutlines*(self: NavigationMeshSourceGeometryData2D): TypedArray[PackedVector2Array] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData2D, "get_obstruction_outlines", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[PackedVector2Array])

proc appendTraversableOutlines*(self: NavigationMeshSourceGeometryData2D; traversableOutlines: TypedArray[PackedVector2Array]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData2D, "append_traversable_outlines", 381264803)
  methodbind.ptrcall(self, [getPtr traversableOutlines], void)

proc appendObstructionOutlines*(self: NavigationMeshSourceGeometryData2D; obstructionOutlines: TypedArray[PackedVector2Array]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData2D, "append_obstruction_outlines", 381264803)
  methodbind.ptrcall(self, [getPtr obstructionOutlines], void)

proc addTraversableOutline*(self: NavigationMeshSourceGeometryData2D; shapeOutline: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData2D, "add_traversable_outline", 1509147220)
  methodbind.ptrcall(self, [getPtr shapeOutline], void)

proc addObstructionOutline*(self: NavigationMeshSourceGeometryData2D; shapeOutline: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData2D, "add_obstruction_outline", 1509147220)
  methodbind.ptrcall(self, [getPtr shapeOutline], void)

proc merge*(self: NavigationMeshSourceGeometryData2D; otherGeometry: gdref NavigationMeshSourceGeometryData2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData2D, "merge", 742424872)
  methodbind.ptrcall(self, [getPtr otherGeometry], void)

proc addProjectedObstruction*(self: NavigationMeshSourceGeometryData2D; vertices: PackedVector2Array; carve: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData2D, "add_projected_obstruction", 3882407395)
  methodbind.ptrcall(self, [getPtr vertices, getPtr carve], void)

proc clearProjectedObstructions*(self: NavigationMeshSourceGeometryData2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData2D, "clear_projected_obstructions", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setProjectedObstructions*(self: NavigationMeshSourceGeometryData2D; projectedObstructions: Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData2D, "set_projected_obstructions", 381264803)
  methodbind.ptrcall(self, [getPtr projectedObstructions], void)

proc getProjectedObstructions*(self: NavigationMeshSourceGeometryData2D): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData2D, "get_projected_obstructions", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc getBounds*(self: NavigationMeshSourceGeometryData2D): Rect2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className NavigationMeshSourceGeometryData2D, "get_bounds", 3248174)
  methodbind.ptrcall(self, [], Rect2)

template traversableOutlines*(self: NavigationMeshSourceGeometryData2D): untyped = self.getTraversableOutlines()
template `traversableOutlines=`*(self: NavigationMeshSourceGeometryData2D; value) = self.setTraversableOutlines(value)

template obstructionOutlines*(self: NavigationMeshSourceGeometryData2D): untyped = self.getObstructionOutlines()
template `obstructionOutlines=`*(self: NavigationMeshSourceGeometryData2D; value) = self.setObstructionOutlines(value)

template projectedObstructions*(self: NavigationMeshSourceGeometryData2D): untyped = self.getProjectedObstructions()
template `projectedObstructions=`*(self: NavigationMeshSourceGeometryData2D; value) = self.setProjectedObstructions(value)
