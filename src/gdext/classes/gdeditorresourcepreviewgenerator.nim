{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(EditorResourcePreviewGenerator, RefCounted)

method handles*(self: EditorResourcePreviewGenerator; `type`: String): bool {.base.} = (discard)
proc registerVirtual_handles*[T: EditorResourcePreviewGenerator](Self: typedesc[T]) =
  Self.vmethods[newStringName"_handles"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorResourcePreviewGenerator](p_instance).handles(p_args[0].decode(String)).encode(r_ret)

method generate*(self: EditorResourcePreviewGenerator; resource: gdref Resource; size: Vector2i; metadata: Dictionary[Variant, Variant]): gdref Texture2D {.base.} = (discard)
proc registerVirtual_generate*[T: EditorResourcePreviewGenerator](Self: typedesc[T]) =
  Self.vmethods[newStringName"_generate"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorResourcePreviewGenerator](p_instance).generate(p_args[0].decode(gdref Resource), p_args[1].decode(Vector2i), p_args[2].decode(Dictionary[Variant, Variant])).encode(r_ret)

method generateFromPath*(self: EditorResourcePreviewGenerator; path: String; size: Vector2i; metadata: Dictionary[Variant, Variant]): gdref Texture2D {.base.} = (discard)
proc registerVirtual_generateFromPath*[T: EditorResourcePreviewGenerator](Self: typedesc[T]) =
  Self.vmethods[newStringName"_generate_from_path"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorResourcePreviewGenerator](p_instance).generateFromPath(p_args[0].decode(String), p_args[1].decode(Vector2i), p_args[2].decode(Dictionary[Variant, Variant])).encode(r_ret)

method generateSmallPreviewAutomatically*(self: EditorResourcePreviewGenerator): bool {.base.} = (discard)
proc registerVirtual_generateSmallPreviewAutomatically*[T: EditorResourcePreviewGenerator](Self: typedesc[T]) =
  Self.vmethods[newStringName"_generate_small_preview_automatically"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorResourcePreviewGenerator](p_instance).generateSmallPreviewAutomatically().encode(r_ret)

method canGenerateSmallPreview*(self: EditorResourcePreviewGenerator): bool {.base.} = (discard)
proc registerVirtual_canGenerateSmallPreview*[T: EditorResourcePreviewGenerator](Self: typedesc[T]) =
  Self.vmethods[newStringName"_can_generate_small_preview"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[EditorResourcePreviewGenerator](p_instance).canGenerateSmallPreview().encode(r_ret)

proc requestDrawAndWait*(self: EditorResourcePreviewGenerator; viewport: RID): void =
  expandMethodBind(className EditorResourcePreviewGenerator, "request_draw_and_wait", 145472570)
  methodbind.ptrcall(self, [getPtr viewport])
