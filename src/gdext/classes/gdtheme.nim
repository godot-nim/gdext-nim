{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setIcon*(self: Theme; name: StringName; themeType: StringName; texture: gdref Texture2D): void =
  expandMethodBind(className Theme, "set_icon", 2188371082)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType, getPtr texture])

proc getIcon*(self: Theme; name: StringName; themeType: StringName): gdref Texture2D =
  expandMethodBind(className Theme, "get_icon", 934555193)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc hasIcon*(self: Theme; name: StringName; themeType: StringName): bool =
  expandMethodBind(className Theme, "has_icon", 471820014)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(bool)

proc renameIcon*(self: Theme; oldName: StringName; name: StringName; themeType: StringName): void =
  expandMethodBind(className Theme, "rename_icon", 642128662)
  methodbind.ptrcall(self, [getPtr oldName, getPtr name, getPtr themeType])

proc clearIcon*(self: Theme; name: StringName; themeType: StringName): void =
  expandMethodBind(className Theme, "clear_icon", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType])

proc getIconList*(self: Theme; themeType: String): PackedStringArray =
  expandMethodBind(className Theme, "get_icon_list", 4291131558)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr themeType], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getIconTypeList*(self: Theme): PackedStringArray =
  expandMethodBind(className Theme, "get_icon_type_list", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setStylebox*(self: Theme; name: StringName; themeType: StringName; texture: gdref StyleBox): void =
  expandMethodBind(className Theme, "set_stylebox", 2075907568)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType, getPtr texture])

proc getStylebox*(self: Theme; name: StringName; themeType: StringName): gdref StyleBox =
  expandMethodBind(className Theme, "get_stylebox", 3405608165)
  var ret: encoded gdref StyleBox
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(gdref StyleBox)

proc hasStylebox*(self: Theme; name: StringName; themeType: StringName): bool =
  expandMethodBind(className Theme, "has_stylebox", 471820014)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(bool)

proc renameStylebox*(self: Theme; oldName: StringName; name: StringName; themeType: StringName): void =
  expandMethodBind(className Theme, "rename_stylebox", 642128662)
  methodbind.ptrcall(self, [getPtr oldName, getPtr name, getPtr themeType])

proc clearStylebox*(self: Theme; name: StringName; themeType: StringName): void =
  expandMethodBind(className Theme, "clear_stylebox", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType])

proc getStyleboxList*(self: Theme; themeType: String): PackedStringArray =
  expandMethodBind(className Theme, "get_stylebox_list", 4291131558)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr themeType], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getStyleboxTypeList*(self: Theme): PackedStringArray =
  expandMethodBind(className Theme, "get_stylebox_type_list", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setFont*(self: Theme; name: StringName; themeType: StringName; font: gdref Font): void =
  expandMethodBind(className Theme, "set_font", 177292320)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType, getPtr font])

proc getFont*(self: Theme; name: StringName; themeType: StringName): gdref Font =
  expandMethodBind(className Theme, "get_font", 3445063586)
  var ret: encoded gdref Font
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(gdref Font)

proc hasFont*(self: Theme; name: StringName; themeType: StringName): bool =
  expandMethodBind(className Theme, "has_font", 471820014)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(bool)

proc renameFont*(self: Theme; oldName: StringName; name: StringName; themeType: StringName): void =
  expandMethodBind(className Theme, "rename_font", 642128662)
  methodbind.ptrcall(self, [getPtr oldName, getPtr name, getPtr themeType])

proc clearFont*(self: Theme; name: StringName; themeType: StringName): void =
  expandMethodBind(className Theme, "clear_font", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType])

proc getFontList*(self: Theme; themeType: String): PackedStringArray =
  expandMethodBind(className Theme, "get_font_list", 4291131558)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr themeType], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getFontTypeList*(self: Theme): PackedStringArray =
  expandMethodBind(className Theme, "get_font_type_list", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setFontSize*(self: Theme; name: StringName; themeType: StringName; fontSize: int32): void =
  expandMethodBind(className Theme, "set_font_size", 281601298)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType, getPtr fontSize])

proc getFontSize*(self: Theme; name: StringName; themeType: StringName): int32 =
  expandMethodBind(className Theme, "get_font_size", 2419549490)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(int32)

proc hasFontSize*(self: Theme; name: StringName; themeType: StringName): bool =
  expandMethodBind(className Theme, "has_font_size", 471820014)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(bool)

