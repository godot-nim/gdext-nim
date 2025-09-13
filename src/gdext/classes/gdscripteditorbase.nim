{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvboxcontainer; export gdvboxcontainer

expandOnClassImported(ScriptEditorBase, VBoxContainer)

proc getBaseEditor*(self: ScriptEditorBase): Control =
  expandMethodBind(className ScriptEditorBase, "get_base_editor", 2783021301)
  var ret: encoded Control
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Control)

proc addSyntaxHighlighter*(self: ScriptEditorBase; highlighter: gdref EditorSyntaxHighlighter): void =
  expandMethodBind(className ScriptEditorBase, "add_syntax_highlighter", 1092774468)
  methodbind.ptrcall(self, [getPtr highlighter])
