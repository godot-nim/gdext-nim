<div align="center">

  # godot-nim/gdext

  Nim for GDExtension. A pure library and a CLI tool.

  <a href="https://github.com/nim-lang/nim">
    <img src="https://github.com/Ethosa/open-source-badges/blob/master/badges/Languages/Nim/Nim-lang.svg" height="24">
  </a>
  </br>
  <a href="https://github.com/godot-nim/gdext-nim">
    <img src="nimble.svg" height="24">
  </a>

</div>

---

For instance to use, see [demo][1].
See [wiki][2] to get more detail.

> [!NOTE]
> This library is not yet stable. If you encounter any problems in practical use, we encourage you to consider to create an Issue, as it is most likely on the library side. Either way, we will try to help.

## Features

- [x] All classes and methods provided by the engine are available from Nim.
- [x] New extension classes can be defined that inherit from the engine class and exposed to editors and GDScript.
- [x] New methods, signals, properties, and enums can be defined in your extension classes and exposed.
- [x] New virtual functions can be defined and exposed, and overridden from both Nim and GDScript.
- [x] Recompiled GDExtension can be loaded without restarting the editor. (Hot Reloading)
- [x] Arithmetic operations such as Vector are more expressive than those in Godot, for example, GLSLang's swizzle operation is also available.
- [x] It has a CLI tool that allows you to create new extensions, compile, run projects, and so on from a unified interface. (see [wiki - gdextwiz][3])

## Limitation

- [ ] Document comments left in Nim source are not reflected in the editor.
- [ ] Editor plug-ins cannot be created using only pure Nim code.
- [ ] Due to engine specifications, Nim code works in the form of calls from the engine; it is not possible to run Nim stand-alone.

## Commands

### install

```
nimble install gdext
```

### uninstall

```
nimble uninstall gdext
```

### upgrade

```
nimble uninstall gdext && nimble install gdext
```

## Supported environments

### OS

- [x] Linux
- [x] Macos
- [x] Windows

### Engine

- [x] [godotengine/godot](https://github.com/godotengine/godot) 4.3.0

### Nim compiler

* [nim-lang/nim](https://github.com/nim-lang/nim) 2.0.0 or higher
  #### Macos
  Use Nim installed via Homebrew, not choosenim.
  Due to the execution environment of Godot itself, a native AArch64/ARM64 build of Nim is required, and that choosenim installs a x86_64 build emulated via Rosetta.

## Tested by author

> [!NOTE]
> Support for environments not listed here is based on your reports. Please consider contributing.

* OS: Linux (Arch)
* Engine: Godot 4.3.stable.arch_linux
* Nim: 2.0.0, 2.0.12, 2.2.0
* CC: gcc version 14.2.1 20240910 (GCC)

[1]: https://github.com/godot-nim/demo
[2]: https://github.com/godot-nim/gdext-nim/wiki
[3]: https://github.com/godot-nim/gdext-nim/wiki/gdextwiz
