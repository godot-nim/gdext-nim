{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdimageformatloader; export gdimageformatloader

method getRecognizedExtensions*(self: ImageFormatLoaderExtension): PackedStringArray {.base.} = (discard)
proc getRecognizedExtensions(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ImageFormatLoaderExtension](p_instance).getRecognizedExtensions().encode(r_ret)
template getRecognizedExtensions_bind*(_: typedesc[ImageFormatLoaderExtension]): ClassCallVirtual = getRecognizedExtensions

method loadImage*(self: ImageFormatLoaderExtension; image: gdref Image; fileaccess: gdref FileAccess; flags: set[ImageFormatLoader_LoaderFlags]; scale: Float): Error {.base.} = (discard)
proc loadImage(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[ImageFormatLoaderExtension](p_instance).loadImage(p_args[0].decode(gdref Image), p_args[1].decode(gdref FileAccess), p_args[2].decode(set[ImageFormatLoader_LoaderFlags]), p_args[3].decode(Float)).encode(r_ret)
template loadImage_bind*(_: typedesc[ImageFormatLoaderExtension]): ClassCallVirtual = loadImage

proc addFormatLoader*(self: ImageFormatLoaderExtension): void =
  expandMethodBind(className ImageFormatLoaderExtension, "add_format_loader", 3218959716)
  methodbind.ptrcall(self, nil)

proc removeFormatLoader*(self: ImageFormatLoaderExtension): void =
  expandMethodBind(className ImageFormatLoaderExtension, "remove_format_loader", 3218959716)
  methodbind.ptrcall(self, nil)

const ImageFormatLoaderExtension_vmap =
  ImageFormatLoader.vmap.concat toTable {
    "getrecognizedextensions" : "_get_recognized_extensions",
    "loadimage" : "_load_image",
    }
template vmap*(_: typedesc[ImageFormatLoaderExtension]): Table[string, string] = ImageFormatLoaderExtension_vmap