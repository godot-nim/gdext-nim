{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(StyleBox, Resource)

method draw*(self: StyleBox; toCanvasItem: RID; rect: Rect2): void {.base.} = (discard)
proc registerVirtual_draw*[T: StyleBox](Self: typedesc[T]) =
  Self.vmethods[newStringName"_draw"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[StyleBox](p_instance).draw(p_args[0].decode(RID), p_args[1].decode(Rect2))

method getDrawRect*(self: StyleBox; rect: Rect2): Rect2 {.base.} = (discard)
proc registerVirtual_getDrawRect*[T: StyleBox](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_draw_rect"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[StyleBox](p_instance).getDrawRect(p_args[0].decode(Rect2)).encode(r_ret)

method getMinimumSize*(self: StyleBox): Vector2 {.base.} = (discard)
proc registerVirtual_getMinimumSize*[T: StyleBox](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_minimum_size"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[StyleBox](p_instance).getMinimumSize().encode(r_ret)

method testMask*(self: StyleBox; point: Vector2; rect: Rect2): bool {.base.} = (discard)
proc registerVirtual_testMask*[T: StyleBox](Self: typedesc[T]) =
  Self.vmethods[newStringName"_test_mask"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[StyleBox](p_instance).testMask(p_args[0].decode(Vector2), p_args[1].decode(Rect2)).encode(r_ret)

proc getMinimumSize*(self: StyleBox): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBox, "get_minimum_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setContentMargin*(self: StyleBox; margin: Side; offset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBox, "set_content_margin", 4290182280)
  methodbind.ptrcall(self, [getPtr margin, getPtr offset], void)

proc setContentMarginAll*(self: StyleBox; offset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBox, "set_content_margin_all", 373806689)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getContentMargin*(self: StyleBox; margin: Side): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBox, "get_content_margin", 2869120046)
  methodbind.ptrcall(self, [getPtr margin], Float)

proc getMargin*(self: StyleBox; margin: Side): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBox, "get_margin", 2869120046)
  methodbind.ptrcall(self, [getPtr margin], Float)

proc getOffset*(self: StyleBox): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBox, "get_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc draw*(self: StyleBox; canvasItem: RID; rect: Rect2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBox, "draw", 2275962004)
  methodbind.ptrcall(self, [getPtr canvasItem, getPtr rect], void)

proc getCurrentItemDrawn*(self: StyleBox): CanvasItem =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBox, "get_current_item_drawn", 3213695180)
  methodbind.ptrcall(self, [], CanvasItem)

proc testMask*(self: StyleBox; point: Vector2; rect: Rect2): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className StyleBox, "test_mask", 3735564539)
  methodbind.ptrcall(self, [getPtr point, getPtr rect], bool)

template contentMarginLeft*(self: StyleBox): untyped = self.getContentMargin(Side(0))
template `contentMarginLeft=`*(self: StyleBox; value) = self.setContentMargin(Side(0), value)

template contentMarginTop*(self: StyleBox): untyped = self.getContentMargin(Side(1))
template `contentMarginTop=`*(self: StyleBox; value) = self.setContentMargin(Side(1), value)

template contentMarginRight*(self: StyleBox): untyped = self.getContentMargin(Side(2))
template `contentMarginRight=`*(self: StyleBox; value) = self.setContentMargin(Side(2), value)

template contentMarginBottom*(self: StyleBox): untyped = self.getContentMargin(Side(3))
template `contentMarginBottom=`*(self: StyleBox; value) = self.setContentMargin(Side(3), value)
