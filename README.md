<div align="center">

  # <img src="https://raw.githubusercontent.com/nim-lang/assets/master/Art/logo-crown.png" height="28px"/> godot-nim/gdext

  Nim for GDExtension. A pure library and a CLI tool.  
  <a href="https://github.com/godot-nim/gdext-nim">
    <img src="nimble.svg" height="24">
  </a>

   [Documentation][9] | [Coding Guide][4] | [Tutorial] | [Examples][1] | Templates | [Forum][5] | [Source][8]

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

- [x] All classes and methods provided by the engine are available from Nim.
- [x] New extension classes can be defined that inherit from the engine class and exposed to editors and GDScript.
- [x] New methods, signals, properties, and enums can be defined in your extension classes and exposed.
- [x] New virtual functions can be defined and exposed, and overridden from both Nim and GDScript.
- [x] Recompiled GDExtension can be loaded without restarting the editor. (Hot Reloading)
- [x] Arithmetic operations such as Vector are more expressive than those in Godot, for example, GLSLang's swizzle operation is also available.
- [x] It has a CLI tool that allows you to create new extensions, compile, run projects, and so on from a unified interface. (see [wiki - gdextwiz][3])
- [x] Generate class references from comments and annotations left in the code.
- [x] [Web platform support](https://github.com/godot-nim/gdext-nim/wiki/Build,-Configure-and-Export-your-project#export-to-web) via Emscripten.

## Limitation

- [ ] Editor plug-ins cannot be created using only pure Nim code.
- [ ] Due to engine specifications, Nim code works in the form of calls from the engine; it is not possible to run Nim stand-alone.

## vs. GDScript

Nim and GDScript have very similar syntax. Porting is relatively easy.

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

Guntur Sarwohadi ([@guntur-ctech](https://github.com/guntur-ctech)) reports that setting better build options for a simple port will give approximately six times the performance.

https://github.com/guntur-ctech/simulation-performance-comparison

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

- [x] [godotengine/godot](https://github.com/godotengine/godot) 4.4.0

### Nim compiler

* [nim-lang/nim](https://github.com/nim-lang/nim) 2.0.12 or higher
  #### Macos
  Use Nim installed via Homebrew, not choosenim.
  Due to the execution environment of Godot itself, a native AArch64/ARM64 build of Nim is required, and that choosenim installs a x86_64 build emulated via Rosetta.

## Tested by author

> [!NOTE]
> Support for environments not listed here is based on your reports. Please consider contributing.

* OS: Linux (Arch)
* Engine: Godot 4.3.stable.arch_linux
* Nim: 2.0.12, 2.0.14, 2.2.0, 2.2.2
* CC: gcc version 14.2.1 20240910 (GCC)

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
