{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Material, Resource)

const RenderPriorityMax* = 127
const RenderPriorityMin* = -128

method getShaderRid*(self: Material): RID {.base.} = (discard)
proc registerVirtual_getShaderRid*[T: Material](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_shader_rid"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Material](p_instance).getShaderRid().encode(r_ret)

method getShaderMode*(self: Material): Shader_Mode {.base.} = (discard)
proc registerVirtual_getShaderMode*[T: Material](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_shader_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Material](p_instance).getShaderMode().encode(r_ret)

method canDoNextPass*(self: Material): bool {.base.} = (discard)
proc registerVirtual_canDoNextPass*[T: Material](Self: typedesc[T]) =
  Self.vmethods[newStringName"_can_do_next_pass"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Material](p_instance).canDoNextPass().encode(r_ret)

method canUseRenderPriority*(self: Material): bool {.base.} = (discard)
proc registerVirtual_canUseRenderPriority*[T: Material](Self: typedesc[T]) =
  Self.vmethods[newStringName"_can_use_render_priority"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Material](p_instance).canUseRenderPriority().encode(r_ret)

proc setNextPass*(self: Material; nextPass: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Material, "set_next_pass", 2757459619)
  methodbind.ptrcall(self, [getPtr nextPass], void)

proc getNextPass*(self: Material): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Material, "get_next_pass", 5934680)
  methodbind.ptrcall(self, [], gdref Material)

proc setRenderPriority*(self: Material; priority: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Material, "set_render_priority", 1286410249)
  methodbind.ptrcall(self, [getPtr priority], void)

proc getRenderPriority*(self: Material): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Material, "get_render_priority", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc inspectNativeShaderCode*(self: Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Material, "inspect_native_shader_code", 3218959716)
  methodbind.ptrcall(self, [], void)

proc createPlaceholder*(self: Material): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Material, "create_placeholder", 121922552)
  methodbind.ptrcall(self, [], gdref Resource)

template renderPriority*(self: Material): untyped = self.getRenderPriority()
template `renderPriority=`*(self: Material; value) = self.setRenderPriority(value)

template nextPass*(self: Material): untyped = self.getNextPass()
template `nextPass=`*(self: Material; value) = self.setNextPass(value)
