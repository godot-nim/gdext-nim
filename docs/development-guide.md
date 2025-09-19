---
layout: default
title: Development Guide
author: la.panon.
---

* TOC
{:toc}

# 1. Introduction

## What is gdext-nim

**gdext-nim** is a project that enables the [Godot Engine](https://godotengine.org/) extension system **GDExtension** to be used from [Nim](https://nim-lang.org/).  
With this, you can call Godot APIs from Nim, leveraging Nim’s expressive power to develop extensions and game logic.

## Target Audience

- Those who already understand the basics of Nim and Godot  
  (e.g., Nim’s types and modules, Godot’s scene system and scripting)

If you are unfamiliar with either, we recommend first reading the following official documentation:

- [Nim Documentation](https://nim-lang.org/documentation.html)  
- [Godot Docs](https://docs.godotengine.org/)  

## Purpose of this Guide

This guide provides all the necessary information to get started with gdext-nim.  
It explains the core concepts, how to set up the development environment, and the development cycle with gdext-nim.  
The goal is that by the end, you will be able to create small extensions or sample projects using gdext-nim.

Afterward, depending on your interest, continue with other resources such as “Demo Projects,” “Tutorials,” “Quick Reference,” and “API Reference.”

## Terminology

- **Directory**

  Equivalent to "folder" on Windows. In this document, we use "directory" consistently.

- **Dynamic Library**

  Files such as **.so** or **.dll** that are loaded at runtime.  
  GDExtension works by having Godot load the dynamic library built with gdext-nim.

# 2. Preparing the Development Environment

## Required Tools

### Mandatory:

- **Godot**: >= 4.5.0  
- **Nim**: >= 2.0.12  
- **gdext-nim**  
- **C Compiler**  
  - Unix-like: gcc or clang  
  - Windows: MinGW  

### Optional:

- **emscripten**: For running in a web browser  
- **MinGW (cross-compilation)**: To generate Windows binaries from Linux/macOS  
- **Git (Git Bash)**: This guide assumes Bash for command examples. For Windows users not familiar with cmd or PowerShell, Git Bash is recommended.

## Installation Steps

### Installing Godot
- Download the stable release from the [official download page](https://godotengine.org/download).  
- Binaries are available for Windows/Mac/Linux.  
- You can also install via Steam or itch.io.

### Installing Nim
The simplest way is to use **choosenim**:

```bash
curl https://nim-lang.org/choosenim/init.sh -sSf | sh
choosenim stable
```

On Windows, use the [official installer](https://nim-lang.org/install_windows.html),
which sets up an environment bundled with MinGW.
(Nim depends on a C compiler, and on Windows, MinGW is the default.)

After installation, verify the version:

```bash
nim --version
# Nim Compiler Version 2.2.4 [Linux: amd64]
```

### Installing gdext-nim

You can install it via **nimble**:

```bash
nimble install gdext
```

After installation, the [gdextwiz] command becomes available. Confirm it works:

```bash
gdextwiz --help
```

# 3. Project Creation Flow

## Creating a Godot Project

Create a new project from the editor, or create an empty **project.godot** file in any directory (`touch project.godot`).

gdext-nim can also be introduced into an existing project later.
If you already have a project, you can skip this section.

## Creating a gdext-nim Extension

Move to the directory containing **project.godot**.
gdext-nim comes with a helper tool, gdextwiz, which automates extension scaffolding and builds.

Run `gdextwiz new-extension [name]` to create a new extension:

```bash
gdextwiz new-extension AwesomeExtension
```

Directory Structure (Example)

At this point, your project should look like this:

```
.
├── project.godot
├── nim
│   └── AwesomeExtension
│       ├── bootstrap.nim
│       ├── config.nims
│       └── src
│           └── classes
│               └── gdmyclass.nim
```

**bootstrap.nim**: The entry point for the gdext-nim extension.
Import your class definition files (e.g., gdmyclass.nim) here to register them with Godot.

**config.nims**: Build settings.

If you’ve used godot-cpp before, you might expect a .gdextension file.
In gdext-nim, this file is auto-generated, so it’s not necessary.
If you want to manage it manually, refer to the [Building & Exporting Guide] and adjust config.nims accordingly.

## Running a Sample

Build your first extension with:

```bash
gdextwiz build
```

A dynamic library should appear under "nim/lib/":

```diff
  .
  ├── project.godot
  ├── nim
+ │   ├── lib
+ │   │   └── libAwesomeExtension.linux.debug.x86_64.so
  │   └── AwesomeExtension
  │       ├── bootstrap.nim
  │       ├── config.nims
  │       └── src
  │           └── classes
  │               └── gdmyclass.nim
```

Next, launch the editor with:

```bash
gdextwiz editor &
```

If you can add a MyClass node, everything works!
Your Nim extension has been recognized by Godot.

Example of adding MyClass to a scene:
![add a extension node into scene](https://github.com/user-attachments/assets/91a468dd-8d37-4b1c-8022-9196b6123335)

# 4. Basic Development Cycle

The cycle is essentially:

1. Write code
2. Build
3. Check in Godot

## Writing Code

As a test, let’s make a **MyFirstNode** that prints "Hello, world!".
Create gdmyfirstnode.nim in src/classes/:

```nim
# src/classes/gdmyfirstnode.nim
import gdext
import gdext/classes/[gdNode]

type MyFirstNode* {.gdsync.} = ptr object of Node

method ready*(self: MyFirstNode) {.gdsync.} =
  print "hello, world!"
```

- `import gdext`

  Imports the gdext-nim API.

- `import gdext/classes/[gdNode]`

  Godot’s class APIs are numerous.
  To avoid long compile times, they are separated by class and must be imported individually.
  Parent classes are automatically included, so you don’t need both gdObject and gdNode.

- `type MyFirstNode* {.gdsync.} = ptr object of Node`

  Defines a new class inheriting from a Godot class, exposed to Godot.
  Don’t forget **{.gdsync.}** and **ptr object**.

- `method ready*(self: MyFirstNode) {.gdsync.} =`

  Overrides the Node’s virtual function **_ready()**.
  In Nim, leading underscores aren’t allowed, so they are omitted.
  Must use **method**, not func/proc.
  Needs **{.gdsync.}** and must take the class type as the first parameter.

Add it to bootstrap.nim:

```diff
  # bootstrap.nim
  import gdext
  import classes/gdMyClass
+ import classes/gdMyFirstNode

  GDExtensionEntryPoint
```

- `GDExtensionEntryPoint`

  The literal entry point of a gdext-nim extension.
  Handles API acquisition and registration of GDExtension types/functions.

## Building

Build the extension:

```bash
gdextwiz build
```

gdext-nim supports hot-reloading. After building, simply focus the editor, and the new library is reloaded.
If issues occur, restart the editor.

## Checking in Godot

Add **MyFirstNode** to a scene and press **F5**.
"Hello, world!" will appear in the console.

# 5. Bridging Godot and Nim

## When to Use GDScript vs Nim

Godot allows you to mix GDScript and Nim (gdext-nim).
It’s most efficient to use each where it excels.

### Best for GDScript

- Scene tree setup, node wiring, event connections
- Scripts you want to adjust directly in the editor (e.g., UI, transitions)
- Small/experimental code (good for prototyping)

### Best for Nim (gdext-nim)

- Performance-critical tasks (simulation, math, AI)
- Networking and external library integration
- Systems needing type safety and IDE support
- Reusable, engine-like logic not tied to game-specific content

> In practice: write "game logic" in GDScript, heavy work in Nim.
> You can write everything in Nim, but GDScript is more flexible for scene design.

## Benefits of gdext-nim

- Type Safety

  Nim’s type system catches mismatched arguments/returns at compile time.
  Prevents runtime errors common in GDScript.

- Performance

  Nim compiles to C, making it faster than GDScript.
  Useful for physics, AI, or handling thousands of objects.

- IDE Support

  Nim’s ecosystem (LSP, Nimble, packages) supports autocomplete, type inference, refactoring.
  Strong for large-scale/long-term projects.

- Simple Interop

  With Nim’s importc, you can directly use C/C++ libraries.
  Easy to integrate external codebases while using Godot as the engine.

## API References

gdext-nim’s API follows Godot’s official API.
Class/method names are mostly identical but follow Nim’s conventions (camelCase / PascalCase).

- [Godot Official API Docs](https://docs.godotengine.org/en/stable/classes/index.html)
- [Full API Reference]

In practice, check Godot’s docs first, then confirm with gdext-nim’s reference if needed.

# 6. A Small Practical Example

Let’s move the Godot icon with arrow keys.

Create gdcharacter.nim in src/classes/:

```nim
# src/classes/gdcharacter.nim

import gdext
import gdext/classes/[gdSprite2D, gdInput]

type Character* {.gdsync.} = ptr object of Sprite2D
  speed: float = 400
  angular_speed: float = PI


method process(self: Character; delta: float64) {.gdsync.} =
  var direction = 0
  if Input.is_action_pressed("ui_left"):
    direction = -1
  if Input.is_action_pressed("ui_right"):
    direction = 1

  self.rotation = self.rotation + self.angular_speed * direction * delta

  var velocity: Vector2
  if Input.is_action_pressed("ui_up"):
    velocity = Vector2.Up.rotated(self.rotation) * self.speed

  self.position = self.position + velocity * delta
```

Build it, add a Character node to the scene,
set its Sprite2D texture to "res://icon.png", and run.

![Godot icon moving with input](https://docs.godotengine.org/en/stable/_images/scripting_first_script_moving_with_input.gif)

# 7. Next Resources

- [Tutorial]

  Recreate Godot’s official “Dodge the Creeps!” tutorial in gdext-nim.
  Recommended if you want practical development training.

- [Quick Reference]

  Syntax dictionary for active use.
  Maps GDScript semantics to gdext-nim equivalents.
  Handy for those already familiar with GDScript.

- [Building & Exporting Guide]

  Detailed build system instructions and how to make your project distributable.

- [Full API Reference]

  Complete type/function docs.
  The bridge module pages are especially useful.

{% include links.md %}
