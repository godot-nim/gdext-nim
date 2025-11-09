{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontainer; export gdcontainer

expandOnClassImported(AspectRatioContainer, Container)

proc setRatio*(self: AspectRatioContainer; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AspectRatioContainer, "set_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc getRatio*(self: AspectRatioContainer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AspectRatioContainer, "get_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setStretchMode*(self: AspectRatioContainer; stretchMode: AspectRatioContainer_StretchMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AspectRatioContainer, "set_stretch_mode", 1876743467)
  methodbind.ptrcall(self, [getPtr stretchMode], void)

proc getStretchMode*(self: AspectRatioContainer): AspectRatioContainer_StretchMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AspectRatioContainer, "get_stretch_mode", 3416449033)
  methodbind.ptrcall(self, [], AspectRatioContainer_StretchMode)

proc setAlignmentHorizontal*(self: AspectRatioContainer; alignmentHorizontal: AspectRatioContainer_AlignmentMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AspectRatioContainer, "set_alignment_horizontal", 2147829016)
  methodbind.ptrcall(self, [getPtr alignmentHorizontal], void)

proc getAlignmentHorizontal*(self: AspectRatioContainer): AspectRatioContainer_AlignmentMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AspectRatioContainer, "get_alignment_horizontal", 3838875429)
  methodbind.ptrcall(self, [], AspectRatioContainer_AlignmentMode)

proc setAlignmentVertical*(self: AspectRatioContainer; alignmentVertical: AspectRatioContainer_AlignmentMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AspectRatioContainer, "set_alignment_vertical", 2147829016)
  methodbind.ptrcall(self, [getPtr alignmentVertical], void)

proc getAlignmentVertical*(self: AspectRatioContainer): AspectRatioContainer_AlignmentMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AspectRatioContainer, "get_alignment_vertical", 3838875429)
  methodbind.ptrcall(self, [], AspectRatioContainer_AlignmentMode)

template ratio*(self: AspectRatioContainer): untyped = self.getRatio()
template `ratio=`*(self: AspectRatioContainer; value) = self.setRatio(value)

template stretchMode*(self: AspectRatioContainer): untyped = self.getStretchMode()
template `stretchMode=`*(self: AspectRatioContainer; value) = self.setStretchMode(value)

template alignmentHorizontal*(self: AspectRatioContainer): untyped = self.getAlignmentHorizontal()
template `alignmentHorizontal=`*(self: AspectRatioContainer; value) = self.setAlignmentHorizontal(value)

template alignmentVertical*(self: AspectRatioContainer): untyped = self.getAlignmentVertical()
template `alignmentVertical=`*(self: AspectRatioContainer; value) = self.setAlignmentVertical(value)
