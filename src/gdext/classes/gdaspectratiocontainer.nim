{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

proc setRatio*(self: AspectRatioContainer; ratio: Float): void =
  expandMethodBind(className AspectRatioContainer, "set_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio])

proc getRatio*(self: AspectRatioContainer): Float =
  expandMethodBind(className AspectRatioContainer, "get_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setStretchMode*(self: AspectRatioContainer; stretchMode: AspectRatioContainer_StretchMode): void =
  expandMethodBind(className AspectRatioContainer, "set_stretch_mode", 1876743467)
  methodbind.ptrcall(self, [getPtr stretchMode])

proc getStretchMode*(self: AspectRatioContainer): AspectRatioContainer_StretchMode =
  expandMethodBind(className AspectRatioContainer, "get_stretch_mode", 3416449033)
  var ret: encoded AspectRatioContainer_StretchMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AspectRatioContainer_StretchMode)

proc setAlignmentHorizontal*(self: AspectRatioContainer; alignmentHorizontal: AspectRatioContainer_AlignmentMode): void =
  expandMethodBind(className AspectRatioContainer, "set_alignment_horizontal", 2147829016)
  methodbind.ptrcall(self, [getPtr alignmentHorizontal])

proc getAlignmentHorizontal*(self: AspectRatioContainer): AspectRatioContainer_AlignmentMode =
  expandMethodBind(className AspectRatioContainer, "get_alignment_horizontal", 3838875429)
  var ret: encoded AspectRatioContainer_AlignmentMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AspectRatioContainer_AlignmentMode)

proc setAlignmentVertical*(self: AspectRatioContainer; alignmentVertical: AspectRatioContainer_AlignmentMode): void =
  expandMethodBind(className AspectRatioContainer, "set_alignment_vertical", 2147829016)
  methodbind.ptrcall(self, [getPtr alignmentVertical])

proc getAlignmentVertical*(self: AspectRatioContainer): AspectRatioContainer_AlignmentMode =
  expandMethodBind(className AspectRatioContainer, "get_alignment_vertical", 3838875429)
  var ret: encoded AspectRatioContainer_AlignmentMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AspectRatioContainer_AlignmentMode)

template ratio*(self: AspectRatioContainer): untyped = self.getRatio()
template `ratio=`*(self: AspectRatioContainer; value) = self.setRatio(value)

template stretchMode*(self: AspectRatioContainer): untyped = self.getStretchMode()
template `stretchMode=`*(self: AspectRatioContainer; value) = self.setStretchMode(value)

template alignmentHorizontal*(self: AspectRatioContainer): untyped = self.getAlignmentHorizontal()
template `alignmentHorizontal=`*(self: AspectRatioContainer; value) = self.setAlignmentHorizontal(value)

template alignmentVertical*(self: AspectRatioContainer): untyped = self.getAlignmentVertical()
template `alignmentVertical=`*(self: AspectRatioContainer; value) = self.setAlignmentVertical(value)

const AspectRatioContainer_vmap =
  Container.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AspectRatioContainer]): Table[string, string] = AspectRatioContainer_vmap