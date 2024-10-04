{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdgpuparticlescollision3d; export gdgpuparticlescollision3d

proc setSize*(self: GpuParticlesCollisionSdf3D; size: Vector3): void =
  expandMethodBind(className GpuParticlesCollisionSdf3D, "set_size", 3460891852)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: GpuParticlesCollisionSdf3D): Vector3 =
  expandMethodBind(className GpuParticlesCollisionSdf3D, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setResolution*(self: GpuParticlesCollisionSdf3D; resolution: GpuParticlesCollisionSdf3D_Resolution): void =
  expandMethodBind(className GpuParticlesCollisionSdf3D, "set_resolution", 1155629297)
  var `?param` = [getPtr resolution]
  methodbind.ptrcall(self, addr `?param`[0])

proc getResolution*(self: GpuParticlesCollisionSdf3D): GpuParticlesCollisionSdf3D_Resolution =
  expandMethodBind(className GpuParticlesCollisionSdf3D, "get_resolution", 2919555867)
  var ret: encoded GpuParticlesCollisionSdf3D_Resolution
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(GpuParticlesCollisionSdf3D_Resolution)

proc setTexture*(self: GpuParticlesCollisionSdf3D; texture: gdref Texture3D): void =
  expandMethodBind(className GpuParticlesCollisionSdf3D, "set_texture", 1188404210)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexture*(self: GpuParticlesCollisionSdf3D): gdref Texture3D =
  expandMethodBind(className GpuParticlesCollisionSdf3D, "get_texture", 373985333)
  var ret: encoded gdref Texture3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture3D)

proc setThickness*(self: GpuParticlesCollisionSdf3D; thickness: Float): void =
  expandMethodBind(className GpuParticlesCollisionSdf3D, "set_thickness", 373806689)
  var `?param` = [getPtr thickness]
  methodbind.ptrcall(self, addr `?param`[0])

proc getThickness*(self: GpuParticlesCollisionSdf3D): Float =
  expandMethodBind(className GpuParticlesCollisionSdf3D, "get_thickness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setBakeMask*(self: GpuParticlesCollisionSdf3D; mask: uint32): void =
  expandMethodBind(className GpuParticlesCollisionSdf3D, "set_bake_mask", 1286410249)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBakeMask*(self: GpuParticlesCollisionSdf3D): uint32 =
  expandMethodBind(className GpuParticlesCollisionSdf3D, "get_bake_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setBakeMaskValue*(self: GpuParticlesCollisionSdf3D; layerNumber: int32; value: bool): void =
  expandMethodBind(className GpuParticlesCollisionSdf3D, "set_bake_mask_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBakeMaskValue*(self: GpuParticlesCollisionSdf3D; layerNumber: int32): bool =
  expandMethodBind(className GpuParticlesCollisionSdf3D, "get_bake_mask_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

template size*(self: GpuParticlesCollisionSdf3D): untyped = self.getSize()
template `size=`*(self: GpuParticlesCollisionSdf3D; value) = self.setSize(value)

template resolution*(self: GpuParticlesCollisionSdf3D): untyped = self.getResolution()
template `resolution=`*(self: GpuParticlesCollisionSdf3D; value) = self.setResolution(value)

template thickness*(self: GpuParticlesCollisionSdf3D): untyped = self.getThickness()
template `thickness=`*(self: GpuParticlesCollisionSdf3D; value) = self.setThickness(value)

template bakeMask*(self: GpuParticlesCollisionSdf3D): untyped = self.getBakeMask()
template `bakeMask=`*(self: GpuParticlesCollisionSdf3D; value) = self.setBakeMask(value)

template texture*(self: GpuParticlesCollisionSdf3D): untyped = self.getTexture()
template `texture=`*(self: GpuParticlesCollisionSdf3D; value) = self.setTexture(value)

const GpuParticlesCollisionSdf3D_vmap =
  GpuParticlesCollision3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GpuParticlesCollisionSdf3D]): Table[string, string] = GpuParticlesCollisionSdf3D_vmap