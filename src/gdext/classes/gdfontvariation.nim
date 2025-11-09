{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdfont; export gdfont

expandOnClassImported(FontVariation, Font)

proc setBaseFont*(self: FontVariation; font: gdref Font): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontVariation, "set_base_font", 1262170328)
  methodbind.ptrcall(self, [getPtr font], void)

proc getBaseFont*(self: FontVariation): gdref Font =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontVariation, "get_base_font", 3229501585)
  methodbind.ptrcall(self, [], gdref Font)

proc setVariationOpentype*(self: FontVariation; coords: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontVariation, "set_variation_opentype", 4155329257)
  methodbind.ptrcall(self, [getPtr coords], void)

proc getVariationOpentype*(self: FontVariation): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontVariation, "get_variation_opentype", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc setVariationEmbolden*(self: FontVariation; strength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontVariation, "set_variation_embolden", 373806689)
  methodbind.ptrcall(self, [getPtr strength], void)

proc getVariationEmbolden*(self: FontVariation): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontVariation, "get_variation_embolden", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVariationFaceIndex*(self: FontVariation; faceIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontVariation, "set_variation_face_index", 1286410249)
  methodbind.ptrcall(self, [getPtr faceIndex], void)

proc getVariationFaceIndex*(self: FontVariation): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontVariation, "get_variation_face_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setVariationTransform*(self: FontVariation; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontVariation, "set_variation_transform", 2761652528)
  methodbind.ptrcall(self, [getPtr transform], void)

proc getVariationTransform*(self: FontVariation): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontVariation, "get_variation_transform", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc setOpentypeFeatures*(self: FontVariation; features: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontVariation, "set_opentype_features", 4155329257)
  methodbind.ptrcall(self, [getPtr features], void)

proc setSpacing*(self: FontVariation; spacing: TextServer_SpacingType; value: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontVariation, "set_spacing", 3122339690)
  methodbind.ptrcall(self, [getPtr spacing, getPtr value], void)

proc setBaselineOffset*(self: FontVariation; baselineOffset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontVariation, "set_baseline_offset", 373806689)
  methodbind.ptrcall(self, [getPtr baselineOffset], void)

proc getBaselineOffset*(self: FontVariation): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className FontVariation, "get_baseline_offset", 1740695150)
  methodbind.ptrcall(self, [], Float)

template baseFont*(self: FontVariation): untyped = self.getBaseFont()
template `baseFont=`*(self: FontVariation; value) = self.setBaseFont(value)

template variationOpentype*(self: FontVariation): untyped = self.getVariationOpentype()
template `variationOpentype=`*(self: FontVariation; value) = self.setVariationOpentype(value)

template variationFaceIndex*(self: FontVariation): untyped = self.getVariationFaceIndex()
template `variationFaceIndex=`*(self: FontVariation; value) = self.setVariationFaceIndex(value)

template variationEmbolden*(self: FontVariation): untyped = self.getVariationEmbolden()
template `variationEmbolden=`*(self: FontVariation; value) = self.setVariationEmbolden(value)

template variationTransform*(self: FontVariation): untyped = self.getVariationTransform()
template `variationTransform=`*(self: FontVariation; value) = self.setVariationTransform(value)

template opentypeFeatures*(self: FontVariation): untyped = self.getOpentypeFeatures()
template `opentypeFeatures=`*(self: FontVariation; value) = self.setOpentypeFeatures(value)

template spacingGlyph*(self: FontVariation): untyped = self.getSpacing(TextServer_SpacingType(0))
template `spacingGlyph=`*(self: FontVariation; value) = self.setSpacing(TextServer_SpacingType(0), value)

template spacingSpace*(self: FontVariation): untyped = self.getSpacing(TextServer_SpacingType(1))
template `spacingSpace=`*(self: FontVariation; value) = self.setSpacing(TextServer_SpacingType(1), value)

template spacingTop*(self: FontVariation): untyped = self.getSpacing(TextServer_SpacingType(2))
template `spacingTop=`*(self: FontVariation; value) = self.setSpacing(TextServer_SpacingType(2), value)

template spacingBottom*(self: FontVariation): untyped = self.getSpacing(TextServer_SpacingType(3))
template `spacingBottom=`*(self: FontVariation; value) = self.setSpacing(TextServer_SpacingType(3), value)

template baselineOffset*(self: FontVariation): untyped = self.getBaselineOffset()
template `baselineOffset=`*(self: FontVariation; value) = self.setBaselineOffset(value)
