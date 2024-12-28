{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc create*(self: BitMap; size: Vector2i): void =
  expandMethodBind(className BitMap, "create", 1130785943)
  methodbind.ptrcall(self, [getPtr size])

proc createFromImageAlpha*(self: BitMap; image: gdref Image; threshold: Float = 0.1): void =
  expandMethodBind(className BitMap, "create_from_image_alpha", 106271684)
  methodbind.ptrcall(self, [getPtr image, getPtr threshold])

proc setBitv*(self: BitMap; position: Vector2i; bit: bool): void =
  expandMethodBind(className BitMap, "set_bitv", 4153096796)
  methodbind.ptrcall(self, [getPtr position, getPtr bit])

proc setBit*(self: BitMap; x: int32; y: int32; bit: bool): void =
  expandMethodBind(className BitMap, "set_bit", 1383440665)
  methodbind.ptrcall(self, [getPtr x, getPtr y, getPtr bit])

proc getBitv*(self: BitMap; position: Vector2i): bool =
  expandMethodBind(className BitMap, "get_bitv", 3900751641)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr position], addr ret)
  (addr ret).decode_result(bool)

proc getBit*(self: BitMap; x: int32; y: int32): bool =
  expandMethodBind(className BitMap, "get_bit", 2522259332)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr x, getPtr y], addr ret)
  (addr ret).decode_result(bool)

proc setBitRect*(self: BitMap; rect: Rect2i; bit: bool): void =
  expandMethodBind(className BitMap, "set_bit_rect", 472162941)
  methodbind.ptrcall(self, [getPtr rect, getPtr bit])

proc getTrueBitCount*(self: BitMap): int32 =
  expandMethodBind(className BitMap, "get_true_bit_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getSize*(self: BitMap): Vector2i =
  expandMethodBind(className BitMap, "get_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc resize*(self: BitMap; newSize: Vector2i): void =
  expandMethodBind(className BitMap, "resize", 1130785943)
  methodbind.ptrcall(self, [getPtr newSize])

proc growMask*(self: BitMap; pixels: int32; rect: Rect2i): void =
  expandMethodBind(className BitMap, "grow_mask", 3317281434)
  methodbind.ptrcall(self, [getPtr pixels, getPtr rect])

proc convertToImage*(self: BitMap): gdref Image =
  expandMethodBind(className BitMap, "convert_to_image", 4190603485)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Image)

proc opaqueToPolygons*(self: BitMap; rect: Rect2i; epsilon: Float = 2.0): TypedArray[PackedVector2Array] =
  expandMethodBind(className BitMap, "opaque_to_polygons", 48478126)
  var ret: encoded TypedArray[PackedVector2Array]
  methodbind.ptrcall(self, [getPtr rect, getPtr epsilon], addr ret)
  (addr ret).decode_result(TypedArray[PackedVector2Array])

template data*(self: BitMap): untyped = self.getData()
template `data=`*(self: BitMap; value) = self.setData(value)

const BitMap_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[BitMap]): Table[string, string] = BitMap_vmap