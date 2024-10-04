{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setFitMargin*(self: CanvasGroup; fitMargin: Float): void =
  expandMethodBind(className CanvasGroup, "set_fit_margin", 373806689)
  var `?param` = [getPtr fitMargin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFitMargin*(self: CanvasGroup): Float =
  expandMethodBind(className CanvasGroup, "get_fit_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setClearMargin*(self: CanvasGroup; clearMargin: Float): void =
  expandMethodBind(className CanvasGroup, "set_clear_margin", 373806689)
  var `?param` = [getPtr clearMargin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getClearMargin*(self: CanvasGroup): Float =
  expandMethodBind(className CanvasGroup, "get_clear_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setUseMipmaps*(self: CanvasGroup; useMipmaps: bool): void =
  expandMethodBind(className CanvasGroup, "set_use_mipmaps", 2586408642)
  var `?param` = [getPtr useMipmaps]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingMipmaps*(self: CanvasGroup): bool =
  expandMethodBind(className CanvasGroup, "is_using_mipmaps", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template fitMargin*(self: CanvasGroup): untyped = self.getFitMargin()
template `fitMargin=`*(self: CanvasGroup; value) = self.setFitMargin(value)

template clearMargin*(self: CanvasGroup): untyped = self.getClearMargin()
template `clearMargin=`*(self: CanvasGroup; value) = self.setClearMargin(value)

template useMipmaps*(self: CanvasGroup): untyped = self.isUsingMipmaps()
template `useMipmaps=`*(self: CanvasGroup; value) = self.setUseMipmaps(value)

const CanvasGroup_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CanvasGroup]): Table[string, string] = CanvasGroup_vmap