{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

proc setBodyTracker*(self: XrBodyModifier3D; trackerName: StringName): void =
  expandMethodBind(className XrBodyModifier3D, "set_body_tracker", 3304788590)
  var `?param` = [getPtr trackerName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBodyTracker*(self: XrBodyModifier3D): StringName =
  expandMethodBind(className XrBodyModifier3D, "get_body_tracker", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setBodyUpdate*(self: XrBodyModifier3D; bodyUpdate: set[XrBodyModifier3D_BodyUpdate]): void =
  expandMethodBind(className XrBodyModifier3D, "set_body_update", 2211199417)
  var `?param` = [getPtr bodyUpdate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBodyUpdate*(self: XrBodyModifier3D): set[XrBodyModifier3D_BodyUpdate] =
  expandMethodBind(className XrBodyModifier3D, "get_body_update", 2642335328)
  var ret: encoded set[XrBodyModifier3D_BodyUpdate]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[XrBodyModifier3D_BodyUpdate])

proc setBoneUpdate*(self: XrBodyModifier3D; boneUpdate: XrBodyModifier3D_BoneUpdate): void =
  expandMethodBind(className XrBodyModifier3D, "set_bone_update", 3356796943)
  var `?param` = [getPtr boneUpdate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBoneUpdate*(self: XrBodyModifier3D): XrBodyModifier3D_BoneUpdate =
  expandMethodBind(className XrBodyModifier3D, "get_bone_update", 1309305964)
  var ret: encoded XrBodyModifier3D_BoneUpdate
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(XrBodyModifier3D_BoneUpdate)

template bodyTracker*(self: XrBodyModifier3D): untyped = self.getBodyTracker()
template `bodyTracker=`*(self: XrBodyModifier3D; value) = self.setBodyTracker(value)

template bodyUpdate*(self: XrBodyModifier3D): untyped = self.getBodyUpdate()
template `bodyUpdate=`*(self: XrBodyModifier3D; value) = self.setBodyUpdate(value)

template boneUpdate*(self: XrBodyModifier3D): untyped = self.getBoneUpdate()
template `boneUpdate=`*(self: XrBodyModifier3D; value) = self.setBoneUpdate(value)

const XrBodyModifier3D_vmap =
  SkeletonModifier3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrBodyModifier3D]): Table[string, string] = XrBodyModifier3D_vmap