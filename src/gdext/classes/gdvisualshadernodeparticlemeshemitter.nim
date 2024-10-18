{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeparticleemitter; export gdvisualshadernodeparticleemitter

proc setMesh*(self: VisualShaderNodeParticleMeshEmitter; mesh: gdref Mesh): void =
  expandMethodBind(className VisualShaderNodeParticleMeshEmitter, "set_mesh", 194775623)
  var `?param` = [getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMesh*(self: VisualShaderNodeParticleMeshEmitter): gdref Mesh =
  expandMethodBind(className VisualShaderNodeParticleMeshEmitter, "get_mesh", 1808005922)
  var ret: encoded gdref Mesh
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Mesh)

proc setUseAllSurfaces*(self: VisualShaderNodeParticleMeshEmitter; enabled: bool): void =
  expandMethodBind(className VisualShaderNodeParticleMeshEmitter, "set_use_all_surfaces", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUseAllSurfaces*(self: VisualShaderNodeParticleMeshEmitter): bool =
  expandMethodBind(className VisualShaderNodeParticleMeshEmitter, "is_use_all_surfaces", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSurfaceIndex*(self: VisualShaderNodeParticleMeshEmitter; surfaceIndex: int32): void =
  expandMethodBind(className VisualShaderNodeParticleMeshEmitter, "set_surface_index", 1286410249)
  var `?param` = [getPtr surfaceIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSurfaceIndex*(self: VisualShaderNodeParticleMeshEmitter): int32 =
  expandMethodBind(className VisualShaderNodeParticleMeshEmitter, "get_surface_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template mesh*(self: VisualShaderNodeParticleMeshEmitter): untyped = self.getMesh()
template `mesh=`*(self: VisualShaderNodeParticleMeshEmitter; value) = self.setMesh(value)

template useAllSurfaces*(self: VisualShaderNodeParticleMeshEmitter): untyped = self.isUseAllSurfaces()
template `useAllSurfaces=`*(self: VisualShaderNodeParticleMeshEmitter; value) = self.setUseAllSurfaces(value)

template surfaceIndex*(self: VisualShaderNodeParticleMeshEmitter): untyped = self.getSurfaceIndex()
template `surfaceIndex=`*(self: VisualShaderNodeParticleMeshEmitter; value) = self.setSurfaceIndex(value)

const VisualShaderNodeParticleMeshEmitter_vmap =
  VisualShaderNodeParticleEmitter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeParticleMeshEmitter]): Table[string, string] = VisualShaderNodeParticleMeshEmitter_vmap