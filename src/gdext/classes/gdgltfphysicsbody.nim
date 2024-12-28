{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc fromNode*(_: typedesc[GLTFPhysicsBody]; bodyNode: CollisionObject3D): gdref GLTFPhysicsBody =
  expandMethodBind(className GLTFPhysicsBody, "from_node", 420544174)
  var ret: encoded gdref GLTFPhysicsBody
  methodbind.ptrcall([getPtr bodyNode], addr ret)
  (addr ret).decode_result(gdref GLTFPhysicsBody)

proc toNode*(self: GLTFPhysicsBody): CollisionObject3D =
  expandMethodBind(className GLTFPhysicsBody, "to_node", 3224013656)
  var ret: encoded CollisionObject3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(CollisionObject3D)

proc fromDictionary*(_: typedesc[GLTFPhysicsBody]; dictionary: Dictionary): gdref GLTFPhysicsBody =
  expandMethodBind(className GLTFPhysicsBody, "from_dictionary", 1177544336)
  var ret: encoded gdref GLTFPhysicsBody
  methodbind.ptrcall([getPtr dictionary], addr ret)
  (addr ret).decode_result(gdref GLTFPhysicsBody)

proc toDictionary*(self: GLTFPhysicsBody): Dictionary =
  expandMethodBind(className GLTFPhysicsBody, "to_dictionary", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary)

proc getBodyType*(self: GLTFPhysicsBody): String =
  expandMethodBind(className GLTFPhysicsBody, "get_body_type", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setBodyType*(self: GLTFPhysicsBody; bodyType: String): void =
  expandMethodBind(className GLTFPhysicsBody, "set_body_type", 83702148)
  methodbind.ptrcall(self, [getPtr bodyType])

proc getMass*(self: GLTFPhysicsBody): Float =
  expandMethodBind(className GLTFPhysicsBody, "get_mass", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setMass*(self: GLTFPhysicsBody; mass: Float): void =
  expandMethodBind(className GLTFPhysicsBody, "set_mass", 373806689)
  methodbind.ptrcall(self, [getPtr mass])

proc getLinearVelocity*(self: GLTFPhysicsBody): Vector3 =
  expandMethodBind(className GLTFPhysicsBody, "get_linear_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setLinearVelocity*(self: GLTFPhysicsBody; linearVelocity: Vector3): void =
  expandMethodBind(className GLTFPhysicsBody, "set_linear_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr linearVelocity])

proc getAngularVelocity*(self: GLTFPhysicsBody): Vector3 =
  expandMethodBind(className GLTFPhysicsBody, "get_angular_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setAngularVelocity*(self: GLTFPhysicsBody; angularVelocity: Vector3): void =
  expandMethodBind(className GLTFPhysicsBody, "set_angular_velocity", 3460891852)
  methodbind.ptrcall(self, [getPtr angularVelocity])

proc getCenterOfMass*(self: GLTFPhysicsBody): Vector3 =
  expandMethodBind(className GLTFPhysicsBody, "get_center_of_mass", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setCenterOfMass*(self: GLTFPhysicsBody; centerOfMass: Vector3): void =
  expandMethodBind(className GLTFPhysicsBody, "set_center_of_mass", 3460891852)
  methodbind.ptrcall(self, [getPtr centerOfMass])

proc getInertiaDiagonal*(self: GLTFPhysicsBody): Vector3 =
  expandMethodBind(className GLTFPhysicsBody, "get_inertia_diagonal", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setInertiaDiagonal*(self: GLTFPhysicsBody; inertiaDiagonal: Vector3): void =
  expandMethodBind(className GLTFPhysicsBody, "set_inertia_diagonal", 3460891852)
  methodbind.ptrcall(self, [getPtr inertiaDiagonal])

proc getInertiaOrientation*(self: GLTFPhysicsBody): Quaternion =
  expandMethodBind(className GLTFPhysicsBody, "get_inertia_orientation", 1222331677)
  var ret: encoded Quaternion
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Quaternion)

proc setInertiaOrientation*(self: GLTFPhysicsBody; inertiaOrientation: Quaternion): void =
  expandMethodBind(className GLTFPhysicsBody, "set_inertia_orientation", 1727505552)
  methodbind.ptrcall(self, [getPtr inertiaOrientation])

proc getInertiaTensor*(self: GLTFPhysicsBody): Basis =
  expandMethodBind(className GLTFPhysicsBody, "get_inertia_tensor", 2716978435)
  var ret: encoded Basis
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Basis)

proc setInertiaTensor*(self: GLTFPhysicsBody; inertiaTensor: Basis): void =
  expandMethodBind(className GLTFPhysicsBody, "set_inertia_tensor", 1055510324)
  methodbind.ptrcall(self, [getPtr inertiaTensor])

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

const GLTFPhysicsBody_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFPhysicsBody]): Table[string, string] = GLTFPhysicsBody_vmap