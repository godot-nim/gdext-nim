{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc fromNode*(_: GltfPhysicsShape; shapeNode: CollisionShape3D): gdref GltfPhysicsShape =
  expandMethodBind(className GltfPhysicsShape, "from_node", 3613751275)
  var `?param` = [getPtr shapeNode]
  var ret: encoded gdref GltfPhysicsShape
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref GltfPhysicsShape)

proc toNode*(self: GltfPhysicsShape; cacheShapes: bool = false): CollisionShape3D =
  expandMethodBind(className GltfPhysicsShape, "to_node", 563689933)
  var `?param` = [getPtr cacheShapes]
  var ret: encoded CollisionShape3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(CollisionShape3D)

proc fromResource*(_: GltfPhysicsShape; shapeResource: gdref Shape3D): gdref GltfPhysicsShape =
  expandMethodBind(className GltfPhysicsShape, "from_resource", 3845569786)
  var `?param` = [getPtr shapeResource]
  var ret: encoded gdref GltfPhysicsShape
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref GltfPhysicsShape)

proc toResource*(self: GltfPhysicsShape; cacheShapes: bool = false): gdref Shape3D =
  expandMethodBind(className GltfPhysicsShape, "to_resource", 1913542110)
  var `?param` = [getPtr cacheShapes]
  var ret: encoded gdref Shape3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Shape3D)

proc fromDictionary*(_: GltfPhysicsShape; dictionary: Dictionary): gdref GltfPhysicsShape =
  expandMethodBind(className GltfPhysicsShape, "from_dictionary", 2390691823)
  var `?param` = [getPtr dictionary]
  var ret: encoded gdref GltfPhysicsShape
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref GltfPhysicsShape)

proc toDictionary*(self: GltfPhysicsShape): Dictionary =
  expandMethodBind(className GltfPhysicsShape, "to_dictionary", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getShapeType*(self: GltfPhysicsShape): String =
  expandMethodBind(className GltfPhysicsShape, "get_shape_type", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setShapeType*(self: GltfPhysicsShape; shapeType: String): void =
  expandMethodBind(className GltfPhysicsShape, "set_shape_type", 83702148)
  var `?param` = [getPtr shapeType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: GltfPhysicsShape): Vector3 =
  expandMethodBind(className GltfPhysicsShape, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setSize*(self: GltfPhysicsShape; size: Vector3): void =
  expandMethodBind(className GltfPhysicsShape, "set_size", 3460891852)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: GltfPhysicsShape): Float =
  expandMethodBind(className GltfPhysicsShape, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRadius*(self: GltfPhysicsShape; radius: Float): void =
  expandMethodBind(className GltfPhysicsShape, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHeight*(self: GltfPhysicsShape): Float =
  expandMethodBind(className GltfPhysicsShape, "get_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setHeight*(self: GltfPhysicsShape; height: Float): void =
  expandMethodBind(className GltfPhysicsShape, "set_height", 373806689)
  var `?param` = [getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIsTrigger*(self: GltfPhysicsShape): bool =
  expandMethodBind(className GltfPhysicsShape, "get_is_trigger", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setIsTrigger*(self: GltfPhysicsShape; isTrigger: bool): void =
  expandMethodBind(className GltfPhysicsShape, "set_is_trigger", 2586408642)
  var `?param` = [getPtr isTrigger]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMeshIndex*(self: GltfPhysicsShape): int32 =
  expandMethodBind(className GltfPhysicsShape, "get_mesh_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMeshIndex*(self: GltfPhysicsShape; meshIndex: int32): void =
  expandMethodBind(className GltfPhysicsShape, "set_mesh_index", 1286410249)
  var `?param` = [getPtr meshIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc getImporterMesh*(self: GltfPhysicsShape): gdref ImporterMesh =
  expandMethodBind(className GltfPhysicsShape, "get_importer_mesh", 3161779525)
  var ret: encoded gdref ImporterMesh
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref ImporterMesh)

proc setImporterMesh*(self: GltfPhysicsShape; importerMesh: gdref ImporterMesh): void =
  expandMethodBind(className GltfPhysicsShape, "set_importer_mesh", 2255166972)
  var `?param` = [getPtr importerMesh]
  methodbind.ptrcall(self, addr `?param`[0])

template shapeType*(self: GltfPhysicsShape): untyped = self.getShapeType()
template `shapeType=`*(self: GltfPhysicsShape; value) = self.setShapeType(value)

template size*(self: GltfPhysicsShape): untyped = self.getSize()
template `size=`*(self: GltfPhysicsShape; value) = self.setSize(value)

template radius*(self: GltfPhysicsShape): untyped = self.getRadius()
template `radius=`*(self: GltfPhysicsShape; value) = self.setRadius(value)

template height*(self: GltfPhysicsShape): untyped = self.getHeight()
template `height=`*(self: GltfPhysicsShape; value) = self.setHeight(value)

template isTrigger*(self: GltfPhysicsShape): untyped = self.getIsTrigger()
template `isTrigger=`*(self: GltfPhysicsShape; value) = self.setIsTrigger(value)

template meshIndex*(self: GltfPhysicsShape): untyped = self.getMeshIndex()
template `meshIndex=`*(self: GltfPhysicsShape; value) = self.setMeshIndex(value)

template importerMesh*(self: GltfPhysicsShape): untyped = self.getImporterMesh()
template `importerMesh=`*(self: GltfPhysicsShape; value) = self.setImporterMesh(value)

const GltfPhysicsShape_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfPhysicsShape]): Table[string, string] = GltfPhysicsShape_vmap