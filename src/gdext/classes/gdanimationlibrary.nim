{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc addAnimation*(self: AnimationLibrary; name: StringName; animation: gdref Animation): Error =
  expandMethodBind(className AnimationLibrary, "add_animation", 1811855551)
  var `?param` = [getPtr name, getPtr animation]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc removeAnimation*(self: AnimationLibrary; name: StringName): void =
  expandMethodBind(className AnimationLibrary, "remove_animation", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc renameAnimation*(self: AnimationLibrary; name: StringName; newname: StringName): void =
  expandMethodBind(className AnimationLibrary, "rename_animation", 3740211285)
  var `?param` = [getPtr name, getPtr newname]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasAnimation*(self: AnimationLibrary; name: StringName): bool =
  expandMethodBind(className AnimationLibrary, "has_animation", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getAnimation*(self: AnimationLibrary; name: StringName): gdref Animation =
  expandMethodBind(className AnimationLibrary, "get_animation", 2933122410)
  var `?param` = [getPtr name]
  var ret: encoded gdref Animation
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Animation)

proc getAnimationList*(self: AnimationLibrary): TypedArray[StringName] =
  expandMethodBind(className AnimationLibrary, "get_animation_list", 3995934104)
  var ret: encoded TypedArray[StringName]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[StringName])

const AnimationLibrary_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationLibrary]): Table[string, string] = AnimationLibrary_vmap

proc animationAdded*(self: AnimationLibrary; name: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_added")
  let args = [name]
  self.emitSignal(signalname, args)

proc animationRemoved*(self: AnimationLibrary; name: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_removed")
  let args = [name]
  self.emitSignal(signalname, args)

proc animationRenamed*(self: AnimationLibrary; name: Variant; toName: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_renamed")
  let args = [name, toName]
  self.emitSignal(signalname, args)

proc animationChanged*(self: AnimationLibrary; name: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_changed")
  let args = [name]
  self.emitSignal(signalname, args)