proc renameFontSize*(self: Theme; oldName: StringName; name: StringName; themeType: StringName): void =
  expandMethodBind(className Theme, "rename_font_size", 642128662)
  methodbind.ptrcall(self, [getPtr oldName, getPtr name, getPtr themeType])

proc clearFontSize*(self: Theme; name: StringName; themeType: StringName): void =
  expandMethodBind(className Theme, "clear_font_size", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType])

proc getFontSizeList*(self: Theme; themeType: String): PackedStringArray =
  expandMethodBind(className Theme, "get_font_size_list", 4291131558)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr themeType], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getFontSizeTypeList*(self: Theme): PackedStringArray =
  expandMethodBind(className Theme, "get_font_size_type_list", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setColor*(self: Theme; name: StringName; themeType: StringName; color: Color): void =
  expandMethodBind(className Theme, "set_color", 4111215154)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType, getPtr color])

proc getColor*(self: Theme; name: StringName; themeType: StringName): Color =
  expandMethodBind(className Theme, "get_color", 2015923404)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(Color)

proc hasColor*(self: Theme; name: StringName; themeType: StringName): bool =
  expandMethodBind(className Theme, "has_color", 471820014)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(bool)

proc renameColor*(self: Theme; oldName: StringName; name: StringName; themeType: StringName): void =
  expandMethodBind(className Theme, "rename_color", 642128662)
  methodbind.ptrcall(self, [getPtr oldName, getPtr name, getPtr themeType])

proc clearColor*(self: Theme; name: StringName; themeType: StringName): void =
  expandMethodBind(className Theme, "clear_color", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType])

proc getColorList*(self: Theme; themeType: String): PackedStringArray =
  expandMethodBind(className Theme, "get_color_list", 4291131558)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr themeType], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getColorTypeList*(self: Theme): PackedStringArray =
  expandMethodBind(className Theme, "get_color_type_list", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setConstant*(self: Theme; name: StringName; themeType: StringName; constant: int32): void =
  expandMethodBind(className Theme, "set_constant", 281601298)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType, getPtr constant])

proc getConstant*(self: Theme; name: StringName; themeType: StringName): int32 =
  expandMethodBind(className Theme, "get_constant", 2419549490)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(int32)

proc hasConstant*(self: Theme; name: StringName; themeType: StringName): bool =
  expandMethodBind(className Theme, "has_constant", 471820014)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(bool)

proc renameConstant*(self: Theme; oldName: StringName; name: StringName; themeType: StringName): void =
  expandMethodBind(className Theme, "rename_constant", 642128662)
  methodbind.ptrcall(self, [getPtr oldName, getPtr name, getPtr themeType])

proc clearConstant*(self: Theme; name: StringName; themeType: StringName): void =
  expandMethodBind(className Theme, "clear_constant", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType])

