import gdext/private/gdinterface
import gdext/private/internalbridge

import gdext/core/userclass/procs
import gdext/core/userclass/signals
import gdext/core/userclass/virtuals

import gdext/private/macros

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
    body
  else:
    hint "gdsync for " & ($body.kind)[3..^1] & " is not defined; gdsync will do nothing."
    body
