{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc setLightmapTextures*(self: LightmapGiData; lightTextures: TypedArray[gdref TextureLayered]): void =
  expandMethodBind(className LightmapGiData, "set_lightmap_textures", 381264803)
  var `?param` = [getPtr lightTextures]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLightmapTextures*(self: LightmapGiData): TypedArray[gdref TextureLayered] =
  expandMethodBind(className LightmapGiData, "get_lightmap_textures", 3995934104)
  var ret: encoded TypedArray[gdref TextureLayered]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[gdref TextureLayered])

proc setUsesSphericalHarmonics*(self: LightmapGiData; usesSphericalHarmonics: bool): void =
  expandMethodBind(className LightmapGiData, "set_uses_spherical_harmonics", 2586408642)
  var `?param` = [getPtr usesSphericalHarmonics]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingSphericalHarmonics*(self: LightmapGiData): bool =
  expandMethodBind(className LightmapGiData, "is_using_spherical_harmonics", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc addUser*(self: LightmapGiData; path: NodePath; uvScale: Rect2; sliceIndex: int32; subInstance: int32): void =
  expandMethodBind(className LightmapGiData, "add_user", 4272570515)
  var `?param` = [getPtr path, getPtr uvScale, getPtr sliceIndex, getPtr subInstance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUserCount*(self: LightmapGiData): int32 =
  expandMethodBind(className LightmapGiData, "get_user_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getUserPath*(self: LightmapGiData; userIdx: int32): NodePath =
  expandMethodBind(className LightmapGiData, "get_user_path", 408788394)
  var `?param` = [getPtr userIdx]
  var ret: encoded NodePath
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(NodePath)

proc clearUsers*(self: LightmapGiData): void =
  expandMethodBind(className LightmapGiData, "clear_users", 3218959716)
  methodbind.ptrcall(self, nil)

proc setLightTexture*(self: LightmapGiData; lightTexture: gdref TextureLayered): void =
  expandMethodBind(className LightmapGiData, "set_light_texture", 1278366092)
  var `?param` = [getPtr lightTexture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLightTexture*(self: LightmapGiData): gdref TextureLayered =
  expandMethodBind(className LightmapGiData, "get_light_texture", 3984243839)
  var ret: encoded gdref TextureLayered
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref TextureLayered)

template lightmapTextures*(self: LightmapGiData): untyped = self.getLightmapTextures()
template `lightmapTextures=`*(self: LightmapGiData; value) = self.setLightmapTextures(value)

template usesSphericalHarmonics*(self: LightmapGiData): untyped = self.isUsingSphericalHarmonics()
template `usesSphericalHarmonics=`*(self: LightmapGiData; value) = self.setUsesSphericalHarmonics(value)

template userData*(self: LightmapGiData): untyped = self.getUserData()
template `userData=`*(self: LightmapGiData; value) = self.setUserData(value)

template probeData*(self: LightmapGiData): untyped = self.getProbeData()
template `probeData=`*(self: LightmapGiData; value) = self.setProbeData(value)

template lightTexture*(self: LightmapGiData): untyped = self.getLightTexture()
template `lightTexture=`*(self: LightmapGiData; value) = self.setLightTexture(value)

template lightTextures*(self: LightmapGiData): untyped = self.getLightTexturesData()
template `lightTextures=`*(self: LightmapGiData; value) = self.setLightTexturesData(value)

const LightmapGiData_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[LightmapGiData]): Table[string, string] = LightmapGiData_vmap