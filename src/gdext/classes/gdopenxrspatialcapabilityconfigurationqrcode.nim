{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialcapabilityconfigurationbaseheader; export gdopenxrspatialcapabilityconfigurationbaseheader

expandOnClassImported(OpenXRSpatialCapabilityConfigurationQrCode, OpenXRSpatialCapabilityConfigurationBaseHeader)

proc getEnabledComponents*(self: OpenXRSpatialCapabilityConfigurationQrCode): PackedInt64Array =
  expandMethodBind(className OpenXRSpatialCapabilityConfigurationQrCode, "get_enabled_components", 235988956)
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedInt64Array)
