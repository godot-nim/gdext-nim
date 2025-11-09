{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrinterface; export gdxrinterface

expandOnClassImported(WebXRInterface, XRInterface)

proc isSessionSupported*(self: WebXRInterface; sessionMode: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "is_session_supported", 83702148)
  methodbind.ptrcall(self, [getPtr sessionMode], void)

proc setSessionMode*(self: WebXRInterface; sessionMode: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "set_session_mode", 83702148)
  methodbind.ptrcall(self, [getPtr sessionMode], void)

proc getSessionMode*(self: WebXRInterface): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "get_session_mode", 201670096)
  methodbind.ptrcall(self, [], String)

proc setRequiredFeatures*(self: WebXRInterface; requiredFeatures: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "set_required_features", 83702148)
  methodbind.ptrcall(self, [getPtr requiredFeatures], void)

proc getRequiredFeatures*(self: WebXRInterface): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "get_required_features", 201670096)
  methodbind.ptrcall(self, [], String)

proc setOptionalFeatures*(self: WebXRInterface; optionalFeatures: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "set_optional_features", 83702148)
  methodbind.ptrcall(self, [getPtr optionalFeatures], void)

proc getOptionalFeatures*(self: WebXRInterface): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "get_optional_features", 201670096)
  methodbind.ptrcall(self, [], String)

proc getReferenceSpaceType*(self: WebXRInterface): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "get_reference_space_type", 201670096)
  methodbind.ptrcall(self, [], String)

proc getEnabledFeatures*(self: WebXRInterface): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "get_enabled_features", 201670096)
  methodbind.ptrcall(self, [], String)

proc setRequestedReferenceSpaceTypes*(self: WebXRInterface; requestedReferenceSpaceTypes: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "set_requested_reference_space_types", 83702148)
  methodbind.ptrcall(self, [getPtr requestedReferenceSpaceTypes], void)

proc getRequestedReferenceSpaceTypes*(self: WebXRInterface): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "get_requested_reference_space_types", 201670096)
  methodbind.ptrcall(self, [], String)

proc isInputSourceActive*(self: WebXRInterface; inputSourceId: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "is_input_source_active", 1116898809)
  methodbind.ptrcall(self, [getPtr inputSourceId], bool)

proc getInputSourceTracker*(self: WebXRInterface; inputSourceId: int32): gdref XRControllerTracker =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "get_input_source_tracker", 399776966)
  methodbind.ptrcall(self, [getPtr inputSourceId], gdref XRControllerTracker)

proc getInputSourceTargetRayMode*(self: WebXRInterface; inputSourceId: int32): WebXRInterface_TargetRayMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "get_input_source_target_ray_mode", 2852387453)
  methodbind.ptrcall(self, [getPtr inputSourceId], WebXRInterface_TargetRayMode)

proc getVisibilityState*(self: WebXRInterface): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "get_visibility_state", 201670096)
  methodbind.ptrcall(self, [], String)

proc getDisplayRefreshRate*(self: WebXRInterface): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "get_display_refresh_rate", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDisplayRefreshRate*(self: WebXRInterface; refreshRate: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "set_display_refresh_rate", 373806689)
  methodbind.ptrcall(self, [getPtr refreshRate], void)

proc getAvailableDisplayRefreshRates*(self: WebXRInterface): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className WebXRInterface, "get_available_display_refresh_rates", 3995934104)
  methodbind.ptrcall(self, [], Array)

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
