{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialentitytracker; export gdopenxrspatialentitytracker

expandOnClassImported(OpenXRPlaneTracker, OpenXRSpatialEntityTracker)

proc setBoundsSize*(self: OpenXRPlaneTracker; boundsSize: Vector2): void =
  expandMethodBind(className OpenXRPlaneTracker, "set_bounds_size", 743155724)
  methodbind.ptrcall(self, [getPtr boundsSize])

proc getBoundsSize*(self: OpenXRPlaneTracker): Vector2 =
  expandMethodBind(className OpenXRPlaneTracker, "get_bounds_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setPlaneAlignment*(self: OpenXRPlaneTracker; planeAlignment: OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment): void =
  expandMethodBind(className OpenXRPlaneTracker, "set_plane_alignment", 1214382230)
  methodbind.ptrcall(self, [getPtr planeAlignment])

proc getPlaneAlignment*(self: OpenXRPlaneTracker): OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment =
  expandMethodBind(className OpenXRPlaneTracker, "get_plane_alignment", 845541441)
  var ret: encoded OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment)

proc setPlaneLabel*(self: OpenXRPlaneTracker; planeLabel: String): void =
  expandMethodBind(className OpenXRPlaneTracker, "set_plane_label", 83702148)
  methodbind.ptrcall(self, [getPtr planeLabel])

proc getPlaneLabel*(self: OpenXRPlaneTracker): String =
  expandMethodBind(className OpenXRPlaneTracker, "get_plane_label", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setMeshData*(self: OpenXRPlaneTracker; origin: Transform3D; vertices: PackedVector2Array; indices: PackedInt32Array = PackedInt32Array()): void =
  expandMethodBind(className OpenXRPlaneTracker, "set_mesh_data", 1877193149)
  methodbind.ptrcall(self, [getPtr origin, getPtr vertices, getPtr indices])

proc clearMeshData*(self: OpenXRPlaneTracker): void =
  expandMethodBind(className OpenXRPlaneTracker, "clear_mesh_data", 3218959716)
  methodbind.ptrcall(self, [])

proc getMeshOffset*(self: OpenXRPlaneTracker): Transform3D =
  expandMethodBind(className OpenXRPlaneTracker, "get_mesh_offset", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Transform3D)

proc getMesh*(self: OpenXRPlaneTracker): gdref Mesh =
  expandMethodBind(className OpenXRPlaneTracker, "get_mesh", 4081188045)
  var ret: encoded gdref Mesh
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Mesh)

proc getShape*(self: OpenXRPlaneTracker; thickness: Float = 0.01): gdref Shape3D =
  expandMethodBind(className OpenXRPlaneTracker, "get_shape", 3358509884)
  var ret: encoded gdref Shape3D
  methodbind.ptrcall(self, [getPtr thickness], addr ret)
  (addr ret).decode_result(gdref Shape3D)

template boundsSize*(self: OpenXRPlaneTracker): untyped = self.getBoundsSize()
template `boundsSize=`*(self: OpenXRPlaneTracker; value) = self.setBoundsSize(value)

template planeAlignment*(self: OpenXRPlaneTracker): untyped = self.getPlaneAlignment()
template `planeAlignment=`*(self: OpenXRPlaneTracker; value) = self.setPlaneAlignment(value)

template planeLabel*(self: OpenXRPlaneTracker): untyped = self.getPlaneLabel()
template `planeLabel=`*(self: OpenXRPlaneTracker; value) = self.setPlaneLabel(value)
