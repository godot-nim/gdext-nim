{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

proc setBodyTracker*(self: XRBodyModifier3D; trackerName: StringName): void =
  expandMethodBind(className XRBodyModifier3D, "set_body_tracker", 3304788590)
  var `?param` = [getPtr trackerName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBodyTracker*(self: XRBodyModifier3D): StringName =
  expandMethodBind(className XRBodyModifier3D, "get_body_tracker", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setBodyUpdate*(self: XRBodyModifier3D; bodyUpdate: set[XRBodyModifier3D_BodyUpdate]): void =
  expandMethodBind(className XRBodyModifier3D, "set_body_update", 2211199417)
  var `?param` = [getPtr bodyUpdate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBodyUpdate*(self: XRBodyModifier3D): set[XRBodyModifier3D_BodyUpdate] =
  expandMethodBind(className XRBodyModifier3D, "get_body_update", 2642335328)
  var ret: encoded set[XRBodyModifier3D_BodyUpdate]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[XRBodyModifier3D_BodyUpdate])

proc setBoneUpdate*(self: XRBodyModifier3D; boneUpdate: XRBodyModifier3D_BoneUpdate): void =
  expandMethodBind(className XRBodyModifier3D, "set_bone_update", 3356796943)
  var `?param` = [getPtr boneUpdate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBoneUpdate*(self: XRBodyModifier3D): XRBodyModifier3D_BoneUpdate =
  expandMethodBind(className XRBodyModifier3D, "get_bone_update", 1309305964)
  var ret: encoded XRBodyModifier3D_BoneUpdate
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(XRBodyModifier3D_BoneUpdate)

template bodyTracker*(self: XRBodyModifier3D): untyped = self.getBodyTracker()
template `bodyTracker=`*(self: XRBodyModifier3D; value) = self.setBodyTracker(value)

template bodyUpdate*(self: XRBodyModifier3D): untyped = self.getBodyUpdate()
template `bodyUpdate=`*(self: XRBodyModifier3D; value) = self.setBodyUpdate(value)

template boneUpdate*(self: XRBodyModifier3D): untyped = self.getBoneUpdate()
template `boneUpdate=`*(self: XRBodyModifier3D; value) = self.setBoneUpdate(value)

const XRBodyModifier3D_vmap =
  SkeletonModifier3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRBodyModifier3D]): Table[string, string] = XRBodyModifier3D_vmap