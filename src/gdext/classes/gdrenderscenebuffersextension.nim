{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrenderscenebuffers; export gdrenderscenebuffers

method configure*(self: RenderSceneBuffersExtension; config: gdref RenderSceneBuffersConfiguration): void {.base.} = (discard)
proc registerVirtual_configure*[T: RenderSceneBuffersExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_configure"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RenderSceneBuffersExtension](p_instance).configure(p_args[0].decode(gdref RenderSceneBuffersConfiguration))

method setFsrSharpness*(self: RenderSceneBuffersExtension; fsrSharpness: Float): void {.base.} = (discard)
proc registerVirtual_setFsrSharpness*[T: RenderSceneBuffersExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_fsr_sharpness"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RenderSceneBuffersExtension](p_instance).setFsrSharpness(p_args[0].decode(Float))

method setTextureMipmapBias*(self: RenderSceneBuffersExtension; textureMipmapBias: Float): void {.base.} = (discard)
proc registerVirtual_setTextureMipmapBias*[T: RenderSceneBuffersExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_texture_mipmap_bias"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RenderSceneBuffersExtension](p_instance).setTextureMipmapBias(p_args[0].decode(Float))

method setAnisotropicFilteringLevel*(self: RenderSceneBuffersExtension; anisotropicFilteringLevel: int32): void {.base.} = (discard)
proc registerVirtual_setAnisotropicFilteringLevel*[T: RenderSceneBuffersExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_anisotropic_filtering_level"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RenderSceneBuffersExtension](p_instance).setAnisotropicFilteringLevel(p_args[0].decode(int32))

method setUseDebanding*(self: RenderSceneBuffersExtension; useDebanding: bool): void {.base.} = (discard)
proc registerVirtual_setUseDebanding*[T: RenderSceneBuffersExtension](Self: typedesc[T]) =
  Self.vmethods[stringName"_set_use_debanding"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[RenderSceneBuffersExtension](p_instance).setUseDebanding(p_args[0].decode(bool))