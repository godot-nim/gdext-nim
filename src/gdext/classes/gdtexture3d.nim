{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture; export gdtexture

method getFormat*(self: Texture3D): Image_Format {.base.} = (discard)
proc getFormat(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Texture3D](p_instance).getFormat().encode(r_ret)
template getFormat_bind*(_: typedesc[Texture3D]): ClassCallVirtual = getFormat

method getWidth*(self: Texture3D): int32 {.base.} = (discard)
proc getWidth(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Texture3D](p_instance).getWidth().encode(r_ret)
template getWidth_bind*(_: typedesc[Texture3D]): ClassCallVirtual = getWidth

method getHeight*(self: Texture3D): int32 {.base.} = (discard)
proc getHeight(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Texture3D](p_instance).getHeight().encode(r_ret)
template getHeight_bind*(_: typedesc[Texture3D]): ClassCallVirtual = getHeight

method getDepth*(self: Texture3D): int32 {.base.} = (discard)
proc getDepth(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Texture3D](p_instance).getDepth().encode(r_ret)
template getDepth_bind*(_: typedesc[Texture3D]): ClassCallVirtual = getDepth

method hasMipmaps*(self: Texture3D): bool {.base.} = (discard)
proc hasMipmaps(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Texture3D](p_instance).hasMipmaps().encode(r_ret)
template hasMipmaps_bind*(_: typedesc[Texture3D]): ClassCallVirtual = hasMipmaps

method getData*(self: Texture3D): TypedArray[Image] {.base.} = (discard)
proc getData(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Texture3D](p_instance).getData().encode(r_ret)
template getData_bind*(_: typedesc[Texture3D]): ClassCallVirtual = getData

proc getFormat*(self: Texture3D): Image_Format =
  expandMethodBind(className Texture3D, "get_format", 3847873762)
  var ret: encoded Image_Format
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Image_Format)

proc getWidth*(self: Texture3D): int32 =
  expandMethodBind(className Texture3D, "get_width", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getHeight*(self: Texture3D): int32 =
  expandMethodBind(className Texture3D, "get_height", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getDepth*(self: Texture3D): int32 =
  expandMethodBind(className Texture3D, "get_depth", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc hasMipmaps*(self: Texture3D): bool =
  expandMethodBind(className Texture3D, "has_mipmaps", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getData*(self: Texture3D): TypedArray[Image] =
  expandMethodBind(className Texture3D, "get_data", 3995934104)
  var ret: encoded TypedArray[Image]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[Image])

proc createPlaceholder*(self: Texture3D): gdref Resource =
  expandMethodBind(className Texture3D, "create_placeholder", 121922552)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Resource)

const Texture3D_vmap =
  Texture.vmap.concat toTable {
    "getformat" : "_get_format",
    "getwidth" : "_get_width",
    "getheight" : "_get_height",
    "getdepth" : "_get_depth",
    "hasmipmaps" : "_has_mipmaps",
    "getdata" : "_get_data",
    }
template vmap*(_: typedesc[Texture3D]): Table[string, string] = Texture3D_vmap