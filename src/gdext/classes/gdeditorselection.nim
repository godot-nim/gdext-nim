{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc clear*(self: EditorSelection): void =
  expandMethodBind(className EditorSelection, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc addNode*(self: EditorSelection; node: Node): void =
  expandMethodBind(className EditorSelection, "add_node", 1078189570)
  methodbind.ptrcall(self, [getPtr node])

proc removeNode*(self: EditorSelection; node: Node): void =
  expandMethodBind(className EditorSelection, "remove_node", 1078189570)
  methodbind.ptrcall(self, [getPtr node])

proc getSelectedNodes*(self: EditorSelection): TypedArray[Node] =
  expandMethodBind(className EditorSelection, "get_selected_nodes", 2915620761)
  var ret: encoded TypedArray[Node]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[Node])

proc getTransformableSelectedNodes*(self: EditorSelection): TypedArray[Node] =
  expandMethodBind(className EditorSelection, "get_transformable_selected_nodes", 2915620761)
  var ret: encoded TypedArray[Node]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[Node])
