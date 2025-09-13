---
layout: default
title: Building & Exporting Guide
author: la.panon.
---

* TOC
{:toc}

This guide explains how to manage build settings by editing **config.nims** and how to export your project in conjunction with [gdextwiz].  
After reading this, you will be able to:

- Export gdext-nim extensions for various platforms  
- Edit and extend build settings optimized for your project  
- Define new target platforms  

For more details about [gdextwiz], see the [gdextwiz User's manual] or run `gdextwiz --help`.  
We also provide an API reference for [buildconf.nim], which is used within **config.nims**.


# Simple Build

A minimal **config.nims** looks like this:

```nim
# config.nims
import gdext/buildconf

--path: src

let setting = BuildSettings(
  name: "MyExtension",
)

configure(setting)
```

- `import gdext/buildconf`

  [buildconf.nim] is a module created to simplify build settings for gdext-nim.

- `--path: src`

  This allows you to write import classes/gdmyclass instead of import src/classes/gdmyclass in bootstrap.nim.

- `let setting = BuildSettings(`

  BuildSettings is an object that represents the build state of gdext-nim. Through this object, we pass build options to gdext-nim or retrieve options automatically set by gdext-nim.

- `name: "MyExtension"`

  Specifies the name of this extension. It will be used as the target class for exporting global functions. (See Exporting global functions)

- `configure(setting)`

  Reads the settings, applies automatic configuration, and writes them back to  setting.
  If you want to reference automatically configured options, make sure to do so after calling configure(setting).

You can build using the `gdextwiz build` or `gdextwiz build-all`. Optionally, you may specify the project path (defaults to the current directory).

```bash
gdextwiz build
```

This is almost equivalent to `nim c bootstrap.nim`, but it auto-detects bootstrap.nim.
The build output is placed under nim/lib/. For example, building MyExtension on Linux x64 will produce **libMyExtension.linux.debug.x86_64.so**.

With `gdextwiz run` or `gdextwiz run-editor`, you can build and run (or launch the editor) in one step.

# Exporting the Project

If you are not familiar with Godot’s export system, first read [Godot Docs - Exporting projects](https://docs.godotengine.org/en/stable/tutorials/export/exporting_projects.html#exporting-projects) and set up the export templates.

During development, Nim’s debug information is helpful. However, for release builds, it is common to disable it for performance. Build a release version like so:

```bash
gdextwiz build -d:target=release
```

On Linux x64, this will produce **libMyExtension.linux.release.x86_64.so**.

This release dynamic library will be used when you export the project with the [Export With Debug] option unchecked.

# Cross-Platform Builds

You can perform cross-platform builds by passing compiler arguments like `-d:platform=XXX`, `-d:arch=XXX`, or `-d:target=XXX`.
Although Nim provides flags such as `--os` and `--cpu`, do not use them. gdext-nim manages these flags internally.

## Web Build
**Godot Docs:** [Exporting for the Web](https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_web.html)

**Note:** 
Building for the web requires [emscripten].

First, download emscripten following the official [download guide](https://emscripten.org/docs/getting_started/downloads.htm).

In Godot, go to **Project** > **Export...**, open the export window, and add a Web preset.
In the **Variant** section, enable both **Extensions Support** and **Thread Support**.

![Extensions Support and Thread Support checked](https://github.com/user-attachments/assets/249d0807-cb48-4793-bb8b-1a1c9cf357d1)


Build the extension for the web like this:

```bash
gdextwiz build -d:platform=web
```

For a release build:

```bash
gdextwiz build -d:platform=web -d:target=release
```

When using the release build, remember to uncheck [Export With Debug].

After exporting the project and starting a local server from the editor, your browser will launch and load the game.

![Export and play in browser](https://github.com/user-attachments/assets/da8d8ef0-ca97-41fd-b852-38b14a920e97)

## Android Build

**Godot Docs:** [Exporting for Android](https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_android.html)

Follow the official documentation to install and set up the required tools.

You must set the **ANDROID_NDK_ROOT** or **ANDROID_SDK_ROOT** environment variable:

**ANDROID_NDK_ROOT**: Directory containing the NDK toolchain (e.g. ~/Android/Sdk/ndk/23.2.8568313)

**ANDROID_SDK_ROOT**: Directory containing the ndk folder (e.g. ~/Android/Sdk)

gdext-nim recommends installing NDK version 23.2.8568313 and setting `~/Android/Sdk/ndk/23.2.8568313` as ANDROID_NDK_ROOT.

Build for Android like this:

```bash
gdextwiz build -d:platform=android
```

By default, it targets arm64. To build for x86_64:

```bash
gdextwiz build -d:platform=android -d:arch=x86_64
```

The default API level is 21, but you can change it:

```bash
gdextwiz build -d:platform=android -d:android_api_level=22
```

After building, export for Android from the editor’s export window and install the package to your device using adb or similar tools.

# Modifying Build Settings

You can adjust build settings manually after `configure()`. For example, to modify the Web build configuration:

```nim
# config.nims
import gdext/buildconf

--path: src

let setting = BuildSettings(
  name: "MyExtension",
)

configure(setting)

case setting.platform
of web:
    --cpu: wasm32
    --cc: clang

    when buildOS == "windows":
      --clang.exe: emcc.bat
      --clang.linkerexe: emcc.bat
    else:
      --clang.exe: emcc
      --clang.linkerexe: emcc

    --passC: "-s SIDE_MODULE=1 -s SUPPORT_LONGJMP='wasm'"
    --passL: "-s SIDE_MODULE=1 -s SUPPORT_LONGJMP='wasm' -s WASM_BIGINT"
```

# Automatic .gdextension Generation

GDExtension requires a .gdextension file inside the project to load. gdext-nim generates this file automatically, but you can customize the output.

BuildSettings has two options related to .gdextension generation: **extpath** and **updateMethod**.

- **extpath**:

  Changes the path of the referenced .gdextension.

- **updateMethod**:

  Defines how .gdextension is updated: **create**, **overwrite**, or **inject**.

  - **create**: Default method. Always generates a new .gdextension, ignoring existing ones.
  - **overwrite**: Updates existing .gdextension. Overwrites duplicate keys but preserves unmanaged keys.
  - **inject**: Fills in missing values while keeping the existing file intact. Useful if you want to manage .gdextension manually.

```nim
let setting = BuildSettings(
  name: "MyExtension",
  extpath: projectDir() & "/myextension.gdextension",
  updateMethod: inject,
)
```

You can also specify .gdextension contents directly in the `configure()` block:

```nim
# config.nims
import gdext/buildconf
import std/[strformat, strutils]

--path: src

let setting = BuildSettings(
  name: "MyExtension",
)

let bin = setting.name.toLowerAscii

configure(setting):
  [libraries]
  linux.debug = &"res://nim/lib/lib{bin}.so"
  if true:
    linux.release = &"res://nim/lib/lib{bin}.release.so"
  else:
    linux.release = &"res://nim/lib/release/lib{bin}.so"

  [icons]
  MyNode = "res://icon.png"
```

In this case, your manual settings will take precedence over gdext-nim’s automatic generation.
This enables dynamic, programmable customization of .gdextension.

The output binary’s name and path are determined by pattern matching against the libraries section. Changing file paths here automatically changes the output path of your build artifacts.

[emscripten]: https://emscripten.org

{% include links.md %}
