{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc fromNode*(_: typedesc[GltfLight]; lightNode: Light3D): gdref GltfLight =
  expandMethodBind(className GltfLight, "from_node", 3907677874)
  var `?param` = [getPtr lightNode]
  var ret: encoded gdref GltfLight
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref GltfLight)

proc toNode*(self: GltfLight): Light3D =
  expandMethodBind(className GltfLight, "to_node", 2040811672)
  var ret: encoded Light3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Light3D)

proc fromDictionary*(_: typedesc[GltfLight]; dictionary: Dictionary): gdref GltfLight =
  expandMethodBind(className GltfLight, "from_dictionary", 4057087208)
  var `?param` = [getPtr dictionary]
  var ret: encoded gdref GltfLight
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref GltfLight)

proc toDictionary*(self: GltfLight): Dictionary =
  expandMethodBind(className GltfLight, "to_dictionary", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getColor*(self: GltfLight): Color =
  expandMethodBind(className GltfLight, "get_color", 3200896285)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setColor*(self: GltfLight; color: Color): void =
  expandMethodBind(className GltfLight, "set_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIntensity*(self: GltfLight): Float =
  expandMethodBind(className GltfLight, "get_intensity", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setIntensity*(self: GltfLight; intensity: Float): void =
  expandMethodBind(className GltfLight, "set_intensity", 373806689)
  var `?param` = [getPtr intensity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLightType*(self: GltfLight): String =
  expandMethodBind(className GltfLight, "get_light_type", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setLightType*(self: GltfLight; lightType: String): void =
  expandMethodBind(className GltfLight, "set_light_type", 83702148)
  var `?param` = [getPtr lightType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRange*(self: GltfLight): Float =
  expandMethodBind(className GltfLight, "get_range", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRange*(self: GltfLight; range: Float): void =
  expandMethodBind(className GltfLight, "set_range", 373806689)
  var `?param` = [getPtr range]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInnerConeAngle*(self: GltfLight): Float =
  expandMethodBind(className GltfLight, "get_inner_cone_angle", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setInnerConeAngle*(self: GltfLight; innerConeAngle: Float): void =
  expandMethodBind(className GltfLight, "set_inner_cone_angle", 373806689)
  var `?param` = [getPtr innerConeAngle]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOuterConeAngle*(self: GltfLight): Float =
  expandMethodBind(className GltfLight, "get_outer_cone_angle", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setOuterConeAngle*(self: GltfLight; outerConeAngle: Float): void =
  expandMethodBind(className GltfLight, "set_outer_cone_angle", 373806689)
  var `?param` = [getPtr outerConeAngle]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAdditionalData*(self: GltfLight; extensionName: StringName): Variant =
  expandMethodBind(className GltfLight, "get_additional_data", 2138907829)
  var `?param` = [getPtr extensionName]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setAdditionalData*(self: GltfLight; extensionName: StringName; additionalData: Variant): void =
  expandMethodBind(className GltfLight, "set_additional_data", 3776071444)
  var `?param` = [getPtr extensionName, getPtr additionalData]
  methodbind.ptrcall(self, addr `?param`[0])

template color*(self: GltfLight): untyped = self.getColor()
template `color=`*(self: GltfLight; value) = self.setColor(value)

template intensity*(self: GltfLight): untyped = self.getIntensity()
template `intensity=`*(self: GltfLight; value) = self.setIntensity(value)

template lightType*(self: GltfLight): untyped = self.getLightType()
template `lightType=`*(self: GltfLight; value) = self.setLightType(value)

template range*(self: GltfLight): untyped = self.getRange()
template `range=`*(self: GltfLight; value) = self.setRange(value)

template innerConeAngle*(self: GltfLight): untyped = self.getInnerConeAngle()
template `innerConeAngle=`*(self: GltfLight; value) = self.setInnerConeAngle(value)

template outerConeAngle*(self: GltfLight): untyped = self.getOuterConeAngle()
template `outerConeAngle=`*(self: GltfLight; value) = self.setOuterConeAngle(value)

const GltfLight_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GltfLight]): Table[string, string] = GltfLight_vmap