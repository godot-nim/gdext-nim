{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method handles*(self: EditorResourcePreviewGenerator; `type`: String): bool {.base.} = (discard)
proc handles(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorResourcePreviewGenerator](p_instance).handles(p_args[0].decode(String)).encode(r_ret)
template handles_bind*(_: typedesc[EditorResourcePreviewGenerator]): ClassCallVirtual = handles

method generate*(self: EditorResourcePreviewGenerator; resource: gdref Resource; size: Vector2i; metadata: Dictionary): gdref Texture2D {.base.} = (discard)
proc generate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorResourcePreviewGenerator](p_instance).generate(p_args[0].decode(gdref Resource), p_args[1].decode(Vector2i), p_args[2].decode(Dictionary)).encode(r_ret)
template generate_bind*(_: typedesc[EditorResourcePreviewGenerator]): ClassCallVirtual = generate

method generateFromPath*(self: EditorResourcePreviewGenerator; path: String; size: Vector2i; metadata: Dictionary): gdref Texture2D {.base.} = (discard)
proc generateFromPath(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorResourcePreviewGenerator](p_instance).generateFromPath(p_args[0].decode(String), p_args[1].decode(Vector2i), p_args[2].decode(Dictionary)).encode(r_ret)
template generateFromPath_bind*(_: typedesc[EditorResourcePreviewGenerator]): ClassCallVirtual = generateFromPath

method generateSmallPreviewAutomatically*(self: EditorResourcePreviewGenerator): bool {.base.} = (discard)
proc generateSmallPreviewAutomatically(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorResourcePreviewGenerator](p_instance).generateSmallPreviewAutomatically().encode(r_ret)
template generateSmallPreviewAutomatically_bind*(_: typedesc[EditorResourcePreviewGenerator]): ClassCallVirtual = generateSmallPreviewAutomatically

method canGenerateSmallPreview*(self: EditorResourcePreviewGenerator): bool {.base.} = (discard)
proc canGenerateSmallPreview(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[EditorResourcePreviewGenerator](p_instance).canGenerateSmallPreview().encode(r_ret)
template canGenerateSmallPreview_bind*(_: typedesc[EditorResourcePreviewGenerator]): ClassCallVirtual = canGenerateSmallPreview

const EditorResourcePreviewGenerator_vmap =
  RefCounted.vmap.concat toTable {
    "handles" : "_handles",
    "generate" : "_generate",
    "generatefrompath" : "_generate_from_path",
    "generatesmallpreviewautomatically" : "_generate_small_preview_automatically",
    "cangeneratesmallpreview" : "_can_generate_small_preview",
    }
template vmap*(_: typedesc[EditorResourcePreviewGenerator]): Table[string, string] = EditorResourcePreviewGenerator_vmap