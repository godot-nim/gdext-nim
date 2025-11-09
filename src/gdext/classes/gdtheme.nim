{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Theme, Resource)

proc setIcon*(self: Theme; name: StringName; themeType: StringName; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "set_icon", 2188371082)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType, getPtr texture], void)

proc getIcon*(self: Theme; name: StringName; themeType: StringName): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_icon", 934555193)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], gdref Texture2D)

proc hasIcon*(self: Theme; name: StringName; themeType: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "has_icon", 471820014)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc renameIcon*(self: Theme; oldName: StringName; name: StringName; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "rename_icon", 642128662)
  methodbind.ptrcall(self, [getPtr oldName, getPtr name, getPtr themeType], void)

proc clearIcon*(self: Theme; name: StringName; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "clear_icon", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], void)

proc getIconList*(self: Theme; themeType: String): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_icon_list", 4291131558)
  methodbind.ptrcall(self, [getPtr themeType], PackedStringArray)

proc getIconTypeList*(self: Theme): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_icon_type_list", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setStylebox*(self: Theme; name: StringName; themeType: StringName; texture: gdref StyleBox): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "set_stylebox", 2075907568)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType, getPtr texture], void)

proc getStylebox*(self: Theme; name: StringName; themeType: StringName): gdref StyleBox =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_stylebox", 3405608165)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], gdref StyleBox)

proc hasStylebox*(self: Theme; name: StringName; themeType: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "has_stylebox", 471820014)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc renameStylebox*(self: Theme; oldName: StringName; name: StringName; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "rename_stylebox", 642128662)
  methodbind.ptrcall(self, [getPtr oldName, getPtr name, getPtr themeType], void)

proc clearStylebox*(self: Theme; name: StringName; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "clear_stylebox", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], void)

proc getStyleboxList*(self: Theme; themeType: String): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_stylebox_list", 4291131558)
  methodbind.ptrcall(self, [getPtr themeType], PackedStringArray)

proc getStyleboxTypeList*(self: Theme): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_stylebox_type_list", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setFont*(self: Theme; name: StringName; themeType: StringName; font: gdref Font): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "set_font", 177292320)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType, getPtr font], void)

proc getFont*(self: Theme; name: StringName; themeType: StringName): gdref Font =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_font", 3445063586)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], gdref Font)

proc hasFont*(self: Theme; name: StringName; themeType: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "has_font", 471820014)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc renameFont*(self: Theme; oldName: StringName; name: StringName; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "rename_font", 642128662)
  methodbind.ptrcall(self, [getPtr oldName, getPtr name, getPtr themeType], void)

proc clearFont*(self: Theme; name: StringName; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "clear_font", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], void)

proc getFontList*(self: Theme; themeType: String): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_font_list", 4291131558)
  methodbind.ptrcall(self, [getPtr themeType], PackedStringArray)

proc getFontTypeList*(self: Theme): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_font_type_list", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setFontSize*(self: Theme; name: StringName; themeType: StringName; fontSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "set_font_size", 281601298)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType, getPtr fontSize], void)

proc getFontSize*(self: Theme; name: StringName; themeType: StringName): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_font_size", 2419549490)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], int32)

proc hasFontSize*(self: Theme; name: StringName; themeType: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "has_font_size", 471820014)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc renameFontSize*(self: Theme; oldName: StringName; name: StringName; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "rename_font_size", 642128662)
  methodbind.ptrcall(self, [getPtr oldName, getPtr name, getPtr themeType], void)

proc clearFontSize*(self: Theme; name: StringName; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "clear_font_size", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], void)

proc getFontSizeList*(self: Theme; themeType: String): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_font_size_list", 4291131558)
  methodbind.ptrcall(self, [getPtr themeType], PackedStringArray)

proc getFontSizeTypeList*(self: Theme): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_font_size_type_list", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setColor*(self: Theme; name: StringName; themeType: StringName; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "set_color", 4111215154)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType, getPtr color], void)

proc getColor*(self: Theme; name: StringName; themeType: StringName): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_color", 2015923404)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], Color)

proc hasColor*(self: Theme; name: StringName; themeType: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "has_color", 471820014)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc renameColor*(self: Theme; oldName: StringName; name: StringName; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "rename_color", 642128662)
  methodbind.ptrcall(self, [getPtr oldName, getPtr name, getPtr themeType], void)

proc clearColor*(self: Theme; name: StringName; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "clear_color", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], void)

proc getColorList*(self: Theme; themeType: String): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_color_list", 4291131558)
  methodbind.ptrcall(self, [getPtr themeType], PackedStringArray)

proc getColorTypeList*(self: Theme): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_color_type_list", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setConstant*(self: Theme; name: StringName; themeType: StringName; constant: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "set_constant", 281601298)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType, getPtr constant], void)

proc getConstant*(self: Theme; name: StringName; themeType: StringName): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_constant", 2419549490)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], int32)

proc hasConstant*(self: Theme; name: StringName; themeType: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "has_constant", 471820014)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], bool)

proc renameConstant*(self: Theme; oldName: StringName; name: StringName; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "rename_constant", 642128662)
  methodbind.ptrcall(self, [getPtr oldName, getPtr name, getPtr themeType], void)

