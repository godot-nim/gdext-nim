{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(OpenXRRenderModelManager, Node3D)

proc getTracker*(self: OpenXRRenderModelManager): OpenXRRenderModelManager_RenderModelTracker =
  expandMethodBind(className OpenXRRenderModelManager, "get_tracker", 2456466356)
  var ret: encoded OpenXRRenderModelManager_RenderModelTracker
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRRenderModelManager_RenderModelTracker)

proc setTracker*(self: OpenXRRenderModelManager; tracker: OpenXRRenderModelManager_RenderModelTracker): void =
  expandMethodBind(className OpenXRRenderModelManager, "set_tracker", 2814627380)
  methodbind.ptrcall(self, [getPtr tracker])

proc getMakeLocalToPose*(self: OpenXRRenderModelManager): String =
  expandMethodBind(className OpenXRRenderModelManager, "get_make_local_to_pose", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setMakeLocalToPose*(self: OpenXRRenderModelManager; makeLocalToPose: String): void =
  expandMethodBind(className OpenXRRenderModelManager, "set_make_local_to_pose", 83702148)
  methodbind.ptrcall(self, [getPtr makeLocalToPose])

template tracker*(self: OpenXRRenderModelManager): untyped = self.getTracker()
template `tracker=`*(self: OpenXRRenderModelManager; value) = self.setTracker(value)

template makeLocalToPose*(self: OpenXRRenderModelManager): untyped = self.getMakeLocalToPose()
template `makeLocalToPose=`*(self: OpenXRRenderModelManager; value) = self.setMakeLocalToPose(value)
