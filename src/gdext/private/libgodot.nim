import std/[os, dynlib]

import gdext/private/gdinterface
import gdext/classes/gdgodotinstance

type t_libgodot_create_godot_instance = proc(p_argc: cint; p_argv: cstringArray; p_init_func: InitializationFunction): ObjectPtr {.cdecl.}
type t_libgodot_destroy_godot_instance = proc(p_godot_instance: ObjectPtr) {.cdecl.}

var libgodot_handle: LibHandle
var libgodot_create_godot_instance: t_libgodot_create_godot_instance
var libgodot_destroy_godot_instance: t_libgodot_destroy_godot_instance
var libgodot_loaded: bool

proc loadLibGodot*() =
  ## Load the Godot dynamic library from the specified path
  let dir = getCurrentDir()/"godot/bin"
  let path = case hostOS
    of "windows": dir/"godot.windows.editor.dev.x86_64.shared_library"
    else: dir/"libgodot.linuxbsd.editor.dev.x86_64.shared_library.so"
  if libgodot_loaded:
    raise newException(ValueError, "libgodot is already loaded")
  if libgodot_handle == nil:
    echo "Loading libgodot from: " & path
    libgodot_handle = loadLib(path)
    if libgodot_handle == nil:
      quit "Failed to load libgodot from: " & path
    libgodot_create_godot_instance = cast[t_libgodot_create_godot_instance](libgodot_handle.symAddr"libgodot_create_godot_instance")
    libgodot_destroy_godot_instance = cast[t_libgodot_destroy_godot_instance](libgodot_handle.symAddr"libgodot_destroy_godot_instance")
    libgodot_loaded = true

proc unloadLibGodot*() =
  ## Unload the Godot dynamic library
  if libgodot_loaded and libgodot_handle != nil:
    unloadLib(libgodot_handle)
    libgodot_handle = nil

proc createGodotInstance*(argc: cint; argv: cstringArray; initFunc: InitializationFunction): GodotInstance =
  echo "Creating Godot instance"
  if libgodot_create_godot_instance != nil:
    let objptr = libgodot_create_godot_instance(argc, argv, initFunc)
    return createClass[GodotInstance](objptr)
  else:
    echo "Failed to create Godot instance"
    raise newException(ValueError, "Failed to create Godot instance")

proc destroyGodotInstance*(instance: GodotInstance) =
  if libgodot_destroy_godot_instance != nil:
    libgodot_destroy_godot_instance(instance.engineInstance)
  else:
    raise newException(ValueError, "Failed to destroy Godot instance")

proc runForever*(instance: GodotInstance) =
  if instance.isNil:
    raise newException(ValueError, "Godot instance is not created")
  if not instance.isStarted:
    discard instance.start()
  while instance.iteration:
    discard
