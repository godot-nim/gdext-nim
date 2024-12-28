{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture; export gdtexture

method getWidth*(self: Texture2D): int32 {.base.} = (discard)
proc getWidth(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Texture2D](p_instance).getWidth().encode(r_ret)
template getWidth_bind*(_: typedesc[Texture2D]): ClassCallVirtual = getWidth

method getHeight*(self: Texture2D): int32 {.base.} = (discard)
proc getHeight(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Texture2D](p_instance).getHeight().encode(r_ret)
template getHeight_bind*(_: typedesc[Texture2D]): ClassCallVirtual = getHeight

method isPixelOpaque*(self: Texture2D; x: int32; y: int32): bool {.base.} = (discard)
proc isPixelOpaque(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Texture2D](p_instance).isPixelOpaque(p_args[0].decode(int32), p_args[1].decode(int32)).encode(r_ret)
template isPixelOpaque_bind*(_: typedesc[Texture2D]): ClassCallVirtual = isPixelOpaque

method hasAlpha*(self: Texture2D): bool {.base.} = (discard)
proc hasAlpha(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Texture2D](p_instance).hasAlpha().encode(r_ret)
template hasAlpha_bind*(_: typedesc[Texture2D]): ClassCallVirtual = hasAlpha

method draw*(self: Texture2D; toCanvasItem: RID; pos: Vector2; modulate: Color; transpose: bool): void {.base.} = (discard)
proc draw(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Texture2D](p_instance).draw(p_args[0].decode(RID), p_args[1].decode(Vector2), p_args[2].decode(Color), p_args[3].decode(bool))
template draw_bind*(_: typedesc[Texture2D]): ClassCallVirtual = draw

method drawRect*(self: Texture2D; toCanvasItem: RID; rect: Rect2; tile: bool; modulate: Color; transpose: bool): void {.base.} = (discard)
proc drawRect(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Texture2D](p_instance).drawRect(p_args[0].decode(RID), p_args[1].decode(Rect2), p_args[2].decode(bool), p_args[3].decode(Color), p_args[4].decode(bool))
template drawRect_bind*(_: typedesc[Texture2D]): ClassCallVirtual = drawRect

method drawRectRegion*(self: Texture2D; toCanvasItem: RID; rect: Rect2; srcRect: Rect2; modulate: Color; transpose: bool; clipUv: bool): void {.base.} = (discard)
proc drawRectRegion(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Texture2D](p_instance).drawRectRegion(p_args[0].decode(RID), p_args[1].decode(Rect2), p_args[2].decode(Rect2), p_args[3].decode(Color), p_args[4].decode(bool), p_args[5].decode(bool))
template drawRectRegion_bind*(_: typedesc[Texture2D]): ClassCallVirtual = drawRectRegion

proc getWidth*(self: Texture2D): int32 =
  expandMethodBind(className Texture2D, "get_width", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getHeight*(self: Texture2D): int32 =
  expandMethodBind(className Texture2D, "get_height", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getSize*(self: Texture2D): Vector2 =
  expandMethodBind(className Texture2D, "get_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc hasAlpha*(self: Texture2D): bool =
  expandMethodBind(className Texture2D, "has_alpha", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc draw*(self: Texture2D; canvasItem: RID; position: Vector2; modulate: Color = color(1, 1, 1, 1); transpose: bool = false): void =
  expandMethodBind(className Texture2D, "draw", 2729649137)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr position, getPtr modulate, getPtr transpose])

proc drawRect*(self: Texture2D; canvasItem: RID; rect: Rect2; tile: bool; modulate: Color = color(1, 1, 1, 1); transpose: bool = false): void =
  expandMethodBind(className Texture2D, "draw_rect", 3499451691)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr rect, getPtr tile, getPtr modulate, getPtr transpose])

proc drawRectRegion*(self: Texture2D; canvasItem: RID; rect: Rect2; srcRect: Rect2; modulate: Color = color(1, 1, 1, 1); transpose: bool = false; clipUv: bool = true): void =
  expandMethodBind(className Texture2D, "draw_rect_region", 2963678660)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr rect, getPtr srcRect, getPtr modulate, getPtr transpose, getPtr clipUv])

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

const Texture2D_vmap =
  Texture.vmap.concat toTable {
    "getwidth" : "_get_width",
    "getheight" : "_get_height",
    "ispixelopaque" : "_is_pixel_opaque",
    "hasalpha" : "_has_alpha",
    "draw" : "_draw",
    "drawrect" : "_draw_rect",
    "drawrectregion" : "_draw_rect_region",
    }
template vmap*(_: typedesc[Texture2D]): Table[string, string] = Texture2D_vmap