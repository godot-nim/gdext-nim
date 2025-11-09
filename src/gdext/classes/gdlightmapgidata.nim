{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(LightmapGIData, Resource)

proc setLightmapTextures*(self: LightmapGIData; lightTextures: TypedArray[gdref TextureLayered]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGIData, "set_lightmap_textures", 381264803)
  methodbind.ptrcall(self, [getPtr lightTextures], void)

proc getLightmapTextures*(self: LightmapGIData): TypedArray[gdref TextureLayered] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGIData, "get_lightmap_textures", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[gdref TextureLayered])

proc setShadowmaskTextures*(self: LightmapGIData; shadowmaskTextures: TypedArray[gdref TextureLayered]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGIData, "set_shadowmask_textures", 381264803)
  methodbind.ptrcall(self, [getPtr shadowmaskTextures], void)

proc getShadowmaskTextures*(self: LightmapGIData): TypedArray[gdref TextureLayered] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGIData, "get_shadowmask_textures", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[gdref TextureLayered])

proc setUsesSphericalHarmonics*(self: LightmapGIData; usesSphericalHarmonics: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGIData, "set_uses_spherical_harmonics", 2586408642)
  methodbind.ptrcall(self, [getPtr usesSphericalHarmonics], void)

proc isUsingSphericalHarmonics*(self: LightmapGIData): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGIData, "is_using_spherical_harmonics", 36873697)
  methodbind.ptrcall(self, [], bool)

proc addUser*(self: LightmapGIData; path: NodePath; uvScale: Rect2; sliceIndex: int32; subInstance: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGIData, "add_user", 4272570515)
  methodbind.ptrcall(self, [getPtr path, getPtr uvScale, getPtr sliceIndex, getPtr subInstance], void)

proc getUserCount*(self: LightmapGIData): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGIData, "get_user_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getUserPath*(self: LightmapGIData; userIdx: int32): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGIData, "get_user_path", 408788394)
  methodbind.ptrcall(self, [getPtr userIdx], NodePath)

proc clearUsers*(self: LightmapGIData): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGIData, "clear_users", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setLightTexture*(self: LightmapGIData; lightTexture: gdref TextureLayered): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGIData, "set_light_texture", 1278366092)
  methodbind.ptrcall(self, [getPtr lightTexture], void)

proc getLightTexture*(self: LightmapGIData): gdref TextureLayered =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className LightmapGIData, "get_light_texture", 3984243839)
  methodbind.ptrcall(self, [], gdref TextureLayered)

template lightmapTextures*(self: LightmapGIData): untyped = self.getLightmapTextures()
template `lightmapTextures=`*(self: LightmapGIData; value) = self.setLightmapTextures(value)

template shadowmaskTextures*(self: LightmapGIData): untyped = self.getShadowmaskTextures()
template `shadowmaskTextures=`*(self: LightmapGIData; value) = self.setShadowmaskTextures(value)

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
