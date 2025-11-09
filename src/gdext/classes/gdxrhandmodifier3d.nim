{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdskeletonmodifier3d; export gdskeletonmodifier3d

expandOnClassImported(XRHandModifier3D, SkeletonModifier3D)

proc setHandTracker*(self: XRHandModifier3D; trackerName: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandModifier3D, "set_hand_tracker", 3304788590)
  methodbind.ptrcall(self, [getPtr trackerName], void)

proc getHandTracker*(self: XRHandModifier3D): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandModifier3D, "get_hand_tracker", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setBoneUpdate*(self: XRHandModifier3D; boneUpdate: XRHandModifier3D_BoneUpdate): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandModifier3D, "set_bone_update", 3635701455)
  methodbind.ptrcall(self, [getPtr boneUpdate], void)

proc getBoneUpdate*(self: XRHandModifier3D): XRHandModifier3D_BoneUpdate =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRHandModifier3D, "get_bone_update", 2873665691)
  methodbind.ptrcall(self, [], XRHandModifier3D_BoneUpdate)

template handTracker*(self: XRHandModifier3D): untyped = self.getHandTracker()
template `handTracker=`*(self: XRHandModifier3D; value) = self.setHandTracker(value)

template boneUpdate*(self: XRHandModifier3D): untyped = self.getBoneUpdate()
template `boneUpdate=`*(self: XRHandModifier3D; value) = self.setBoneUpdate(value)
