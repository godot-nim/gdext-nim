{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc clear*(self: NavigationMeshSourceGeometryData2D): void =
  expandMethodBind(className NavigationMeshSourceGeometryData2D, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc hasData*(self: NavigationMeshSourceGeometryData2D): bool =
  expandMethodBind(className NavigationMeshSourceGeometryData2D, "has_data", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTraversableOutlines*(self: NavigationMeshSourceGeometryData2D; traversableOutlines: TypedArray[PackedVector2Array]): void =
  expandMethodBind(className NavigationMeshSourceGeometryData2D, "set_traversable_outlines", 381264803)
  methodbind.ptrcall(self, [getPtr traversableOutlines])

proc getTraversableOutlines*(self: NavigationMeshSourceGeometryData2D): TypedArray[PackedVector2Array] =
  expandMethodBind(className NavigationMeshSourceGeometryData2D, "get_traversable_outlines", 3995934104)
  var ret: encoded TypedArray[PackedVector2Array]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[PackedVector2Array])

proc setObstructionOutlines*(self: NavigationMeshSourceGeometryData2D; obstructionOutlines: TypedArray[PackedVector2Array]): void =
  expandMethodBind(className NavigationMeshSourceGeometryData2D, "set_obstruction_outlines", 381264803)
  methodbind.ptrcall(self, [getPtr obstructionOutlines])

proc getObstructionOutlines*(self: NavigationMeshSourceGeometryData2D): TypedArray[PackedVector2Array] =
  expandMethodBind(className NavigationMeshSourceGeometryData2D, "get_obstruction_outlines", 3995934104)
  var ret: encoded TypedArray[PackedVector2Array]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[PackedVector2Array])

proc appendTraversableOutlines*(self: NavigationMeshSourceGeometryData2D; traversableOutlines: TypedArray[PackedVector2Array]): void =
  expandMethodBind(className NavigationMeshSourceGeometryData2D, "append_traversable_outlines", 381264803)
  methodbind.ptrcall(self, [getPtr traversableOutlines])

proc appendObstructionOutlines*(self: NavigationMeshSourceGeometryData2D; obstructionOutlines: TypedArray[PackedVector2Array]): void =
  expandMethodBind(className NavigationMeshSourceGeometryData2D, "append_obstruction_outlines", 381264803)
  methodbind.ptrcall(self, [getPtr obstructionOutlines])

proc addTraversableOutline*(self: NavigationMeshSourceGeometryData2D; shapeOutline: PackedVector2Array): void =
  expandMethodBind(className NavigationMeshSourceGeometryData2D, "add_traversable_outline", 1509147220)
  methodbind.ptrcall(self, [getPtr shapeOutline])

proc addObstructionOutline*(self: NavigationMeshSourceGeometryData2D; shapeOutline: PackedVector2Array): void =
  expandMethodBind(className NavigationMeshSourceGeometryData2D, "add_obstruction_outline", 1509147220)
  methodbind.ptrcall(self, [getPtr shapeOutline])

proc merge*(self: NavigationMeshSourceGeometryData2D; otherGeometry: gdref NavigationMeshSourceGeometryData2D): void =
  expandMethodBind(className NavigationMeshSourceGeometryData2D, "merge", 742424872)
  methodbind.ptrcall(self, [getPtr otherGeometry])

proc addProjectedObstruction*(self: NavigationMeshSourceGeometryData2D; vertices: PackedVector2Array; carve: bool): void =
  expandMethodBind(className NavigationMeshSourceGeometryData2D, "add_projected_obstruction", 3882407395)
  methodbind.ptrcall(self, [getPtr vertices, getPtr carve])

proc clearProjectedObstructions*(self: NavigationMeshSourceGeometryData2D): void =
  expandMethodBind(className NavigationMeshSourceGeometryData2D, "clear_projected_obstructions", 3218959716)
  methodbind.ptrcall(self, [])

proc setProjectedObstructions*(self: NavigationMeshSourceGeometryData2D; projectedObstructions: Array): void =
  expandMethodBind(className NavigationMeshSourceGeometryData2D, "set_projected_obstructions", 381264803)
  methodbind.ptrcall(self, [getPtr projectedObstructions])

proc getProjectedObstructions*(self: NavigationMeshSourceGeometryData2D): Array =
  expandMethodBind(className NavigationMeshSourceGeometryData2D, "get_projected_obstructions", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

template traversableOutlines*(self: NavigationMeshSourceGeometryData2D): untyped = self.getTraversableOutlines()
template `traversableOutlines=`*(self: NavigationMeshSourceGeometryData2D; value) = self.setTraversableOutlines(value)

template obstructionOutlines*(self: NavigationMeshSourceGeometryData2D): untyped = self.getObstructionOutlines()
template `obstructionOutlines=`*(self: NavigationMeshSourceGeometryData2D; value) = self.setObstructionOutlines(value)

template projectedObstructions*(self: NavigationMeshSourceGeometryData2D): untyped = self.getProjectedObstructions()
template `projectedObstructions=`*(self: NavigationMeshSourceGeometryData2D; value) = self.setProjectedObstructions(value)

const NavigationMeshSourceGeometryData2D_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[NavigationMeshSourceGeometryData2D]): Table[string, string] = NavigationMeshSourceGeometryData2D_vmap