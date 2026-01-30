{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialcapabilityconfigurationbaseheader; export gdopenxrspatialcapabilityconfigurationbaseheader

expandOnClassImported(OpenXRSpatialCapabilityConfigurationAprilTag, OpenXRSpatialCapabilityConfigurationBaseHeader)

proc getEnabledComponents*(self: OpenXRSpatialCapabilityConfigurationAprilTag): PackedInt64Array =
  expandMethodBind(className OpenXRSpatialCapabilityConfigurationAprilTag, "get_enabled_components", 235988956)
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc setAprilDict*(self: OpenXRSpatialCapabilityConfigurationAprilTag; aprilDict: OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict): void =
  expandMethodBind(className OpenXRSpatialCapabilityConfigurationAprilTag, "set_april_dict", 3902905799)
  methodbind.ptrcall(self, [getPtr aprilDict])

proc getAprilDict*(self: OpenXRSpatialCapabilityConfigurationAprilTag): OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict =
  expandMethodBind(className OpenXRSpatialCapabilityConfigurationAprilTag, "get_april_dict", 440273016)
  var ret: encoded OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict)

template aprilDict*(self: OpenXRSpatialCapabilityConfigurationAprilTag): untyped = self.getAprilDict()
template `aprilDict=`*(self: OpenXRSpatialCapabilityConfigurationAprilTag; value) = self.setAprilDict(value)
