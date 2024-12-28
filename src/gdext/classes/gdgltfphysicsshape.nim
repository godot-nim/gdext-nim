{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc fromNode*(_: typedesc[GLTFPhysicsShape]; shapeNode: CollisionShape3D): gdref GLTFPhysicsShape =
  expandMethodBind(className GLTFPhysicsShape, "from_node", 3613751275)
  var ret: encoded gdref GLTFPhysicsShape
  methodbind.ptrcall([getPtr shapeNode], addr ret)
  (addr ret).decode_result(gdref GLTFPhysicsShape)

proc toNode*(self: GLTFPhysicsShape; cacheShapes: bool = false): CollisionShape3D =
  expandMethodBind(className GLTFPhysicsShape, "to_node", 563689933)
  var ret: encoded CollisionShape3D
  methodbind.ptrcall(self, [getPtr cacheShapes], addr ret)
  (addr ret).decode_result(CollisionShape3D)

proc fromResource*(_: typedesc[GLTFPhysicsShape]; shapeResource: gdref Shape3D): gdref GLTFPhysicsShape =
  expandMethodBind(className GLTFPhysicsShape, "from_resource", 3845569786)
  var ret: encoded gdref GLTFPhysicsShape
  methodbind.ptrcall([getPtr shapeResource], addr ret)
  (addr ret).decode_result(gdref GLTFPhysicsShape)

proc toResource*(self: GLTFPhysicsShape; cacheShapes: bool = false): gdref Shape3D =
  expandMethodBind(className GLTFPhysicsShape, "to_resource", 1913542110)
  var ret: encoded gdref Shape3D
  methodbind.ptrcall(self, [getPtr cacheShapes], addr ret)
  (addr ret).decode_result(gdref Shape3D)

proc fromDictionary*(_: typedesc[GLTFPhysicsShape]; dictionary: Dictionary): gdref GLTFPhysicsShape =
  expandMethodBind(className GLTFPhysicsShape, "from_dictionary", 2390691823)
  var ret: encoded gdref GLTFPhysicsShape
  methodbind.ptrcall([getPtr dictionary], addr ret)
  (addr ret).decode_result(gdref GLTFPhysicsShape)

proc toDictionary*(self: GLTFPhysicsShape): Dictionary =
  expandMethodBind(className GLTFPhysicsShape, "to_dictionary", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary)

proc getShapeType*(self: GLTFPhysicsShape): String =
  expandMethodBind(className GLTFPhysicsShape, "get_shape_type", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setShapeType*(self: GLTFPhysicsShape; shapeType: String): void =
  expandMethodBind(className GLTFPhysicsShape, "set_shape_type", 83702148)
  methodbind.ptrcall(self, [getPtr shapeType])

proc getSize*(self: GLTFPhysicsShape): Vector3 =
  expandMethodBind(className GLTFPhysicsShape, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setSize*(self: GLTFPhysicsShape; size: Vector3): void =
  expandMethodBind(className GLTFPhysicsShape, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size])

proc getRadius*(self: GLTFPhysicsShape): Float =
  expandMethodBind(className GLTFPhysicsShape, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setRadius*(self: GLTFPhysicsShape; radius: Float): void =
  expandMethodBind(className GLTFPhysicsShape, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getHeight*(self: GLTFPhysicsShape): Float =
  expandMethodBind(className GLTFPhysicsShape, "get_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setHeight*(self: GLTFPhysicsShape; height: Float): void =
  expandMethodBind(className GLTFPhysicsShape, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height])

proc getIsTrigger*(self: GLTFPhysicsShape): bool =
  expandMethodBind(className GLTFPhysicsShape, "get_is_trigger", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setIsTrigger*(self: GLTFPhysicsShape; isTrigger: bool): void =
  expandMethodBind(className GLTFPhysicsShape, "set_is_trigger", 2586408642)
  methodbind.ptrcall(self, [getPtr isTrigger])

proc getMeshIndex*(self: GLTFPhysicsShape): int32 =
  expandMethodBind(className GLTFPhysicsShape, "get_mesh_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setMeshIndex*(self: GLTFPhysicsShape; meshIndex: int32): void =
  expandMethodBind(className GLTFPhysicsShape, "set_mesh_index", 1286410249)
  methodbind.ptrcall(self, [getPtr meshIndex])

proc getImporterMesh*(self: GLTFPhysicsShape): gdref ImporterMesh =
  expandMethodBind(className GLTFPhysicsShape, "get_importer_mesh", 3161779525)
  var ret: encoded gdref ImporterMesh
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref ImporterMesh)

proc setImporterMesh*(self: GLTFPhysicsShape; importerMesh: gdref ImporterMesh): void =
  expandMethodBind(className GLTFPhysicsShape, "set_importer_mesh", 2255166972)
  methodbind.ptrcall(self, [getPtr importerMesh])

template shapeType*(self: GLTFPhysicsShape): untyped = self.getShapeType()
template `shapeType=`*(self: GLTFPhysicsShape; value) = self.setShapeType(value)

template size*(self: GLTFPhysicsShape): untyped = self.getSize()
template `size=`*(self: GLTFPhysicsShape; value) = self.setSize(value)

template radius*(self: GLTFPhysicsShape): untyped = self.getRadius()
template `radius=`*(self: GLTFPhysicsShape; value) = self.setRadius(value)

template height*(self: GLTFPhysicsShape): untyped = self.getHeight()
template `height=`*(self: GLTFPhysicsShape; value) = self.setHeight(value)

template isTrigger*(self: GLTFPhysicsShape): untyped = self.getIsTrigger()
template `isTrigger=`*(self: GLTFPhysicsShape; value) = self.setIsTrigger(value)

template meshIndex*(self: GLTFPhysicsShape): untyped = self.getMeshIndex()
template `meshIndex=`*(self: GLTFPhysicsShape; value) = self.setMeshIndex(value)

template importerMesh*(self: GLTFPhysicsShape): untyped = self.getImporterMesh()
template `importerMesh=`*(self: GLTFPhysicsShape; value) = self.setImporterMesh(value)

const GLTFPhysicsShape_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFPhysicsShape]): Table[string, string] = GLTFPhysicsShape_vmap