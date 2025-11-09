{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(BitMap, Resource)

proc create*(self: BitMap; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BitMap, "create", 1130785943)
  methodbind.ptrcall(self, [getPtr size], void)

proc createFromImageAlpha*(self: BitMap; image: gdref Image; threshold: Float = 0.1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BitMap, "create_from_image_alpha", 106271684)
  methodbind.ptrcall(self, [getPtr image, getPtr threshold], void)

proc setBitv*(self: BitMap; position: Vector2i; bit: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BitMap, "set_bitv", 4153096796)
  methodbind.ptrcall(self, [getPtr position, getPtr bit], void)

proc setBit*(self: BitMap; x: int32; y: int32; bit: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BitMap, "set_bit", 1383440665)
  methodbind.ptrcall(self, [getPtr x, getPtr y, getPtr bit], void)

proc getBitv*(self: BitMap; position: Vector2i): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BitMap, "get_bitv", 3900751641)
  methodbind.ptrcall(self, [getPtr position], bool)

proc getBit*(self: BitMap; x: int32; y: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BitMap, "get_bit", 2522259332)
  methodbind.ptrcall(self, [getPtr x, getPtr y], bool)

proc setBitRect*(self: BitMap; rect: Rect2i; bit: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BitMap, "set_bit_rect", 472162941)
  methodbind.ptrcall(self, [getPtr rect, getPtr bit], void)

proc getTrueBitCount*(self: BitMap): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BitMap, "get_true_bit_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getSize*(self: BitMap): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BitMap, "get_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc resize*(self: BitMap; newSize: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BitMap, "resize", 1130785943)
  methodbind.ptrcall(self, [getPtr newSize], void)

proc growMask*(self: BitMap; pixels: int32; rect: Rect2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BitMap, "grow_mask", 3317281434)
  methodbind.ptrcall(self, [getPtr pixels, getPtr rect], void)

proc convertToImage*(self: BitMap): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BitMap, "convert_to_image", 4190603485)
  methodbind.ptrcall(self, [], gdref Image)

proc opaqueToPolygons*(self: BitMap; rect: Rect2i; epsilon: Float = 2.0): TypedArray[PackedVector2Array] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className BitMap, "opaque_to_polygons", 48478126)
  methodbind.ptrcall(self, [getPtr rect, getPtr epsilon], TypedArray[PackedVector2Array])

template data*(self: BitMap): untyped = self.getData()
template `data=`*(self: BitMap; value) = self.setData(value)
