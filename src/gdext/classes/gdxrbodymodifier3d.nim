{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

expandOnClassImported(XRBodyModifier3D, SkeletonModifier3D)

proc setBodyTracker*(self: XRBodyModifier3D; trackerName: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRBodyModifier3D, "set_body_tracker", 3304788590)
  methodbind.ptrcall(self, [getPtr trackerName], void)

proc getBodyTracker*(self: XRBodyModifier3D): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRBodyModifier3D, "get_body_tracker", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setBodyUpdate*(self: XRBodyModifier3D; bodyUpdate: set[XRBodyModifier3D_BodyUpdate]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRBodyModifier3D, "set_body_update", 2211199417)
  methodbind.ptrcall(self, [getPtr bodyUpdate], void)

proc getBodyUpdate*(self: XRBodyModifier3D): set[XRBodyModifier3D_BodyUpdate] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRBodyModifier3D, "get_body_update", 2642335328)
  methodbind.ptrcall(self, [], set[XRBodyModifier3D_BodyUpdate])

proc setBoneUpdate*(self: XRBodyModifier3D; boneUpdate: XRBodyModifier3D_BoneUpdate): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRBodyModifier3D, "set_bone_update", 3356796943)
  methodbind.ptrcall(self, [getPtr boneUpdate], void)

proc getBoneUpdate*(self: XRBodyModifier3D): XRBodyModifier3D_BoneUpdate =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRBodyModifier3D, "get_bone_update", 1309305964)
  methodbind.ptrcall(self, [], XRBodyModifier3D_BoneUpdate)

template bodyTracker*(self: XRBodyModifier3D): untyped = self.getBodyTracker()
template `bodyTracker=`*(self: XRBodyModifier3D; value) = self.setBodyTracker(value)

template bodyUpdate*(self: XRBodyModifier3D): untyped = self.getBodyUpdate()
template `bodyUpdate=`*(self: XRBodyModifier3D; value) = self.setBodyUpdate(value)

template boneUpdate*(self: XRBodyModifier3D): untyped = self.getBoneUpdate()
template `boneUpdate=`*(self: XRBodyModifier3D; value) = self.setBoneUpdate(value)
