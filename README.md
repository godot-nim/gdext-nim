<div align="center">

  # <img src="https://raw.githubusercontent.com/nim-lang/assets/master/Art/logo-crown.png" height="28px"/> godot-nim/gdext

  Nim for GDExtension. A pure library and a CLI tool.  
  <a href="https://github.com/godot-nim/gdext-nim">
    <img src="nimble.svg" height="24">
  </a>

</div>

---

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
* Nim: 2.0.0, 2.0.14, 2.2.0, 2.2.2
* CC: gcc version 14.2.1 20240910 (GCC)

---

<div align="center">

## Project guides

| | |
|-|-|
| Q. How does this library work for instance? | See [demo][1] repository. Several runnable examples are available. |
| Q. What does this syntax mean? How can I do it? | Refer our [Wiki][2], especially [Coding Quick Guide][4]. |
| Q. Where can I ask my questions?<br> Q. Where can I share my work or get feedbacks? | Welcome to our [Discussions][5]. Any github user can participate.<br> Let's start with [New discussion]. |
| Q. I have a feature request! | Please tell us in [Discussions/Ideas][6]. |
| Q. I'd like to join the dev-team! | Let us know in [Discussions][5] or [Invitation Request][7].<br> We will send you an email invitation. |

</div>

[1]: https://github.com/godot-nim/demo
[2]: https://github.com/godot-nim/gdext-nim/wiki
[3]: https://github.com/godot-nim/gdext-nim/wiki/gdextwiz
[4]: https://github.com/godot-nim/gdext-nim/wiki/Coding-Quick-Guide
[5]: https://github.com/godot-nim/gdext-nim/discussions
[6]: https://github.com/godot-nim/gdext-nim/discussions/categories/ideas
[7]: https://github.com/godot-nim/.github/issues/5
