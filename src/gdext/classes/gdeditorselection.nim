{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(EditorSelection, Object)

proc clear*(self: EditorSelection): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSelection, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc addNode*(self: EditorSelection; node: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSelection, "add_node", 1078189570)
  methodbind.ptrcall(self, [getPtr node], void)

proc removeNode*(self: EditorSelection; node: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSelection, "remove_node", 1078189570)
  methodbind.ptrcall(self, [getPtr node], void)

proc getSelectedNodes*(self: EditorSelection): TypedArray[Node] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSelection, "get_selected_nodes", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[Node])

proc getTopSelectedNodes*(self: EditorSelection): TypedArray[Node] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSelection, "get_top_selected_nodes", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[Node])

proc getTransformableSelectedNodes*(self: EditorSelection): TypedArray[Node] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className EditorSelection, "get_transformable_selected_nodes", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[Node])
