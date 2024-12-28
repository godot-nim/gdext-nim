{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlescollision3d; export gdgpuparticlescollision3d

proc setSize*(self: GPUParticlesCollisionSDF3D; size: Vector3): void =
  expandMethodBind(className GPUParticlesCollisionSDF3D, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size])

proc getSize*(self: GPUParticlesCollisionSDF3D): Vector3 =
  expandMethodBind(className GPUParticlesCollisionSDF3D, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setResolution*(self: GPUParticlesCollisionSDF3D; resolution: GPUParticlesCollisionSDF3D_Resolution): void =
  expandMethodBind(className GPUParticlesCollisionSDF3D, "set_resolution", 1155629297)
  methodbind.ptrcall(self, [getPtr resolution])

proc getResolution*(self: GPUParticlesCollisionSDF3D): GPUParticlesCollisionSDF3D_Resolution =
  expandMethodBind(className GPUParticlesCollisionSDF3D, "get_resolution", 2919555867)
  var ret: encoded GPUParticlesCollisionSDF3D_Resolution
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(GPUParticlesCollisionSDF3D_Resolution)

proc setTexture*(self: GPUParticlesCollisionSDF3D; texture: gdref Texture3D): void =
  expandMethodBind(className GPUParticlesCollisionSDF3D, "set_texture", 1188404210)
  methodbind.ptrcall(self, [getPtr texture])

proc getTexture*(self: GPUParticlesCollisionSDF3D): gdref Texture3D =
  expandMethodBind(className GPUParticlesCollisionSDF3D, "get_texture", 373985333)
  var ret: encoded gdref Texture3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture3D)

proc setThickness*(self: GPUParticlesCollisionSDF3D; thickness: Float): void =
  expandMethodBind(className GPUParticlesCollisionSDF3D, "set_thickness", 373806689)
  methodbind.ptrcall(self, [getPtr thickness])

proc getThickness*(self: GPUParticlesCollisionSDF3D): Float =
  expandMethodBind(className GPUParticlesCollisionSDF3D, "get_thickness", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setBakeMask*(self: GPUParticlesCollisionSDF3D; mask: uint32): void =
  expandMethodBind(className GPUParticlesCollisionSDF3D, "set_bake_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask])

proc getBakeMask*(self: GPUParticlesCollisionSDF3D): uint32 =
  expandMethodBind(className GPUParticlesCollisionSDF3D, "get_bake_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setBakeMaskValue*(self: GPUParticlesCollisionSDF3D; layerNumber: int32; value: bool): void =
  expandMethodBind(className GPUParticlesCollisionSDF3D, "set_bake_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value])

proc getBakeMaskValue*(self: GPUParticlesCollisionSDF3D; layerNumber: int32): bool =
  expandMethodBind(className GPUParticlesCollisionSDF3D, "get_bake_mask_value", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr layerNumber], addr ret)
  (addr ret).decode_result(bool)

template size*(self: GPUParticlesCollisionSDF3D): untyped = self.getSize()
template `size=`*(self: GPUParticlesCollisionSDF3D; value) = self.setSize(value)

template resolution*(self: GPUParticlesCollisionSDF3D): untyped = self.getResolution()
template `resolution=`*(self: GPUParticlesCollisionSDF3D; value) = self.setResolution(value)

template thickness*(self: GPUParticlesCollisionSDF3D): untyped = self.getThickness()
template `thickness=`*(self: GPUParticlesCollisionSDF3D; value) = self.setThickness(value)

template bakeMask*(self: GPUParticlesCollisionSDF3D): untyped = self.getBakeMask()
template `bakeMask=`*(self: GPUParticlesCollisionSDF3D; value) = self.setBakeMask(value)

template texture*(self: GPUParticlesCollisionSDF3D): untyped = self.getTexture()
template `texture=`*(self: GPUParticlesCollisionSDF3D; value) = self.setTexture(value)

const GPUParticlesCollisionSDF3D_vmap =
  GPUParticlesCollision3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GPUParticlesCollisionSDF3D]): Table[string, string] = GPUParticlesCollisionSDF3D_vmap