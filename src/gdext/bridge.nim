import std/sets

import gdext/private/gdinterface
import gdext/private/internalbridge
import gdext/private/staticevents
import gdext/private/macros
import gdext/private/userclass/procs
import gdext/private/userclass/signals
import gdext/private/userclass/virtuals
import gdext/builtinindex
import gdext/stringtools
import gdext/appearances

template name*(newname: static string) {.pragma.} ## Attaching it to a function along with gdsync allows to alias to the registered function.
## ```nim
## proc myCallback(self: MyClass; value: Int) {.gdsync, name:　"_my_callback".} =
##   print "hi! the value is: ", value, "!"
## ```

template signal* {.pragma.} ## With gdsync, register a function as a signal. Thereafter, calling the function will emit the associated signal.
## ```nim
## proc mySignal(self: MyClass; value: Int): Error {.gdsync, signal.}
## assert self.signal("mySignal").connect("_my_callback") == 0
## assert self.mySignal(10) == ok
## # stdout: hi! the value is 10!
## ```

template initLevel*(level: InitializationLevel) {.pragma.} ## With gdsync, changes the order in which class information is registered.
## ```nim
## type MyServer {.gdsync, initLevel: Initialization_servers.} = ptr object of Object
## ```

template description*(desc: string) {.pragma.} ## By attaching it to a class, property, or function, you can add a description to the appropriate section of the editor help.
## ```nim
## type MyClass {.gdsync, description: "Temporary class to describe bridge functionalities".} = ptr object of Node
##   myProperty* {.gdexport, description: "A property description".}: String
## 
## proc myFunc*(self: MyClass) {.gdsync, description: "A function description".}: String =
##   "hello, world!"
## 
## proc myFunc2*{.self: MyClass) {.gdsync.}: String =
##   ## Only for functions, this style of description is also available.
##   "hello, world!"
## ```

template tool* {.pragma.} ## Register the class as a tool class so that processing will be executed even while the editor is running.
## ```nim
## type MyTool {.gdsync, tool.} = ptr object of Node
## method ready(self: MyTool) {.gdsync.} =
##   if Engine.isEditorHint:
##     print "You are in the editor."
##   else:
##     print "You are executing the app."
## ```

template icon*(icon_path: string) {.pragma.} ## Specify the class icon on the editor by path.
## ```nim
## type MyIconClass {.gdsync, icon: "res://icon.png".} = ptr object of Node
## ```

template singleton* {.pragma.}
  ## Register the class as a singleton.
  ## You can refer the unique instance of it as same as Godot's singletons e.g. Input.
  ## ```nim
  ## type MySingleton {.gdsync, singleton.} = ptr object of Object
  ## ```

var Initialization_Default* {.compileTime.} = Initialization_Scene

proc toLevel(node: NimNode): InitializationLevel =
  if node.isNil:
    Initialization_Default
  elif node.eqIdent "Initialization_Core":
    Initialization_Core
  elif node.eqIdent "Initialization_Servers":
    Initialization_Servers
  elif node.eqIdent "Initialization_Scene":
    Initialization_Scene
  elif node.eqIdent "Initialization_Editor":
    Initialization_Editor
  else:
    Initialization_Default

macro gdsync*(body): untyped =
  ## The role of the {.gdsync.} pragma, as can be inferred from its name, is to communicate and synchronize the data to which the pragma is attached to the engine. Attaching this pragma makes it visible to scripts or be called as a callback, and so on.
  ## 
  ## The {.gdsync.} pragma can be attached to the following places:
  ## 
  ## ### Class definition
  ## Expose the class to the engine so it can be treated like a built-in class like Node or Resource.
  ## ```nim
  ## type MyNode {.gdsync.} = ptr object of Node
  ## ```
  ## 
  ## ### Procedure definition / Method overriding
  ## see `Your Node Class <https://github.com/godot-nim/gdext-nim/wiki/Coding-Quick-Guide#your-node-class>`_
  ## ```nim
  ## proc myProc (self: MyNode) {.gdsync.} = print "Hello, GDExtension! from myProc"
  ## method ready (self: MyNode) {.gdsync.} = print "Hello, GDExtension! from ready"
  ## ```
  ## 
  ## ### Signal definition
  ## see `Signals <https://github.com/godot-nim/gdext-nim/wiki/Coding-Quick-Guide#signals>`_
  ## ```nim
  ## proc mySignal (self: MyNode): Error {.gdsync, signal.}
  ## ```
  ## 
  ## ### Virtual method definition
  ## see `Virtual methods <https://github.com/godot-nim/gdext-nim/wiki/Coding-Quick-Guide#signals>`_
  ## ```nim
  ## proc myMethod (self: MyNode) {.gdsync, base.} = printerr "Override please!"
  ## ```
  case body.kind
  of nnkMethodDef:
    if body.body.kind == nnkEmpty: # forward declaration
      hint "{.gdsync.} is not required for forward declarations.", body
      body
    elif body.name.eqIdent "onInit": # forward declaration
      hint "{.gdsync.} is not required for onInit.", body
      body
    elif body.hasPragma("base"):
      sync_virtualDef(body)
    else:
      sync_methodDef(body)
  of nnkProcDef, nnkConverterDef, nnkFuncDef:
    if body.isSignal:
      sync_signal(body)
    elif body.body.kind == nnkEmpty: # forward declaration
      hint "{.gdsync.} is not required for forward declarations.", body
      body
    else:
      sync_procDef(body)
  of nnkTypeDef:
    let level = body.getPragmaVal("initLevel").toLevel
    implicitRegistrations[level].add body.typesym
    if body.hasPragma("singleton"):
      implicitRegistrationSingletons.add body.typesym
    body
  else:
    hint "gdsync for " & ($body.kind)[3..^1] & " is not defined; gdsync will do nothing."
    body

