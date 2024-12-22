{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc fromNode*(_: typedesc[GLTFLight]; lightNode: Light3D): gdref GLTFLight =
  expandMethodBind(className GLTFLight, "from_node", 3907677874)
  var `?param` = [getPtr lightNode]
  var ret: encoded gdref GLTFLight
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref GLTFLight)

proc toNode*(self: GLTFLight): Light3D =
  expandMethodBind(className GLTFLight, "to_node", 2040811672)
  var ret: encoded Light3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Light3D)

proc fromDictionary*(_: typedesc[GLTFLight]; dictionary: Dictionary): gdref GLTFLight =
  expandMethodBind(className GLTFLight, "from_dictionary", 4057087208)
  var `?param` = [getPtr dictionary]
  var ret: encoded gdref GLTFLight
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref GLTFLight)

proc toDictionary*(self: GLTFLight): Dictionary =
  expandMethodBind(className GLTFLight, "to_dictionary", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getColor*(self: GLTFLight): Color =
  expandMethodBind(className GLTFLight, "get_color", 3200896285)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setColor*(self: GLTFLight; color: Color): void =
  expandMethodBind(className GLTFLight, "set_color", 2920490490)
  var `?param` = [getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIntensity*(self: GLTFLight): Float =
  expandMethodBind(className GLTFLight, "get_intensity", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setIntensity*(self: GLTFLight; intensity: Float): void =
  expandMethodBind(className GLTFLight, "set_intensity", 373806689)
  var `?param` = [getPtr intensity]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLightType*(self: GLTFLight): String =
  expandMethodBind(className GLTFLight, "get_light_type", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setLightType*(self: GLTFLight; lightType: String): void =
  expandMethodBind(className GLTFLight, "set_light_type", 83702148)
  var `?param` = [getPtr lightType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRange*(self: GLTFLight): Float =
  expandMethodBind(className GLTFLight, "get_range", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRange*(self: GLTFLight; range: Float): void =
  expandMethodBind(className GLTFLight, "set_range", 373806689)
  var `?param` = [getPtr range]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInnerConeAngle*(self: GLTFLight): Float =
  expandMethodBind(className GLTFLight, "get_inner_cone_angle", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setInnerConeAngle*(self: GLTFLight; innerConeAngle: Float): void =
  expandMethodBind(className GLTFLight, "set_inner_cone_angle", 373806689)
  var `?param` = [getPtr innerConeAngle]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOuterConeAngle*(self: GLTFLight): Float =
  expandMethodBind(className GLTFLight, "get_outer_cone_angle", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setOuterConeAngle*(self: GLTFLight; outerConeAngle: Float): void =
  expandMethodBind(className GLTFLight, "set_outer_cone_angle", 373806689)
  var `?param` = [getPtr outerConeAngle]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAdditionalData*(self: GLTFLight; extensionName: StringName): Variant =
  expandMethodBind(className GLTFLight, "get_additional_data", 2138907829)
  var `?param` = [getPtr extensionName]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc setAdditionalData*(self: GLTFLight; extensionName: StringName; additionalData: Variant): void =
  expandMethodBind(className GLTFLight, "set_additional_data", 3776071444)
  var `?param` = [getPtr extensionName, getPtr additionalData]
  methodbind.ptrcall(self, addr `?param`[0])

template color*(self: GLTFLight): untyped = self.getColor()
template `color=`*(self: GLTFLight; value) = self.setColor(value)

template intensity*(self: GLTFLight): untyped = self.getIntensity()
template `intensity=`*(self: GLTFLight; value) = self.setIntensity(value)

template lightType*(self: GLTFLight): untyped = self.getLightType()
template `lightType=`*(self: GLTFLight; value) = self.setLightType(value)

template range*(self: GLTFLight): untyped = self.getRange()
template `range=`*(self: GLTFLight; value) = self.setRange(value)

template innerConeAngle*(self: GLTFLight): untyped = self.getInnerConeAngle()
template `innerConeAngle=`*(self: GLTFLight; value) = self.setInnerConeAngle(value)

template outerConeAngle*(self: GLTFLight): untyped = self.getOuterConeAngle()
template `outerConeAngle=`*(self: GLTFLight; value) = self.setOuterConeAngle(value)

const GLTFLight_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GLTFLight]): Table[string, string] = GLTFLight_vmap