{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdgpuparticlesattractor3d; export gdgpuparticlesattractor3d

expandOnClassImported(GPUParticlesAttractorBox3D, GPUParticlesAttractor3D)

proc setSize*(self: GPUParticlesAttractorBox3D; size: Vector3): void =
  expandMethodBind(className GPUParticlesAttractorBox3D, "set_size", 3460891852)
  methodbind.ptrcall(self, [getPtr size])

proc getSize*(self: GPUParticlesAttractorBox3D): Vector3 =
  expandMethodBind(className GPUParticlesAttractorBox3D, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

template size*(self: GPUParticlesAttractorBox3D): untyped = self.getSize()
template `size=`*(self: GPUParticlesAttractorBox3D; value) = self.setSize(value)
