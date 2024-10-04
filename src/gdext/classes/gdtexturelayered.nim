{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdtexture; export gdtexture

method getFormat*(self: TextureLayered): Image_Format {.base.} = (discard)
proc getFormat(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TextureLayered](p_instance).getFormat().encode(r_ret)
template getFormat_bind*(_: typedesc[TextureLayered]): ClassCallVirtual = getFormat

method getLayeredType*(self: TextureLayered): uint32 {.base.} = (discard)
proc getLayeredType(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TextureLayered](p_instance).getLayeredType().encode(r_ret)
template getLayeredType_bind*(_: typedesc[TextureLayered]): ClassCallVirtual = getLayeredType

method getWidth*(self: TextureLayered): int32 {.base.} = (discard)
proc getWidth(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TextureLayered](p_instance).getWidth().encode(r_ret)
template getWidth_bind*(_: typedesc[TextureLayered]): ClassCallVirtual = getWidth

method getHeight*(self: TextureLayered): int32 {.base.} = (discard)
proc getHeight(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TextureLayered](p_instance).getHeight().encode(r_ret)
template getHeight_bind*(_: typedesc[TextureLayered]): ClassCallVirtual = getHeight

method getLayers*(self: TextureLayered): int32 {.base.} = (discard)
proc getLayers(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TextureLayered](p_instance).getLayers().encode(r_ret)
template getLayers_bind*(_: typedesc[TextureLayered]): ClassCallVirtual = getLayers

method hasMipmaps*(self: TextureLayered): bool {.base.} = (discard)
proc hasMipmaps(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TextureLayered](p_instance).hasMipmaps().encode(r_ret)
template hasMipmaps_bind*(_: typedesc[TextureLayered]): ClassCallVirtual = hasMipmaps

method getLayerData*(self: TextureLayered; layerIndex: int32): gdref Image {.base.} = (discard)
proc getLayerData(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TextureLayered](p_instance).getLayerData(p_args[0].decode(int32)).encode(r_ret)
template getLayerData_bind*(_: typedesc[TextureLayered]): ClassCallVirtual = getLayerData

proc getFormat*(self: TextureLayered): Image_Format =
  expandMethodBind(className TextureLayered, "get_format", 3847873762)
  var ret: encoded Image_Format
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Image_Format)

proc getLayeredType*(self: TextureLayered): TextureLayered_LayeredType =
  expandMethodBind(className TextureLayered, "get_layered_type", 518123893)
  var ret: encoded TextureLayered_LayeredType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TextureLayered_LayeredType)

proc getWidth*(self: TextureLayered): int32 =
  expandMethodBind(className TextureLayered, "get_width", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getHeight*(self: TextureLayered): int32 =
  expandMethodBind(className TextureLayered, "get_height", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getLayers*(self: TextureLayered): int32 =
  expandMethodBind(className TextureLayered, "get_layers", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc hasMipmaps*(self: TextureLayered): bool =
  expandMethodBind(className TextureLayered, "has_mipmaps", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getLayerData*(self: TextureLayered; layer: int32): gdref Image =
  expandMethodBind(className TextureLayered, "get_layer_data", 3655284255)
  var `?param` = [getPtr layer]
  var ret: encoded gdref Image
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Image)

const TextureLayered_vmap =
  Texture.vmap.concat toTable {
    "getformat" : "_get_format",
    "getlayeredtype" : "_get_layered_type",
    "getwidth" : "_get_width",
    "getheight" : "_get_height",
    "getlayers" : "_get_layers",
    "hasmipmaps" : "_has_mipmaps",
    "getlayerdata" : "_get_layer_data",
    }
template vmap*(_: typedesc[TextureLayered]): Table[string, string] = TextureLayered_vmap