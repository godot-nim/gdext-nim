## Nim for GDExtension. A pure library and a CLI tool.
##
## With this library, all the features of the Godot engine can be used from Nim.

## Modules
## =======
## The following modules are automatically imported by gdext. There is no need to import them explicitly.
## 
## * `buildconf <gdext/buildconf.html>`_: It's required to build GDExtension. You **must** import it from your project's config.nims.
## * `bridge <gdext/bridge.html>`_: Core functionalities of gdext
## * `appearances <gdext/appearances.html>`_: Appearance of properties on the editor inspector
## * `objectcallbacks <gdext/objectcallbacks.html>`_: Object callbacks called by the engine
## * `builtinindex <gdext/builtinindex.html>`_: All type-defs provided by the engine
## * `objecttools <gdext/objecttools.html>`_: Handling Object, RefCounted and Node
## * `varianttools <gdext/varianttools.html>`_: Handling Variant
## * `stringtools <gdext/stringtools.html>`_: Handling String, StringName and NodePath
## * `arraytools <gdext/arraytools.html>`_: Handling Array, TypedArray and PackedArray
## * `dicttools <gdext/dicttools.html>`_: Handling Dictionary
## * `othertools <gdext/othertools.html>`_: Handling other engine-builtins (RID, Callable and Signal)
## * `colortools <gdext/colortools.html>`_: Handling Color + color pallet
## * `math <gdext/math.html>`_: Mathematical (geometrical) functions
## * `swizzles <gdext/swizzles.html>`_: GLSLang-like swizzling operator
## * `utilityfuncs <gdext/utilityfuncs.html>`_: Printing functions + misc
## * `conversions <gdext/conversions.html>`_: Utility converters to make easier to convert types
## * `dollars <gdext/dollars.html>`_: `$` for all engine-builtins
## * `nameformats <gdext/nameformats.html>`_: Provides formatter functions for transforming Nim identifiers when exporting them to Godot.

{.warning[UnusedImport]: off.}

import gdext/private/gdinterface

import gdext/private/buildsettings
export BuildSettings, Platform, Target, Architecture

import gdext/private/staticevents
export staticevents.execon, staticevents.expandEvent
export # for backward compatibility
  initialize_core, initialize_servers, initialize_scene, initialize_editor,
  eliminate_core, eliminate_servers, eliminate_scene, eliminate_editor

import gdext/private/internalbridge
export internalbridge.register

import gdext/private/native
export InitializationLevel, VariantType, gdcall

import gdext/private/typeshift
export typeshift.get, typeshift.variant

import gdext/builtinindex; export builtinindex
import gdext/bridge; export bridge
import gdext/appearances; export appearances
import gdext/math; export math
import gdext/swizzles; export swizzles
import gdext/objectcallbacks; export objectcallbacks
import gdext/objecttools; export objecttools
import gdext/varianttools; export varianttools
import gdext/stringtools; export stringtools
import gdext/dicttools; export dicttools
import gdext/arraytools; export arraytools
import gdext/colortools; export colortools
import gdext/othertools; export othertools
import gdext/utilityfuncs; export utilityfuncs
import gdext/conversions; export conversions
import gdext/dollars; export dollars

import gdext/classes/[gdengine]
export gdengine.isEditorHint
import gdext/extclasses/[gdextensionmain]
export gdextensionmain.ExtensionMain, gdextensionmain.extmain

when Assistance.genEditorHelp:
  import gdext/private/doctools

template GDExtension_EntryPoint*: untyped =
  ## Responds to initialization requests by Godot and performs extension initialization, such as loading functions and registering classes.
  bind expandEvent
  proc load_builtinclassConstructor {.expandEvent: staticevents.init_engine.on_load_builtinclassConstructor.}
  proc load_builtinclassOperator {.expandEvent: staticevents.init_engine.on_load_builtinclassOperator.}
  proc load_builtinclassMethod {.expandEvent: staticevents.init_engine.on_load_builtinclassMethod.}
  proc exec_initialize_core {.expandEvent: initialize_core.}
  proc exec_initialize_servers {.expandEvent: initialize_servers.}
  proc exec_initialize_scene {.expandEvent: initialize_scene.}
  proc exec_initialize_editor {.expandEvent: initialize_editor.}
  proc exec_eliminate_core {.expandEvent: eliminate_core.}
  proc exec_eliminate_servers {.expandEvent: eliminate_servers.}
  proc exec_eliminate_scene {.expandEvent: eliminate_scene.}
  proc exec_eliminate_editor {.expandEvent: eliminate_editor.}

  {.emit: "N_LIB_EXPORT N_CDECL(void, NimMain)(void);".}
  proc initializer(userdata: pointer; p_level: InitializationLevel) {.gdcall.} = errproof:
    case p_level
    # almost all uses is to register user-defined classes
    of Initialization_Core:
      exec_initialize_core()
      registerImplicitly(Initialization_Core)
    of Initialization_Servers:
      exec_initialize_servers()
      registerImplicitly(Initialization_Servers)
    of Initialization_Scene:
      initializeExtensionMain()
      exec_initialize_scene()
      registerImplicitly(Initialization_Scene)
    of Initialization_Editor:
      exec_initialize_editor()
      registerImplicitly(Initialization_Editor)
      {.emit: "NimMain();".}
      when Assistance.genEditorHelp:
        doctools.generateEditorHelp()

  proc deinitializer(userdata: pointer; p_level: InitializationLevel) {.gdcall.} = errproof:
    case p_level
    # almost all uses is to register user-defined classes
    of Initialization_Core:
      exec_eliminate_core()
    of Initialization_Servers:
      exec_eliminate_servers()
    of Initialization_Scene:
      exec_eliminate_scene()
      eliminateExtensionMain()
    of Initialization_Editor:
      exec_eliminate_editor()
      unregisterAll()

  proc entryPoint(p_get_proc_address: InterfaceGetProcAddress; p_library: ClassLibraryPtr; r_initialization: ptr Initialization): Bool {.gdcall, exportc: Extension.entrySymbol, dynlib.} = once:
    try:
      gdinterface.init(
        p_getProcAddress,
        p_library)

      r_initialization.initialize = initializer
      r_initialization.deinitialize = deinitializer
      r_initialization.minimum_initialization_level = Initialization_Scene

      utilityfuncs.load()

      load_builtinclassConstructor()
      load_builtinclassOperator()
      load_builtinclassMethod()

      return true

    except:
      echo "FATAL ERROR: failed to initialize library."
      echo $getCurrentException()
      return false

when defined(docgen):
  import gdext/buildconf

when isMainModule:
  GDExtension_EntryPoint