proc registerEnumField(className, enumName, fieldName: StringName; value: Int; isBitField: bool) =
  ClassDB.registerExtensionClassIntegerConstant(className, enumName, fieldName, value, isBitField)

proc registerEnumFields(className, enumName: StringName; fields: varargs[tuple[name: StringName; value: Int]]; isBitField: bool) =
  for name, value in fields.items:
    registerEnumField(className, enumName, name, value, isBitField)

template registerEnumFields[T: SomeUserClass](Class: typedesc[T]; enumName: StringName; fields: varargs[tuple[name: StringName; value: Int]]; isBitField: bool) =
  registerEnumFields(className Class, enumName, fields, isBitField)

var registeredEnums {.compileTime.}: HashSet[string]

macro registerEnumInternal(Class, Enum; isBitField: static bool) =
  let Enum = Enum.getTypeInst
  let def = Enum.getImpl
  let enumType = Enum.getTypeInst
  let enumTypeStr = $enumType.toStrLit
  let enumName = newLit $Enum

  if registeredEnums.contains enumTypeStr: return newStmtList()

  let call = bindSym"registerEnumFields".newCall(
    Class,
    bindSym"newStringName".newCall enumName,
  )
  for field in def[2][1..^1]:
    let fieldsym = case field.kind
    of nnkEnumFieldDef: field[0]
    of nnkSym: field
    else: field
    let fieldName = newlit $fieldsym
    call.add case isBitField
    of true:
      quote do: (newStringName `fieldName`, Int 1 shl int `fieldsym`)
    of false:
      quote do: (newStringName `fieldName`, Int `fieldsym`)

  call.add newlit isBitField
  result = quote do:
    template EnumOwner*(_: typedesc[`enumType`]): typedesc = `Class`
    proc `enumType` {.execon: Contract[`Class`].enums.} =
      `call`
  registeredEnums.incl enumTypeStr

template `bind`*[T: SomeUserClass; E: enum](Class: typedesc[T]; Enum: typedesc[E]) =
  ## Binds `Enum` to `Class` and tells the engine about it.
  ## This causes the engine to treat the `Enum` as belonging to the `Class`.
  ## ```nim
  ## type TestEnum* = enum # Values in Editor:
  ##   TestEnumA      # TestNode.TestEnumA = 0
  ##   TestEnumB = 2  # TestNode.TestEnumB = 2
  ##   TestEnumC      # TestNode.TestEnumC = 3
  ## MyClass.bind TestEnum
  ## ```
  registerEnumInternal(Class, E, false)

template `bind`*[T: SomeUserClass; E: enum](Class: typedesc[T]; Flags: typedesc[set[E]]) =
  ## Binds `set[Enum]` to `Class` and tells the engine about it.
  ## This causes the engine to treat the `Enum` is bitfields and it as belonging to the `Class`.
  ## ```nim
  ## type TestFlags* = enum # Values in Editor:
  ##   TestFlagA      # TestNode.TestFlagA = 1 (1 << 0)
  ##   TestFlagB = 2  # TestNode.TestFlagB = 4 (1 << 2)
  ##   TestFlagC      # TestNode.TestFlagC = 8 (1 << 3)
  ## MyClass.bind TestFlags
  ## ```
  ## If you want to use the `Enum` as a sets, at properties, arguments and return-value, bind it as `set[Enum]`.
  ## ```nim
  ## assert cast[int]({TestFlagA, TestFlagB, TestFlagC}) == (1 or 4 or 8)
  ## ```
  registerEnumInternal(Class, E, true)

template `bind`*[E: enum](Enum: typedesc[E]) =
  ## Same as `ExtensionMain.bind Enum`. ExtensionMain is a special sigleton class that names by config.nims
  registerEnumInternal(ExtensionMain, E, false)

template `bind`*[E: enum](Flags: typedesc[set[E]]) =
  ## Same as `ExtensionMain.bind Flags`. ExtensionMain is a special sigleton class that names by config.nims
  registerEnumInternal(Extensionmain, E, true)

