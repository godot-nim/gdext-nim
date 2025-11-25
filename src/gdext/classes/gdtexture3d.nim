{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture; export gdtexture

expandOnClassImported(Texture3D, Texture)

method getFormat*(self: Texture3D): Image_Format {.base.} =
  expandMethodBind(className Texture3D, "get_format", 3847873762)
  var ret: encoded Image_Format
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Image_Format)
proc registerVirtual_getFormat*[T: Texture3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_format"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture3D](p_instance).getFormat().encode(r_ret)

method getWidth*(self: Texture3D): int32 {.base.} =
  expandMethodBind(className Texture3D, "get_width", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)
proc registerVirtual_getWidth*[T: Texture3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_width"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture3D](p_instance).getWidth().encode(r_ret)

method getHeight*(self: Texture3D): int32 {.base.} =
  expandMethodBind(className Texture3D, "get_height", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)
proc registerVirtual_getHeight*[T: Texture3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_height"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture3D](p_instance).getHeight().encode(r_ret)

method getDepth*(self: Texture3D): int32 {.base.} =
  expandMethodBind(className Texture3D, "get_depth", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)
proc registerVirtual_getDepth*[T: Texture3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_depth"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture3D](p_instance).getDepth().encode(r_ret)

method hasMipmaps*(self: Texture3D): bool {.base.} =
  expandMethodBind(className Texture3D, "has_mipmaps", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)
proc registerVirtual_hasMipmaps*[T: Texture3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_has_mipmaps"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture3D](p_instance).hasMipmaps().encode(r_ret)

method getData*(self: Texture3D): Array[gdref Image] {.base.} =
  expandMethodBind(className Texture3D, "get_data", 3995934104)
  var ret: encoded Array[gdref Image]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array[gdref Image])
proc registerVirtual_getData*[T: Texture3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture3D](p_instance).getData().encode(r_ret)

proc createPlaceholder*(self: Texture3D): gdref Resource =
  expandMethodBind(className Texture3D, "create_placeholder", 121922552)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Resource)
