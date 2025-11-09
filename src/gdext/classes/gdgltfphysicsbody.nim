{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFPhysicsBody, Resource)

proc fromNode*(_: typedesc[GLTFPhysicsBody]; bodyNode: CollisionObject3D): gdref GLTFPhysicsBody =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "from_node", 420544174)
  methodbind.ptrcall([getPtr bodyNode], gdref GLTFPhysicsBody)

proc toNode*(self: GLTFPhysicsBody): CollisionObject3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "to_node", 3224013656)
  methodbind.ptrcall(self, [], CollisionObject3D)

proc fromDictionary*(_: typedesc[GLTFPhysicsBody]; dictionary: Dictionary): gdref GLTFPhysicsBody =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "from_dictionary", 1177544336)
  methodbind.ptrcall([getPtr dictionary], gdref GLTFPhysicsBody)

proc toDictionary*(self: GLTFPhysicsBody): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "to_dictionary", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc getBodyType*(self: GLTFPhysicsBody): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "get_body_type", 201670096)
  methodbind.ptrcall(self, [], String)

proc setBodyType*(self: GLTFPhysicsBody; bodyType: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "set_body_type", 83702148)
  methodbind.ptrcall(self, [getPtr bodyType], void)

proc getMass*(self: GLTFPhysicsBody): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "get_mass", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMass*(self: GLTFPhysicsBody; mass: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "set_mass", 373806689)
  methodbind.ptrcall(self, [getPtr mass], void)

proc getLinearVelocity*(self: GLTFPhysicsBody): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "get_linear_velocity", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setLinearVelocity*(self: GLTFPhysicsBody; linearVelocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "set_linear_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr linearVelocity], void)

proc getAngularVelocity*(self: GLTFPhysicsBody): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "get_angular_velocity", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setAngularVelocity*(self: GLTFPhysicsBody; angularVelocity: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "set_angular_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr angularVelocity], void)

proc getCenterOfMass*(self: GLTFPhysicsBody): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "get_center_of_mass", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setCenterOfMass*(self: GLTFPhysicsBody; centerOfMass: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "set_center_of_mass", 3460891852)
  methodbind.ptrcall(self, [getPtr centerOfMass], void)

proc getInertiaDiagonal*(self: GLTFPhysicsBody): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "get_inertia_diagonal", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setInertiaDiagonal*(self: GLTFPhysicsBody; inertiaDiagonal: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "set_inertia_diagonal", 3460891852)
  methodbind.ptrcall(self, [getPtr inertiaDiagonal], void)

proc getInertiaOrientation*(self: GLTFPhysicsBody): Quaternion =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "get_inertia_orientation", 1222331677)
  methodbind.ptrcall(self, [], Quaternion)

proc setInertiaOrientation*(self: GLTFPhysicsBody; inertiaOrientation: Quaternion): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "set_inertia_orientation", 1727505552)
  methodbind.ptrcall(self, [getPtr inertiaOrientation], void)

proc getInertiaTensor*(self: GLTFPhysicsBody): Basis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "get_inertia_tensor", 2716978435)
  methodbind.ptrcall(self, [], Basis)

proc setInertiaTensor*(self: GLTFPhysicsBody; inertiaTensor: Basis): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFPhysicsBody, "set_inertia_tensor", 1055510324)
  methodbind.ptrcall(self, [getPtr inertiaTensor], void)

template bodyType*(self: GLTFPhysicsBody): untyped = self.getBodyType()
template `bodyType=`*(self: GLTFPhysicsBody; value) = self.setBodyType(value)

template mass*(self: GLTFPhysicsBody): untyped = self.getMass()
template `mass=`*(self: GLTFPhysicsBody; value) = self.setMass(value)

template linearVelocity*(self: GLTFPhysicsBody): untyped = self.getLinearVelocity()
template `linearVelocity=`*(self: GLTFPhysicsBody; value) = self.setLinearVelocity(value)

template angularVelocity*(self: GLTFPhysicsBody): untyped = self.getAngularVelocity()
template `angularVelocity=`*(self: GLTFPhysicsBody; value) = self.setAngularVelocity(value)

template centerOfMass*(self: GLTFPhysicsBody): untyped = self.getCenterOfMass()
template `centerOfMass=`*(self: GLTFPhysicsBody; value) = self.setCenterOfMass(value)

template inertiaDiagonal*(self: GLTFPhysicsBody): untyped = self.getInertiaDiagonal()
template `inertiaDiagonal=`*(self: GLTFPhysicsBody; value) = self.setInertiaDiagonal(value)

template inertiaOrientation*(self: GLTFPhysicsBody): untyped = self.getInertiaOrientation()
template `inertiaOrientation=`*(self: GLTFPhysicsBody; value) = self.setInertiaOrientation(value)

template inertiaTensor*(self: GLTFPhysicsBody): untyped = self.getInertiaTensor()
template `inertiaTensor=`*(self: GLTFPhysicsBody; value) = self.setInertiaTensor(value)
