{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrinterface; export gdxrinterface

proc isSessionSupported*(self: WebXrInterface; sessionMode: String): void =
  expandMethodBind(className WebXrInterface, "is_session_supported", 83702148)
  var `?param` = [getPtr sessionMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSessionMode*(self: WebXrInterface; sessionMode: String): void =
  expandMethodBind(className WebXrInterface, "set_session_mode", 83702148)
  var `?param` = [getPtr sessionMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSessionMode*(self: WebXrInterface): String =
  expandMethodBind(className WebXrInterface, "get_session_mode", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setRequiredFeatures*(self: WebXrInterface; requiredFeatures: String): void =
  expandMethodBind(className WebXrInterface, "set_required_features", 83702148)
  var `?param` = [getPtr requiredFeatures]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRequiredFeatures*(self: WebXrInterface): String =
  expandMethodBind(className WebXrInterface, "get_required_features", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setOptionalFeatures*(self: WebXrInterface; optionalFeatures: String): void =
  expandMethodBind(className WebXrInterface, "set_optional_features", 83702148)
  var `?param` = [getPtr optionalFeatures]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOptionalFeatures*(self: WebXrInterface): String =
  expandMethodBind(className WebXrInterface, "get_optional_features", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getReferenceSpaceType*(self: WebXrInterface): String =
  expandMethodBind(className WebXrInterface, "get_reference_space_type", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getEnabledFeatures*(self: WebXrInterface): String =
  expandMethodBind(className WebXrInterface, "get_enabled_features", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setRequestedReferenceSpaceTypes*(self: WebXrInterface; requestedReferenceSpaceTypes: String): void =
  expandMethodBind(className WebXrInterface, "set_requested_reference_space_types", 83702148)
  var `?param` = [getPtr requestedReferenceSpaceTypes]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRequestedReferenceSpaceTypes*(self: WebXrInterface): String =
  expandMethodBind(className WebXrInterface, "get_requested_reference_space_types", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc isInputSourceActive*(self: WebXrInterface; inputSourceId: int32): bool =
  expandMethodBind(className WebXrInterface, "is_input_source_active", 1116898809)
  var `?param` = [getPtr inputSourceId]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getInputSourceTracker*(self: WebXrInterface; inputSourceId: int32): gdref XrControllerTracker =
  expandMethodBind(className WebXrInterface, "get_input_source_tracker", 399776966)
  var `?param` = [getPtr inputSourceId]
  var ret: encoded gdref XrControllerTracker
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref XrControllerTracker)

proc getInputSourceTargetRayMode*(self: WebXrInterface; inputSourceId: int32): WebXrInterface_TargetRayMode =
  expandMethodBind(className WebXrInterface, "get_input_source_target_ray_mode", 2852387453)
  var `?param` = [getPtr inputSourceId]
  var ret: encoded WebXrInterface_TargetRayMode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(WebXrInterface_TargetRayMode)

proc getVisibilityState*(self: WebXrInterface): String =
  expandMethodBind(className WebXrInterface, "get_visibility_state", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getDisplayRefreshRate*(self: WebXrInterface): Float =
  expandMethodBind(className WebXrInterface, "get_display_refresh_rate", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDisplayRefreshRate*(self: WebXrInterface; refreshRate: Float): void =
  expandMethodBind(className WebXrInterface, "set_display_refresh_rate", 373806689)
  var `?param` = [getPtr refreshRate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAvailableDisplayRefreshRates*(self: WebXrInterface): Array =
  expandMethodBind(className WebXrInterface, "get_available_display_refresh_rates", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

template sessionMode*(self: WebXrInterface): untyped = self.getSessionMode()
template `sessionMode=`*(self: WebXrInterface; value) = self.setSessionMode(value)

template requiredFeatures*(self: WebXrInterface): untyped = self.getRequiredFeatures()
template `requiredFeatures=`*(self: WebXrInterface; value) = self.setRequiredFeatures(value)

template optionalFeatures*(self: WebXrInterface): untyped = self.getOptionalFeatures()
template `optionalFeatures=`*(self: WebXrInterface; value) = self.setOptionalFeatures(value)

template requestedReferenceSpaceTypes*(self: WebXrInterface): untyped = self.getRequestedReferenceSpaceTypes()
template `requestedReferenceSpaceTypes=`*(self: WebXrInterface; value) = self.setRequestedReferenceSpaceTypes(value)

template referenceSpaceType*(self: WebXrInterface): untyped = self.getReferenceSpaceType()

template enabledFeatures*(self: WebXrInterface): untyped = self.getEnabledFeatures()

template visibilityState*(self: WebXrInterface): untyped = self.getVisibilityState()

const WebXrInterface_vmap =
  XrInterface.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[WebXrInterface]): Table[string, string] = WebXrInterface_vmap

proc sessionSupported*(self: WebXrInterface; sessionMode: Variant; supported: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("session_supported")
  let args = [sessionMode, supported]
  self.emitSignal(signalname, args)

proc sessionStarted*(self: WebXrInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("session_started")
  self.emitSignal(signalname)

proc sessionEnded*(self: WebXrInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("session_ended")
  self.emitSignal(signalname)

proc sessionFailed*(self: WebXrInterface; message: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("session_failed")
  let args = [message]
  self.emitSignal(signalname, args)

proc selectstart*(self: WebXrInterface; inputSourceId: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("selectstart")
  let args = [inputSourceId]
  self.emitSignal(signalname, args)

proc select*(self: WebXrInterface; inputSourceId: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("select")
  let args = [inputSourceId]
  self.emitSignal(signalname, args)

proc selectend*(self: WebXrInterface; inputSourceId: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("selectend")
  let args = [inputSourceId]
  self.emitSignal(signalname, args)

proc squeezestart*(self: WebXrInterface; inputSourceId: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("squeezestart")
  let args = [inputSourceId]
  self.emitSignal(signalname, args)

proc squeeze*(self: WebXrInterface; inputSourceId: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("squeeze")
  let args = [inputSourceId]
  self.emitSignal(signalname, args)

proc squeezeend*(self: WebXrInterface; inputSourceId: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("squeezeend")
  let args = [inputSourceId]
  self.emitSignal(signalname, args)

proc visibilityStateChanged*(self: WebXrInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("visibility_state_changed")
  self.emitSignal(signalname)

proc referenceSpaceReset*(self: WebXrInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("reference_space_reset")
  self.emitSignal(signalname)

proc displayRefreshRateChanged*(self: WebXrInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("display_refresh_rate_changed")
  self.emitSignal(signalname)