{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getNoise1D*(self: Noise; x: Float): Float =
  expandMethodBind(className Noise, "get_noise_1d", 3919130443)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr x], addr ret)
  (addr ret).decode_result(Float)

proc getNoise2D*(self: Noise; x: Float; y: Float): Float =
  expandMethodBind(className Noise, "get_noise_2d", 2753205203)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr x, getPtr y], addr ret)
  (addr ret).decode_result(Float)

proc getNoise2Dv*(self: Noise; v: Vector2): Float =
  expandMethodBind(className Noise, "get_noise_2dv", 2276447920)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr v], addr ret)
  (addr ret).decode_result(Float)

proc getNoise3D*(self: Noise; x: Float; y: Float; z: Float): Float =
  expandMethodBind(className Noise, "get_noise_3d", 973811851)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr x, getPtr y, getPtr z], addr ret)
  (addr ret).decode_result(Float)

proc getNoise3Dv*(self: Noise; v: Vector3): Float =
  expandMethodBind(className Noise, "get_noise_3dv", 1109078154)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr v], addr ret)
  (addr ret).decode_result(Float)

proc getImage*(self: Noise; width: int32; height: int32; invert: bool = false; in3DSpace: bool = false; normalize: bool = true): gdref Image =
  expandMethodBind(className Noise, "get_image", 3180683109)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [getPtr width, getPtr height, getPtr invert, getPtr in3DSpace, getPtr normalize], addr ret)
  (addr ret).decode_result(gdref Image)

proc getSeamlessImage*(self: Noise; width: int32; height: int32; invert: bool = false; in3DSpace: bool = false; skirt: Float = 0.1; normalize: bool = true): gdref Image =
  expandMethodBind(className Noise, "get_seamless_image", 2770743602)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [getPtr width, getPtr height, getPtr invert, getPtr in3DSpace, getPtr skirt, getPtr normalize], addr ret)
  (addr ret).decode_result(gdref Image)

proc getImage3D*(self: Noise; width: int32; height: int32; depth: int32; invert: bool = false; normalize: bool = true): TypedArray[Image] =
  expandMethodBind(className Noise, "get_image_3d", 3977814329)
  var ret: encoded TypedArray[Image]
  methodbind.ptrcall(self, [getPtr width, getPtr height, getPtr depth, getPtr invert, getPtr normalize], addr ret)
  (addr ret).decode_result(TypedArray[Image])

proc getSeamlessImage3D*(self: Noise; width: int32; height: int32; depth: int32; invert: bool = false; skirt: Float = 0.1; normalize: bool = true): TypedArray[Image] =
  expandMethodBind(className Noise, "get_seamless_image_3d", 451006340)
  var ret: encoded TypedArray[Image]
  methodbind.ptrcall(self, [getPtr width, getPtr height, getPtr depth, getPtr invert, getPtr skirt, getPtr normalize], addr ret)
  (addr ret).decode_result(TypedArray[Image])

const Noise_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Noise]): Table[string, string] = Noise_vmap