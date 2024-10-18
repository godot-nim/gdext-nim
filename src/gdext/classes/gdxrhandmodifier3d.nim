{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

proc setHandTracker*(self: XrHandModifier3D; trackerName: StringName): void =
  expandMethodBind(className XrHandModifier3D, "set_hand_tracker", 3304788590)
  var `?param` = [getPtr trackerName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHandTracker*(self: XrHandModifier3D): StringName =
  expandMethodBind(className XrHandModifier3D, "get_hand_tracker", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setBoneUpdate*(self: XrHandModifier3D; boneUpdate: XrHandModifier3D_BoneUpdate): void =
  expandMethodBind(className XrHandModifier3D, "set_bone_update", 3635701455)
  var `?param` = [getPtr boneUpdate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBoneUpdate*(self: XrHandModifier3D): XrHandModifier3D_BoneUpdate =
  expandMethodBind(className XrHandModifier3D, "get_bone_update", 2873665691)
  var ret: encoded XrHandModifier3D_BoneUpdate
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(XrHandModifier3D_BoneUpdate)

template handTracker*(self: XrHandModifier3D): untyped = self.getHandTracker()
template `handTracker=`*(self: XrHandModifier3D; value) = self.setHandTracker(value)

template boneUpdate*(self: XrHandModifier3D): untyped = self.getBoneUpdate()
template `boneUpdate=`*(self: XrHandModifier3D; value) = self.setBoneUpdate(value)

const XrHandModifier3D_vmap =
  SkeletonModifier3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrHandModifier3D]): Table[string, string] = XrHandModifier3D_vmap