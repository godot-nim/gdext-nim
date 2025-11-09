{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(Resource, RefCounted)

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
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "set_path", 83702148)
  methodbind.ptrcall(self, [getPtr path], void)

proc takeOverPath*(self: Resource; path: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "take_over_path", 83702148)
  methodbind.ptrcall(self, [getPtr path], void)

proc getPath*(self: Resource): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "get_path", 201670096)
  methodbind.ptrcall(self, [], String)

proc setPathCache*(self: Resource; path: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "set_path_cache", 83702148)
  methodbind.ptrcall(self, [getPtr path], void)

proc setName*(self: Resource; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "set_name", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc getName*(self: Resource): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "get_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc getRid*(self: Resource): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "get_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setLocalToScene*(self: Resource; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "set_local_to_scene", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isLocalToScene*(self: Resource): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "is_local_to_scene", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getLocalScene*(self: Resource): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "get_local_scene", 3160264692)
  methodbind.ptrcall(self, [], Node)

proc setupLocalToScene*(self: Resource): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "setup_local_to_scene", 3218959716)
  methodbind.ptrcall(self, [], void)

proc resetState*(self: Resource): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "reset_state", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setIdForPath*(self: Resource; path: String; id: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "set_id_for_path", 3186203200)
  methodbind.ptrcall(self, [getPtr path, getPtr id], void)

proc getIdForPath*(self: Resource; path: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "get_id_for_path", 3135753539)
  methodbind.ptrcall(self, [getPtr path], String)

proc isBuiltIn*(self: Resource): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "is_built_in", 36873697)
  methodbind.ptrcall(self, [], bool)

proc generateSceneUniqueId*(_: typedesc[Resource]): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "generate_scene_unique_id", 2841200299)
  methodbind.ptrcall([], String)

proc setSceneUniqueId*(self: Resource; id: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "set_scene_unique_id", 83702148)
  methodbind.ptrcall(self, [getPtr id], void)

proc getSceneUniqueId*(self: Resource): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "get_scene_unique_id", 201670096)
  methodbind.ptrcall(self, [], String)

proc emitChanged*(self: Resource): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "emit_changed", 3218959716)
  methodbind.ptrcall(self, [], void)

proc duplicate*(self: Resource; deep: bool = false): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "duplicate", 482882304)
  methodbind.ptrcall(self, [getPtr deep], gdref Resource)

proc duplicateDeep*(self: Resource; deepSubresourcesMode: Resource_DeepDuplicateMode = deepDuplicateInternal): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Resource, "duplicate_deep", 905779109)
  methodbind.ptrcall(self, [getPtr deepSubresourcesMode], gdref Resource)

template resourceLocalToScene*(self: Resource): untyped = self.isLocalToScene()
template `resourceLocalToScene=`*(self: Resource; value) = self.setLocalToScene(value)

template resourcePath*(self: Resource): untyped = self.getPath()
template `resourcePath=`*(self: Resource; value) = self.setPath(value)

template resourceName*(self: Resource): untyped = self.getName()
template `resourceName=`*(self: Resource; value) = self.setName(value)

template resourceSceneUniqueId*(self: Resource): untyped = self.getSceneUniqueId()
template `resourceSceneUniqueId=`*(self: Resource; value) = self.setSceneUniqueId(value)
