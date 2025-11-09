{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Noise, Resource)

proc getNoise1D*(self: Noise; x: Float): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Noise, "get_noise_1d", 3919130443)
  methodbind.ptrcall(self, [getPtr x], Float)

proc getNoise2D*(self: Noise; x: Float; y: Float): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Noise, "get_noise_2d", 2753205203)
  methodbind.ptrcall(self, [getPtr x, getPtr y], Float)

proc getNoise2Dv*(self: Noise; v: Vector2): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Noise, "get_noise_2dv", 2276447920)
  methodbind.ptrcall(self, [getPtr v], Float)

proc getNoise3D*(self: Noise; x: Float; y: Float; z: Float): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Noise, "get_noise_3d", 973811851)
  methodbind.ptrcall(self, [getPtr x, getPtr y, getPtr z], Float)

proc getNoise3Dv*(self: Noise; v: Vector3): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Noise, "get_noise_3dv", 1109078154)
  methodbind.ptrcall(self, [getPtr v], Float)

proc getImage*(self: Noise; width: int32; height: int32; invert: bool = false; in3DSpace: bool = false; normalize: bool = true): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Noise, "get_image", 3180683109)
  methodbind.ptrcall(self, [getPtr width, getPtr height, getPtr invert, getPtr in3DSpace, getPtr normalize], gdref Image)

proc getSeamlessImage*(self: Noise; width: int32; height: int32; invert: bool = false; in3DSpace: bool = false; skirt: Float = 0.1; normalize: bool = true): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Noise, "get_seamless_image", 2770743602)
  methodbind.ptrcall(self, [getPtr width, getPtr height, getPtr invert, getPtr in3DSpace, getPtr skirt, getPtr normalize], gdref Image)

proc getImage3D*(self: Noise; width: int32; height: int32; depth: int32; invert: bool = false; normalize: bool = true): TypedArray[gdref Image] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Noise, "get_image_3d", 3977814329)
  methodbind.ptrcall(self, [getPtr width, getPtr height, getPtr depth, getPtr invert, getPtr normalize], TypedArray[gdref Image])

proc getSeamlessImage3D*(self: Noise; width: int32; height: int32; depth: int32; invert: bool = false; skirt: Float = 0.1; normalize: bool = true): TypedArray[gdref Image] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Noise, "get_seamless_image_3d", 451006340)
  methodbind.ptrcall(self, [getPtr width, getPtr height, getPtr depth, getPtr invert, getPtr skirt, getPtr normalize], TypedArray[gdref Image])
