{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

proc setHandTracker*(self: XRHandModifier3D; trackerName: StringName): void =
  expandMethodBind(className XRHandModifier3D, "set_hand_tracker", 3304788590)
  methodbind.ptrcall(self, [getPtr trackerName])

proc getHandTracker*(self: XRHandModifier3D): StringName =
  expandMethodBind(className XRHandModifier3D, "get_hand_tracker", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc setBoneUpdate*(self: XRHandModifier3D; boneUpdate: XRHandModifier3D_BoneUpdate): void =
  expandMethodBind(className XRHandModifier3D, "set_bone_update", 3635701455)
  methodbind.ptrcall(self, [getPtr boneUpdate])

proc getBoneUpdate*(self: XRHandModifier3D): XRHandModifier3D_BoneUpdate =
  expandMethodBind(className XRHandModifier3D, "get_bone_update", 2873665691)
  var ret: encoded XRHandModifier3D_BoneUpdate
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(XRHandModifier3D_BoneUpdate)

template handTracker*(self: XRHandModifier3D): untyped = self.getHandTracker()
template `handTracker=`*(self: XRHandModifier3D; value) = self.setHandTracker(value)

template boneUpdate*(self: XRHandModifier3D): untyped = self.getBoneUpdate()
template `boneUpdate=`*(self: XRHandModifier3D; value) = self.setBoneUpdate(value)

const XRHandModifier3D_vmap =
  SkeletonModifier3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRHandModifier3D]): Table[string, string] = XRHandModifier3D_vmap