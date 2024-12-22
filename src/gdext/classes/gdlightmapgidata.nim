{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setLightmapTextures*(self: LightmapGIData; lightTextures: TypedArray[TextureLayered]): void =
  expandMethodBind(className LightmapGIData, "set_lightmap_textures", 381264803)
  var `?param` = [getPtr lightTextures]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLightmapTextures*(self: LightmapGIData): TypedArray[TextureLayered] =
  expandMethodBind(className LightmapGIData, "get_lightmap_textures", 3995934104)
  var ret: encoded TypedArray[TextureLayered]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[TextureLayered])

proc setUsesSphericalHarmonics*(self: LightmapGIData; usesSphericalHarmonics: bool): void =
  expandMethodBind(className LightmapGIData, "set_uses_spherical_harmonics", 2586408642)
  var `?param` = [getPtr usesSphericalHarmonics]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingSphericalHarmonics*(self: LightmapGIData): bool =
  expandMethodBind(className LightmapGIData, "is_using_spherical_harmonics", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc addUser*(self: LightmapGIData; path: NodePath; uvScale: Rect2; sliceIndex: int32; subInstance: int32): void =
  expandMethodBind(className LightmapGIData, "add_user", 4272570515)
  var `?param` = [getPtr path, getPtr uvScale, getPtr sliceIndex, getPtr subInstance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUserCount*(self: LightmapGIData): int32 =
  expandMethodBind(className LightmapGIData, "get_user_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getUserPath*(self: LightmapGIData; userIdx: int32): NodePath =
  expandMethodBind(className LightmapGIData, "get_user_path", 408788394)
  var `?param` = [getPtr userIdx]
  var ret: encoded NodePath
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(NodePath)

proc clearUsers*(self: LightmapGIData): void =
  expandMethodBind(className LightmapGIData, "clear_users", 3218959716)
  methodbind.ptrcall(self, nil)

proc setLightTexture*(self: LightmapGIData; lightTexture: gdref TextureLayered): void =
  expandMethodBind(className LightmapGIData, "set_light_texture", 1278366092)
  var `?param` = [getPtr lightTexture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLightTexture*(self: LightmapGIData): gdref TextureLayered =
  expandMethodBind(className LightmapGIData, "get_light_texture", 3984243839)
  var ret: encoded gdref TextureLayered
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref TextureLayered)

template lightmapTextures*(self: LightmapGIData): untyped = self.getLightmapTextures()
template `lightmapTextures=`*(self: LightmapGIData; value) = self.setLightmapTextures(value)

template usesSphericalHarmonics*(self: LightmapGIData): untyped = self.isUsingSphericalHarmonics()
template `usesSphericalHarmonics=`*(self: LightmapGIData; value) = self.setUsesSphericalHarmonics(value)

template userData*(self: LightmapGIData): untyped = self.getUserData()
template `userData=`*(self: LightmapGIData; value) = self.setUserData(value)

template probeData*(self: LightmapGIData): untyped = self.getProbeData()
template `probeData=`*(self: LightmapGIData; value) = self.setProbeData(value)

template lightTexture*(self: LightmapGIData): untyped = self.getLightTexture()
template `lightTexture=`*(self: LightmapGIData; value) = self.setLightTexture(value)

template lightTextures*(self: LightmapGIData): untyped = self.getLightTexturesData()
template `lightTextures=`*(self: LightmapGIData; value) = self.setLightTexturesData(value)

const LightmapGIData_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[LightmapGIData]): Table[string, string] = LightmapGIData_vmap