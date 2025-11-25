{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(AnimationNode, Resource)

method getChildNodes*(self: AnimationNode): Dictionary[Variant, Variant] {.base.} = (discard)
proc registerVirtual_getChildNodes*[T: AnimationNode](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_child_nodes"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AnimationNode](p_instance).getChildNodes().encode(r_ret)

method getParameterList*(self: AnimationNode): Array[Variant] {.base.} = (discard)
proc registerVirtual_getParameterList*[T: AnimationNode](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_parameter_list"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AnimationNode](p_instance).getParameterList().encode(r_ret)

method getChildByName*(self: AnimationNode; name: StringName): gdref AnimationNode {.base.} = (discard)
proc registerVirtual_getChildByName*[T: AnimationNode](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_child_by_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AnimationNode](p_instance).getChildByName(p_args[0].decode(StringName)).encode(r_ret)

method getParameterDefaultValue*(self: AnimationNode; parameter: StringName): Variant {.base.} = (discard)
proc registerVirtual_getParameterDefaultValue*[T: AnimationNode](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_parameter_default_value"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AnimationNode](p_instance).getParameterDefaultValue(p_args[0].decode(StringName)).encode(r_ret)

method isParameterReadOnly*(self: AnimationNode; parameter: StringName): bool {.base.} = (discard)
proc registerVirtual_isParameterReadOnly*[T: AnimationNode](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_parameter_read_only"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AnimationNode](p_instance).isParameterReadOnly(p_args[0].decode(StringName)).encode(r_ret)

method process*(self: AnimationNode; time: float64; seek: bool; isExternalSeeking: bool; testOnly: bool): float64 {.base.} = (discard)
proc registerVirtual_process*[T: AnimationNode](Self: typedesc[T]) =
  Self.vmethods[newStringName"_process"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AnimationNode](p_instance).process(p_args[0].decode(float64), p_args[1].decode(bool), p_args[2].decode(bool), p_args[3].decode(bool)).encode(r_ret)

method getCaption*(self: AnimationNode): String {.base.} = (discard)
proc registerVirtual_getCaption*[T: AnimationNode](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_caption"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AnimationNode](p_instance).getCaption().encode(r_ret)

method hasFilter*(self: AnimationNode): bool {.base.} = (discard)
proc registerVirtual_hasFilter*[T: AnimationNode](Self: typedesc[T]) =
  Self.vmethods[newStringName"_has_filter"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AnimationNode](p_instance).hasFilter().encode(r_ret)

proc addInput*(self: AnimationNode; name: String): bool =
  expandMethodBind(className AnimationNode, "add_input", 2323990056)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc removeInput*(self: AnimationNode; index: int32): void =
  expandMethodBind(className AnimationNode, "remove_input", 1286410249)
  methodbind.ptrcall(self, [getPtr index])

proc setInputName*(self: AnimationNode; input: int32; name: String): bool =
  expandMethodBind(className AnimationNode, "set_input_name", 215573526)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr input, getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc getInputName*(self: AnimationNode; input: int32): String =
  expandMethodBind(className AnimationNode, "get_input_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr input], addr ret)
  (addr ret).decode_result(String)

proc getInputCount*(self: AnimationNode): int32 =
  expandMethodBind(className AnimationNode, "get_input_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc findInput*(self: AnimationNode; name: String): int32 =
  expandMethodBind(className AnimationNode, "find_input", 1321353865)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(int32)

proc setFilterPath*(self: AnimationNode; path: NodePath; enable: bool): void =
  expandMethodBind(className AnimationNode, "set_filter_path", 3868023870)
  methodbind.ptrcall(self, [getPtr path, getPtr enable])

proc isPathFiltered*(self: AnimationNode; path: NodePath): bool =
  expandMethodBind(className AnimationNode, "is_path_filtered", 861721659)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(bool)

proc setFilterEnabled*(self: AnimationNode; enable: bool): void =
  expandMethodBind(className AnimationNode, "set_filter_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isFilterEnabled*(self: AnimationNode): bool =
  expandMethodBind(className AnimationNode, "is_filter_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getProcessingAnimationTreeInstanceId*(self: AnimationNode): uint64 =
  expandMethodBind(className AnimationNode, "get_processing_animation_tree_instance_id", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc isProcessTesting*(self: AnimationNode): bool =
  expandMethodBind(className AnimationNode, "is_process_testing", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc blendAnimation*(self: AnimationNode; animation: StringName; time: float64; delta: float64; seeked: bool; isExternalSeeking: bool; blend: Float; loopedFlag: Animation_LoopedFlag = loopedFlagNone): void =
  expandMethodBind(className AnimationNode, "blend_animation", 1630801826)
  methodbind.ptrcall(self, [getPtr animation, getPtr time, getPtr delta, getPtr seeked, getPtr isExternalSeeking, getPtr blend, getPtr loopedFlag])

proc blendNode*(self: AnimationNode; name: StringName; node: gdref AnimationNode; time: float64; seek: bool; isExternalSeeking: bool; blend: Float; filter: AnimationNode_FilterAction = filterIgnore; sync: bool = true; testOnly: bool = false): float64 =
  expandMethodBind(className AnimationNode, "blend_node", 1746075988)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr name, getPtr node, getPtr time, getPtr seek, getPtr isExternalSeeking, getPtr blend, getPtr filter, getPtr sync, getPtr testOnly], addr ret)
  (addr ret).decode_result(float64)

proc blendInput*(self: AnimationNode; inputIndex: int32; time: float64; seek: bool; isExternalSeeking: bool; blend: Float; filter: AnimationNode_FilterAction = filterIgnore; sync: bool = true; testOnly: bool = false): float64 =
  expandMethodBind(className AnimationNode, "blend_input", 1361527350)
  var ret: encoded float64
  methodbind.ptrcall(self, [getPtr inputIndex, getPtr time, getPtr seek, getPtr isExternalSeeking, getPtr blend, getPtr filter, getPtr sync, getPtr testOnly], addr ret)
  (addr ret).decode_result(float64)

proc setParameter*(self: AnimationNode; name: StringName; value: Variant): void =
  expandMethodBind(className AnimationNode, "set_parameter", 3776071444)
  methodbind.ptrcall(self, [getPtr name, getPtr value])

proc getParameter*(self: AnimationNode; name: StringName): Variant =
  expandMethodBind(className AnimationNode, "get_parameter", 2760726917)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(Variant)

template filterEnabled*(self: AnimationNode): untyped = self.isFilterEnabled()
template `filterEnabled=`*(self: AnimationNode; value) = self.setFilterEnabled(value)

template filters*(self: AnimationNode): untyped = self.getFilters()
template `filters=`*(self: AnimationNode; value) = self.setFilters(value)
