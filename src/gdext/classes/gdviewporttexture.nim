{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setViewportPathInScene*(self: ViewportTexture; path: NodePath): void =
  expandMethodBind(className ViewportTexture, "set_viewport_path_in_scene", 1348162250)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getViewportPathInScene*(self: ViewportTexture): NodePath =
  expandMethodBind(className ViewportTexture, "get_viewport_path_in_scene", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

template viewportPath*(self: ViewportTexture): untyped = self.getViewportPathInScene()
template `viewportPath=`*(self: ViewportTexture; value) = self.setViewportPathInScene(value)

const ViewportTexture_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ViewportTexture]): Table[string, string] = ViewportTexture_vmap