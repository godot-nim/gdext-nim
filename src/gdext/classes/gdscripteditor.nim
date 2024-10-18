{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdpanelcontainer; export gdpanelcontainer

proc getCurrentEditor*(self: ScriptEditor): ScriptEditorBase =
  expandMethodBind(className ScriptEditor, "get_current_editor", 1906266726)
  var ret: encoded ScriptEditorBase
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(ScriptEditorBase)

proc getOpenScriptEditors*(self: ScriptEditor): TypedArray[ScriptEditorBase] =
  expandMethodBind(className ScriptEditor, "get_open_script_editors", 3995934104)
  var ret: encoded TypedArray[ScriptEditorBase]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[ScriptEditorBase])

proc registerSyntaxHighlighter*(self: ScriptEditor; syntaxHighlighter: gdref EditorSyntaxHighlighter): void =
  expandMethodBind(className ScriptEditor, "register_syntax_highlighter", 1092774468)
  var `?param` = [getPtr syntaxHighlighter]
  methodbind.ptrcall(self, addr `?param`[0])

proc unregisterSyntaxHighlighter*(self: ScriptEditor; syntaxHighlighter: gdref EditorSyntaxHighlighter): void =
  expandMethodBind(className ScriptEditor, "unregister_syntax_highlighter", 1092774468)
  var `?param` = [getPtr syntaxHighlighter]
  methodbind.ptrcall(self, addr `?param`[0])

proc gotoLine*(self: ScriptEditor; lineNumber: int32): void =
  expandMethodBind(className ScriptEditor, "goto_line", 1286410249)
  var `?param` = [getPtr lineNumber]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCurrentScript*(self: ScriptEditor): gdref Script =
  expandMethodBind(className ScriptEditor, "get_current_script", 2146468882)
  var ret: encoded gdref Script
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Script)

proc getOpenScripts*(self: ScriptEditor): TypedArray[gdref Script] =
  expandMethodBind(className ScriptEditor, "get_open_scripts", 3995934104)
  var ret: encoded TypedArray[gdref Script]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[gdref Script])

proc openScriptCreateDialog*(self: ScriptEditor; baseName: String; basePath: String): void =
  expandMethodBind(className ScriptEditor, "open_script_create_dialog", 3186203200)
  var `?param` = [getPtr baseName, getPtr basePath]
  methodbind.ptrcall(self, addr `?param`[0])

proc gotoHelp*(self: ScriptEditor; topic: String): void =
  expandMethodBind(className ScriptEditor, "goto_help", 83702148)
  var `?param` = [getPtr topic]
  methodbind.ptrcall(self, addr `?param`[0])

const ScriptEditor_vmap =
  PanelContainer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ScriptEditor]): Table[string, string] = ScriptEditor_vmap

proc editorScriptChanged*(self: ScriptEditor; script: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("editor_script_changed")
  let args = [script]
  self.emitSignal(signalname, args)

proc scriptClose*(self: ScriptEditor; script: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("script_close")
  let args = [script]
  self.emitSignal(signalname, args)