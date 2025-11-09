{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

expandOnClassImported(ViewportTexture, Texture2D)

proc setViewportPathInScene*(self: ViewportTexture; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ViewportTexture, "set_viewport_path_in_scene", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getViewportPathInScene*(self: ViewportTexture): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ViewportTexture, "get_viewport_path_in_scene", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

template viewportPath*(self: ViewportTexture): untyped = self.getViewportPathInScene()
template `viewportPath=`*(self: ViewportTexture; value) = self.setViewportPathInScene(value)
