import gdext/builtinindex
import gdext/private/native

method onInit*(self: Object) {.base.} = discard
method onDestroy*(self: Object) {.base.} = discard
method notification*(self: Object; p_what: int32) {.base.} = discard
method set*(self: Object; p_name: ConstStringNamePtr; p_value: ConstVariantPtr): Bool {.base.} = discard
method get*(self: Object; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.base.} = discard
method property_canRevert*(self: Object; p_name: ConstStringNamePtr): Bool {.base.} = discard
method property_getRevert*(self: Object; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool {.base.} = discard
method toString*(self: Object; r_is_valid: ptr Bool; p_out: StringPtr) {.base.} = discard
method get_propertyList*(self: Object; r_count: ptr uint32): ptr PropertyInfo {.base.} = r_count[] = 0
method free_propertyList*(self: Object; p_list: openArray[PropertyInfo]) {.base.} = discard

type
  onInitT*[T] = proc(self: T)
  onDestroyT*[T] = proc(self: T)
  notificationT*[T] = proc(self: T; p_what: int32)
  setT*[T] = proc(self: T; p_name: ConstStringNamePtr; p_value: ConstVariantPtr): Bool
  getT*[T] = proc(self: T; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool
  property_canRevertT*[T] = proc(self: T; p_name: ConstStringNamePtr): Bool
  property_getRevertT*[T] = proc(self: T; p_name: ConstStringNamePtr; r_ret: VariantPtr): Bool
  toStringT*[T] = proc(self: T; r_is_valid: ptr Bool; p_out: StringPtr)
  get_propertyListT*[T] = proc(self: T; r_count: ptr uint32): ptr PropertyInfo
  free_propertyListT*[T] = proc(self: T; p_list: openArray[PropertyInfo])