{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(GLTFLight, Resource)

proc fromNode*(_: typedesc[GLTFLight]; lightNode: Light3D): gdref GLTFLight =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "from_node", 3907677874)
  methodbind.ptrcall([getPtr lightNode], gdref GLTFLight)

proc toNode*(self: GLTFLight): Light3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "to_node", 2040811672)
  methodbind.ptrcall(self, [], Light3D)

proc fromDictionary*(_: typedesc[GLTFLight]; dictionary: Dictionary): gdref GLTFLight =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "from_dictionary", 4057087208)
  methodbind.ptrcall([getPtr dictionary], gdref GLTFLight)

proc toDictionary*(self: GLTFLight): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "to_dictionary", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc getColor*(self: GLTFLight): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "get_color", 3200896285)
  methodbind.ptrcall(self, [], Color)

proc setColor*(self: GLTFLight; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "set_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getIntensity*(self: GLTFLight): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "get_intensity", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setIntensity*(self: GLTFLight; intensity: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "set_intensity", 373806689)
  methodbind.ptrcall(self, [getPtr intensity], void)

proc getLightType*(self: GLTFLight): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "get_light_type", 2841200299)
  methodbind.ptrcall(self, [], String)

proc setLightType*(self: GLTFLight; lightType: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "set_light_type", 83702148)
  methodbind.ptrcall(self, [getPtr lightType], void)

proc getRange*(self: GLTFLight): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "get_range", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setRange*(self: GLTFLight; range: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "set_range", 373806689)
  methodbind.ptrcall(self, [getPtr range], void)

proc getInnerConeAngle*(self: GLTFLight): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "get_inner_cone_angle", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setInnerConeAngle*(self: GLTFLight; innerConeAngle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "set_inner_cone_angle", 373806689)
  methodbind.ptrcall(self, [getPtr innerConeAngle], void)

proc getOuterConeAngle*(self: GLTFLight): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "get_outer_cone_angle", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setOuterConeAngle*(self: GLTFLight; outerConeAngle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "set_outer_cone_angle", 373806689)
  methodbind.ptrcall(self, [getPtr outerConeAngle], void)

proc getAdditionalData*(self: GLTFLight; extensionName: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "get_additional_data", 2138907829)
  methodbind.ptrcall(self, [getPtr extensionName], Variant)

proc setAdditionalData*(self: GLTFLight; extensionName: StringName; additionalData: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className GLTFLight, "set_additional_data", 3776071444)
  methodbind.ptrcall(self, [getPtr extensionName, getPtr additionalData], void)

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
