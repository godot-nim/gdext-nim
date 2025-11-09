{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture; export gdtexture

expandOnClassImported(Texture2D, Texture)

method getWidth*(self: Texture2D): int32 {.base.} =
  expandMethodBind(className Texture2D, "get_width", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)
proc registerVirtual_getWidth*[T: Texture2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_width"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture2D](p_instance).getWidth().encode(r_ret)

method getHeight*(self: Texture2D): int32 {.base.} =
  expandMethodBind(className Texture2D, "get_height", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)
proc registerVirtual_getHeight*[T: Texture2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_height"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture2D](p_instance).getHeight().encode(r_ret)

method isPixelOpaque*(self: Texture2D; x: int32; y: int32): bool {.base.} = (discard)
proc registerVirtual_isPixelOpaque*[T: Texture2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_pixel_opaque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture2D](p_instance).isPixelOpaque(p_args[0].decode(int32), p_args[1].decode(int32)).encode(r_ret)

method hasAlpha*(self: Texture2D): bool {.base.} =
  expandMethodBind(className Texture2D, "has_alpha", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)
proc registerVirtual_hasAlpha*[T: Texture2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_has_alpha"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture2D](p_instance).hasAlpha().encode(r_ret)

method draw*(self: Texture2D; canvasItem: RID; position: Vector2; modulate: Color = color(1, 1, 1, 1); transpose: bool = false): void {.base.} =
  expandMethodBind(className Texture2D, "draw", 2729649137)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr position, getPtr modulate, getPtr transpose])
proc registerVirtual_draw*[T: Texture2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_draw"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture2D](p_instance).draw(p_args[0].decode(RID), p_args[1].decode(Vector2), p_args[2].decode(Color), p_args[3].decode(bool))

method drawRect*(self: Texture2D; canvasItem: RID; rect: Rect2; tile: bool; modulate: Color = color(1, 1, 1, 1); transpose: bool = false): void {.base.} =
  expandMethodBind(className Texture2D, "draw_rect", 3499451691)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr rect, getPtr tile, getPtr modulate, getPtr transpose])
proc registerVirtual_drawRect*[T: Texture2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_draw_rect"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture2D](p_instance).drawRect(p_args[0].decode(RID), p_args[1].decode(Rect2), p_args[2].decode(bool), p_args[3].decode(Color), p_args[4].decode(bool))

method drawRectRegion*(self: Texture2D; canvasItem: RID; rect: Rect2; srcRect: Rect2; modulate: Color = color(1, 1, 1, 1); transpose: bool = false; clipUv: bool = true): void {.base.} =
  expandMethodBind(className Texture2D, "draw_rect_region", 2963678660)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr rect, getPtr srcRect, getPtr modulate, getPtr transpose, getPtr clipUv])
proc registerVirtual_drawRectRegion*[T: Texture2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_draw_rect_region"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture2D](p_instance).drawRectRegion(p_args[0].decode(RID), p_args[1].decode(Rect2), p_args[2].decode(Rect2), p_args[3].decode(Color), p_args[4].decode(bool), p_args[5].decode(bool))

proc getSize*(self: Texture2D): Vector2 =
  expandMethodBind(className Texture2D, "get_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getImage*(self: Texture2D): gdref Image =
  expandMethodBind(className Texture2D, "get_image", 4190603485)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Image)

proc createPlaceholder*(self: Texture2D): gdref Resource =
  expandMethodBind(className Texture2D, "create_placeholder", 121922552)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Resource)
