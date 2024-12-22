{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

method draw*(self: StyleBox; toCanvasItem: RID; rect: Rect2): void {.base.} = (discard)
proc draw(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[StyleBox](p_instance).draw(p_args[0].decode(RID), p_args[1].decode(Rect2))
template draw_bind*(_: typedesc[StyleBox]): ClassCallVirtual = draw

method getDrawRect*(self: StyleBox; rect: Rect2): Rect2 {.base.} = (discard)
proc getDrawRect(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[StyleBox](p_instance).getDrawRect(p_args[0].decode(Rect2)).encode(r_ret)
template getDrawRect_bind*(_: typedesc[StyleBox]): ClassCallVirtual = getDrawRect

method getMinimumSize*(self: StyleBox): Vector2 {.base.} = (discard)
proc getMinimumSize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[StyleBox](p_instance).getMinimumSize().encode(r_ret)
template getMinimumSize_bind*(_: typedesc[StyleBox]): ClassCallVirtual = getMinimumSize

method testMask*(self: StyleBox; point: Vector2; rect: Rect2): bool {.base.} = (discard)
proc testMask(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[StyleBox](p_instance).testMask(p_args[0].decode(Vector2), p_args[1].decode(Rect2)).encode(r_ret)
template testMask_bind*(_: typedesc[StyleBox]): ClassCallVirtual = testMask

proc getMinimumSize*(self: StyleBox): Vector2 =
  expandMethodBind(className StyleBox, "get_minimum_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setContentMargin*(self: StyleBox; margin: Side; offset: Float): void =
  expandMethodBind(className StyleBox, "set_content_margin", 4290182280)
  var `?param` = [getPtr margin, getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc setContentMarginAll*(self: StyleBox; offset: Float): void =
  expandMethodBind(className StyleBox, "set_content_margin_all", 373806689)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getContentMargin*(self: StyleBox; margin: Side): Float =
  expandMethodBind(className StyleBox, "get_content_margin", 2869120046)
  var `?param` = [getPtr margin]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getMargin*(self: StyleBox; margin: Side): Float =
  expandMethodBind(className StyleBox, "get_margin", 2869120046)
  var `?param` = [getPtr margin]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getOffset*(self: StyleBox): Vector2 =
  expandMethodBind(className StyleBox, "get_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc draw*(self: StyleBox; canvasItem: RID; rect: Rect2): void =
  expandMethodBind(className StyleBox, "draw", 2275962004)
  var `?param` = [getPtr canvasItem, getPtr rect]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCurrentItemDrawn*(self: StyleBox): CanvasItem =
  expandMethodBind(className StyleBox, "get_current_item_drawn", 3213695180)
  var ret: encoded CanvasItem
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CanvasItem)

proc testMask*(self: StyleBox; point: Vector2; rect: Rect2): bool =
  expandMethodBind(className StyleBox, "test_mask", 3735564539)
  var `?param` = [getPtr point, getPtr rect]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

template contentMarginLeft*(self: StyleBox): untyped = self.getContentMargin(Side(0))
template `contentMarginLeft=`*(self: StyleBox; value) = self.setContentMargin(Side(0), value)

template contentMarginTop*(self: StyleBox): untyped = self.getContentMargin(Side(1))
template `contentMarginTop=`*(self: StyleBox; value) = self.setContentMargin(Side(1), value)

template contentMarginRight*(self: StyleBox): untyped = self.getContentMargin(Side(2))
template `contentMarginRight=`*(self: StyleBox; value) = self.setContentMargin(Side(2), value)

template contentMarginBottom*(self: StyleBox): untyped = self.getContentMargin(Side(3))
template `contentMarginBottom=`*(self: StyleBox; value) = self.setContentMargin(Side(3), value)

const StyleBox_vmap =
  Resource.vmap.concat toTable {
    "draw" : "_draw",
    "getdrawrect" : "_get_draw_rect",
    "getminimumsize" : "_get_minimum_size",
    "testmask" : "_test_mask",
    }
template vmap*(_: typedesc[StyleBox]): Table[string, string] = StyleBox_vmap