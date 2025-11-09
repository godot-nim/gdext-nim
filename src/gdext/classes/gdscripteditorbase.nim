{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvboxcontainer; export gdvboxcontainer

expandOnClassImported(ScriptEditorBase, VBoxContainer)

proc getBaseEditor*(self: ScriptEditorBase): Control =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptEditorBase, "get_base_editor", 2783021301)
  methodbind.ptrcall(self, [], Control)

proc addSyntaxHighlighter*(self: ScriptEditorBase; highlighter: gdref EditorSyntaxHighlighter): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ScriptEditorBase, "add_syntax_highlighter", 1092774468)
  methodbind.ptrcall(self, [getPtr highlighter], void)
