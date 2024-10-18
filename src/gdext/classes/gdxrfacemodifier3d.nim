{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setFaceTracker*(self: XrFaceModifier3D; trackerName: StringName): void =
  expandMethodBind(className XrFaceModifier3D, "set_face_tracker", 3304788590)
  var `?param` = [getPtr trackerName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFaceTracker*(self: XrFaceModifier3D): StringName =
  expandMethodBind(className XrFaceModifier3D, "get_face_tracker", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setTarget*(self: XrFaceModifier3D; target: NodePath): void =
  expandMethodBind(className XrFaceModifier3D, "set_target", 1348162250)
  var `?param` = [getPtr target]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTarget*(self: XrFaceModifier3D): NodePath =
  expandMethodBind(className XrFaceModifier3D, "get_target", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

template faceTracker*(self: XrFaceModifier3D): untyped = self.getFaceTracker()
template `faceTracker=`*(self: XrFaceModifier3D; value) = self.setFaceTracker(value)

template target*(self: XrFaceModifier3D): untyped = self.getTarget()
template `target=`*(self: XrFaceModifier3D; value) = self.setTarget(value)

const XrFaceModifier3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrFaceModifier3D]): Table[string, string] = XrFaceModifier3D_vmap