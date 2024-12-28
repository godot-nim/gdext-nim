{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

method getChildNodes*(self: AnimationNode): Dictionary {.base.} = (discard)
proc getChildNodes(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AnimationNode](p_instance).getChildNodes().encode(r_ret)
template getChildNodes_bind*(_: typedesc[AnimationNode]): ClassCallVirtual = getChildNodes

method getParameterList*(self: AnimationNode): Array {.base.} = (discard)
proc getParameterList(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AnimationNode](p_instance).getParameterList().encode(r_ret)
template getParameterList_bind*(_: typedesc[AnimationNode]): ClassCallVirtual = getParameterList

method getChildByName*(self: AnimationNode; name: StringName): gdref AnimationNode {.base.} = (discard)
proc getChildByName(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AnimationNode](p_instance).getChildByName(p_args[0].decode(StringName)).encode(r_ret)
template getChildByName_bind*(_: typedesc[AnimationNode]): ClassCallVirtual = getChildByName

method getParameterDefaultValue*(self: AnimationNode; parameter: StringName): Variant {.base.} = (discard)
proc getParameterDefaultValue(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AnimationNode](p_instance).getParameterDefaultValue(p_args[0].decode(StringName)).encode(r_ret)
template getParameterDefaultValue_bind*(_: typedesc[AnimationNode]): ClassCallVirtual = getParameterDefaultValue

method isParameterReadOnly*(self: AnimationNode; parameter: StringName): bool {.base.} = (discard)
proc isParameterReadOnly(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AnimationNode](p_instance).isParameterReadOnly(p_args[0].decode(StringName)).encode(r_ret)
template isParameterReadOnly_bind*(_: typedesc[AnimationNode]): ClassCallVirtual = isParameterReadOnly

method process*(self: AnimationNode; time: float64; seek: bool; isExternalSeeking: bool; testOnly: bool): float64 {.base.} = (discard)
proc process(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AnimationNode](p_instance).process(p_args[0].decode(float64), p_args[1].decode(bool), p_args[2].decode(bool), p_args[3].decode(bool)).encode(r_ret)
template process_bind*(_: typedesc[AnimationNode]): ClassCallVirtual = process

method getCaption*(self: AnimationNode): String {.base.} = (discard)
proc getCaption(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AnimationNode](p_instance).getCaption().encode(r_ret)
template getCaption_bind*(_: typedesc[AnimationNode]): ClassCallVirtual = getCaption

method hasFilter*(self: AnimationNode): bool {.base.} = (discard)
proc hasFilter(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AnimationNode](p_instance).hasFilter().encode(r_ret)
template hasFilter_bind*(_: typedesc[AnimationNode]): ClassCallVirtual = hasFilter

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

const AnimationNode_vmap =
  Resource.vmap.concat toTable {
    "getchildnodes" : "_get_child_nodes",
    "getparameterlist" : "_get_parameter_list",
    "getchildbyname" : "_get_child_by_name",
    "getparameterdefaultvalue" : "_get_parameter_default_value",
    "isparameterreadonly" : "_is_parameter_read_only",
    "process" : "_process",
    "getcaption" : "_get_caption",
    "hasfilter" : "_has_filter",
    }
template vmap*(_: typedesc[AnimationNode]): Table[string, string] = AnimationNode_vmap

proc treeChanged*(self: AnimationNode): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("tree_changed")
  self.emitSignal(signalname)

proc animationNodeRenamed*(self: AnimationNode; objectId: Variant; oldName: Variant; newName: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_node_renamed")
  let args = [objectId, oldName, newName]
  self.emitSignal(signalname, args)

proc animationNodeRemoved*(self: AnimationNode; objectId: Variant; name: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_node_removed")
  let args = [objectId, name]
  self.emitSignal(signalname, args)