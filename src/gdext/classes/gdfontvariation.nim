{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdfont; export gdfont

proc setBaseFont*(self: FontVariation; font: gdref Font): void =
  expandMethodBind(className FontVariation, "set_base_font", 1262170328)
  var `?param` = [getPtr font]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBaseFont*(self: FontVariation): gdref Font =
  expandMethodBind(className FontVariation, "get_base_font", 3229501585)
  var ret: encoded gdref Font
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Font)

proc setVariationOpentype*(self: FontVariation; coords: Dictionary): void =
  expandMethodBind(className FontVariation, "set_variation_opentype", 4155329257)
  var `?param` = [getPtr coords]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVariationOpentype*(self: FontVariation): Dictionary =
  expandMethodBind(className FontVariation, "get_variation_opentype", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc setVariationEmbolden*(self: FontVariation; strength: Float): void =
  expandMethodBind(className FontVariation, "set_variation_embolden", 373806689)
  var `?param` = [getPtr strength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVariationEmbolden*(self: FontVariation): Float =
  expandMethodBind(className FontVariation, "get_variation_embolden", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVariationFaceIndex*(self: FontVariation; faceIndex: int32): void =
  expandMethodBind(className FontVariation, "set_variation_face_index", 1286410249)
  var `?param` = [getPtr faceIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVariationFaceIndex*(self: FontVariation): int32 =
  expandMethodBind(className FontVariation, "get_variation_face_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setVariationTransform*(self: FontVariation; transform: Transform2D): void =
  expandMethodBind(className FontVariation, "set_variation_transform", 2761652528)
  var `?param` = [getPtr transform]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVariationTransform*(self: FontVariation): Transform2D =
  expandMethodBind(className FontVariation, "get_variation_transform", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform2D)

proc setOpentypeFeatures*(self: FontVariation; features: Dictionary): void =
  expandMethodBind(className FontVariation, "set_opentype_features", 4155329257)
  var `?param` = [getPtr features]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSpacing*(self: FontVariation; spacing: TextServer_SpacingType; value: int32): void =
  expandMethodBind(className FontVariation, "set_spacing", 3122339690)
  var `?param` = [getPtr spacing, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc setBaselineOffset*(self: FontVariation; baselineOffset: Float): void =
  expandMethodBind(className FontVariation, "set_baseline_offset", 373806689)
  var `?param` = [getPtr baselineOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBaselineOffset*(self: FontVariation): Float =
  expandMethodBind(className FontVariation, "get_baseline_offset", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

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

template spacingGlyph*(self: FontVariation): untyped = self.getSpacing(0)
template `spacingGlyph=`*(self: FontVariation; value) = self.setSpacing(0, value)

template spacingSpace*(self: FontVariation): untyped = self.getSpacing(1)
template `spacingSpace=`*(self: FontVariation; value) = self.setSpacing(1, value)

template spacingTop*(self: FontVariation): untyped = self.getSpacing(2)
template `spacingTop=`*(self: FontVariation; value) = self.setSpacing(2, value)

template spacingBottom*(self: FontVariation): untyped = self.getSpacing(3)
template `spacingBottom=`*(self: FontVariation; value) = self.setSpacing(3, value)

template baselineOffset*(self: FontVariation): untyped = self.getBaselineOffset()
template `baselineOffset=`*(self: FontVariation; value) = self.setBaselineOffset(value)

const FontVariation_vmap =
  Font.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[FontVariation]): Table[string, string] = FontVariation_vmap