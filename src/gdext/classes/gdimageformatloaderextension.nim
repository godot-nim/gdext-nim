{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdimageformatloader; export gdimageformatloader

method getRecognizedExtensions*(self: ImageFormatLoaderExtension): PackedStringArray {.base.} = (discard)
proc registerVirtual_getRecognizedExtensions*[T: ImageFormatLoaderExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_recognized_extensions"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ImageFormatLoaderExtension](p_instance).getRecognizedExtensions().encode(r_ret)

method loadImage*(self: ImageFormatLoaderExtension; image: gdref Image; fileaccess: gdref FileAccess; flags: set[ImageFormatLoader_LoaderFlags]; scale: Float): Error {.base.} = (discard)
proc registerVirtual_loadImage*[T: ImageFormatLoaderExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_load_image"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[ImageFormatLoaderExtension](p_instance).loadImage(p_args[0].decode(gdref Image), p_args[1].decode(gdref FileAccess), p_args[2].decode(set[ImageFormatLoader_LoaderFlags]), p_args[3].decode(Float)).encode(r_ret)

proc addFormatLoader*(self: ImageFormatLoaderExtension): void =
  expandMethodBind(className ImageFormatLoaderExtension, "add_format_loader", 3218959716)
  methodbind.ptrcall(self, [])

proc removeFormatLoader*(self: ImageFormatLoaderExtension): void =
  expandMethodBind(className ImageFormatLoaderExtension, "remove_format_loader", 3218959716)
  methodbind.ptrcall(self, [])
