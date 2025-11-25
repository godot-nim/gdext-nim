<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a id="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->




<div align="center">

  # <img src="https://raw.githubusercontent.com/nim-lang/assets/master/Art/logo-crown.png" height="28px"/> godot-nim/gdext
<p align="center">

  <a href="https://github.com/godot-nim/gdext-nim">
    <img src="nimble.svg" height="29">
  </a>
  <a href="https://github.com/godot-nim/gdext-nim/graphs/contributors">
    <img src="https://img.shields.io/github/contributors/godot-nim/gdext-nim.svg?style=for-the-badge" alt="Contributors" />
  </a>
  <a href="https://github.com/godot-nim/gdext-nim/network/members">
    <img src="https://img.shields.io/github/forks/godot-nim/gdext-nim.svg?style=for-the-badge" alt="Forks" />
  </a>
  <a href="https://github.com/godot-nim/gdext-nim/stargazers">
    <img src="https://img.shields.io/github/stars/godot-nim/gdext-nim.svg?style=for-the-badge" alt="Stars" />
  </a>
  <a href="https://github.com/godot-nim/gdext-nim/issues">
    <img src="https://img.shields.io/github/issues/godot-nim/gdext-nim.svg?style=for-the-badge" alt="Issues" />
  </a>
  <a href="https://github.com/godot-nim/gdext-nim/blob/master/LICENSE">
    <img src="https://img.shields.io/github/license/godot-nim/gdext-nim.svg?style=for-the-badge" alt="MIT License" />
  </a>

	
</p>

</div>


  
<div align = "center">

📚 [Documentation][Pages] | ⚛️ [DeepWiki][9] | 🧪 [Examples][1] | 💬 [Discord][11]  | 🧵 [Forum][5] | 🛠️ [Source][8]


</div>

---
  > Nim for GDExtension — a pure library and CLI tool.



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

- [x] [godotengine/godot](https://github.com/godotengine/godot) 4.5.0 or higher

### Nim compiler

* [nim-lang/nim](https://github.com/nim-lang/nim) 2.0.12 or higher
  #### Macos
  Use Nim installed via Homebrew, not `choosenim`.
  This is because Godot requires a native AArch64/ARM64 binary, while choosenim installs an x86_64 version that runs via Rosetta emulation.

## Tested by author and maintainers

> [!NOTE]
> Support for other environments depends on community feedback. Please consider contributing your findings!

* OS: Linux (Arch) — Author | Mac M2 — @ArikRahman
* Engine: Godot 4.5.stable.arch_linux | Homebrew Godot 4.4.1 arm64-apple-darwin24.5.0
* Nim: 2.2.0 | 2.2.2 | 2.2.4 | 2.2.6
* CC: gcc version 15.1.1 20250425 (GCC) | clang version 17.0.0




<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request.
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



### Top contributors:

<a href="https://github.com/godot-nim/gdext-nim/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=godot-nim/gdext-nim" alt="Contributors to godot-nim/gdext-nim" />
</a>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/godot-nim/gdext-nim.svg?style=for-the-badge
[contributors-url]: https://github.com/godot-nim/gdext-nim/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/godot-nim/gdext-nim.svg?style=for-the-badge
[forks-url]: https://github.com/godot-nim/gdext-nim/network/members
[stars-shield]: https://img.shields.io/github/stars/godot-nim/gdext-nim.svg?style=for-the-badge
[stars-url]: https://github.com/godot-nim/gdext-nim/stargazers
[issues-shield]: https://img.shields.io/github/issues/godot-nim/gdext-nim.svg?style=for-the-badge
[issues-url]: https://github.com/godot-nim/gdext-nim/issues
[license-shield]: https://img.shields.io/github/license/godot-nim/gdext-nim.svg?style=for-the-badge
[license-url]: https://github.com/godot-nim/gdext-nim/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
[Pages]: https://godot-nim.github.io/gdext-nim

[1]: https://github.com/godot-nim/demo
[2]: https://github.com/godot-nim/gdext-nim/wiki
[3]: https://github.com/godot-nim/gdext-nim/wiki/gdextwiz
[4]: https://github.com/godot-nim/gdext-nim/wiki/Coding-Quick-Guide
[5]: https://github.com/godot-nim/gdext-nim/discussions
[6]: https://github.com/godot-nim/gdext-nim/discussions/categories/ideas
[7]: https://github.com/godot-nim/.github/issues/5
[8]: https://github.com/godot-nim/gdext-nim
[9]: https://deepwiki.com/godot-nim/gdext-nim/
[10]: https://godot-nim.github.io/gdext-nim/gdext.html
[11]: https://discord.gg/nXGmV6TFKQ
[Tutorial]: https://github.com/godot-nim/gdext-nim/wiki/Your-first-2D-game
[Architecture]: https://deepwiki.com/godot-nim/gdext-nim/3.3-data-structures-and-collections


