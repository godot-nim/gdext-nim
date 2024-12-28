{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc resourceChanged*(self: CollisionShape3D; resource: gdref Resource): void =
  expandMethodBind(className CollisionShape3D, "resource_changed", 968641751)
  methodbind.ptrcall(self, [getPtr resource])

proc setShape*(self: CollisionShape3D; shape: gdref Shape3D): void =
  expandMethodBind(className CollisionShape3D, "set_shape", 1549710052)
  methodbind.ptrcall(self, [getPtr shape])

proc getShape*(self: CollisionShape3D): gdref Shape3D =
  expandMethodBind(className CollisionShape3D, "get_shape", 3214262478)
  var ret: encoded gdref Shape3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Shape3D)

proc setDisabled*(self: CollisionShape3D; enable: bool): void =
  expandMethodBind(className CollisionShape3D, "set_disabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isDisabled*(self: CollisionShape3D): bool =
  expandMethodBind(className CollisionShape3D, "is_disabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc makeConvexFromSiblings*(self: CollisionShape3D): void =
  expandMethodBind(className CollisionShape3D, "make_convex_from_siblings", 3218959716)
  methodbind.ptrcall(self, [])

template shape*(self: CollisionShape3D): untyped = self.getShape()
template `shape=`*(self: CollisionShape3D; value) = self.setShape(value)

template disabled*(self: CollisionShape3D): untyped = self.isDisabled()
template `disabled=`*(self: CollisionShape3D; value) = self.setDisabled(value)

const CollisionShape3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CollisionShape3D]): Table[string, string] = CollisionShape3D_vmap