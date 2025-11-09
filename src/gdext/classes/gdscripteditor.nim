{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdpanelcontainer; export gdpanelcontainer

expandOnClassImported(ScriptEditor, PanelContainer)

proc getCurrentEditor*(self: ScriptEditor): ScriptEditorBase =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptEditor, "get_current_editor", 1906266726)
  methodbind.ptrcall(self, [], ScriptEditorBase)

proc getOpenScriptEditors*(self: ScriptEditor): TypedArray[ScriptEditorBase] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptEditor, "get_open_script_editors", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[ScriptEditorBase])

proc getBreakpoints*(self: ScriptEditor): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptEditor, "get_breakpoints", 2981934095)
  methodbind.ptrcall(self, [], PackedStringArray)

proc registerSyntaxHighlighter*(self: ScriptEditor; syntaxHighlighter: gdref EditorSyntaxHighlighter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptEditor, "register_syntax_highlighter", 1092774468)
  methodbind.ptrcall(self, [getPtr syntaxHighlighter], void)

proc unregisterSyntaxHighlighter*(self: ScriptEditor; syntaxHighlighter: gdref EditorSyntaxHighlighter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptEditor, "unregister_syntax_highlighter", 1092774468)
  methodbind.ptrcall(self, [getPtr syntaxHighlighter], void)

proc gotoLine*(self: ScriptEditor; lineNumber: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptEditor, "goto_line", 1286410249)
  methodbind.ptrcall(self, [getPtr lineNumber], void)

proc getCurrentScript*(self: ScriptEditor): gdref Script =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptEditor, "get_current_script", 2146468882)
  methodbind.ptrcall(self, [], gdref Script)

proc getOpenScripts*(self: ScriptEditor): TypedArray[gdref Script] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptEditor, "get_open_scripts", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[gdref Script])

proc openScriptCreateDialog*(self: ScriptEditor; baseName: String; basePath: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptEditor, "open_script_create_dialog", 3186203200)
  methodbind.ptrcall(self, [getPtr baseName, getPtr basePath], void)

proc gotoHelp*(self: ScriptEditor; topic: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptEditor, "goto_help", 83702148)
  methodbind.ptrcall(self, [getPtr topic], void)

proc updateDocsFromScript*(self: ScriptEditor; script: gdref Script): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptEditor, "update_docs_from_script", 3657522847)
  methodbind.ptrcall(self, [getPtr script], void)

proc clearDocsFromScript*(self: ScriptEditor; script: gdref Script): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptEditor, "clear_docs_from_script", 3657522847)
  methodbind.ptrcall(self, [getPtr script], void)
