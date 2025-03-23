{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

method getName*(self: VisualShaderNodeCustom): String {.base.} = (discard)
proc registerVirtual_getName*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getName().encode(r_ret)

method getDescription*(self: VisualShaderNodeCustom): String {.base.} = (discard)
proc registerVirtual_getDescription*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_description"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getDescription().encode(r_ret)

method getCategory*(self: VisualShaderNodeCustom): String {.base.} = (discard)
proc registerVirtual_getCategory*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_category"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getCategory().encode(r_ret)

method getReturnIconType*(self: VisualShaderNodeCustom): VisualShaderNode_PortType {.base.} = (discard)
proc registerVirtual_getReturnIconType*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_return_icon_type"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getReturnIconType().encode(r_ret)

method getInputPortCount*(self: VisualShaderNodeCustom): int32 {.base.} = (discard)
proc registerVirtual_getInputPortCount*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_input_port_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getInputPortCount().encode(r_ret)

method getInputPortType*(self: VisualShaderNodeCustom; port: int32): VisualShaderNode_PortType {.base.} = (discard)
proc registerVirtual_getInputPortType*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_input_port_type"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getInputPortType(p_args[0].decode(int32)).encode(r_ret)

method getInputPortName*(self: VisualShaderNodeCustom; port: int32): String {.base.} = (discard)
proc registerVirtual_getInputPortName*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_input_port_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getInputPortName(p_args[0].decode(int32)).encode(r_ret)

method getInputPortDefaultValue*(self: VisualShaderNodeCustom; port: int32): Variant {.base.} = (discard)
proc registerVirtual_getInputPortDefaultValue*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_input_port_default_value"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getInputPortDefaultValue(p_args[0].decode(int32)).encode(r_ret)

method getDefaultInputPort*(self: VisualShaderNodeCustom; `type`: VisualShaderNode_PortType): int32 {.base.} = (discard)
proc registerVirtual_getDefaultInputPort*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_default_input_port"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getDefaultInputPort(p_args[0].decode(VisualShaderNode_PortType)).encode(r_ret)

method getOutputPortCount*(self: VisualShaderNodeCustom): int32 {.base.} = (discard)
proc registerVirtual_getOutputPortCount*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_output_port_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getOutputPortCount().encode(r_ret)

method getOutputPortType*(self: VisualShaderNodeCustom; port: int32): VisualShaderNode_PortType {.base.} = (discard)
proc registerVirtual_getOutputPortType*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_output_port_type"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getOutputPortType(p_args[0].decode(int32)).encode(r_ret)

method getOutputPortName*(self: VisualShaderNodeCustom; port: int32): String {.base.} = (discard)
proc registerVirtual_getOutputPortName*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_output_port_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getOutputPortName(p_args[0].decode(int32)).encode(r_ret)

method getPropertyCount*(self: VisualShaderNodeCustom): int32 {.base.} = (discard)
proc registerVirtual_getPropertyCount*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_property_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getPropertyCount().encode(r_ret)

method getPropertyName*(self: VisualShaderNodeCustom; index: int32): String {.base.} = (discard)
proc registerVirtual_getPropertyName*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_property_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getPropertyName(p_args[0].decode(int32)).encode(r_ret)

method getPropertyDefaultIndex*(self: VisualShaderNodeCustom; index: int32): int32 {.base.} = (discard)
proc registerVirtual_getPropertyDefaultIndex*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_property_default_index"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getPropertyDefaultIndex(p_args[0].decode(int32)).encode(r_ret)

method getPropertyOptions*(self: VisualShaderNodeCustom; index: int32): PackedStringArray {.base.} = (discard)
proc registerVirtual_getPropertyOptions*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_property_options"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getPropertyOptions(p_args[0].decode(int32)).encode(r_ret)

method getCode*(self: VisualShaderNodeCustom; inputVars: TypedArray[String]; outputVars: TypedArray[String]; mode: Shader_Mode; `type`: VisualShader_Type): String {.base.} = (discard)
proc registerVirtual_getCode*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_code"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getCode(p_args[0].decode(TypedArray[String]), p_args[1].decode(TypedArray[String]), p_args[2].decode(Shader_Mode), p_args[3].decode(VisualShader_Type)).encode(r_ret)

method getFuncCode*(self: VisualShaderNodeCustom; mode: Shader_Mode; `type`: VisualShader_Type): String {.base.} = (discard)
proc registerVirtual_getFuncCode*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_func_code"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getFuncCode(p_args[0].decode(Shader_Mode), p_args[1].decode(VisualShader_Type)).encode(r_ret)

method getGlobalCode*(self: VisualShaderNodeCustom; mode: Shader_Mode): String {.base.} = (discard)
proc registerVirtual_getGlobalCode*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_global_code"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).getGlobalCode(p_args[0].decode(Shader_Mode)).encode(r_ret)

method isHighend*(self: VisualShaderNodeCustom): bool {.base.} = (discard)
proc registerVirtual_isHighend*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_is_highend"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).isHighend().encode(r_ret)

method isAvailable*(self: VisualShaderNodeCustom; mode: Shader_Mode; `type`: VisualShader_Type): bool {.base.} = (discard)
proc registerVirtual_isAvailable*[T: VisualShaderNodeCustom](Self: typedesc[T]) =
  Self.vmethods[stringName"_is_available"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VisualShaderNodeCustom](p_instance).isAvailable(p_args[0].decode(Shader_Mode), p_args[1].decode(VisualShader_Type)).encode(r_ret)

proc getOptionIndex*(self: VisualShaderNodeCustom; option: int32): int32 =
  expandMethodBind(className VisualShaderNodeCustom, "get_option_index", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr option], addr ret)
  (addr ret).decode_result(int32)

template initialized*(self: VisualShaderNodeCustom): untyped = self.isInitialized()
template `initialized=`*(self: VisualShaderNodeCustom; value) = self.setInitialized(value)

template properties*(self: VisualShaderNodeCustom): untyped = self.getProperties()
template `properties=`*(self: VisualShaderNodeCustom; value) = self.setProperties(value)