proc clearConstant*(self: Theme; name: StringName; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "clear_constant", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr themeType], void)

proc getConstantList*(self: Theme; themeType: String): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_constant_list", 4291131558)
  methodbind.ptrcall(self, [getPtr themeType], PackedStringArray)

proc getConstantTypeList*(self: Theme): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_constant_type_list", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setDefaultBaseScale*(self: Theme; baseScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "set_default_base_scale", 373806689)
  methodbind.ptrcall(self, [getPtr baseScale], void)

proc getDefaultBaseScale*(self: Theme): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_default_base_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc hasDefaultBaseScale*(self: Theme): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "has_default_base_scale", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDefaultFont*(self: Theme; font: gdref Font): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "set_default_font", 1262170328)
  methodbind.ptrcall(self, [getPtr font], void)

proc getDefaultFont*(self: Theme): gdref Font =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_default_font", 3229501585)
  methodbind.ptrcall(self, [], gdref Font)

proc hasDefaultFont*(self: Theme): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "has_default_font", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDefaultFontSize*(self: Theme; fontSize: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "set_default_font_size", 1286410249)
  methodbind.ptrcall(self, [getPtr fontSize], void)

proc getDefaultFontSize*(self: Theme): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_default_font_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc hasDefaultFontSize*(self: Theme): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "has_default_font_size", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setThemeItem*(self: Theme; dataType: Theme_DataType; name: StringName; themeType: StringName; value: Variant): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "set_theme_item", 2492983623)
  methodbind.ptrcall(self, [getPtr dataType, getPtr name, getPtr themeType, getPtr value], void)

proc getThemeItem*(self: Theme; dataType: Theme_DataType; name: StringName; themeType: StringName): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_theme_item", 2191024021)
  methodbind.ptrcall(self, [getPtr dataType, getPtr name, getPtr themeType], Variant)

proc hasThemeItem*(self: Theme; dataType: Theme_DataType; name: StringName; themeType: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "has_theme_item", 1739311056)
  methodbind.ptrcall(self, [getPtr dataType, getPtr name, getPtr themeType], bool)

proc renameThemeItem*(self: Theme; dataType: Theme_DataType; oldName: StringName; name: StringName; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "rename_theme_item", 3900867553)
  methodbind.ptrcall(self, [getPtr dataType, getPtr oldName, getPtr name, getPtr themeType], void)

proc clearThemeItem*(self: Theme; dataType: Theme_DataType; name: StringName; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "clear_theme_item", 2965505587)
  methodbind.ptrcall(self, [getPtr dataType, getPtr name, getPtr themeType], void)

proc getThemeItemList*(self: Theme; dataType: Theme_DataType; themeType: String): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_theme_item_list", 3726716710)
  methodbind.ptrcall(self, [getPtr dataType, getPtr themeType], PackedStringArray)

proc getThemeItemTypeList*(self: Theme; dataType: Theme_DataType): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_theme_item_type_list", 1316004935)
  methodbind.ptrcall(self, [getPtr dataType], PackedStringArray)

proc setTypeVariation*(self: Theme; themeType: StringName; baseType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "set_type_variation", 3740211285)
  methodbind.ptrcall(self, [getPtr themeType, getPtr baseType], void)

proc isTypeVariation*(self: Theme; themeType: StringName; baseType: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "is_type_variation", 471820014)
  methodbind.ptrcall(self, [getPtr themeType, getPtr baseType], bool)

proc clearTypeVariation*(self: Theme; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "clear_type_variation", 3304788590)
  methodbind.ptrcall(self, [getPtr themeType], void)

proc getTypeVariationBase*(self: Theme; themeType: StringName): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_type_variation_base", 1965194235)
  methodbind.ptrcall(self, [getPtr themeType], StringName)

proc getTypeVariationList*(self: Theme; baseType: StringName): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_type_variation_list", 1761182771)
  methodbind.ptrcall(self, [getPtr baseType], PackedStringArray)

proc addType*(self: Theme; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "add_type", 3304788590)
  methodbind.ptrcall(self, [getPtr themeType], void)

proc removeType*(self: Theme; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "remove_type", 3304788590)
  methodbind.ptrcall(self, [getPtr themeType], void)

proc renameType*(self: Theme; oldThemeType: StringName; themeType: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "rename_type", 3740211285)
  methodbind.ptrcall(self, [getPtr oldThemeType, getPtr themeType], void)

proc getTypeList*(self: Theme): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "get_type_list", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc mergeWith*(self: Theme; other: gdref Theme): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "merge_with", 2326690814)
  methodbind.ptrcall(self, [getPtr other], void)

proc clear*(self: Theme): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Theme, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

template defaultBaseScale*(self: Theme): untyped = self.getDefaultBaseScale()
template `defaultBaseScale=`*(self: Theme; value) = self.setDefaultBaseScale(value)

template defaultFont*(self: Theme): untyped = self.getDefaultFont()
template `defaultFont=`*(self: Theme; value) = self.setDefaultFont(value)

template defaultFontSize*(self: Theme): untyped = self.getDefaultFontSize()
template `defaultFontSize=`*(self: Theme; value) = self.setDefaultFontSize(value)
