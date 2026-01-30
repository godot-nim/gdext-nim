{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialcapabilityconfigurationbaseheader; export gdopenxrspatialcapabilityconfigurationbaseheader

expandOnClassImported(OpenXRSpatialCapabilityConfigurationAruco, OpenXRSpatialCapabilityConfigurationBaseHeader)

proc getEnabledComponents*(self: OpenXRSpatialCapabilityConfigurationAruco): PackedInt64Array =
  expandMethodBind(className OpenXRSpatialCapabilityConfigurationAruco, "get_enabled_components", 235988956)
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc setArucoDict*(self: OpenXRSpatialCapabilityConfigurationAruco; arucoDict: OpenXRSpatialCapabilityConfigurationAruco_ArucoDict): void =
  expandMethodBind(className OpenXRSpatialCapabilityConfigurationAruco, "set_aruco_dict", 2268055963)
  methodbind.ptrcall(self, [getPtr arucoDict])

proc getArucoDict*(self: OpenXRSpatialCapabilityConfigurationAruco): OpenXRSpatialCapabilityConfigurationAruco_ArucoDict =
  expandMethodBind(className OpenXRSpatialCapabilityConfigurationAruco, "get_aruco_dict", 1080386209)
  var ret: encoded OpenXRSpatialCapabilityConfigurationAruco_ArucoDict
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRSpatialCapabilityConfigurationAruco_ArucoDict)

template arucoDict*(self: OpenXRSpatialCapabilityConfigurationAruco): untyped = self.getArucoDict()
template `arucoDict=`*(self: OpenXRSpatialCapabilityConfigurationAruco; value) = self.setArucoDict(value)
