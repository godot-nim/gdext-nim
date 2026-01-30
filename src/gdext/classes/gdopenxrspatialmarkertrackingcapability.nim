{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrextensionwrapper; export gdopenxrextensionwrapper

expandOnClassImported(OpenXRSpatialMarkerTrackingCapability, OpenXRExtensionWrapper)

proc isQrcodeSupported*(self: OpenXRSpatialMarkerTrackingCapability): bool =
  expandMethodBind(className OpenXRSpatialMarkerTrackingCapability, "is_qrcode_supported", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isMicroQrcodeSupported*(self: OpenXRSpatialMarkerTrackingCapability): bool =
  expandMethodBind(className OpenXRSpatialMarkerTrackingCapability, "is_micro_qrcode_supported", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isArucoSupported*(self: OpenXRSpatialMarkerTrackingCapability): bool =
  expandMethodBind(className OpenXRSpatialMarkerTrackingCapability, "is_aruco_supported", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isAprilTagSupported*(self: OpenXRSpatialMarkerTrackingCapability): bool =
  expandMethodBind(className OpenXRSpatialMarkerTrackingCapability, "is_april_tag_supported", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)
