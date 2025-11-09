{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(OpenXRRenderModelManager, Node3D)

proc getTracker*(self: OpenXRRenderModelManager): OpenXRRenderModelManager_RenderModelTracker =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelManager, "get_tracker", 2456466356)
  methodbind.ptrcall(self, [], OpenXRRenderModelManager_RenderModelTracker)

proc setTracker*(self: OpenXRRenderModelManager; tracker: OpenXRRenderModelManager_RenderModelTracker): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelManager, "set_tracker", 2814627380)
  methodbind.ptrcall(self, [getPtr tracker], void)

proc getMakeLocalToPose*(self: OpenXRRenderModelManager): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelManager, "get_make_local_to_pose", 201670096)
  methodbind.ptrcall(self, [], String)

proc setMakeLocalToPose*(self: OpenXRRenderModelManager; makeLocalToPose: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRRenderModelManager, "set_make_local_to_pose", 83702148)
  methodbind.ptrcall(self, [getPtr makeLocalToPose], void)

template tracker*(self: OpenXRRenderModelManager): untyped = self.getTracker()
template `tracker=`*(self: OpenXRRenderModelManager; value) = self.setTracker(value)

template makeLocalToPose*(self: OpenXRRenderModelManager): untyped = self.getMakeLocalToPose()
template `makeLocalToPose=`*(self: OpenXRRenderModelManager; value) = self.setMakeLocalToPose(value)
