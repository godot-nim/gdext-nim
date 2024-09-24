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

### install

```
nimble install https://github.com/godot-nim/gdextgen@#4.3
```

### uninstall

```
gdextwiz uninstall
```

### upgrade

```
gdextwiz upgrade
```

## OS supported

- [x] Linux
- [x] Macos
- [x] Windows

## Dependencies

* [nim-lang/nim](https://github.com/nim-lang/nim) 2.0.0 or higher
  #### Macos
  Use Nim installed via Homebrew, not choosenim.
  Due to the execution environment of Godot itself, a native AArch64/ARM64 build of Nim is required, and that choosenim installs a x86_64 build emulated via Rosetta.

* [godotengine/godot](https://github.com/godotengine/godot) 4.1.0 or higher
  
* [godot-nim/gdextgen](https://github.com/godot-nim/gdextgen) latest

#### Windows (Optional)

The mingw gcc bundled with Nim is not compatible with the godot engine. If it does not work, try one of the options.

* [LLVM-MinGW][4]

  Unzip llvm-mingw-YYYYMMDD-ucrt-x86_64.zip from [releases][5] and add bin to PATH.

  And then, add `--cc: clang` to your `config.nims`.

* [Build Tools for Visual Studio 2022][6]

  Please install Build Tools for Visual Studio 2022 from here: https://aka.ms/vs/17/release/vs_BuildTools.exe.
  Be sure that [Desktop development with C++] is checked.

  Then next, add the path to cl to the PATH variable.
  The path will be probably that: `C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.36.32532\bin\HostX64\x64`

  Finally, add `--cc: vcc` to your `config.nims`.

[1]: https://github.com/godot-nim/demo
[2]: https://github.com/godot-nim/gdext-nim/wiki
[3]: https://github.com/godot-nim/gdext-nim/wiki/gdextwiz
[4]: https://www.mingw-w64.org/downloads/#llvm-mingw
[5]: https://github.com/mstorsjo/llvm-mingw/releases
[6]: https://visualstudio.microsoft.com/downloads/
