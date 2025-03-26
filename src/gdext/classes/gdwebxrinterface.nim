{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrinterface; export gdxrinterface

proc isSessionSupported*(self: WebXRInterface; sessionMode: String): void =
  expandMethodBind(className WebXRInterface, "is_session_supported", 83702148)
  methodbind.ptrcall(self, [getPtr sessionMode])

proc setSessionMode*(self: WebXRInterface; sessionMode: String): void =
  expandMethodBind(className WebXRInterface, "set_session_mode", 83702148)
  methodbind.ptrcall(self, [getPtr sessionMode])

proc getSessionMode*(self: WebXRInterface): String =
  expandMethodBind(className WebXRInterface, "get_session_mode", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setRequiredFeatures*(self: WebXRInterface; requiredFeatures: String): void =
  expandMethodBind(className WebXRInterface, "set_required_features", 83702148)
  methodbind.ptrcall(self, [getPtr requiredFeatures])

proc getRequiredFeatures*(self: WebXRInterface): String =
  expandMethodBind(className WebXRInterface, "get_required_features", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setOptionalFeatures*(self: WebXRInterface; optionalFeatures: String): void =
  expandMethodBind(className WebXRInterface, "set_optional_features", 83702148)
  methodbind.ptrcall(self, [getPtr optionalFeatures])

proc getOptionalFeatures*(self: WebXRInterface): String =
  expandMethodBind(className WebXRInterface, "get_optional_features", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getReferenceSpaceType*(self: WebXRInterface): String =
  expandMethodBind(className WebXRInterface, "get_reference_space_type", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getEnabledFeatures*(self: WebXRInterface): String =
  expandMethodBind(className WebXRInterface, "get_enabled_features", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setRequestedReferenceSpaceTypes*(self: WebXRInterface; requestedReferenceSpaceTypes: String): void =
  expandMethodBind(className WebXRInterface, "set_requested_reference_space_types", 83702148)
  methodbind.ptrcall(self, [getPtr requestedReferenceSpaceTypes])

proc getRequestedReferenceSpaceTypes*(self: WebXRInterface): String =
  expandMethodBind(className WebXRInterface, "get_requested_reference_space_types", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc isInputSourceActive*(self: WebXRInterface; inputSourceId: int32): bool =
  expandMethodBind(className WebXRInterface, "is_input_source_active", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr inputSourceId], addr ret)
  (addr ret).decode_result(bool)

proc getInputSourceTracker*(self: WebXRInterface; inputSourceId: int32): gdref XRControllerTracker =
  expandMethodBind(className WebXRInterface, "get_input_source_tracker", 399776966)
  var ret: encoded gdref XRControllerTracker
  methodbind.ptrcall(self, [getPtr inputSourceId], addr ret)
  (addr ret).decode_result(gdref XRControllerTracker)

proc getInputSourceTargetRayMode*(self: WebXRInterface; inputSourceId: int32): WebXRInterface_TargetRayMode =
  expandMethodBind(className WebXRInterface, "get_input_source_target_ray_mode", 2852387453)
  var ret: encoded WebXRInterface_TargetRayMode
  methodbind.ptrcall(self, [getPtr inputSourceId], addr ret)
  (addr ret).decode_result(WebXRInterface_TargetRayMode)

proc getVisibilityState*(self: WebXRInterface): String =
  expandMethodBind(className WebXRInterface, "get_visibility_state", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getDisplayRefreshRate*(self: WebXRInterface): Float =
  expandMethodBind(className WebXRInterface, "get_display_refresh_rate", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDisplayRefreshRate*(self: WebXRInterface; refreshRate: Float): void =
  expandMethodBind(className WebXRInterface, "set_display_refresh_rate", 373806689)
  methodbind.ptrcall(self, [getPtr refreshRate])

proc getAvailableDisplayRefreshRates*(self: WebXRInterface): Array =
  expandMethodBind(className WebXRInterface, "get_available_display_refresh_rates", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

template sessionMode*(self: WebXRInterface): untyped = self.getSessionMode()
template `sessionMode=`*(self: WebXRInterface; value) = self.setSessionMode(value)

template requiredFeatures*(self: WebXRInterface): untyped = self.getRequiredFeatures()
template `requiredFeatures=`*(self: WebXRInterface; value) = self.setRequiredFeatures(value)

template optionalFeatures*(self: WebXRInterface): untyped = self.getOptionalFeatures()
template `optionalFeatures=`*(self: WebXRInterface; value) = self.setOptionalFeatures(value)

template requestedReferenceSpaceTypes*(self: WebXRInterface): untyped = self.getRequestedReferenceSpaceTypes()
template `requestedReferenceSpaceTypes=`*(self: WebXRInterface; value) = self.setRequestedReferenceSpaceTypes(value)

template referenceSpaceType*(self: WebXRInterface): untyped = self.getReferenceSpaceType()

template enabledFeatures*(self: WebXRInterface): untyped = self.getEnabledFeatures()

template visibilityState*(self: WebXRInterface): untyped = self.getVisibilityState()
