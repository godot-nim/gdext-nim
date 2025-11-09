{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeparticleemitter; export gdvisualshadernodeparticleemitter

expandOnClassImported(VisualShaderNodeParticleMeshEmitter, VisualShaderNodeParticleEmitter)

proc setMesh*(self: VisualShaderNodeParticleMeshEmitter; mesh: gdref Mesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParticleMeshEmitter, "set_mesh", 194775623)
  methodbind.ptrcall(self, [getPtr mesh], void)

proc getMesh*(self: VisualShaderNodeParticleMeshEmitter): gdref Mesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParticleMeshEmitter, "get_mesh", 1808005922)
  methodbind.ptrcall(self, [], gdref Mesh)

proc setUseAllSurfaces*(self: VisualShaderNodeParticleMeshEmitter; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParticleMeshEmitter, "set_use_all_surfaces", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isUseAllSurfaces*(self: VisualShaderNodeParticleMeshEmitter): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParticleMeshEmitter, "is_use_all_surfaces", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSurfaceIndex*(self: VisualShaderNodeParticleMeshEmitter; surfaceIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParticleMeshEmitter, "set_surface_index", 1286410249)
  methodbind.ptrcall(self, [getPtr surfaceIndex], void)

proc getSurfaceIndex*(self: VisualShaderNodeParticleMeshEmitter): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParticleMeshEmitter, "get_surface_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

template mesh*(self: VisualShaderNodeParticleMeshEmitter): untyped = self.getMesh()
template `mesh=`*(self: VisualShaderNodeParticleMeshEmitter; value) = self.setMesh(value)

template useAllSurfaces*(self: VisualShaderNodeParticleMeshEmitter): untyped = self.isUseAllSurfaces()
template `useAllSurfaces=`*(self: VisualShaderNodeParticleMeshEmitter; value) = self.setUseAllSurfaces(value)

template surfaceIndex*(self: VisualShaderNodeParticleMeshEmitter): untyped = self.getSurfaceIndex()
template `surfaceIndex=`*(self: VisualShaderNodeParticleMeshEmitter; value) = self.setSurfaceIndex(value)
