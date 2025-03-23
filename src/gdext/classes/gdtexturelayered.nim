{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture; export gdtexture

method getFormat*(self: TextureLayered): Image_Format {.base.} = (discard)
proc registerVirtual_getFormat*[T: TextureLayered](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_format"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextureLayered](p_instance).getFormat().encode(r_ret)

method getLayeredType*(self: TextureLayered): uint32 {.base.} = (discard)
proc registerVirtual_getLayeredType*[T: TextureLayered](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_layered_type"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextureLayered](p_instance).getLayeredType().encode(r_ret)

method getWidth*(self: TextureLayered): int32 {.base.} = (discard)
proc registerVirtual_getWidth*[T: TextureLayered](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_width"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextureLayered](p_instance).getWidth().encode(r_ret)

method getHeight*(self: TextureLayered): int32 {.base.} = (discard)
proc registerVirtual_getHeight*[T: TextureLayered](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_height"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextureLayered](p_instance).getHeight().encode(r_ret)

method getLayers*(self: TextureLayered): int32 {.base.} = (discard)
proc registerVirtual_getLayers*[T: TextureLayered](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_layers"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextureLayered](p_instance).getLayers().encode(r_ret)

method hasMipmaps*(self: TextureLayered): bool {.base.} = (discard)
proc registerVirtual_hasMipmaps*[T: TextureLayered](Self: typedesc[T]) =
  Self.vmethods[stringName"_has_mipmaps"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextureLayered](p_instance).hasMipmaps().encode(r_ret)

method getLayerData*(self: TextureLayered; layerIndex: int32): gdref Image {.base.} = (discard)
proc registerVirtual_getLayerData*[T: TextureLayered](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_layer_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TextureLayered](p_instance).getLayerData(p_args[0].decode(int32)).encode(r_ret)

proc getFormat*(self: TextureLayered): Image_Format =
  expandMethodBind(className TextureLayered, "get_format", 3847873762)
  var ret: encoded Image_Format
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Image_Format)

proc getLayeredType*(self: TextureLayered): TextureLayered_LayeredType =
  expandMethodBind(className TextureLayered, "get_layered_type", 518123893)
  var ret: encoded TextureLayered_LayeredType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TextureLayered_LayeredType)

proc getWidth*(self: TextureLayered): int32 =
  expandMethodBind(className TextureLayered, "get_width", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getHeight*(self: TextureLayered): int32 =
  expandMethodBind(className TextureLayered, "get_height", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getLayers*(self: TextureLayered): int32 =
  expandMethodBind(className TextureLayered, "get_layers", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc hasMipmaps*(self: TextureLayered): bool =
  expandMethodBind(className TextureLayered, "has_mipmaps", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getLayerData*(self: TextureLayered; layer: int32): gdref Image =
  expandMethodBind(className TextureLayered, "get_layer_data", 3655284255)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, [getPtr layer], addr ret)
  (addr ret).decode_result(gdref Image)