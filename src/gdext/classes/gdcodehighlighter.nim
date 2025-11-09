{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdsyntaxhighlighter; export gdsyntaxhighlighter

expandOnClassImported(CodeHighlighter, SyntaxHighlighter)

proc addKeywordColor*(self: CodeHighlighter; keyword: String; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "add_keyword_color", 1636512886)
  methodbind.ptrcall(self, [getPtr keyword, getPtr color], void)

proc removeKeywordColor*(self: CodeHighlighter; keyword: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "remove_keyword_color", 83702148)
  methodbind.ptrcall(self, [getPtr keyword], void)

proc hasKeywordColor*(self: CodeHighlighter; keyword: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "has_keyword_color", 3927539163)
  methodbind.ptrcall(self, [getPtr keyword], bool)

proc getKeywordColor*(self: CodeHighlighter; keyword: String): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "get_keyword_color", 3855908743)
  methodbind.ptrcall(self, [getPtr keyword], Color)

proc setKeywordColors*(self: CodeHighlighter; keywords: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "set_keyword_colors", 4155329257)
  methodbind.ptrcall(self, [getPtr keywords], void)

proc clearKeywordColors*(self: CodeHighlighter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "clear_keyword_colors", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getKeywordColors*(self: CodeHighlighter): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "get_keyword_colors", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc addMemberKeywordColor*(self: CodeHighlighter; memberKeyword: String; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "add_member_keyword_color", 1636512886)
  methodbind.ptrcall(self, [getPtr memberKeyword, getPtr color], void)

proc removeMemberKeywordColor*(self: CodeHighlighter; memberKeyword: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "remove_member_keyword_color", 83702148)
  methodbind.ptrcall(self, [getPtr memberKeyword], void)

proc hasMemberKeywordColor*(self: CodeHighlighter; memberKeyword: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "has_member_keyword_color", 3927539163)
  methodbind.ptrcall(self, [getPtr memberKeyword], bool)

proc getMemberKeywordColor*(self: CodeHighlighter; memberKeyword: String): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "get_member_keyword_color", 3855908743)
  methodbind.ptrcall(self, [getPtr memberKeyword], Color)

proc setMemberKeywordColors*(self: CodeHighlighter; memberKeyword: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "set_member_keyword_colors", 4155329257)
  methodbind.ptrcall(self, [getPtr memberKeyword], void)

proc clearMemberKeywordColors*(self: CodeHighlighter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "clear_member_keyword_colors", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getMemberKeywordColors*(self: CodeHighlighter): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "get_member_keyword_colors", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc addColorRegion*(self: CodeHighlighter; startKey: String; endKey: String; color: Color; lineOnly: bool = false): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "add_color_region", 2924977451)
  methodbind.ptrcall(self, [getPtr startKey, getPtr endKey, getPtr color, getPtr lineOnly], void)

proc removeColorRegion*(self: CodeHighlighter; startKey: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "remove_color_region", 83702148)
  methodbind.ptrcall(self, [getPtr startKey], void)

proc hasColorRegion*(self: CodeHighlighter; startKey: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "has_color_region", 3927539163)
  methodbind.ptrcall(self, [getPtr startKey], bool)

proc setColorRegions*(self: CodeHighlighter; colorRegions: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "set_color_regions", 4155329257)
  methodbind.ptrcall(self, [getPtr colorRegions], void)

proc clearColorRegions*(self: CodeHighlighter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "clear_color_regions", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getColorRegions*(self: CodeHighlighter): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "get_color_regions", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc setFunctionColor*(self: CodeHighlighter; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "set_function_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getFunctionColor*(self: CodeHighlighter): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "get_function_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setNumberColor*(self: CodeHighlighter; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "set_number_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getNumberColor*(self: CodeHighlighter): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "get_number_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setSymbolColor*(self: CodeHighlighter; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "set_symbol_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getSymbolColor*(self: CodeHighlighter): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "get_symbol_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setMemberVariableColor*(self: CodeHighlighter; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "set_member_variable_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getMemberVariableColor*(self: CodeHighlighter): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CodeHighlighter, "get_member_variable_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

template numberColor*(self: CodeHighlighter): untyped = self.getNumberColor()
template `numberColor=`*(self: CodeHighlighter; value) = self.setNumberColor(value)

template symbolColor*(self: CodeHighlighter): untyped = self.getSymbolColor()
template `symbolColor=`*(self: CodeHighlighter; value) = self.setSymbolColor(value)

template functionColor*(self: CodeHighlighter): untyped = self.getFunctionColor()
template `functionColor=`*(self: CodeHighlighter; value) = self.setFunctionColor(value)

template memberVariableColor*(self: CodeHighlighter): untyped = self.getMemberVariableColor()
template `memberVariableColor=`*(self: CodeHighlighter; value) = self.setMemberVariableColor(value)

template keywordColors*(self: CodeHighlighter): untyped = self.getKeywordColors()
template `keywordColors=`*(self: CodeHighlighter; value) = self.setKeywordColors(value)

template memberKeywordColors*(self: CodeHighlighter): untyped = self.getMemberKeywordColors()
template `memberKeywordColors=`*(self: CodeHighlighter; value) = self.setMemberKeywordColors(value)

template colorRegions*(self: CodeHighlighter): untyped = self.getColorRegions()
template `colorRegions=`*(self: CodeHighlighter; value) = self.setColorRegions(value)