proc getConstantList*(self: Theme; themeType: String): PackedStringArray =
  expandMethodBind(className Theme, "get_constant_list", 4291131558)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr themeType], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getConstantTypeList*(self: Theme): PackedStringArray =
  expandMethodBind(className Theme, "get_constant_type_list", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setDefaultBaseScale*(self: Theme; baseScale: Float): void =
  expandMethodBind(className Theme, "set_default_base_scale", 373806689)
  methodbind.ptrcall(self, [getPtr baseScale])

proc getDefaultBaseScale*(self: Theme): Float =
  expandMethodBind(className Theme, "get_default_base_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc hasDefaultBaseScale*(self: Theme): bool =
  expandMethodBind(className Theme, "has_default_base_scale", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDefaultFont*(self: Theme; font: gdref Font): void =
  expandMethodBind(className Theme, "set_default_font", 1262170328)
  methodbind.ptrcall(self, [getPtr font])

proc getDefaultFont*(self: Theme): gdref Font =
  expandMethodBind(className Theme, "get_default_font", 3229501585)
  var ret: encoded gdref Font
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Font)

proc hasDefaultFont*(self: Theme): bool =
  expandMethodBind(className Theme, "has_default_font", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDefaultFontSize*(self: Theme; fontSize: int32): void =
  expandMethodBind(className Theme, "set_default_font_size", 1286410249)
  methodbind.ptrcall(self, [getPtr fontSize])

proc getDefaultFontSize*(self: Theme): int32 =
  expandMethodBind(className Theme, "get_default_font_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc hasDefaultFontSize*(self: Theme): bool =
  expandMethodBind(className Theme, "has_default_font_size", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setThemeItem*(self: Theme; dataType: Theme_DataType; name: StringName; themeType: StringName; value: Variant): void =
  expandMethodBind(className Theme, "set_theme_item", 2492983623)
  methodbind.ptrcall(self, [getPtr dataType, getPtr name, getPtr themeType, getPtr value])

proc getThemeItem*(self: Theme; dataType: Theme_DataType; name: StringName; themeType: StringName): Variant =
  expandMethodBind(className Theme, "get_theme_item", 2191024021)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr dataType, getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(Variant)

proc hasThemeItem*(self: Theme; dataType: Theme_DataType; name: StringName; themeType: StringName): bool =
  expandMethodBind(className Theme, "has_theme_item", 1739311056)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr dataType, getPtr name, getPtr themeType], addr ret)
  (addr ret).decode_result(bool)

proc renameThemeItem*(self: Theme; dataType: Theme_DataType; oldName: StringName; name: StringName; themeType: StringName): void =
  expandMethodBind(className Theme, "rename_theme_item", 3900867553)
  methodbind.ptrcall(self, [getPtr dataType, getPtr oldName, getPtr name, getPtr themeType])

proc clearThemeItem*(self: Theme; dataType: Theme_DataType; name: StringName; themeType: StringName): void =
  expandMethodBind(className Theme, "clear_theme_item", 2965505587)
  methodbind.ptrcall(self, [getPtr dataType, getPtr name, getPtr themeType])

proc getThemeItemList*(self: Theme; dataType: Theme_DataType; themeType: String): PackedStringArray =
  expandMethodBind(className Theme, "get_theme_item_list", 3726716710)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr dataType, getPtr themeType], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getThemeItemTypeList*(self: Theme; dataType: Theme_DataType): PackedStringArray =
  expandMethodBind(className Theme, "get_theme_item_type_list", 1316004935)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr dataType], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setTypeVariation*(self: Theme; themeType: StringName; baseType: StringName): void =
  expandMethodBind(className Theme, "set_type_variation", 3740211285)
  methodbind.ptrcall(self, [getPtr themeType, getPtr baseType])

proc isTypeVariation*(self: Theme; themeType: StringName; baseType: StringName): bool =
  expandMethodBind(className Theme, "is_type_variation", 471820014)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr themeType, getPtr baseType], addr ret)
  (addr ret).decode_result(bool)

proc clearTypeVariation*(self: Theme; themeType: StringName): void =
  expandMethodBind(className Theme, "clear_type_variation", 3304788590)
  methodbind.ptrcall(self, [getPtr themeType])

proc getTypeVariationBase*(self: Theme; themeType: StringName): StringName =
  expandMethodBind(className Theme, "get_type_variation_base", 1965194235)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr themeType], addr ret)
  (addr ret).decode_result(StringName)

proc getTypeVariationList*(self: Theme; baseType: StringName): PackedStringArray =
  expandMethodBind(className Theme, "get_type_variation_list", 1761182771)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr baseType], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc addType*(self: Theme; themeType: StringName): void =
  expandMethodBind(className Theme, "add_type", 3304788590)
  methodbind.ptrcall(self, [getPtr themeType])

proc removeType*(self: Theme; themeType: StringName): void =
  expandMethodBind(className Theme, "remove_type", 3304788590)
  methodbind.ptrcall(self, [getPtr themeType])

proc getTypeList*(self: Theme): PackedStringArray =
  expandMethodBind(className Theme, "get_type_list", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc mergeWith*(self: Theme; other: gdref Theme): void =
  expandMethodBind(className Theme, "merge_with", 2326690814)
  methodbind.ptrcall(self, [getPtr other])

proc clear*(self: Theme): void =
  expandMethodBind(className Theme, "clear", 3218959716)
  methodbind.ptrcall(self, [])

template defaultBaseScale*(self: Theme): untyped = self.getDefaultBaseScale()
template `defaultBaseScale=`*(self: Theme; value) = self.setDefaultBaseScale(value)

template defaultFont*(self: Theme): untyped = self.getDefaultFont()
template `defaultFont=`*(self: Theme; value) = self.setDefaultFont(value)

template defaultFontSize*(self: Theme): untyped = self.getDefaultFontSize()
template `defaultFontSize=`*(self: Theme; value) = self.setDefaultFontSize(value)

const Theme_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Theme]): Table[string, string] = Theme_vmap