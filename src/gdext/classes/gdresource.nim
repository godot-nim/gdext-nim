{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method setupLocalToScene*(self: Resource): void {.base.} = (discard)
proc registerVirtual_setupLocalToScene*[T: Resource](Self: typedesc[T]) =
  Self.vmethods[newStringName"_setup_local_to_scene"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Resource](p_instance).setupLocalToScene()

method getRid*(self: Resource): RID {.base.} = (discard)
proc registerVirtual_getRid*[T: Resource](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_rid"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Resource](p_instance).getRid().encode(r_ret)

method resetState*(self: Resource): void {.base.} = (discard)
proc registerVirtual_resetState*[T: Resource](Self: typedesc[T]) =
  Self.vmethods[newStringName"_reset_state"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Resource](p_instance).resetState()

method setPathCache*(self: Resource; path: String): void {.base.} = (discard)
proc registerVirtual_setPathCache*[T: Resource](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_path_cache"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Resource](p_instance).setPathCache(p_args[0].decode(String))

proc setPath*(self: Resource; path: String): void =
  expandMethodBind(className Resource, "set_path", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc takeOverPath*(self: Resource; path: String): void =
  expandMethodBind(className Resource, "take_over_path", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc getPath*(self: Resource): String =
  expandMethodBind(className Resource, "get_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setPathCache*(self: Resource; path: String): void =
  expandMethodBind(className Resource, "set_path_cache", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc setName*(self: Resource; name: String): void =
  expandMethodBind(className Resource, "set_name", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc getName*(self: Resource): String =
  expandMethodBind(className Resource, "get_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getRid*(self: Resource): RID =
  expandMethodBind(className Resource, "get_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc setLocalToScene*(self: Resource; enable: bool): void =
  expandMethodBind(className Resource, "set_local_to_scene", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isLocalToScene*(self: Resource): bool =
  expandMethodBind(className Resource, "is_local_to_scene", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getLocalScene*(self: Resource): Node =
  expandMethodBind(className Resource, "get_local_scene", 3160264692)
  var ret: encoded Node
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Node)

proc setupLocalToScene*(self: Resource): void =
  expandMethodBind(className Resource, "setup_local_to_scene", 3218959716)
  methodbind.ptrcall(self, [])

proc resetState*(self: Resource): void =
  expandMethodBind(className Resource, "reset_state", 3218959716)
  methodbind.ptrcall(self, [])

proc setIdForPath*(self: Resource; path: String; id: String): void =
  expandMethodBind(className Resource, "set_id_for_path", 3186203200)
  methodbind.ptrcall(self, [getPtr path, getPtr id])

proc getIdForPath*(self: Resource; path: String): String =
  expandMethodBind(className Resource, "get_id_for_path", 3135753539)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(String)

proc isBuiltIn*(self: Resource): bool =
  expandMethodBind(className Resource, "is_built_in", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc generateSceneUniqueId*(_: typedesc[Resource]): String =
  expandMethodBind(className Resource, "generate_scene_unique_id", 2841200299)
  var ret: encoded String
  methodbind.ptrcall([], addr ret)
  (addr ret).decode_result(String)

proc setSceneUniqueId*(self: Resource; id: String): void =
  expandMethodBind(className Resource, "set_scene_unique_id", 83702148)
  methodbind.ptrcall(self, [getPtr id])

proc getSceneUniqueId*(self: Resource): String =
  expandMethodBind(className Resource, "get_scene_unique_id", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc emitChanged*(self: Resource): void =
  expandMethodBind(className Resource, "emit_changed", 3218959716)
  methodbind.ptrcall(self, [])

proc duplicate*(self: Resource; subresources: bool = false): gdref Resource =
  expandMethodBind(className Resource, "duplicate", 482882304)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, [getPtr subresources], addr ret)
  (addr ret).decode_result(gdref Resource)

template resourceLocalToScene*(self: Resource): untyped = self.isLocalToScene()
template `resourceLocalToScene=`*(self: Resource; value) = self.setLocalToScene(value)

template resourcePath*(self: Resource): untyped = self.getPath()
template `resourcePath=`*(self: Resource; value) = self.setPath(value)

template resourceName*(self: Resource): untyped = self.getName()
template `resourceName=`*(self: Resource; value) = self.setName(value)

template resourceSceneUniqueId*(self: Resource): untyped = self.getSceneUniqueId()
template `resourceSceneUniqueId=`*(self: Resource; value) = self.setSceneUniqueId(value)
