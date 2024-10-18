{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc fromNode*(_: GltfPhysicsBody; bodyNode: CollisionObject3D): gdref GltfPhysicsBody =
  expandMethodBind(className GltfPhysicsBody, "from_node", 420544174)
  var `?param` = [getPtr bodyNode]
  var ret: encoded gdref GltfPhysicsBody
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref GltfPhysicsBody)

proc toNode*(self: GltfPhysicsBody): CollisionObject3D =
  expandMethodBind(className GltfPhysicsBody, "to_node", 3224013656)
  var ret: encoded CollisionObject3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CollisionObject3D)

proc fromDictionary*(_: GltfPhysicsBody; dictionary: Dictionary): gdref GltfPhysicsBody =
  expandMethodBind(className GltfPhysicsBody, "from_dictionary", 1177544336)
  var `?param` = [getPtr dictionary]
  var ret: encoded gdref GltfPhysicsBody
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref GltfPhysicsBody)

proc toDictionary*(self: GltfPhysicsBody): Dictionary =
  expandMethodBind(className GltfPhysicsBody, "to_dictionary", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getBodyType*(self: GltfPhysicsBody): String =
  expandMethodBind(className GltfPhysicsBody, "get_body_type", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setBodyType*(self: GltfPhysicsBody; bodyType: String): void =
  expandMethodBind(className GltfPhysicsBody, "set_body_type", 83702148)
  var `?param` = [getPtr bodyType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMass*(self: GltfPhysicsBody): Float =
  expandMethodBind(className GltfPhysicsBody, "get_mass", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMass*(self: GltfPhysicsBody; mass: Float): void =
  expandMethodBind(className GltfPhysicsBody, "set_mass", 373806689)
  var `?param` = [getPtr mass]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLinearVelocity*(self: GltfPhysicsBody): Vector3 =
  expandMethodBind(className GltfPhysicsBody, "get_linear_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setLinearVelocity*(self: GltfPhysicsBody; linearVelocity: Vector3): void =
  expandMethodBind(className GltfPhysicsBody, "set_linear_velocity", 3460891852)
  var `?param` = [getPtr linearVelocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAngularVelocity*(self: GltfPhysicsBody): Vector3 =
  expandMethodBind(className GltfPhysicsBody, "get_angular_velocity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setAngularVelocity*(self: GltfPhysicsBody; angularVelocity: Vector3): void =
  expandMethodBind(className GltfPhysicsBody, "set_angular_velocity", 3460891852)
  var `?param` = [getPtr angularVelocity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCenterOfMass*(self: GltfPhysicsBody): Vector3 =
  expandMethodBind(className GltfPhysicsBody, "get_center_of_mass", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setCenterOfMass*(self: GltfPhysicsBody; centerOfMass: Vector3): void =
  expandMethodBind(className GltfPhysicsBody, "set_center_of_mass", 3460891852)
  var `?param` = [getPtr centerOfMass]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInertiaDiagonal*(self: GltfPhysicsBody): Vector3 =
  expandMethodBind(className GltfPhysicsBody, "get_inertia_diagonal", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setInertiaDiagonal*(self: GltfPhysicsBody; inertiaDiagonal: Vector3): void =
  expandMethodBind(className GltfPhysicsBody, "set_inertia_diagonal", 3460891852)
  var `?param` = [getPtr inertiaDiagonal]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInertiaOrientation*(self: GltfPhysicsBody): Quaternion =
  expandMethodBind(className GltfPhysicsBody, "get_inertia_orientation", 1222331677)
  var ret: encoded Quaternion
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Quaternion)

proc setInertiaOrientation*(self: GltfPhysicsBody; inertiaOrientation: Quaternion): void =
  expandMethodBind(className GltfPhysicsBody, "set_inertia_orientation", 1727505552)
  var `?param` = [getPtr inertiaOrientation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInertiaTensor*(self: GltfPhysicsBody): Basis =
  expandMethodBind(className GltfPhysicsBody, "get_inertia_tensor", 2716978435)
  var ret: encoded Basis
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Basis)

proc setInertiaTensor*(self: GltfPhysicsBody; inertiaTensor: Basis): void =
  expandMethodBind(className GltfPhysicsBody, "set_inertia_tensor", 1055510324)
  var `?param` = [getPtr inertiaTensor]
  methodbind.ptrcall(self, addr `?param`[0])

template bodyType*(self: GltfPhysicsBody): untyped = self.getBodyType()
template `bodyType=`*(self: GltfPhysicsBody; value) = self.setBodyType(value)

template mass*(self: GltfPhysicsBody): untyped = self.getMass()
template `mass=`*(self: GltfPhysicsBody; value) = self.setMass(value)

template linearVelocity*(self: GltfPhysicsBody): untyped = self.getLinearVelocity()
template `linearVelocity=`*(self: GltfPhysicsBody; value) = self.setLinearVelocity(value)

template angularVelocity*(self: GltfPhysicsBody): untyped = self.getAngularVelocity()
template `angularVelocity=`*(self: GltfPhysicsBody; value) = self.setAngularVelocity(value)

template centerOfMass*(self: GltfPhysicsBody): untyped = self.getCenterOfMass()
template `centerOfMass=`*(self: GltfPhysicsBody; value) = self.setCenterOfMass(value)

template inertiaDiagonal*(self: GltfPhysicsBody): untyped = self.getInertiaDiagonal()
template `inertiaDiagonal=`*(self: GltfPhysicsBody; value) = self.setInertiaDiagonal(value)

template inertiaOrientation*(self: GltfPhysicsBody): untyped = self.getInertiaOrientation()
template `inertiaOrientation=`*(self: GltfPhysicsBody; value) = self.setInertiaOrientation(value)

template inertiaTensor*(self: GltfPhysicsBody): untyped = self.getInertiaTensor()
template `inertiaTensor=`*(self: GltfPhysicsBody; value) = self.setInertiaTensor(value)

const GltfPhysicsBody_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfPhysicsBody]): Table[string, string] = GltfPhysicsBody_vmap