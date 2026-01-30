{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialcapabilityconfigurationbaseheader; export gdopenxrspatialcapabilityconfigurationbaseheader

expandOnClassImported(OpenXRSpatialCapabilityConfigurationPlaneTracking, OpenXRSpatialCapabilityConfigurationBaseHeader)

proc supportsMesh2D*(self: OpenXRSpatialCapabilityConfigurationPlaneTracking): bool =
  expandMethodBind(className OpenXRSpatialCapabilityConfigurationPlaneTracking, "supports_mesh_2d", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc supportsPolygons*(self: OpenXRSpatialCapabilityConfigurationPlaneTracking): bool =
  expandMethodBind(className OpenXRSpatialCapabilityConfigurationPlaneTracking, "supports_polygons", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc supportsLabels*(self: OpenXRSpatialCapabilityConfigurationPlaneTracking): bool =
  expandMethodBind(className OpenXRSpatialCapabilityConfigurationPlaneTracking, "supports_labels", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getEnabledComponents*(self: OpenXRSpatialCapabilityConfigurationPlaneTracking): PackedInt64Array =
  expandMethodBind(className OpenXRSpatialCapabilityConfigurationPlaneTracking, "get_enabled_components", 235988956)
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedInt64Array)
