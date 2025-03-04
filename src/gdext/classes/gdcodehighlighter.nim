{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdsyntaxhighlighter; export gdsyntaxhighlighter

proc addKeywordColor*(self: CodeHighlighter; keyword: String; color: Color): void =
  expandMethodBind(className CodeHighlighter, "add_keyword_color", 1636512886)
  methodbind.ptrcall(self, [getPtr keyword, getPtr color])

proc removeKeywordColor*(self: CodeHighlighter; keyword: String): void =
  expandMethodBind(className CodeHighlighter, "remove_keyword_color", 83702148)
  methodbind.ptrcall(self, [getPtr keyword])

proc hasKeywordColor*(self: CodeHighlighter; keyword: String): bool =
  expandMethodBind(className CodeHighlighter, "has_keyword_color", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr keyword], addr ret)
  (addr ret).decode_result(bool)

proc getKeywordColor*(self: CodeHighlighter; keyword: String): Color =
  expandMethodBind(className CodeHighlighter, "get_keyword_color", 3855908743)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr keyword], addr ret)
  (addr ret).decode_result(Color)

proc setKeywordColors*(self: CodeHighlighter; keywords: Dictionary): void =
  expandMethodBind(className CodeHighlighter, "set_keyword_colors", 4155329257)
  methodbind.ptrcall(self, [getPtr keywords])

proc clearKeywordColors*(self: CodeHighlighter): void =
  expandMethodBind(className CodeHighlighter, "clear_keyword_colors", 3218959716)
  methodbind.ptrcall(self, [])

proc getKeywordColors*(self: CodeHighlighter): Dictionary =
  expandMethodBind(className CodeHighlighter, "get_keyword_colors", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary)

proc addMemberKeywordColor*(self: CodeHighlighter; memberKeyword: String; color: Color): void =
  expandMethodBind(className CodeHighlighter, "add_member_keyword_color", 1636512886)
  methodbind.ptrcall(self, [getPtr memberKeyword, getPtr color])

proc removeMemberKeywordColor*(self: CodeHighlighter; memberKeyword: String): void =
  expandMethodBind(className CodeHighlighter, "remove_member_keyword_color", 83702148)
  methodbind.ptrcall(self, [getPtr memberKeyword])

proc hasMemberKeywordColor*(self: CodeHighlighter; memberKeyword: String): bool =
  expandMethodBind(className CodeHighlighter, "has_member_keyword_color", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr memberKeyword], addr ret)
  (addr ret).decode_result(bool)

proc getMemberKeywordColor*(self: CodeHighlighter; memberKeyword: String): Color =
  expandMethodBind(className CodeHighlighter, "get_member_keyword_color", 3855908743)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr memberKeyword], addr ret)
  (addr ret).decode_result(Color)

proc setMemberKeywordColors*(self: CodeHighlighter; memberKeyword: Dictionary): void =
  expandMethodBind(className CodeHighlighter, "set_member_keyword_colors", 4155329257)
  methodbind.ptrcall(self, [getPtr memberKeyword])

proc clearMemberKeywordColors*(self: CodeHighlighter): void =
  expandMethodBind(className CodeHighlighter, "clear_member_keyword_colors", 3218959716)
  methodbind.ptrcall(self, [])

proc getMemberKeywordColors*(self: CodeHighlighter): Dictionary =
  expandMethodBind(className CodeHighlighter, "get_member_keyword_colors", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary)

proc addColorRegion*(self: CodeHighlighter; startKey: String; endKey: String; color: Color; lineOnly: bool = false): void =
  expandMethodBind(className CodeHighlighter, "add_color_region", 2924977451)
  methodbind.ptrcall(self, [getPtr startKey, getPtr endKey, getPtr color, getPtr lineOnly])

proc removeColorRegion*(self: CodeHighlighter; startKey: String): void =
  expandMethodBind(className CodeHighlighter, "remove_color_region", 83702148)
  methodbind.ptrcall(self, [getPtr startKey])

proc hasColorRegion*(self: CodeHighlighter; startKey: String): bool =
  expandMethodBind(className CodeHighlighter, "has_color_region", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr startKey], addr ret)
  (addr ret).decode_result(bool)

proc setColorRegions*(self: CodeHighlighter; colorRegions: Dictionary): void =
  expandMethodBind(className CodeHighlighter, "set_color_regions", 4155329257)
  methodbind.ptrcall(self, [getPtr colorRegions])

proc clearColorRegions*(self: CodeHighlighter): void =
  expandMethodBind(className CodeHighlighter, "clear_color_regions", 3218959716)
  methodbind.ptrcall(self, [])

proc getColorRegions*(self: CodeHighlighter): Dictionary =
  expandMethodBind(className CodeHighlighter, "get_color_regions", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary)

proc setFunctionColor*(self: CodeHighlighter; color: Color): void =
  expandMethodBind(className CodeHighlighter, "set_function_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getFunctionColor*(self: CodeHighlighter): Color =
  expandMethodBind(className CodeHighlighter, "get_function_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setNumberColor*(self: CodeHighlighter; color: Color): void =
  expandMethodBind(className CodeHighlighter, "set_number_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getNumberColor*(self: CodeHighlighter): Color =
  expandMethodBind(className CodeHighlighter, "get_number_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setSymbolColor*(self: CodeHighlighter; color: Color): void =
  expandMethodBind(className CodeHighlighter, "set_symbol_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getSymbolColor*(self: CodeHighlighter): Color =
  expandMethodBind(className CodeHighlighter, "get_symbol_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setMemberVariableColor*(self: CodeHighlighter; color: Color): void =
  expandMethodBind(className CodeHighlighter, "set_member_variable_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getMemberVariableColor*(self: CodeHighlighter): Color =
  expandMethodBind(className CodeHighlighter, "get_member_variable_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

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

const CodeHighlighter_vmap =
  SyntaxHighlighter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CodeHighlighter]): Table[string, string] = CodeHighlighter_vmap