{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFPhysicsShape, Resource)

proc fromNode*(_: typedesc[GLTFPhysicsShape]; shapeNode: CollisionShape3D): gdref GLTFPhysicsShape =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "from_node", 3613751275)
  methodbind.ptrcall([getPtr shapeNode], gdref GLTFPhysicsShape)

proc toNode*(self: GLTFPhysicsShape; cacheShapes: bool = false): CollisionShape3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "to_node", 563689933)
  methodbind.ptrcall(self, [getPtr cacheShapes], CollisionShape3D)

proc fromResource*(_: typedesc[GLTFPhysicsShape]; shapeResource: gdref Shape3D): gdref GLTFPhysicsShape =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "from_resource", 3845569786)
  methodbind.ptrcall([getPtr shapeResource], gdref GLTFPhysicsShape)

proc toResource*(self: GLTFPhysicsShape; cacheShapes: bool = false): gdref Shape3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "to_resource", 1913542110)
  methodbind.ptrcall(self, [getPtr cacheShapes], gdref Shape3D)

proc fromDictionary*(_: typedesc[GLTFPhysicsShape]; dictionary: Dictionary): gdref GLTFPhysicsShape =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "from_dictionary", 2390691823)
  methodbind.ptrcall([getPtr dictionary], gdref GLTFPhysicsShape)

proc toDictionary*(self: GLTFPhysicsShape): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "to_dictionary", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc getShapeType*(self: GLTFPhysicsShape): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "get_shape_type", 201670096)
  methodbind.ptrcall(self, [], String)

proc setShapeType*(self: GLTFPhysicsShape; shapeType: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "set_shape_type", 83702148)
  methodbind.ptrcall(self, [getPtr shapeType], void)

proc getSize*(self: GLTFPhysicsShape): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "get_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setSize*(self: GLTFPhysicsShape; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size], void)

proc getRadius*(self: GLTFPhysicsShape): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRadius*(self: GLTFPhysicsShape; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getHeight*(self: GLTFPhysicsShape): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "get_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHeight*(self: GLTFPhysicsShape; height: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height], void)

proc getIsTrigger*(self: GLTFPhysicsShape): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "get_is_trigger", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setIsTrigger*(self: GLTFPhysicsShape; isTrigger: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "set_is_trigger", 2586408642)
  methodbind.ptrcall(self, [getPtr isTrigger], void)

proc getMeshIndex*(self: GLTFPhysicsShape): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "get_mesh_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMeshIndex*(self: GLTFPhysicsShape; meshIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "set_mesh_index", 1286410249)
  methodbind.ptrcall(self, [getPtr meshIndex], void)

proc getImporterMesh*(self: GLTFPhysicsShape): gdref ImporterMesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "get_importer_mesh", 3161779525)
  methodbind.ptrcall(self, [], gdref ImporterMesh)

proc setImporterMesh*(self: GLTFPhysicsShape; importerMesh: gdref ImporterMesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsShape, "set_importer_mesh", 2255166972)
  methodbind.ptrcall(self, [getPtr importerMesh], void)

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
