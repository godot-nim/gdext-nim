<div align="center">

  # <img src="https://raw.githubusercontent.com/nim-lang/assets/master/Art/logo-crown.png" height="28px"/> godot-nim/gdext

  Nim for GDExtension — a pure library and CLI tool.
  
  <a href="https://github.com/godot-nim/gdext-nim">
    <img src="nimble.svg" height="24">
  </a>

   [Documentation][9] | [Coding Guide][4] | [Tutorial] | [Examples][1] | Templates | [Forum][5] | [Source][8] | [Architecture]

</div>

---

## Quick start

```shell
nimble install gdext
mkdir testproject && cd $_
touch project.godot
gdextwiz new-extension MyExtension
gdextwiz run
```

## Features

- [x] Access all classes and methods provided by the engine directly from Nim.
- [x] Define new extension classes that inherit from engine classes and expose them to the editor and GDScript.
- [x] Add new methods, signals, properties, and enums to your extension classes and expose them as needed.
- [x] Define and expose virtual functions, which can be overridden in both Nim and GDScript.
- [x] Reload recompiled GDExtensions without restarting the editor (Hot Reloading).
- [x] More expressive arithmetic operations (e.g., vectors) than Godot’s defaults — GLSLang-style swizzling is also supported.
- [x] Includes a CLI tool for creating new extensions, compiling, running projects, and more — all from a single interface (see [wiki - gdextwiz][3]).
- [x] Generate class references from comments and annotations in the code.
- [x] [Web platform support](https://github.com/godot-nim/gdext-nim/wiki/Build,-Configure-and-Export-your-project#export-to-web) via Emscripten.

## Limitations

- [ ] Editor plugins cannot be written using pure Nim alone.  
      To create an editor plugin, your extension class must be properly wrapped in GDScript and integrated via a `plugin.cfg` file. This setup is currently not automated.

- [ ] Due to engine constraints, Nim code is executed only when called from the engine.  
      It is not possible to run Nim as a standalone Godot application entry point.

## vs. GDScript

Nim and GDScript have very similar syntax, making porting between them relatively straightforward.

<table>

<td valign="top">

```nim
# Nim

import gdext
import gdext/classes/[gdSprite2D, gdInput]

type MySprite2D* {.gdsync.} = ptr object of Sprite2D
  speed: float = 400
  angular_speed: float = PI


method process(self: MySprite2D; delta: float64) {.gdsync.} =
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

</td>
<td valign="top">


```GDScript
# GDScript

extends Sprite2D

var speed = 400
var angular_speed = PI


func _process(delta):
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1

	rotation += angular_speed * direction * delta

	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * speed

	position += velocity * delta
```

</td>
</table>

![gif](https://docs.godotengine.org/en/stable/_images/scripting_first_script_moving_with_input.gif)

Guntur Sarwohadi ([@guntur-ctech](https://github.com/guntur-ctech)) reports that optimizing the build configuration for a simple port can yield performance gains of up to 6×.

https://github.com/guntur-ctech/simulation-performance-comparison

## Commands

### install

Installs the `gdext` library and its CLI tool `gdextwiz`.

```
nimble install gdext
```

The gdextwiz tool will be installed to ~/.nimble/bin, which is automatically added to your PATH if you've installed Nim via the official method.

### uninstall

Removes the library and CLI tool:

```
nimble uninstall gdext
```

## CLI Tool: gdextwiz
Use gdextwiz to create, build, and run your GDExtension projects from the command line.

📘 For detailed usage and subcommands, see the [gdextwiz manual][3].

## Supported environments

### OS

- [x] Linux
- [x] Macos
- [x] Windows

### Engine

- [x] [godotengine/godot](https://github.com/godotengine/godot) 4.4.0 or higher

### Nim compiler

* [nim-lang/nim](https://github.com/nim-lang/nim) 2.0.12 or higher
  #### Macos
  Use Nim installed via Homebrew, not `choosenim`.
  This is because Godot requires a native AArch64/ARM64 binary, while choosenim installs an x86_64 version that runs via Rosetta emulation.

## Tested by author

> [!NOTE]
> Support for other environments depends on community feedback. Please consider contributing your findings!

* OS: Linux (Arch)
* Engine: Godot 4.4.stable.arch_linux
* Nim: 2.0.12, 2.0.14, 2.2.0, 2.2.4
* CC: gcc version 15.1.1 20250425 (GCC)

[1]: https://github.com/godot-nim/demo
[2]: https://github.com/godot-nim/gdext-nim/wiki
[3]: https://github.com/godot-nim/gdext-nim/wiki/gdextwiz
[4]: https://github.com/godot-nim/gdext-nim/wiki/Coding-Quick-Guide
[5]: https://github.com/godot-nim/gdext-nim/discussions
[6]: https://github.com/godot-nim/gdext-nim/discussions/categories/ideas
[7]: https://github.com/godot-nim/.github/issues/5
[8]: https://github.com/godot-nim/gdext-nim
[9]: https://godot-nim.github.io/gdext-nim/gdext.html
[Tutorial]: https://github.com/godot-nim/gdext-nim/wiki/Your-first-2D-game
[Architecture]: https://deepwiki.com/godot-nim/gdext-nim/3.3-data-structures-and-collections
