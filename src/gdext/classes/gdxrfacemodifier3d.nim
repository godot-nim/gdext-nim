{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setFaceTracker*(self: XRFaceModifier3D; trackerName: StringName): void =
  expandMethodBind(className XRFaceModifier3D, "set_face_tracker", 3304788590)
  methodbind.ptrcall(self, [getPtr trackerName])

proc getFaceTracker*(self: XRFaceModifier3D): StringName =
  expandMethodBind(className XRFaceModifier3D, "get_face_tracker", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc setTarget*(self: XRFaceModifier3D; target: NodePath): void =
  expandMethodBind(className XRFaceModifier3D, "set_target", 1348162250)
  methodbind.ptrcall(self, [getPtr target])

proc getTarget*(self: XRFaceModifier3D): NodePath =
  expandMethodBind(className XRFaceModifier3D, "get_target", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

template faceTracker*(self: XRFaceModifier3D): untyped = self.getFaceTracker()
template `faceTracker=`*(self: XRFaceModifier3D; value) = self.setFaceTracker(value)

template target*(self: XRFaceModifier3D): untyped = self.getTarget()
template `target=`*(self: XRFaceModifier3D; value) = self.setTarget(value)

const XRFaceModifier3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRFaceModifier3D]): Table[string, string] = XRFaceModifier3D_vmap