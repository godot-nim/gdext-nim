{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Sky, Resource)

proc setRadianceSize*(self: Sky; size: Sky_RadianceSize): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sky, "set_radiance_size", 1512957179)
  methodbind.ptrcall(self, [getPtr size], void)

proc getRadianceSize*(self: Sky): Sky_RadianceSize =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sky, "get_radiance_size", 2708733976)
  methodbind.ptrcall(self, [], Sky_RadianceSize)

proc setProcessMode*(self: Sky; mode: Sky_ProcessMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sky, "set_process_mode", 875986769)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getProcessMode*(self: Sky): Sky_ProcessMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sky, "get_process_mode", 731245043)
  methodbind.ptrcall(self, [], Sky_ProcessMode)

proc setMaterial*(self: Sky; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sky, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc getMaterial*(self: Sky): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Sky, "get_material", 5934680)
  methodbind.ptrcall(self, [], gdref Material)

template skyMaterial*(self: Sky): untyped = self.getMaterial()
template `skyMaterial=`*(self: Sky; value) = self.setMaterial(value)

template processMode*(self: Sky): untyped = self.getProcessMode()
template `processMode=`*(self: Sky; value) = self.setProcessMode(value)

template radianceSize*(self: Sky): untyped = self.getRadianceSize()
template `radianceSize=`*(self: Sky; value) = self.setRadianceSize(value)
