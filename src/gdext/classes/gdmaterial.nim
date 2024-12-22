{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

method getShaderRid*(self: Material): RID {.base.} = (discard)
proc getShaderRid(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Material](p_instance).getShaderRid().encode(r_ret)
template getShaderRid_bind*(_: typedesc[Material]): ClassCallVirtual = getShaderRid

method getShaderMode*(self: Material): Shader_Mode {.base.} = (discard)
proc getShaderMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Material](p_instance).getShaderMode().encode(r_ret)
template getShaderMode_bind*(_: typedesc[Material]): ClassCallVirtual = getShaderMode

method canDoNextPass*(self: Material): bool {.base.} = (discard)
proc canDoNextPass(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Material](p_instance).canDoNextPass().encode(r_ret)
template canDoNextPass_bind*(_: typedesc[Material]): ClassCallVirtual = canDoNextPass

method canUseRenderPriority*(self: Material): bool {.base.} = (discard)
proc canUseRenderPriority(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Material](p_instance).canUseRenderPriority().encode(r_ret)
template canUseRenderPriority_bind*(_: typedesc[Material]): ClassCallVirtual = canUseRenderPriority

proc setNextPass*(self: Material; nextPass: gdref Material): void =
  expandMethodBind(className Material, "set_next_pass", 2757459619)
  var `?param` = [getPtr nextPass]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNextPass*(self: Material): gdref Material =
  expandMethodBind(className Material, "get_next_pass", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

proc setRenderPriority*(self: Material; priority: int32): void =
  expandMethodBind(className Material, "set_render_priority", 1286410249)
  var `?param` = [getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRenderPriority*(self: Material): int32 =
  expandMethodBind(className Material, "get_render_priority", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc inspectNativeShaderCode*(self: Material): void =
  expandMethodBind(className Material, "inspect_native_shader_code", 3218959716)
  methodbind.ptrcall(self, nil)

proc createPlaceholder*(self: Material): gdref Resource =
  expandMethodBind(className Material, "create_placeholder", 121922552)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Resource)

template renderPriority*(self: Material): untyped = self.getRenderPriority()
template `renderPriority=`*(self: Material; value) = self.setRenderPriority(value)

template nextPass*(self: Material): untyped = self.getNextPass()
template `nextPass=`*(self: Material; value) = self.setNextPass(value)

const Material_vmap =
  Resource.vmap.concat toTable {
    "getshaderrid" : "_get_shader_rid",
    "getshadermode" : "_get_shader_mode",
    "candonextpass" : "_can_do_next_pass",
    "canuserenderpriority" : "_can_use_render_priority",
    }
template vmap*(_: typedesc[Material]): Table[string, string] = Material_vmap