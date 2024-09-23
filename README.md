# godot-nim/gdext

Godot GDExtension binding for Nim-lang.

For instance to use, see [demo][1].
See [wiki][2] to get more detail.

## Features

- [x] Godot 4.3 full api
- [x] Available to define&export your Class/Function/Signal/Property
- [x] Available to call engine functionalities from Nim
- [x] GLSLang-like swizzle operator (e.g. vector3.xxxyyyzzz)
- [x] Commandline-helper (see [wiki - gdextwiz][3])

### Partially working

- [x] Hot reloading

  It works, but sometimes the editor crashes.

### In preparation

- [ ] Export enums
- [ ] Assist to generate a .gdextension file
- [ ] Export descriptions
- [ ] Define/Export virtual methods
- [ ] Develop engine plugins

## Install / Uninstall

### Command line

```
# install
nimble install https://github.com/godot-nim/gdextgen

# uninstall
gdextwiz uninstall

# upgrade
gdextwiz upgrade
```
## OS supported

* Linux
* Macos

### In preparation

* Windows

  See godot-nim/gdext-nim#45.

## Dependencies

* [nim-lang/nim](https://github.com/nim-lang/nim) 2.0.0 or higher
  #### Macos
  Use Nim installed via Homebrew, not choosenim.
  Due to the execution environment of Godot itself, a native AArch64/ARM64 build of Nim is required, and that choosenim installs a x86_64 build emulated via Rosetta.

* [godotengine/godot](https://github.com/godotengine/godot) 4.3
 
  It is possible to support lower strictly by manual installation (by changing gdextgen to the corresponding version content).
  
* [godot-nim/gdextgen](https://github.com/godot-nim/gdextgen) latest

[1]: https://github.com/godot-nim/demo
[2]: https://github.com/godot-nim/gdext-nim/wiki
[3]: https://github.com/godot-nim/gdext-nim/wiki/gdextwiz
