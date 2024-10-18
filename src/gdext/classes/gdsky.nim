{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setRadianceSize*(self: Sky; size: Sky_RadianceSize): void =
  expandMethodBind(className Sky, "set_radiance_size", 1512957179)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadianceSize*(self: Sky): Sky_RadianceSize =
  expandMethodBind(className Sky, "get_radiance_size", 2708733976)
  var ret: encoded Sky_RadianceSize
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Sky_RadianceSize)

proc setProcessMode*(self: Sky; mode: Sky_ProcessMode): void =
  expandMethodBind(className Sky, "set_process_mode", 875986769)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProcessMode*(self: Sky): Sky_ProcessMode =
  expandMethodBind(className Sky, "get_process_mode", 731245043)
  var ret: encoded Sky_ProcessMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Sky_ProcessMode)

proc setMaterial*(self: Sky; material: gdref Material): void =
  expandMethodBind(className Sky, "set_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaterial*(self: Sky): gdref Material =
  expandMethodBind(className Sky, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

template skyMaterial*(self: Sky): untyped = self.getMaterial()
template `skyMaterial=`*(self: Sky; value) = self.setMaterial(value)

template processMode*(self: Sky): untyped = self.getProcessMode()
template `processMode=`*(self: Sky; value) = self.setProcessMode(value)

template radianceSize*(self: Sky): untyped = self.getRadianceSize()
template `radianceSize=`*(self: Sky; value) = self.setRadianceSize(value)

const Sky_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Sky]): Table[string, string] = Sky_vmap