{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getOriginalName*(self: GLTFNode): String =
  expandMethodBind(className GLTFNode, "get_original_name", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setOriginalName*(self: GLTFNode; originalName: String): void =
  expandMethodBind(className GLTFNode, "set_original_name", 83702148)
  var `?param` = [getPtr originalName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getParent*(self: GLTFNode): int32 =
  expandMethodBind(className GLTFNode, "get_parent", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setParent*(self: GLTFNode; parent: int32): void =
  expandMethodBind(className GLTFNode, "set_parent", 1286410249)
  var `?param` = [getPtr parent]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHeight*(self: GLTFNode): int32 =
  expandMethodBind(className GLTFNode, "get_height", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setHeight*(self: GLTFNode; height: int32): void =
  expandMethodBind(className GLTFNode, "set_height", 1286410249)
  var `?param` = [getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc getXform*(self: GLTFNode): Transform3D =
  expandMethodBind(className GLTFNode, "get_xform", 4183770049)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc setXform*(self: GLTFNode; xform: Transform3D): void =
  expandMethodBind(className GLTFNode, "set_xform", 2952846383)
  var `?param` = [getPtr xform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMesh*(self: GLTFNode): int32 =
  expandMethodBind(className GLTFNode, "get_mesh", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMesh*(self: GLTFNode; mesh: int32): void =
  expandMethodBind(className GLTFNode, "set_mesh", 1286410249)
  var `?param` = [getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCamera*(self: GLTFNode): int32 =
  expandMethodBind(className GLTFNode, "get_camera", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setCamera*(self: GLTFNode; camera: int32): void =
  expandMethodBind(className GLTFNode, "set_camera", 1286410249)
  var `?param` = [getPtr camera]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkin*(self: GLTFNode): int32 =
  expandMethodBind(className GLTFNode, "get_skin", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSkin*(self: GLTFNode; skin: int32): void =
  expandMethodBind(className GLTFNode, "set_skin", 1286410249)
  var `?param` = [getPtr skin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSkeleton*(self: GLTFNode): int32 =
  expandMethodBind(className GLTFNode, "get_skeleton", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSkeleton*(self: GLTFNode; skeleton: int32): void =
  expandMethodBind(className GLTFNode, "set_skeleton", 1286410249)
  var `?param` = [getPtr skeleton]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPosition*(self: GLTFNode): Vector3 =
  expandMethodBind(className GLTFNode, "get_position", 3783033775)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setPosition*(self: GLTFNode; position: Vector3): void =
  expandMethodBind(className GLTFNode, "set_position", 3460891852)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRotation*(self: GLTFNode): Quaternion =
  expandMethodBind(className GLTFNode, "get_rotation", 2916281908)
  var ret: encoded Quaternion
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Quaternion)

proc setRotation*(self: GLTFNode; rotation: Quaternion): void =
  expandMethodBind(className GLTFNode, "set_rotation", 1727505552)
  var `?param` = [getPtr rotation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getScale*(self: GLTFNode): Vector3 =
  expandMethodBind(className GLTFNode, "get_scale", 3783033775)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setScale*(self: GLTFNode; scale: Vector3): void =
  expandMethodBind(className GLTFNode, "set_scale", 3460891852)
  var `?param` = [getPtr scale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getChildren*(self: GLTFNode): PackedInt32Array =
  expandMethodBind(className GLTFNode, "get_children", 969006518)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc setChildren*(self: GLTFNode; children: PackedInt32Array): void =
  expandMethodBind(className GLTFNode, "set_children", 3614634198)
  var `?param` = [getPtr children]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLight*(self: GLTFNode): int32 =
  expandMethodBind(className GLTFNode, "get_light", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setLight*(self: GLTFNode; light: int32): void =
  expandMethodBind(className GLTFNode, "set_light", 1286410249)
  var `?param` = [getPtr light]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAdditionalData*(self: GLTFNode; extensionName: StringName): Variant =
  expandMethodBind(className GLTFNode, "get_additional_data", 2138907829)
  var `?param` = [getPtr extensionName]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setAdditionalData*(self: GLTFNode; extensionName: StringName; additionalData: Variant): void =
  expandMethodBind(className GLTFNode, "set_additional_data", 3776071444)
  var `?param` = [getPtr extensionName, getPtr additionalData]
  methodbind.ptrcall(self, addr `?param`[0])

template originalName*(self: GLTFNode): untyped = self.getOriginalName()
template `originalName=`*(self: GLTFNode; value) = self.setOriginalName(value)

template parent*(self: GLTFNode): untyped = self.getParent()
template `parent=`*(self: GLTFNode; value) = self.setParent(value)

template height*(self: GLTFNode): untyped = self.getHeight()
template `height=`*(self: GLTFNode; value) = self.setHeight(value)

template xform*(self: GLTFNode): untyped = self.getXform()
template `xform=`*(self: GLTFNode; value) = self.setXform(value)

template mesh*(self: GLTFNode): untyped = self.getMesh()
template `mesh=`*(self: GLTFNode; value) = self.setMesh(value)

template camera*(self: GLTFNode): untyped = self.getCamera()
template `camera=`*(self: GLTFNode; value) = self.setCamera(value)

template skin*(self: GLTFNode): untyped = self.getSkin()
template `skin=`*(self: GLTFNode; value) = self.setSkin(value)

template skeleton*(self: GLTFNode): untyped = self.getSkeleton()
template `skeleton=`*(self: GLTFNode; value) = self.setSkeleton(value)

template position*(self: GLTFNode): untyped = self.getPosition()
template `position=`*(self: GLTFNode; value) = self.setPosition(value)

template rotation*(self: GLTFNode): untyped = self.getRotation()
template `rotation=`*(self: GLTFNode; value) = self.setRotation(value)

template scale*(self: GLTFNode): untyped = self.getScale()
template `scale=`*(self: GLTFNode; value) = self.setScale(value)

template children*(self: GLTFNode): untyped = self.getChildren()
template `children=`*(self: GLTFNode; value) = self.setChildren(value)

template light*(self: GLTFNode): untyped = self.getLight()
template `light=`*(self: GLTFNode; value) = self.setLight(value)

const GLTFNode_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFNode]): Table[string, string] = GLTFNode_vmap