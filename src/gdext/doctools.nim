import gdext/buildconf

when Assistance.genEditorHelp:
  import gdext/gdinterface/objects
  import gdext/gen/builtinclasses

  import std/[strformat, strutils, tables]

  const DocHeader = """<?xml version="1.0" encoding="UTF-8" ?>
  """
  var NoNamespaceSchemaLocation* = "https://raw.githubusercontent.com/godotengine/godot/master/doc/class.xsd"

  type
    DocClass* = object
      briefDescription*: string
      description*: string
      tutorials*: string
      methods*: seq[DocMethod]
      members*: seq[DocMember]
      signals*: seq[DocSignal]
      constants*: seq[DocConstant]
    DocMethod* = object
      name*: string
      description*: string
    DocMember* = object
      name*: string
      typ*: string
      description*: string
    DocSignal* = object
      name*: string
      description*: string
    DocConstant* = object
      name*: string
      description*: string


  type DocClassDB = Table[StringName, DocClass]
  var docClassDB*: DocClassDB

  proc `[]=`*(table: var DocClassDB; typ: typedesc; value: sink DocClass) =
    table[className typ] = value

  proc `[]`*(table: var DocClassDB; key: StringName): var DocClass =
    table.mgetOrPut(key, DocClass())
  proc `[]`*(table: var DocClassDB; typ: typedesc): var DocClass =
    table.mgetOrPut(className typ, DocClass())


  proc render*(tag, name, description: string; result: var string) =
    result.add &"""
  <{tag} name="{name}">
  <description>
  {description}
  </description>
  </{tag}>
  """
  proc render*(doc: DocMethod; result: var string) =
    render("method", doc.name, doc.description, result)
  proc render*(doc: DocMember; result: var string) =
    result.add &"""
  <member name="{doc.name}" type="{doc.typ}">
  {doc.description}
  </member>
  """
  proc render*(doc: DocSignal; result: var string) =
    render("signal", doc.name, doc.description, result)
  proc render*(doc: DocConstant; result: var string) =
    render("constant", doc.name, doc.description, result)

  proc render(doc: seq; tag: string; result: var string) =
    result.add &"<{tag}>\n"
    for elem in doc:
      elem.render(result)
    result.add &"</{tag}>\n"

  proc render(doc: seq[DocMethod]; result: var string) =
    doc.render("methods", result)
  proc render(doc: seq[DocMember]; result: var string) =
    doc.render("members", result)
  proc render(doc: seq[DocSignal]; result: var string) =
    doc.render("signals", result)
  proc render(doc: seq[DocConstant]; result: var string) =
    doc.render("constants", result)


  proc render*(doc: DocClass; name: StringName; result: var string) =
    result.add &"""
  <class name="{name}" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="{NoNamespaceSchemaLocation}">
  <brief_description>
  {doc.briefDescription}
  </brief_description>
  <description>
  {doc.description}
  </description>
  <tutorials>
  {doc.tutorials}
  </tutorials>
  """
    doc.methods.render(result)
    doc.members.render(result)
    doc.signals.render(result)
    doc.constants.render(result)

    result.add "</class>\n"

proc descToEditorHelp*(str: string): string =
  str.replace("\n", "[br]")

proc generateEditorHelp*() =
  var doctext = DocHeader
  for key, class in docClassDB.mpairs:
    class.render(key, doctext)
  interfaceEditorHelpLoadXmlFromUtf8Chars(cstring doctext)
  clear docClassDB