macro gdname(P: proc): string = P.getPragmaVal("name") or newLit $P

template gdexport*() {.pragma.} ## Exposes a member variable to the engine as a property.
## ```nim
## type MyResource* {.gdsync.} = ptr object of Resource
##   data* {.gdexport.}: PackedVector2Array
## ```
template gdexport*(appearance: Appearance) {.pragma.} ## Exposes a member variable to the engine as a property.
## It receives Appearance.
## ```nim
## type Weapon* {.gdsync.} = ptr object of Node3D
##   description* {.gdexport: Appearance.multiline.}: string
## ```

template gdexport*[T: SomeUserClass](
      name: string;
      appearance = default(Appearance);
    ): untyped =
  ## Registers non-entity properties such as groups and categories.
  ## ```nim
  ## gdexport[Actor] "Base Params", Appearance.category
  ## ```
  proc `name` {.execon: Contract[T].property.} =
    gdexport_internal(propertyInfo(newStringName name, appearance), className typedesc T)

template gdexport*(
      name: string;
      typ: typedesc[SomeUserClass];
      proptyp: typedesc[SomeProperty];
      getter, setter: StringName;
      appearance = default(Appearance);
      description = "";
    ): untyped =
  ## Register virtual properties using your own defined getters and setters.
  ## ```nim
  ## proc get_power(self: Actor): Int {.gdsync.} = self.weapon.atk + self.atk
  ## proc set_power(self: Actor; value: Int) {.gdsync.} = self.atk = max(0, (value - self.weapon.atk))
  ## gdexport "power", Actor, Int, "get_power", "set_power"
  ## ```
  proc `name` {.execon: Contract[`typ`].property.} =
    gdexport_internal(name, typ, proptyp, getter, setter, appearance, description)


macro gdexport[T: SomeUserClass; P: SomeProperty](
      name: static string;
      typ: typedesc[T];
      proptyp: typedesc[P];
      getter: proc(self: T): P;
      setter: proc(self: T; value: P);
      appearance = default(Appearance);
      description: string = "";
    ): untyped =
  result = newStmtList()
  let
    gettersym =
      if getter.kind == nnkLambda: genSym(nskProc, "get_" & name)
      else: getter
    settersym =
      if setter.kind == nnkLambda: genSym(nskProc, "set_" & name)
      else: setter

  if getter.kind == nnkLambda:
    let getterdef = nnkProcDef.newTree(gettersym).add(getter[1..^1])
    result.add getterdef
    result.add quote do:
      registerProc(`getterdef`)

  if setter.kind == nnkLambda:
    let setterdef = nnkProcDef.newTree(settersym).add(setter[1..^1])
    result.add setterdef
    result.add quote do:
      registerProc(`settersym`)

  result.add quote do:
    proc `name` {.execon: Contract[`typ`].property.} =
      gdexport_internal(`name`, typedesc `typ`, typedesc `proptyp`,
        `gettersym`.gdname, `settersym`.gdname, `appearance`, `description`)

template gdexport*[T: SomeUserClass; P: SomeProperty](
      name: static string;
      getter: proc(self: T): P;
      setter: proc(self: T; value: P);
      appearance = default(Appearance);
      description = "";
    ): untyped =
  ## Register virtual properties using your own defined getters and setters.
  ## ```nim
  ## proc set_power(self: Actor; value: Int) {.gdsync.} = self.atk = max(0, (value - self.weapon.atk))
  ## gdexport "power",
  ##   proc(self: Actor): Int = self.weapon.atk + self.atk,
  ##   set_power
  ## ```
  gdexport(name, typedesc T, typedesc P, getter, setter, appearance, description)


macro gdexport*(
      name: static string;
      iden: typed;
      appearance = default(Appearance);
      description = "";
    ): untyped =
  ## Exposes a member variable to the engine as a property.
  ## ```nim
  ## type MyResource* {.gdsync.} = ptr object of Resource
  ##   data: PackedVector2Array
  ## gdexport "positions", MyResource.data
  ## ```
  let classType = iden[0]
  let variable = iden[1]
  let getter = quote do:
    proc(self: `classType`): `iden` = self.`variable`
  let setter = quote do:
    proc(self: `classType`, value: `iden`) = self.`variable` = value
  quote do:
    gdexport(`name`, typedesc `classType`, typedesc `iden`, `getter`, `setter`, `appearance`, `description`)

macro gdexport*(
      iden: typed;
      appearance = default(Appearance);
      description = "";
    ): untyped =
  ## Exposes a member variable to the engine as a property.
  ## ```nim
  ## type MyResource* {.gdsync.} = ptr object of Resource
  ##   data: PackedVector2Array
  ## gdexport MyResource.data
  ## ```
  let name = $iden[1]
  quote do:
    gdexport(`name`, `iden`, `appearance`, `description`)
