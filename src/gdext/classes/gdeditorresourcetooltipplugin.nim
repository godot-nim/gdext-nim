{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EditorResourceTooltipPlugin, RefCounted)

method handles*(self: EditorResourceTooltipPlugin; `type`: String): bool {.base.} = (discard)
proc registerVirtual_handles*[T: EditorResourceTooltipPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_handles"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorResourceTooltipPlugin](p_instance).handles(p_args[0].decode(String)).encode(r_ret)

method makeTooltipForPath*(self: EditorResourceTooltipPlugin; path: String; metadata: Dictionary; base: Control): Control {.base.} = (discard)
proc registerVirtual_makeTooltipForPath*[T: EditorResourceTooltipPlugin](Self: typedesc[T]) =
  Self.vmethods[newStringName"_make_tooltip_for_path"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorResourceTooltipPlugin](p_instance).makeTooltipForPath(p_args[0].decode(String), p_args[1].decode(Dictionary), p_args[2].decode(Control)).encode(r_ret)

proc requestThumbnail*(self: EditorResourceTooltipPlugin; path: String; control: TextureRect): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorResourceTooltipPlugin, "request_thumbnail", 3245519720)
  methodbind.ptrcall(self, [getPtr path, getPtr control], void)
