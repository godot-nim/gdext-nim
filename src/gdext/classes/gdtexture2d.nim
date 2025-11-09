{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture; export gdtexture

expandOnClassImported(Texture2D, Texture)

method getWidth*(self: Texture2D): int32 {.base.} = (discard)
proc registerVirtual_getWidth*[T: Texture2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_width"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture2D](p_instance).getWidth().encode(r_ret)

method getHeight*(self: Texture2D): int32 {.base.} = (discard)
proc registerVirtual_getHeight*[T: Texture2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_height"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture2D](p_instance).getHeight().encode(r_ret)

method isPixelOpaque*(self: Texture2D; x: int32; y: int32): bool {.base.} = (discard)
proc registerVirtual_isPixelOpaque*[T: Texture2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_pixel_opaque"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture2D](p_instance).isPixelOpaque(p_args[0].decode(int32), p_args[1].decode(int32)).encode(r_ret)

method hasAlpha*(self: Texture2D): bool {.base.} = (discard)
proc registerVirtual_hasAlpha*[T: Texture2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_has_alpha"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture2D](p_instance).hasAlpha().encode(r_ret)

method draw*(self: Texture2D; toCanvasItem: RID; pos: Vector2; modulate: Color; transpose: bool): void {.base.} = (discard)
proc registerVirtual_draw*[T: Texture2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_draw"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture2D](p_instance).draw(p_args[0].decode(RID), p_args[1].decode(Vector2), p_args[2].decode(Color), p_args[3].decode(bool))

method drawRect*(self: Texture2D; toCanvasItem: RID; rect: Rect2; tile: bool; modulate: Color; transpose: bool): void {.base.} = (discard)
proc registerVirtual_drawRect*[T: Texture2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_draw_rect"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture2D](p_instance).drawRect(p_args[0].decode(RID), p_args[1].decode(Rect2), p_args[2].decode(bool), p_args[3].decode(Color), p_args[4].decode(bool))

method drawRectRegion*(self: Texture2D; toCanvasItem: RID; rect: Rect2; srcRect: Rect2; modulate: Color; transpose: bool; clipUv: bool): void {.base.} = (discard)
proc registerVirtual_drawRectRegion*[T: Texture2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_draw_rect_region"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture2D](p_instance).drawRectRegion(p_args[0].decode(RID), p_args[1].decode(Rect2), p_args[2].decode(Rect2), p_args[3].decode(Color), p_args[4].decode(bool), p_args[5].decode(bool))

proc getWidth*(self: Texture2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture2D, "get_width", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getHeight*(self: Texture2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture2D, "get_height", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getSize*(self: Texture2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture2D, "get_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc hasAlpha*(self: Texture2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture2D, "has_alpha", 36873697)
  methodbind.ptrcall(self, [], bool)

proc draw*(self: Texture2D; canvasItem: RID; position: Vector2; modulate: Color = color(1, 1, 1, 1); transpose: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture2D, "draw", 2729649137)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr position, getPtr modulate, getPtr transpose], void)

proc drawRect*(self: Texture2D; canvasItem: RID; rect: Rect2; tile: bool; modulate: Color = color(1, 1, 1, 1); transpose: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture2D, "draw_rect", 3499451691)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr rect, getPtr tile, getPtr modulate, getPtr transpose], void)

proc drawRectRegion*(self: Texture2D; canvasItem: RID; rect: Rect2; srcRect: Rect2; modulate: Color = color(1, 1, 1, 1); transpose: bool = false; clipUv: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture2D, "draw_rect_region", 2963678660)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr rect, getPtr srcRect, getPtr modulate, getPtr transpose, getPtr clipUv], void)

proc getImage*(self: Texture2D): gdref Image =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture2D, "get_image", 4190603485)
  methodbind.ptrcall(self, [], gdref Image)

proc createPlaceholder*(self: Texture2D): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture2D, "create_placeholder", 121922552)
  methodbind.ptrcall(self, [], gdref Resource)
