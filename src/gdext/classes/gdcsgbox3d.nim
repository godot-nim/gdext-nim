{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

expandOnClassImported(CSGBox3D, CSGPrimitive3D)

proc setSize*(self: CSGBox3D; size: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGBox3D, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: CSGBox3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGBox3D, "get_size", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setMaterial*(self: CSGBox3D; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGBox3D, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc getMaterial*(self: CSGBox3D): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGBox3D, "get_material", 5934680)
  methodbind.ptrcall(self, [], gdref Material)

template size*(self: CSGBox3D): untyped = self.getSize()
template `size=`*(self: CSGBox3D; value) = self.setSize(value)

template material*(self: CSGBox3D): untyped = self.getMaterial()
template `material=`*(self: CSGBox3D; value) = self.setMaterial(value)
