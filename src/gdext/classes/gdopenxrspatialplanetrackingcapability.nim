{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrextensionwrapper; export gdopenxrextensionwrapper

expandOnClassImported(OpenXRSpatialPlaneTrackingCapability, OpenXRExtensionWrapper)

proc isSupported*(self: OpenXRSpatialPlaneTrackingCapability): bool =
  expandMethodBind(className OpenXRSpatialPlaneTrackingCapability, "is_supported", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)
