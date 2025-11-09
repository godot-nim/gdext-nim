{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodesample3d; export gdvisualshadernodesample3d

expandOnClassImported(VisualShaderNodeTexture3D, VisualShaderNodeSample3D)

proc setTexture*(self: VisualShaderNodeTexture3D; value: gdref Texture3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTexture3D, "set_texture", 1188404210)
  methodbind.ptrcall(self, [getPtr value], void)

proc getTexture*(self: VisualShaderNodeTexture3D): gdref Texture3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeTexture3D, "get_texture", 373985333)
  methodbind.ptrcall(self, [], gdref Texture3D)

template texture*(self: VisualShaderNodeTexture3D): untyped = self.getTexture()
template `texture=`*(self: VisualShaderNodeTexture3D; value) = self.setTexture(value)
