{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture; export gdtexture

expandOnClassImported(Texture3D, Texture)

method getFormat*(self: Texture3D): Image_Format {.base.} = (discard)
proc registerVirtual_getFormat*[T: Texture3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_format"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture3D](p_instance).getFormat().encode(r_ret)

method getWidth*(self: Texture3D): int32 {.base.} = (discard)
proc registerVirtual_getWidth*[T: Texture3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_width"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture3D](p_instance).getWidth().encode(r_ret)

method getHeight*(self: Texture3D): int32 {.base.} = (discard)
proc registerVirtual_getHeight*[T: Texture3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_height"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture3D](p_instance).getHeight().encode(r_ret)

method getDepth*(self: Texture3D): int32 {.base.} = (discard)
proc registerVirtual_getDepth*[T: Texture3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_depth"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture3D](p_instance).getDepth().encode(r_ret)

method hasMipmaps*(self: Texture3D): bool {.base.} = (discard)
proc registerVirtual_hasMipmaps*[T: Texture3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_has_mipmaps"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture3D](p_instance).hasMipmaps().encode(r_ret)

method getData*(self: Texture3D): TypedArray[gdref Image] {.base.} = (discard)
proc registerVirtual_getData*[T: Texture3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_data"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[Texture3D](p_instance).getData().encode(r_ret)

proc getFormat*(self: Texture3D): Image_Format =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture3D, "get_format", 3847873762)
  methodbind.ptrcall(self, [], Image_Format)

proc getWidth*(self: Texture3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture3D, "get_width", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getHeight*(self: Texture3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture3D, "get_height", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getDepth*(self: Texture3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture3D, "get_depth", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc hasMipmaps*(self: Texture3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture3D, "has_mipmaps", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getData*(self: Texture3D): TypedArray[gdref Image] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture3D, "get_data", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[gdref Image])

proc createPlaceholder*(self: Texture3D): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Texture3D, "create_placeholder", 121922552)
  methodbind.ptrcall(self, [], gdref Resource)
